<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2022/06/23
  Time: 12:08 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<option value="" selected disabled>선택</option>
<c:forEach items="${codeList}" var="code" varStatus="status">
    <option value="${code.code_value}">${code.code_name} ${code.detail != null ? code.detail : ""}</option>
</c:forEach>
<c:if test="${!lengthBool}">
    <option value="">해당없음</option>
</c:if>

