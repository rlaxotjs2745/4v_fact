<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:25 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="header.jsp" %>

<div class="content" id="content">
    <div class="page__body">
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">사이트맵</h2>
                <div class="page__location">
                    <div class="location__deco">스마트팜 혁신밸리 실증단지 포탈 사이트맵입니다.</div>
                </div>
            </div>
        </div>
        <%-- content --%>
        <div class="page__cnt" style="height: 60vh">
            <div class="nav__full--box is-block"
                 style="position: relative;
                        top: auto;
                        left: auto;
                        display: block;
                        margin: 0;
                        border: none;
                        transform: none;
                        margin-bottom: 64px;
                        box-shadow: none;">
                <div class="nav_full--inner" style="padding: 0">
                    <h2>스마트팜 실증센터</h2>
                    <nav class="nav__full">
                        <ul class="nav__full--depth1">
                            <li><a href="#">실증 안내/신청</a>
                                <ul class="nav__full--depth2">
                                    <li><a href="prv_part">실증 분야</a></li>
                                    <li><a href="prv_step">실증 절차</a></li>
                                    <li><a href="prv_use">이용가능시설</a></li>
                                    <li><a href="prv_fee">실증서비스 이용료 예시</a></li>
                                    <li><a href="prv_application">신청서 작성</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="is-selected">실증단지 소개</a>
                                <ul class="nav__full--depth2">
                                    <li><a href="cnt_goal">비전과 미션</a></li>

                                    <li><a href="cnt_organize">조직도</a></li>
                                    <li><a href="cnt_map">찾아오시는 길</a></li>
                                </ul>
                            </li>
                            <li><a href="#">열린마당</a>
                                <ul class="nav__full--depth2">
                                    <li><a href="brd_notice?page=1">공지사항</a></li>
                                    <li><a href="brd_announce?page=1">사업공고</a></li>
                                    <li><a href="brd_event?page=1">행사안내</a></li>
                                    <li><a href="brd_promotion?page=1">홍보자료</a></li>
                                </ul>
                            </li>
                            <li><a href="#">자료실</a>
                                <ul class="nav__full--depth2">
                                    <!--<li><a href="arc_center">실증단지소개</a></li>
                                    <li><a href="arc_pee">서비스 이용료</a></li>
                                    <li><a href="#">실증기업 확인 데이터</a></li>-->
                                    <li><a href="arc_form">관련양식</a></li>
                                    <li><a href="arc_rule">관련규정</a></li>
                                </ul>
                            </li>
                            <li><a href="#">고객 지원</a>
                                <ul class="nav__full--depth2">
                                    <li><a href="spt_faq">FAQ</a></li>
                                    <li><a href="spt_consulting">상담 신청</a></li>
                                    <li><a href="spt_visit">견학 신청</a></li>
                                </ul>
                            </li>

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>
    <%@include file="script.jsp" %>

</div>
<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
</body>
</html>