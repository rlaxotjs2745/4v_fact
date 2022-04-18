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
    <!--//-->
    <div class="page__body">
        <div class="page__breadcrumbs--box">
            <div class="page__breadcrumbs--inner">
                <span>홈</span>
                <span>1Depth</span>
                <span>2Depth</span>
                <div class="under__depth">
                    <a href="#" class="under__depth--anchor">2Depth</a>
                    <div class="under__depth--list">
                        <a href="#">2Depth 1-1</a>
                        <a href="#">2Depth 1-2</a>
                        <a href="#">2Depth 1-3</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">2Depth 타이틀</h2>
                <div class="page__location">
                    <div class="location__deco">텍스트 텍스트 텍스트 텍스트 </div>
                    <div class="location__link">
                        <a href="#" class="location__link--anchor is-selected">3Depth-01</a>
                        <a href="#" class="location__link--anchor ">3Depth-02</a>
                        <a href="#" class="location__link--anchor ">3Depth-03</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="page__cnt">
            <h3 class="page__subject">3Depth-01</h3>
            <div class="page__cnt">텍스트 텍스트 텍스트 텍스트텍스트 텍스트 텍스트 텍스트<br>텍스트 텍스트 텍스트 텍스트</div>
            <br>
            <br>
            <br>
            <br>
            <input type="file" class="fileupload" />
            <br>
            <br>
            <br>
            <br>
            <br>
            <h2>BUTTON</h2>
            <div class="form__btn">
                <a href="#" class="btn submit">+ 버튼텍스트</a>
                <a href="#" class="btn info">+ 버튼텍스트</a>
                <a href="#" class="btn dark">+ 버튼텍스트</a>
                <a href="#" class="btn light">+ 버튼텍스트</a>
                <a href="#" class="btn default">+ 버튼텍스트</a>
            </div>
            <br>
            <br>
            <div class="form__btn">
                <a href="#" class="btn submit disabled">+ 버튼텍스트</a>
                <a href="#" class="btn info disabled">+ 버튼텍스트</a>
                <a href="#" class="btn dark disabled">+ 버튼텍스트</a>
                <a href="#" class="btn light disabled">+ 버튼텍스트</a>
                <a href="#" class="btn default disabled">+ 버튼텍스트</a>
            </div>
            <br>
            <br>
            <div class="form__btn">
                <a href="#" class="btn submit btn-lg">+ 버튼텍스트</a>
                <a href="#" class="btn info btn-lg">+ 버튼텍스트</a>
                <a href="#" class="btn dark btn-lg">+ 버튼텍스트</a>
                <a href="#" class="btn light btn-lg">+ 버튼텍스트</a>
                <a href="#" class="btn default btn-lg">+ 버튼텍스트</a>
            </div>
            <br>
            <br>
            <div class="form__btn">
                <a href="#" class="btn submit btn-jumbo">+ 버튼텍스트</a>
                <a href="#" class="btn info btn-jumbo">+ 버튼텍스트</a>
                <a href="#" class="btn dark btn-jumbo">+ 버튼텍스트</a>
                <a href="#" class="btn light btn-jumbo">+ 버튼텍스트</a>
                <a href="#" class="btn default btn-jumbo">+ 버튼텍스트</a>
            </div>
            <br>
            <br>
            <div class="form__btn">
                <a href="#" class="btn btn-more">+ 더보기</a>
            </div>
            <br>
            <br>
            <br>
            <br>
            <h2>CHECKBOX <br>RADIO BUTTON</h2>
            <div class="radio">
                <input type="radio" name="select-range" id="range-1">
                <label for="range-1">입고일정</label>
            </div>
            <div class="radio">
                <input type="radio" name="select-range" id="range-2">
                <label for="range-2">입고일정</label>
            </div>
            <div class="radio">
                <input type="radio" name="select-range" id="range-3" checked disabled>
                <label for="range-3">입고일정</label>
            </div>
            <div class="checkbox">
                <input type="checkbox" id="agree-1" name="timetable">
                <label for="agree-1">텍스트</label>
            </div>
            <div class="checkbox">
                <input type="checkbox" id="agree-2" name="timetable">
                <label for="agree-2">텍스트2</label>
            </div>
            <div class="checkbox">
                <input type="checkbox" id="agree-3" name="timetable" checked disabled>
                <label for="agree-3">텍스트3</label>
            </div>
            <br>
            <br>
            <br>
            <h2>input</h2>
            <div>
                <input type="text" class="text" placeholder="입력해주세요.">
            </div>
            <div>
                <input type="text" class="text" value="입력해주세요." readonly disabled>
            </div>
            <br>
            <br>
            <div>
                <select name="aaa" id="bbb">
                    <option value="1">직접입력</option>
                    <option value="2">직접입력</option>
                    <option value="3">직접입력</option>
                    <option value="4">직접입력</option>
                </select>
            </div>
            <br>
            <br>
            <div>
                <input type="text" class="datepicker" />
            </div>

            <div class="page__cnt">
                <h3 class="page__subject">실증서비스 유형</h3>
                <div class="page__text">텍스트 텍스트 텍스트 텍스트텍스트 텍스트 텍스트 텍스트<br>텍스트 텍스트 텍스트 텍스트</div>
            </div>

            <div class="page__cnt">
                <div id="main_popup" class="main__popup is-on">
                    <div class="section">
                        <div class="popup-image">
                            <a href="event"><img src="" alt=""></a>
                        </div>
                        <!--//-->
                        <div class="check-today">
                            <div class="checkbox">
                                <input type="checkbox" id="not-today" />
                                <label for="not-today">오늘 하루 열지 않기</label>
                            </div>
                            <a href="#none" class="popup__close js-main-close">닫기</a>
                        </div>
                    </div>
                </div>


                <div class="table__matter"><span class="text__essential">* 표시는 필수사항 입니다.</span></div>
                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:30%">
                            <col style="width:70%">
                        </colgroup>
                        <thead>
                        <tr>
                            <th>항목</th>
                            <th>파일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th class="th__left">실증단지 이용신청서<span class="text__essential">*</span></th>
                            <td class="td__left"><input type="file" class="fileupload"></td>
                        </tr>
                        <tr>
                            <th class="th__left">실증계획서<span class="text__essential">*</span></th>
                            <td class="td__left"><input type="file" class="fileupload"> <span class="text__check">HWP, PDF, DOC, PPT 파일 첨부 가능</span></td>
                        </tr>
                        <tr>
                            <th class="th__left">작물재배계획서<span class="text__comment">(해당자에 한함)</span></th>
                            <td class="td__left"><input type="file" class="fileupload"> <span class="text__check">HWP, PDF, DOC, PPT 파일 첨부 가능</span></td>
                        </tr>
                        <tr>
                            <th class="th__left">사업자등록증 사본</th>
                            <td class="td__left"><input type="file" class="fileupload"> <span class="text__check">HWP, PDF, DOC, PPT 파일 첨부 가능</span></td>
                        </tr>
                        <tr>
                            <th class="th__left">대표자 주민등록등본</th>
                            <td class="td__left"><input type="file" class="fileupload"> <span class="text__check">HWP, PDF, DOC, PPT 파일 첨부 가능</span></td>
                        </tr>
                        <tr>
                            <th class="th__left">재무제표 또는 회계감사 보고서</th>
                            <td class="td__left"><input type="file" class="fileupload"> <span class="text__check">HWP, PDF, DOC, PPT 파일 첨부 가능</span></td>
                        </tr>
                        <tr>
                            <th class="th__left">사인감증명서<span class="text__essential">*</span></th>
                            <td class="td__left"><input type="file" class="fileupload"> <span class="text__check">HWP, PDF, DOC, PPT 파일 첨부 가능</span></td>
                        </tr>
                        <tr>
                            <th class="th__left">실증대상 기자재 및 장치 등의 설치계획<span class="text__essential">*</span></th>
                            <td class="td__left"><input type="file" class="fileupload"> <span class="text__check">HWP, PDF, DOC, PPT 파일 첨부 가능</span></td>
                        </tr>
                        <tr>
                            <th class="th__left">실증장비 운전조건 및 실증방법 기술서<span class="text__essential">*</span></th>
                            <td class="td__left"><input type="file" class="fileupload"> <span class="text__check">HWP, PDF, DOC, PPT 파일 첨부 가능</span></td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="table__desc">
                        <ul>
                            <li>서류 등록 후, 변경이 필요한 경우는 ‘실증 안내/신청 &gt; 신청서 작성 &gt; 신청서 등록/보완’ 메뉴 화면의 ‘신청서 보완’ 버튼을 통해 변경하실 수 있습니다.</li>
                        </ul>
                    </div>
                </div>


                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:21%">
                            <col style="width:57%">
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th rowspan="2">항목</th>
                            <th rowspan="2">산출</th>
                            <th>임대료 (원/일)</th>
                        </tr>
                        <tr>
                            <th>전북 김제 (1,260m2, 유리)</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>온실사용료</td>
                            <td>(시설가액+부지가액) × 대부료율(1%)</td>
                            <td>47,624</td>
                        </tr>
                        <tr>
                            <td>경영비</td>
                            <td>농진청 2019 농축산물소득자료집(촉성딸기 기준)</td>
                            <td>26,453</td>
                        </tr>
                        <tr class="subtotal">
                            <td>소계</td>
                            <td></td>
                            <td>74,077</td>
                        </tr>
                        <tr>
                            <td>보조난방(가스)</td>
                            <td>122.25L/h × 1285.25원/L × 5개월 × 3시간</td>
                            <td>36,526</td>
                        </tr>
                        <tr>
                            <td>CO2 발생기</td>
                            <td>3.2L/h × 4시간 × 950원/L × 7개월(4~10월)</td>
                            <td>12,160</td>
                        </tr>
                        <tr>
                            <td>지열전기료</td>
                            <td>15,000(원/m2) × 1260m2 × 8개월(8h/일)</td>
                            <td>17,500</td>
                        </tr>
                        <tr class="subtotal">
                            <td>합계</td>
                            <td></td>
                            <td>140,263</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="table__type "><!--no--head-->
                    <table class="table__type--board">
                        <colgroup>
                            <col style="width:20%">
                            <col>
                            <col style="width:20%">
                        </colgroup>
                        <thead>
                        <tr>
                            <th class="th__left">제목</th>
                            <th class="th__left">용도</th>
                            <th>파일 형식별 내려받기</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="td__left">파일 형식별 내려받기</td>
                            <td class="td__left">2021년 종자생명산업 맞춤형 인력양성」 교육훈련생 선정 결과 알림</td>
                            <td class="td__data"><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_doc.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_pdf.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_hwp.png" alt=""></a></td>
                        </tr>
                        <tr>
                            <td class="td__left">파일 형식별 내려받기</td>
                            <td class="td__left">2021년 종자생명산업 맞춤형 인력양성」 교육훈련생 선정 결과 알림</td>
                            <td class="td__data"><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_jpg.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_png.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_jpg.png" alt=""></a></td>
                        </tr>
                        <tr>
                            <td class="td__left">파일 형식별 내려받기</td>
                            <td class="td__left">2021년 종자생명산업 맞춤형 인력양성」 교육훈련생 선정 결과 알림</td>
                            <td class="td__data"><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_ppt.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_xls.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_png.png" alt=""></a></td>
                        </tr>
                        <tr>
                            <td class="td__left">파일 형식별 내려받기</td>
                            <td class="td__left">2021년 종자생명산업 맞춤형 인력양성」 교육훈련생 선정 결과 알림</td>
                            <td class="td__data"><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_png.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_hwp.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_ppt.png" alt=""></a></td>
                        </tr>
                        <tr>
                            <td class="td__left">파일 형식별 내려받기</td>
                            <td class="td__left">2021년 종자생명산업 맞춤형 인력양성」 교육훈련생 선정 결과 알림</td>
                            <td class="td__data"><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_doc.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_pdf.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_hwp.png" alt=""></a></td>
                        </tr>
                        <tr>
                            <td class="td__left">파일 형식별 내려받기</td>
                            <td class="td__left">2021년 종자생명산업 맞춤형 인력양성」 교육훈련생 선정 결과 알림</td>
                            <td class="td__data"><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_jpg.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_png.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_jpg.png" alt=""></a></td>
                        </tr>
                        <tr>
                            <td class="td__left">파일 형식별 내려받기</td>
                            <td class="td__left">2021년 종자생명산업 맞춤형 인력양성」 교육훈련생 선정 결과 알림</td>
                            <td class="td__data"><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_ppt.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_xls.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_png.png" alt=""></a></td>
                        </tr>
                        <tr>
                            <td class="td__left">파일 형식별 내려받기</td>
                            <td class="td__left">2021년 종자생명산업 맞춤형 인력양성」 교육훈련생 선정 결과 알림</td>
                            <td class="td__data"><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_png.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_hwp.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_ppt.png" alt=""></a></td>
                        </tr>
                        <tr>
                            <td class="td__left">파일 형식별 내려받기</td>
                            <td class="td__left">2021년 종자생명산업 맞춤형 인력양성」 교육훈련생 선정 결과 알림</td>
                            <td class="td__data"><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_doc.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_pdf.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_hwp.png" alt=""></a></td>
                        </tr>
                        <tr>
                            <td class="td__left">파일 형식별 내려받기</td>
                            <td class="td__left">2021년 종자생명산업 맞춤형 인력양성」 교육훈련생 선정 결과 알림</td>
                            <td class="td__data"><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_jpg.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_png.png" alt=""></a><a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_jpg.png" alt=""></a></td>
                        </tr>
                        </tbody>
                    </table>
                    <!--//-->
                    <div class="table__paging">
                        <a href="#none" class="paging__prev2 disabled"><img src="<%=request.getContextPath()%>/static/assets/image/ico_paging_prev_02.png" alt=""></a>
                        <a href="#none" class="paging__prev disabled"><img src="<%=request.getContextPath()%>/static/assets/image/ico_paging_prev.png" alt=""></a>
                        <a href="#none" class="is-active">1</a>
                        <a href="#none">2</a>
                        <a href="#none">3</a>
                        <a href="#none">4</a>
                        <a href="#none">5</a>
                        <a href="#none">6</a>
                        <a href="#none">7</a>
                        <a href="#none">8</a>
                        <a href="#none">9</a>
                        <a href="#none">10</a>
                        <a href="#none" class="paging__next"><img src="<%=request.getContextPath()%>/static/assets/image/ico_paging_next.png" alt=""></a>
                        <a href="#none" class="paging__next2"><img src="<%=request.getContextPath()%>/static/assets/image/ico_paging_next_02.png" alt=""></a>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</div>

<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

<script>
    var swiperMain = new Swiper(".swiper__main", {
        centeredSlides: true,
        loop: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
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


    var swiperSalon = new Swiper(".swiper__salon", {
        centeredSlides: true,
        loop: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
    });
    $(".swiper-salon-button-pause").click(function(){
        swiperSalon.autoplay.stop();
        $(".swiper-salon-button-play").show();
        $(".swiper-salon-button-pause").hide();
    });
    $(".swiper-salon-button-play").click(function(){
        swiperSalon.autoplay.start();
        $(".swiper-salon-button-pause").show();
        $(".swiper-salon-button-play").hide();
    });
    var swiperEvent = new Swiper(".swiper__event", {
        slidesPerView: 2.5,
        spaceBetween: 30,
        grabCursor: true,
        breakpoints: {
            480: {
                slidesPerView: 1.5,
                spaceBetween: 15,
            },
            960: {
                slidesPerView: 1.5,
                spaceBetween: 30,
            },
            1400: {
                slidesPerView: 2.5,
                spaceBetween: 30,
            },
        },
    });
</script>

</div>
</body>
</html>