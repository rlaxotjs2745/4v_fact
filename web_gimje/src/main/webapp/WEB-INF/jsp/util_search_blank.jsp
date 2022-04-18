<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:51 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="header.jsp" %>

<div class="content" id="content">
    <div class="page__body">
        <div class="page__search">
            <div class="page__search--input">
                <input type="text" value="실증 사업신청">
            </div>

            <div class="table__blank">
                <div class="blank__title">검색된 결과가 없습니다.</div>
                <div class="blank__text">다른 검색어로 검색하거나 단어의 철자가 정확한지 확인해주세요.</div>
            </div>
        </div>

    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
</body>
</html>