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


<div class="page__h1"></div>
</header>
<div class="content" id="content">
    <div class="page__body">
        <div class="page__search">
            <div class="page__search--input">
                <input type="text" value="실증 사업신청">
                <strong>‘실증사업신청’</strong>으로 <strong>000건</strong>을 찾았습니다.
            </div>

            <div class="table__blank">
                <div class="blank__title">검색된 결과가 없습니다.</div>
                <div class="blank__text">다른 검색어로 검색하거나 단어의 철자가 정확한지 확인해주세요.</div>
            </div>
        </div>

    </div>
</div>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/ui.common.js" type="text/javascript"></script>

<%@include file ="footer.jsp" %>