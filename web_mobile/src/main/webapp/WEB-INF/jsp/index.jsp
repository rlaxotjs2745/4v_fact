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
</header>

<div class="content" id="content">
    <div class="page__cnt">
        <div class="main__keyvisual">
            <div class="swiper-container swiper__main">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="<%=request.getContextPath()%>/static/assets/image/img_keybrand_01.jpg" alt="스마트팜 혁신밸리 실증단지 / 대한민국의 농업의 새로울 내일을 열어갑니다.">
                    </div>
                    <!--//-->
                    <div class="swiper-slide">
                        <img src="<%=request.getContextPath()%>/static/assets/image/img_keybrand_02.jpg" alt="스마트팜 혁신밸리 실증단지 / 대한민국의 농업의 새로울 내일을 열어갑니다.">
                    </div>
                    <!--//-->
                    <div class="swiper-slide">
                        <img src="<%=request.getContextPath()%>/static/assets/image/img_keybrand_03.jpg" alt="스마트팜 혁신밸리 실증단지 / 대한민국의 농업의 새로울 내일을 열어갑니다.">
                    </div>
                    <!--//-->
                </div>
                <div class="action-controller">
                    <div class="swiper-button-play swiper-main-button-play" style="display:none;">play</div>
                    <div class="swiper-button-pause swiper-main-button-pause">stop</div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
        <!--//-->

        <div class="main__quick">
            <div class="quick__inner">
                <a href="prv_part" class="quick__anchor">
                    <img src="<%=request.getContextPath()%>/static/assets/image/img_demonstration.svg" alt="">
                    <span>실증 분야</span>
                </a>
                <a href="prv_application" class="quick__anchor">
                    <img src="<%=request.getContextPath()%>/static/assets/image/img_application.svg" alt="">
                    <span>실증 신청</span>
                </a>
                <a href="brd_announce" class="quick__anchor">
                    <img src="<%=request.getContextPath()%>/static/assets/image/img_management.svg" alt="">
                    <span>실증 신청 현황</span>
                </a>
                <a href="spt_prevent?page=1" class="quick__anchor">
                    <img src="<%=request.getContextPath()%>/static/assets/image/img_advance.svg" alt="">
                    <span>대면 상담</span>
                </a>
                <a href="spt_email?page=1" class="quick__anchor">
                    <img src="<%=request.getContextPath()%>/static/assets/image/img_inquire.svg" alt="">
                    <span>온라인 문의</span>
                </a>
            </div>
        </div>

        <div class="main__board">
            <div class="main__board--notice">
                <a href="brd_notice_detail?idx=4">
                    <div class="board__badge">
                        <img src="<%=request.getContextPath()%>/static/assets/image/ico_notice.svg" alt="">공지사항
                    </div>
                    <div class="board__text">12월31일까지<br>에너지 바우처 신청하세요</div>
                    <span class="board__anchor">보러가기</span>
                </a>
            </div>
            <div class="main__board--business">
                <a href="brd_notice_detail?idx=4">
                    <div class="board__badge">
                        <img src="<%=request.getContextPath()%>/static/assets/image/ico_business.svg" alt="">사업공고
                    </div>
                    <div class="board__text">국제농업박람회 참여기업을 모집합니다. <br>서두르세요~</div>
                    <span class="board__anchor">보러가기</span>
                </a>
            </div>
        </div>
        <!--//-->

        <div class="page__cnt--bg">
            <div class="main__news">
                <a href="#news-01" class="news__badge is-active">공지사항</a>
                <a href="#news-02" class="news__badge">사업공고</a>
                <a href="#news-03" class="news__badge">행사안내</a>
                <div class="main__news--inner">
                    <div class="main__news--notice is-active" id="news-01">
                        <ul class="news__list">
                            <li>
                                <a href="#"><span>공지사항 에너지 바우처 신청 12월31일까지 에너지 바우처 신청</span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>‘21년 제2차 농업기술실용화재단 농업기술실용화재단 </span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>공지사항 안내</span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>중국 스마트팜 기술 세미나</span><em>07-06</em></a>
                            </li>
                        </ul>
                        <div class="news__more"><a href="#" class="btn btn-more">+더보기</a></div>
                    </div>
                    <!--//-->
                    <div class="main__news--notice" id="news-02">
                        <ul class="news__list">
                            <li>
                                <a href="#"><span>사업공고 사업공고 모집 국제농업박람회 참여기업 모집</span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>2021 사업공고 공공기관연계육성 스마트 공공기관연계육성 스마트 </span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>2021년 사업공고 벤처육성 지원사업</span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>한국형 농업기술 · 제품 해외마케팅 지원사업안내 설명회 개최</span><em>07-06</em></a>
                            </li>
                        </ul>
                        <div class="news__more"><a href="#" class="btn btn-more">+더보기</a></div>
                    </div>
                    <!--//-->
                    <div class="main__news--notice" id="news-03">
                        <ul class="news__list">
                            <li>
                                <a href="#"><span>행사안내 공공빅데이터 활용 창업경진대회 공공빅데이터 활용 창업경진대회</span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>행사안내 전주한옥마을 ‘영농하게’ 전주한옥마을 ‘영농하게’ </span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>행사안내행사안내 청년벤처들 모여 불멍쇼!! 청년벤처들 모여 불멍쇼!!</span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>중국 스마트팜 기술 세미나</span><em>07-06</em></a>
                            </li>
                        </ul>
                        <div class="news__more"><a href="#" class="btn btn-more">+더보기</a></div>
                    </div>
                    <!--//-->
                </div>
            </div>

            <div class="main__banner">
                <div class="banner__01">
                    <a href="spt_faq" class="banner__anchor">
                        <div class="banner__title">실증단지 101</div>
                        <span class="banner__desc">실증단지에 궁금한 것을 <br>확인하세요.</span>
                    </a>
                </div>
                <div class="banner__02">
                    <a href="spt_visit?page=1" class="banner__anchor">
                        <div class="banner__title">실증단지 견학신청</div>
                        <span class="banner__desc">실증단지에 궁금한 것을 <br>확인하세요.</span>
                    </a>
                </div>
            </div>
        </div>


    </div>
</div>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/ui.common.js" type="text/javascript"></script>
<%@include file ="footer.jsp" %>
