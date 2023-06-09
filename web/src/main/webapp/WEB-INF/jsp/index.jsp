<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/06/21
  Time: 4:56 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                    <span style="font-weight: bold;">실증 분야</span>
                </a>
                <a href="prv_application" class="quick__anchor">
                    <img src="resources/assets/image/img_application.svg" alt="">
                    <span style="font-weight: bold;">실증 신청</span>
                </a>
                <a href="prv_step" class="quick__anchor">
                    <img src="resources/assets/image/img_management.svg" alt="">
                    <span style="font-weight: bold;">실증 절차 안내</span>
                </a>
<%--                <a href="spt_consulting" class="quick__anchor">
                    <img src="resources/assets/image/img_advance.svg" alt="">
                    <span>대면 상담</span>
                </a>--%>
                <a href="spt_consulting" class="quick__anchor">
                    <img src="resources/assets/image/img_inquire.svg" alt="">
                    <span style="font-weight: bold;">상담 신청</span>
                </a>
            </div>
        </div>

        <div class="page__cnt--bg">
            <div class="main__board">
                <div class="main__board--notice">
                    <a href="brd_notice">
                        <div class="board__badge">
                            <img src="resources/assets/image/ico_notice.svg" alt="">공지사항
                        </div>
                        <div class="board__text">12월31일까지<br>에너지 바우처 신청하세요</div>
                        <span class="board__anchor">보러가기</span>
                    </a>
                </div>
                <div class="main__board--business">
                    <a href="brd_announce">
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
                        <div class="news__more"><a href="brd_notice?page=1" class="btn btn-more">+더보기</a></div>
                        <ul class="news__list">
                            <c:if test="${noticeList.size() != 0}">
                                <c:forEach items="${noticeList}" var="notice">
                                    <li>
                                        <fmt:formatDate value="${notice.posting_start_date}" var="notice_date" pattern="MM-dd"/>
                                        <a href="brd_notice_detail?idx=${notice.idx_notice}">
                                            <span>
                                                <c:choose>
                                                    <c:when test="${fn:length(notice.subject) > 23}">
                                                        ${fn:substring(notice.subject,0,23)}...
                                                    </c:when>
                                                    <c:otherwise>
                                                        ${notice.subject}
                                                    </c:otherwise>
                                                </c:choose>
                                            </span><em>${notice_date}</em></a>
                                    </li>
                                </c:forEach>
                            </c:if>
                            <c:if test="${noticeList.size() == 0}">
                                현재 공지사항이 없습니다.
                            </c:if>
                        </ul>
                    </div>
                    <!--//-->
                    <div class="main__news--notice">
                        <div class="news__badge"><img src="resources/assets/image/ico_business.svg" alt="">사업공고</div>
                        <div class="news__more"><a href="brd_announce?page=1" class="btn btn-more">+더보기</a></div>
                        <ul class="news__list">
                            <c:if test="${annoList.size() != 0}">
                                <c:forEach items="${annoList}" var="anno">
                                    <li>
                                        <fmt:formatDate value="${anno.posting_start_date}" var="anno_date" pattern="MM-dd"/>
                                        <a href="brd_announce_detail?idx=${anno.idx_bs_announcement}"><span>
                                                <c:choose>
                                                    <c:when test="${fn:length(anno.subject) > 23}">
                                                        ${fn:substring(anno.subject,0,23)}...
                                                    </c:when>
                                                    <c:otherwise>
                                                        ${anno.subject}
                                                    </c:otherwise>
                                                </c:choose>
                                            </span><em>${anno_date}</em></a>
                                    </li>
                                </c:forEach>
                            </c:if>
                            <c:if test="${annoList.size() == 0}">
                                현재 진행중인 사업공고가 없습니다.
                            </c:if>
                        </ul>
                    </div>
                    <!--//-->
                    <div class="main__news--notice">
                        <div class="news__badge"><img src="resources/assets/image/ico_event.svg" alt="">행사안내</div>
                        <div class="news__more"><a href="brd_event?page=1" class="btn btn-more">+더보기</a></div>
                        <ul class="news__list">
                            <c:if test="${eventList.size() != 0}">
                                <c:forEach items="${eventList}" var="event">
                                    <li>
                                        <fmt:formatDate value="${event.event_start_date}" var="event_date" pattern="MM-dd"/>
                                        <a href="brd_event_detail?idx=${event.idx_event_content}"><span>
                                                <c:choose>
                                                    <c:when test="${fn:length(event.subject) > 23}">
                                                        ${fn:substring(event.subject,0,23)}...
                                                    </c:when>
                                                    <c:otherwise>
                                                        ${event.subject}
                                                    </c:otherwise>
                                                </c:choose>
                                            </span><em>${event_date}</em></a>
                                    </li>
                                </c:forEach>
                            </c:if>
                            <c:if test="${eventList.size() == 0}">
                                현재 진행중인 행사가 없습니다.
                            </c:if>
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

    <c:if test="${popupList != null && popupList.size() > 0}">
        <c:forEach items="${popupList}" var="popup" varStatus="status">
            <div id="popup_main${status.count}" class="pop__main is-on popup_main" style="margin:-220px 0 0 -240px">
                <div class="section">
                    <a href="#none" onclick="closePopup(${status.count})" class="js-main-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
                    <div class="popup__cnt">
                        <h5 class="popup__title">${popup.subject}</h5>
                        <div class="popup__main">
                            <a href="${popup.popup_url}">
                                <img src="${popup.file_path}" alt="팝업1">
                            </a>
                        </div>
                    </div>
                    <div class="popup__btn">
                        <div class="checkbox">
        <%--                    <input type="checkbox" id="today-1" name="logingroup">--%>
        <%--                    <label for="today-1">오늘 하루 보지 않기</label>--%>
                        </div>
                        <a href="#none" onclick="closePopup(${status.count})" class="btn submit btn-lg">닫기</a>
                    </div>
                </div>
            </div>
        </c:forEach>


    </c:if>

</div>


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

    function closePopup(num){
        $('#popup_main' + num).hide();
    }
    // $(document).ready(function () {
    //     $('.popup').show();
    //     cookiedata = document.cookie;
    //     if ( cookiedata.indexOf("popup_1=done") < 0 ){ //쿠키 변경 여부 불러오기
    //         document.all['popup_1'].style.visibility = "visible";
    //     } else {
    //         document.all['popup_1'].style.display = "none";
    //     } PopupBgDisplay();
    // });
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