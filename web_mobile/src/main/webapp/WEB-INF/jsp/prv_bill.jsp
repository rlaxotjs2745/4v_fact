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


<div class="page__h1">실증서비스 이용료</div>
</header>
<div class="content" id="content">
    <div class="page__body">
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <div class="page__location">
                    <div class="location__link">
                        <a href="prv_fee" class="location__link--anchor ">개요</a>
                        <a href="prv_facility" class="location__link--anchor ">실증시설</a>
                        <a href="prv_support" class="location__link--anchor ">지원시설</a>
                        <a href="prv_bill" class="location__link--anchor is-selected">공과금</a>
                        <a href="prv_subsidy" class="location__link--anchor ">보증금</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">공과금</h3>
            <div class="page__comment">공과금공과금공과금공과금공과금공과금공과금공과금공과금</div>

            <div class="fee__container">
                text
            </div>
            <!--//-->
        </div>

    </div>
</div>
<!--<div class="btn_top"><a href="#wrapper">▲<br>TOP</a></div>-->
<div class="footer">
    <div class="footer__box">
        <ul class="footer__anchor">
            <li><a href="#none">서비스이용약관</a></li>
            <li><a href="#none">개인정보처리방침</a></li>
            <li><a href="#none">부패신고바로하기</a></li>
            <li><a href="#none">홈페이지 개선의견</a></li>
            <li><a href="#none">사이트 맵</a></li>
        </ul>
        <div class="footer__site">
            <select name="a" id="a">
                <option value="1">관련부처 사이트</option>
            </select>
            <div class="footer__bar">
                <span><img src="<%=request.getContextPath()%>/static/assets/image/footer_mark.png" alt=""></span>
            </div>
        </div>
        <div class="footer__info">
            <h3 class="footer__logo"><img src="<%=request.getContextPath()%>/static/assets/image/logo_footer.png" alt=""></h3>
            <div class="footer__address">54667 전라북도 익산시 평동로 457 (송학동 381) <br>TEL 063-919-1000 FAX 063-919-1269</div>
            <div class="footer__copyright">Copyright(c) 2010 The Foundation of AG. Tech, Commercialization and Transfer. All Rights Reserved.</div>
        </div>
    </div>
</div>
</div>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/ui.common.js" type="text/javascript"></script>

<%@include file ="footer.jsp" %>