package kr.or.fact.core.logging;

import org.springframework.http.MediaType;
import org.springframework.web.util.ContentCachingResponseWrapper;

import javax.servlet.http.HttpServletResponse;
import java.nio.charset.Charset;

class ContentReadingHttpResponseWrapper extends ContentCachingResponseWrapper {

    private String contentAsString;

    public ContentReadingHttpResponseWrapper(HttpServletResponse response) {
        super(response);
    }

    public String getContentAsString() {

        return getContentAsStringLazy();
    }

    public String getContentAsStringLazy() {

        if (this.contentAsString != null) {
            return contentAsString;
        }

        MediaType mediaType = MediaType.ALL;
        String contentType = getContentType();
        if (contentType != null) {
            mediaType = MediaType.valueOf(contentType);
        }

        if (MediaTypeUtils.isVisible(mediaType)) {
            Charset charset;

            String csn = "UTF-8";
            if (Charset.isSupported(csn)) {
                charset = Charset.forName(csn);
            } else {
                charset = Charset.defaultCharset();
            }

            if (getContentAsByteArray().length > 15000) {
                this.contentAsString = "Content is too long....";
            } else {
                this.contentAsString = new String(getContentAsByteArray(), charset);
            }
        } else {
            this.contentAsString = "*";
        }

        return this.contentAsString;
    }
}
