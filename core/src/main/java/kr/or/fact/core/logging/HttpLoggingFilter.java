package kr.or.fact.core.logging;

import org.apache.commons.lang3.tuple.Pair;
import org.slf4j.MDC;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.Enumeration;
import java.util.Map;
import java.util.UUID;

public class HttpLoggingFilter extends OncePerRequestFilter {

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        if (super.isAsyncDispatch(request)) {

            filterChain.doFilter(request, response);
        } else {
            String contentType = request.getContentType();
            if (contentType == null) {
                filterChain.doFilter(request, response);
            } else {
                doFilterWrapped(
                        new ContentReadingHttpRequestWrapper(request),
                        new ContentReadingHttpResponseWrapper(response),
                        filterChain
                );
            }
        }
    }

    private void doFilterWrapped(
            ContentReadingHttpRequestWrapper request,
            ContentReadingHttpResponseWrapper response,
            FilterChain filterChain
    ) throws IOException, ServletException {

        Pair<String, LocalDateTime> pair = beforeRequest(request);

        String requestLog = pair.getLeft();
        LocalDateTime startedAt = pair.getRight();

        try {
            filterChain.doFilter(request, response);
        } catch (Exception e) {
            if (e instanceof ServletException || e instanceof IOException) {
                logger.error("요청/응답에 대한 필터 처리 중에 오류가 발생했습니다.", e);
            }
            else {
                throw e;
            }
        } finally {
            afterResponse(response, requestLog, startedAt);
        }
    }

    private Pair<String, LocalDateTime> beforeRequest(ContentReadingHttpRequestWrapper request) {
        final String requestId = request.getHeader("REQUEST_ID");
        if (requestId != null) {
            MDC.put("REQUEST_ID", requestId);
        } else {
            MDC.put("REQUEST_ID", UUID.randomUUID().toString());
        }

        final String requestURI = request.getRequestURI();
        MDC.put("REQUEST_END_POINT", request.getMethod() + " " + request.getRequestURI());

        return yieldRequestLog(request, LocalDateTime.now());
    }

    private Pair<String, LocalDateTime> yieldRequestLog(ContentReadingHttpRequestWrapper request, LocalDateTime startedAt) {

        Enumeration<String> headerNames = request.getHeaderNames();

        StringBuilder headersBuilder = new StringBuilder();
        while(headerNames.hasMoreElements()) {
            String headerName = headerNames.nextElement();
            String headerValue = request.getHeader(headerName);
            headersBuilder.append(headerName).append(": ").append(headerValue).append(", ");
        }
        stringBuilderWrapUp(headersBuilder, "");

        String headers = headersBuilder.toString();

        String params;
        Map<String, String[]> parameterMap = request.getParameterMap();
        if (!parameterMap.isEmpty()) {

            StringBuilder paramsBuilder = new StringBuilder();

            paramsBuilder.append("{");
            for (String s : parameterMap.keySet()) {

                paramsBuilder.append("(").append(s).append(", [");
                String[] strings = parameterMap.get(s);

                for (String string : strings) {
                    paramsBuilder.append(string).append(", ");
                }

                stringBuilderWrapUp(paramsBuilder, "]), ");
            }
            stringBuilderWrapUp(paramsBuilder, "}");

            params = paramsBuilder.toString();
        }
        else {
            params = "*";
        }

        final String endPoint = MDC.get("REQUEST_END_POINT");
        final String requestId = MDC.get("REQUEST_ID");
        return Pair.of(
                "\n    ⊙ " + endPoint + "\n" +
                        "    ├─ Request Id: " + requestId + "\n" +
                        "    ├─ Started At: " + startedAt + "\n" +
                        "    ├─ Headers: " + headers + "\n" +
                        "    ├─ Params: " + params + "\n" +
                        "    ├─ Request Body: " + request.getContentAsString() + "\n",
                startedAt
        );
    }

    private void stringBuilderWrapUp(StringBuilder stringBuilder, String s) {
        int length = stringBuilder.length();
        stringBuilder.replace(length - 2, length, s);
    }

    private void afterResponse(ContentReadingHttpResponseWrapper response, String requestLog, LocalDateTime startedAt) throws IOException {
        try {
            logRequestAndResponse(response, requestLog, startedAt);
        } finally {
            // CAUTION! copyBodyToResponse 메서드를 실행하지 않을 경우 출력 스트림이 리셋되지 않아서 클라이언트가 응답을 받을 수 없게 됩니다.
            response.copyBodyToResponse();
        }
    }

    private void logRequestAndResponse(ContentReadingHttpResponseWrapper response, String requestLog, LocalDateTime startedAt) {

        String errorHash = response.getHeader("Error-Request-Id");
        if (errorHash != null) {
            logger.info(requestLog +
                    "    ├─ Response Body: " + response.getContentAsString() + "\n" +
                    "    ├─ Completed with " + response.getStatus() + " in " + ChronoUnit.MILLIS.between(startedAt, LocalDateTime.now()) + " ms\n" +
                    "    └─ Error Hash: " + errorHash);
        }
        else {
            logger.info(requestLog +
                    "    ├─ Response Body: " + response.getContentAsString() + "\n" +
                    "    └─ Completed with " + response.getStatus() + " in " + ChronoUnit.MILLIS.between(startedAt, LocalDateTime.now()) + " ms");
        }
    }
}
