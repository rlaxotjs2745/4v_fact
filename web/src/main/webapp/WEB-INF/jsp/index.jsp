<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/06/21
  Time: 4:56 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="header.jsp" %>

<div class="content" id="content">
    <div class="page__cnt">
        <div class="main__keyvisual">
            <div class="swiper-container swiper__main">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a href="#" class="quick__anchor">
                        <img src="resources/assets/image/img_keybrand_01.png" alt="스마트팜 혁신밸리 실증단지 / 대한민국의 농업의 새로울 내일을 열어갑니다.">
                        </a>
                    </div>
                    <!--//-->
                    <div class="swiper-slide">
                        <a href="#" class="quick__anchor">
                        <img src="resources/assets/image/img_keybrand_02.png" alt="스마트팜 혁신밸리 실증단지 / 대한민국의 농업의 새로울 내일을 열어갑니다.">
                        </a>
                    </div>
                    <!--//-->
                    <div class="swiper-slide">
                        <a href="#" class="quick__anchor">
                        <img src="resources/assets/image/img_keybrand_03.png" alt="스마트팜 혁신밸리 실증단지 / 대한민국의 농업의 새로울 내일을 열어갑니다.">
                        </a>
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
                    <img src="resources/assets/image/img_demonstration.svg" alt="">
                    <span>실증 분야</span>
                </a>
                <a href="prv_application" class="quick__anchor">
                    <img src="resources/assets/image/img_application.svg" alt="">
                    <span>실증 신청</span>
                </a>
                <a href="brd_announce?page=1" class="quick__anchor">
                    <img src="resources/assets/image/img_management.svg" alt="">
                    <span>실증 신청 현황</span>
                </a>
<%--                <a href="spt_consulting" class="quick__anchor">
                    <img src="resources/assets/image/img_advance.svg" alt="">
                    <span>대면 상담</span>
                </a>--%>
                <a href="spt_consulting" class="quick__anchor">
                    <img src="resources/assets/image/img_inquire.svg" alt="">
                    <span>상담 신청</span>
                </a>
            </div>
        </div>

        <div class="page__cnt--bg">
            <div class="main__board">
                <div class="main__board--notice">
                    <a href="brd_notice_detail?idx=4">
                        <div class="board__badge">
                            <img src="resources/assets/image/ico_notice.svg" alt="">공지사항
                        </div>
                        <div class="board__text">12월31일까지<br>에너지 바우처 신청하세요</div>
                        <span class="board__anchor">보러가기</span>
                    </a>
                </div>
                <div class="main__board--business">
                    <a href="brd_notice_detail?idx=4">
                        <div class="board__badge">
                            <img src="resources/assets/image/ico_business.svg" alt="">사업공고
                        </div>
                        <div class="board__text">국제농업박람회 참여기업을 모집합니다. <br>서두르세요~</div>
                        <span class="board__anchor">보러가기</span>
                    </a>
                </div>
            </div>
            <!--//-->

            <div class="main__news">
                <div class="main__news--inner">
                    <div class="main__news--notice">
                        <div class="news__badge"><img src="resources/assets/image/ico_notice.svg" alt="">공지사항</div>
                        <div class="news__more"><a href="brd_notice" class="btn btn-more">+더보기</a></div>
                        <ul class="news__list">
                            <li>
                                <a href="#"><span>12월31일까지 에너지 바우처 신청 12월31일까지 에너지 바우처 신청</span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>‘21년 제2차 한국농업기술진흥원' </span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>공동구매 안내</span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>중국 스마트팜 기술 세미나</span><em>07-06</em></a>
                            </li>
                        </ul>
                    </div>
                    <!--//-->
                    <div class="main__news--notice">
                        <div class="news__badge"><img src="resources/assets/image/ico_business.svg" alt="">사업공고</div>
                        <div class="news__more"><a href="brd_announce" class="btn btn-more">+더보기</a></div>
                        <ul class="news__list">
                            <li>
                                <a href="#"><span>국제농업박람회 참여기업 모집 국제농업박람회 참여기업 모집</span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>2021 혁신도시 공공기관연계육성 스마트 공공기관연계육성 스마트 </span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>2021년 농식품 벤처육성 지원사업</span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>한국형 농업기술 · 제품 해외마케팅 지원사업안내 설명회 개최</span><em>07-06</em></a>
                            </li>
                        </ul>
                    </div>
                    <!--//-->
                    <div class="main__news--notice">
                        <div class="news__badge"><img src="resources/assets/image/ico_event.svg" alt="">행사안내</div>
                        <div class="news__more"><a href="brd_event" class="btn btn-more">+더보기</a></div>
                        <ul class="news__list">
                            <li>
                                <a href="#"><span>공공빅데이터 활용 창업경진대회 공공빅데이터 활용 창업경진대회</span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>전주한옥마을 ‘영농하게’ 전주한옥마을 ‘영농하게’ </span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>청년벤처들 모여 불멍쇼!! 청년벤처들 모여 불멍쇼!!</span><em>07-06</em></a>
                            </li>
                            <li>
                                <a href="#"><span>중국 스마트팜 기술 세미나</span><em>07-06</em></a>
                            </li>
                        </ul>
                    </div>
                    <!--//-->
                </div>
            </div>

            <div class="main__banner">
                <div class="banner__01">
                    <a href="spt_faq" class="banner__anchor">
                        <div class="banner__title">실증단지 101</div>
                        <span class="banner__desc">실증단지에 궁금한 것을 확인하세요.</span>
                    </a>
                </div>
                <div class="banner__02">
                    <a href="spt_visit" class="banner__anchor">
                        <div class="banner__title">실증단지 견학신청</div>
                        <span class="banner__desc">실증단지에 궁금한 것을 확인하세요.</span>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <%--<div id="popup_main1" class="pop__main is-on" style="margin:-220px 0 0 -240px">
        <div class="section">
            <a href="#none" class="js-main-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
            <div class="popup__cnt">
                <h5 class="popup__title">XXXX 공지</h5>
                <div class="popup__main">
                    내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.
                </div>
            </div>
            <div class="popup__btn">
                <div class="checkbox">
                    <input type="checkbox" id="today-1" name="logingroup">
                    <label for="today-1">오늘 하루 보지 않기</label>
                </div>

                <a href="#" class="btn submit btn-lg">닫기</a>
            </div>

        </div>
    </div>--%>




    <%--
    <div id="popup_main2" class="pop__main is-on" style="margin:-220px 0 0 240px">
        <div class="section">
            <a href="#none" class="js-main-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
            <div class="popup__cnt">
                <h5 class="popup__title">XXXX 공지</h5>
                <div class="popup__main">
                    내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.
                    내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.
                    내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.
                </div>
            </div>
            <div class="popup__btn">
                <div class="checkbox">
                    <input type="checkbox" id="today-2" name="logingroup">
                    <label for="today-1">오늘 하루 보지 않기</label>
                </div>

                <a href="#" class="btn submit btn-lg">닫기</a>
            </div>

        </div>
    </div>
    <div id="popup_main3" class="pop__main is-on" style="margin:220px 0 0 -240px">
        <div class="section">
            <a href="#none" class="js-main-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
            <div class="popup__cnt">
                <h5 class="popup__title">XXXX 공지</h5>
                <div class="popup__main">
                    내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.
                </div>
            </div>
            <div class="popup__btn">
                <div class="checkbox">
                    <input type="checkbox" id="today-3" name="logingroup">
                    <label for="today-1">오늘 하루 보지 않기</label>
                </div>

                <a href="#" class="btn submit btn-lg">닫기</a>
            </div>

        </div>
    </div>
    <div id="popup_main4" class="pop__main is-on" style="margin:220px 0 0 240px">
        <div class="section">
            <a href="#none" class="js-main-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
            <div class="popup__cnt">
                <h5 class="popup__title">XXXX 공지</h5>
                <div class="popup__main">
                    내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.내용이 짧은 경우도 영역을 유지합니다.
                </div>
            </div>
            <div class="popup__btn">
                <div class="checkbox">
                    <input type="checkbox" id="today-4" name="logingroup">
                    <label for="today-1">오늘 하루 보지 않기</label>
                </div>

                <a href="#" class="btn submit btn-lg">닫기</a>
            </div>

        </div>
    </div>--%>
