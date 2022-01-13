<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/07/30
  Time: 4:56 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="header.jsp" %>

<div class="content" id="content">
    <div class="page__body">
        <div class="page__breadcrumbs--box">
            <div class="page__breadcrumbs--inner">
                <span>홈</span>
                <span>마이 페이지</span>
                <div class="under__depth">
                    <a href="#" class="under__depth--anchor">나의 사업</a>
                    <div class="under__depth--list">
                        <a href="my_info">나의 정보</a>
                        <a href="my_business">나의 사업</a>

                        <%--<a href="my_group">나의 상담 및 정보</a>--%>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">나의 사업</h2>
                <div class="page__location">
                    <div class="location__deco">나의 사업 현황 및 안내 내용을 확인하여 주시기 바랍니다.</div>
                    <div class="location__link">
                        <a href="my_business" class="location__link--anchor ">신청 현황</a>
                        <a href="my_agreement" class="location__link--anchor ">협약 현황</a>
                        <a href="my_consignment" class="location__link--anchor is-selected">위탁 현황</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">위탁 현황</h3>

            <div style="padding:200px 0; height:100px; font-size: 100px;text-align: center;">
                콘텐츠
            </div>
        </div>

    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
</body>
</html>