</div>

<%--<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>--%>
<!-- Initialize Swiper -->
<%@include file ="script.jsp" %>
<script>
    var swiperMain = new Swiper(".swiper__main", {
        centeredSlides: true,
        loop: true,
        speed:2500,
        autoplay: {
            delay: 5000,
            disableOnInteraction: false,
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
    });
    $(".swiper-main-button-pause").click(function(){
        swiperMain.autoplay.stop();
        $(".swiper-main-button-play").show();
        $(".swiper-main-button-pause").hide();
    });
    $(".swiper-main-button-play").click(function(){
        swiperMain.autoplay.start();
        $(".swiper-main-button-pause").show();
        $(".swiper-main-button-play").hide();
    });
    var cookiedata;
    $(document).ready(function () {
        $('.popup').show();
        cookiedata = document.cookie;
        if ( cookiedata.indexOf("popup_1=done") < 0 ){ //쿠키 변경 여부 불러오기
            document.all['popup_1'].style.visibility = "visible";
        } else {
            document.all['popup_1'].style.display = "none";
        } PopupBgDisplay();
    });
    function PopupNoDisplay_1() {
        setCookie("popup_1", "done", 1); //쿠키값 변경
        PopupHide();
    }
    function PopupHide() { //팝업창 지우기
        $('#popup_1').hide();
        PopupBgDisplay();
    }
    function PopupBgDisplay() { //팝업창이 없어진 경우 배경(popupbg) 지우기
        cookiedata1 = document.cookie;
        if (cookiedata1.indexOf("popup_1=done") > 0) {
            $("#popupWrap").hide();
        }
    }

</script>
<%@include file ="footer.jsp" %>
</div>
</body>
</html>