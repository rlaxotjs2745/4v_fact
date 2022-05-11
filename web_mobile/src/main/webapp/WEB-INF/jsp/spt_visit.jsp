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


<div class="page__h1">견학 신청</div>
</header>
<div class="content" id="content">
    <div class="page__body">

        <div class="page__cnt">
            <div class="spt__container">
                <div class="visit__banner">
                    <div class="visit__banner--title"><strong>실증단지 견학은 신증단지의 시설을 확인하고 설명을 들을 수 있습니다.</strong><br>
                        실증단지 견학시, 실증사업에 참여중인 기업의 연구 목적에 따라 일부 시설은<br>
                        제한될 수 있으며, 사정에 따라 견학 코스가 변경이 될 수 있습니다.</div>
                </div>
                <!--//-->

                <div class="cnt__title">2021년 견학 가능일</div>
                <div class="prevent__support">
                    <ul>
                        <li>견학 가능한 일자를 확인해 주시고 신청해 주십시오.</li>
                    </ul>
                </div>
                <div class="visit__calendar">
                    <div class="monthpicker" style="">
                        <nav class="monthpicker--nav">
                            <div class="monthpicker--nav-title">2021</div>
                            <div class="monthpicker--nav-option">
                                <select name="" id="">
                                    <option value="0">1월</option>
                                    <option value="0">2월</option>
                                    <option value="0">3월</option>
                                    <option value="0">4월</option>
                                    <option value="0">5월</option>
                                    <option value="0">6월</option>
                                    <option value="0">7월</option>
                                    <option value="0">8월</option>
                                    <option value="0">9월</option>
                                    <option value="0">10월</option>
                                    <option value="0">11월</option>
                                    <option value="0">12월</option>
                                </select>
                            </div>
                        </nav>
                    </div>
                    <div class="daypicker">
                        <nav class="daypicker--nav">
                            <div class="daypicker--nav-title">2021년 10월</div>
                            <div class="daypicker--nav-option">
                                <span class="option able">예약 가능</span>
                                <span class="option be-not">예약 불가</span>
                                <span class="option finish">예약 마감</span>
                            </div>
                        </nav>
                        <div class="daypicker--content">
                            <div class="daypicker--days daypicker--body">
                                <div class="daypicker--days-names">
                                    <div class="daypicker--day-name">월</div>
                                    <div class="daypicker--day-name">화</div>
                                    <div class="daypicker--day-name">수</div>
                                    <div class="daypicker--day-name">목</div>
                                    <div class="daypicker--day-name">금</div>
                                    <div class="daypicker--day-name weekend">토</div>
                                    <div class="daypicker--day-name weekend">일</div>
                                </div>
                                <div class="daypicker--cells daypicker--cells-days">
                                    <div class="daypicker--cell daypicker--cell-day other-month disabled" data-date="27" data-month="9" data-year="2021">27</div>
                                    <div class="daypicker--cell daypicker--cell-day other-month disabled" data-date="28" data-month="9" data-year="2021">78</div>
                                    <div class="daypicker--cell daypicker--cell-day other-month disabled" data-date="29" data-month="9" data-year="2021">29</div>
                                    <div class="daypicker--cell daypicker--cell-day other-month disabled" data-date="30" data-month="9" data-year="2021">30</div>
                                    <div class="daypicker--cell daypicker--cell-day disabled" data-date="1" data-month="10" data-year="2021">1</div>
                                    <div class="daypicker--cell daypicker--cell-day weekend disabled" data-date="2" data-month="10" data-year="2021">2</div>
                                    <div class="daypicker--cell daypicker--cell-day weekend disabled" data-date="3" data-month="10" data-year="2021">3</div>
                                    <div class="daypicker--cell daypicker--cell-day disabled" data-date="4" data-month="10" data-year="2021">4</div>
                                    <div class="daypicker--cell daypicker--cell-day disabled" data-date="5" data-month="10" data-year="2021">5</div>
                                    <div class="daypicker--cell daypicker--cell-day disabled" data-date="6" data-month="10" data-year="2021">6</div>
                                    <div class="daypicker--cell daypicker--cell-day disabled" data-date="7" data-month="10" data-year="2021">7</div>
                                    <div class="daypicker--cell daypicker--cell-day disabled" data-date="8" data-month="10" data-year="2021">8</div>
                                    <div class="daypicker--cell daypicker--cell-day weekend disabled" data-date="9" data-month="10" data-year="2021">9</div>
                                    <div class="daypicker--cell daypicker--cell-day weekend disabled" data-date="10" data-month="10" data-year="2021">10</div>
                                    <div class="daypicker--cell daypicker--cell-day disabled" data-date="11" data-month="10" data-year="2021">11</div>
                                    <div class="daypicker--cell daypicker--cell-day disabled" data-date="12" data-month="10" data-year="2021">12</div>
                                    <div class="daypicker--cell daypicker--cell-day able" data-date="13" data-month="10" data-year="2021">13</div>
                                    <div class="daypicker--cell daypicker--cell-day able" data-date="14" data-month="10" data-year="2021">14</div>
                                    <div class="daypicker--cell daypicker--cell-day able" data-date="15" data-month="10" data-year="2021">15</div>
                                    <div class="daypicker--cell daypicker--cell-day able weekend" data-date="16" data-month="10" data-year="2021">16</div>
                                    <div class="daypicker--cell daypicker--cell-day be-not weekend" data-date="17" data-month="10" data-year="2021">17</div>
                                    <div class="daypicker--cell daypicker--cell-day be-not" data-date="18" data-month="10" data-year="2021">18</div>
                                    <div class="daypicker--cell daypicker--cell-day be-not" data-date="19" data-month="10" data-year="2021">19</div>
                                    <div class="daypicker--cell daypicker--cell-day able" data-date="20" data-month="10" data-year="2021">20</div>
                                    <div class="daypicker--cell daypicker--cell-day be-not" data-date="21" data-month="10" data-year="2021">21</div>
                                    <div class="daypicker--cell daypicker--cell-day be-not" data-date="22" data-month="10" data-year="2021">22</div>
                                    <div class="daypicker--cell daypicker--cell-day able weekend" data-date="23" data-month="10" data-year="2021">23</div>
                                    <div class="daypicker--cell daypicker--cell-day be-not weekend" data-date="24" data-month="10" data-year="2021">24</div>
                                    <div class="daypicker--cell daypicker--cell-day be-not current" data-date="25" data-month="10" data-year="2021">25</div>
                                    <div class="daypicker--cell daypicker--cell-day able" data-date="26" data-month="10" data-year="2021">26</div>
                                    <div class="daypicker--cell daypicker--cell-day be-not" data-date="27" data-month="10" data-year="2021">27</div>
                                    <div class="daypicker--cell daypicker--cell-day able" data-date="28" data-month="10" data-year="2021">28</div>
                                    <div class="daypicker--cell daypicker--cell-day able" data-date="29" data-month="10" data-year="2021">29</div>
                                    <div class="daypicker--cell daypicker--cell-day able weekend" data-date="30" data-month="10" data-year="2021">30</div>
                                    <div class="daypicker--cell daypicker--cell-day be-not weekend" data-date="31" data-month="10" data-year="2021">31</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--//-->

                <div class="cnt__btn type--topborder">
                    <div class="btn__group">
                        <a href="#popup_visit" class="btn submit btn-jumbo  js-modal-detail">견학 신청서 작성</a>
                    </div>
                </div>

                <div class="table__caption">나의 견학 신청</div>
                <div class="table__type "><!--no--head-->
                    <table class="table__type--my ">
                        <colgroup>
                            <col style="width:10%">
                            <col style="width:12%">
                            <col style="width:14%">
                            <col>
                            <col style="width:15%">
                        </colgroup>
                        <thead>
                        <tr>
                            <th>구분</th>
                            <th>신청인</th>
                            <th>견학 희망일</th>
                            <th>주제</th>
                            <th>상태</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>단체</td>
                            <td>도레미</td>
                            <td>YYYY.MM.DD</td>
                            <td class="td__left"><a href="#popup_visit_view" class="js-modal-detail">신청서 작성</a></td>
                            <td>접수</td>
                        </tr>
                        <tr>
                            <td>단체</td>
                            <td>도레미</td>
                            <td>YYYY.MM.DD</td>
                            <td class="td__left"><a href="#popup_visit_view" class="js-modal-detail">신청서 작성</a></td>
                            <td>접수</td>
                        </tr>
                        </tbody>
                    </table>
                    <!--//-->
                </div>
            </div>
        </div>

    </div>
</div>

<div id="popup_visit" class="pop__detail">
    <div class="section">
        <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
        <div class="popup__cnt">
            <h5 class="popup__title">견학신청서 작성</h5>

            <div class="popup__scroll--area">
                <div class="table__type">
                    <table class="table__type--my table__fixed">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">구분<span class="text__essential">*</span></div>
                                <div class="td__block">
                                    <div class="radio radio--inline">
                                        <input type="radio" id="people-1" name="people-range">
                                        <label for="people-1">개인</label>
                                    </div>
                                    <div class="radio radio--inline">
                                        <input type="radio" id="people-2" name="people-range">
                                        <label for="people-2">단체</label>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">단체명<span class="text__essential">*</span></div>
                                <div class="td__block">
                                    <input type="text" placeholder="단체명을 입력해주세요." /><span class="text--guide">개인의 경우 입력을 하지 않으셔도 됩니다.</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">신청인 성명<span class="text__essential">*</span></div>
                                <div class="td__block"><input type="text" placeholder="신청인에 이름을 입력해 주세요." /></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">견학 희망일<span class="text__essential">*</span></div>
                                <div class="td__block"><input type="text" class="datepicker" /><span class="text--guide">최소 10일 전에 신청해 주세요.</span></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">견학 인원<span class="text__essential">*</span></div>
                                <div class="td__block"><div class="input--group"><input type="number" placeholder="" style="width:80px;" class="user__input" /><span class="user__text">명</span></div></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">연락처<span class="text__essential">*</span></div>
                                <div class="td__block">
                                    <input type="tel" style="width:80px;" /><span class="text__dash">-</span><input type="tel" style="width:80px;" /><span class="text__dash">-</span><input type="tel" style="width:80px;" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">이메일<span class="text__essential">*</span></div>
                                <div class="td__block">
                                    <input type="text" style="margin-bottom:5px;" /><span class="text__dash">@</span><input type="tel" style="width:calc(100% - 170px);" />
                                    <select name="" id="">
                                        <option value="">직접입력</option>
                                        <option value="">naver.com</option>
                                        <option value="">naver.com</option>
                                        <option value="">naver.com</option>
                                        <option value="">naver.com</option>
                                        <option value="">naver.com</option>
                                    </select><span class="text--guide">확정 메일 및 확정 결과를 메일로 알려 드립니다. 정확히 입력해 주세요.</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">거주지 주소</div>
                                <div class="td__block">
                                    <input type="text" placeholder="우편번호" style="width:80px;" /> <span class="text__zipcode"><a href="#" class="btn dark btn-lg">주소검색</a></span>
                                    <input type="text" placeholder="상세주소">
                                    <input type="text" placeholder="나머지 주소">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">견학 목적<span class="text__essential">*</span></div>
                                <div class="td__block"><input type="text" placeholder="견학목적을 입력해주세요."></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">기타사전 질문</div>
                                <div class="td__block"><input type="text" placeholder="입력"></div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="table__agree">'센터 단체견학' 서비스 제공을 위한 개인정보 수집·이용을 위하여 개인정보 보호법 제15조 및 제22조에 따라 귀하의 동의를 받고자 합니다. 만일 다음 사항 중 어느 하나의 사항을 변경하는 경우에는 이를 사전에 알리고 동의를 받도록 하겠습니다.<br>
                    가. 개인정보의 수집 및 이용 목적
                    -'센터 단체견학' 서비스에 대한 업무 처리
                    나. 수집하려는 개인정보의 항목
                    필수항목: 이름, 전화번호, 전자우편
                    다. 개인정보의 보유 및 이용 기간
                    - 참가종료일로부터 6개월
                    라. 동의를 거부할 권리가 있다는 사실과 동의 거부에 따른 불이익 내용
                    - 귀하는 개인정보의 수집 및 이용에 대한 동의를 거부할 권리가 있으나, 동의하지 않은 경우에는 '센터 단체견학' 신청 등에 불이익이 있을 수 있습니다.
                </div>
                <div class="checkbox ">
                    <input type="checkbox" id="agree-1" name="prevent">
                    <label for="agree-1">개인정보 수집 및 이용에 동의합니다.</label>
                </div>
            </div>

        </div>
        <div class="popup__btn">
            <a href="#" class="btn light btn-lg  js-btn-close">취소</a>
            <a href="#" class="btn submit btn-lg">신청</a>
        </div>

        <!--<div class="form__btn">
          <a href="#none" class="btn-line js-btn-close">이벤트 참여하기</a>
        </div>-->

    </div>
</div>

<div id="popup_visit_view" class="pop__detail">
    <div class="section">
        <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
        <div class="popup__cnt">
            <h5 class="popup__title">견학신청 내용</h5>

            <div class="table__type">
                <table class="table__type--my table__fixed">
                    <colgroup>
                        <col style="width:100%">
                    </colgroup>
                    <tbody>
                    <tr>
                        <td class="td__form">
                            <div class="th__block">구분</div>
                            <div class="td__block">단체</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="td__form">
                            <div class="th__block">단체명</div>
                            <div class="td__block">도레미파솔라시도</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="td__form">
                            <div class="th__block">신청인 성명</div>
                            <div class="td__block">김도도</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="td__form">
                            <div class="th__block">견학 희망일</div>
                            <div class="td__block">2021년 00월 00일</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="td__form">
                            <div class="th__block">견학 인원</div>
                            <div class="td__block">00 명</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="td__form">
                            <div class="th__block">연락처</div>
                            <div class="td__block">000-0000-0000</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="td__form">
                            <div class="th__block">이메일</div>
                            <div class="td__block">xxxx@xxxx.xxx</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="td__form">
                            <div class="th__block">거주지 주소</div>
                            <div class="td__block">서울시 xxxxxxxxxxxxxxxx  xxx</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="td__form">
                            <div class="th__block">견학 목적</div>
                            <div class="td__block">xxxx xxxx</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="td__form">
                            <div class="th__block">기타사전 질문</div>
                            <div class="td__block">xxxxxxxx xxxx xxxx</div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="popup__btn">
            <a href="#popup_cancel" class="btn cancel btn-lg js-modal-detail">신청 취소</a>
            <a href="#" class="btn submit btn-lg js-btn-close">확인</a>
        </div>
    </div>
</div>

<div id="popup_cancel" class="pop__mini ">
    <div class="section">
        <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
        <div class="popup__cnt">
            <h5 class="popup__title">전북 김제 스마트팜 혁신밸리<br>실증단지 </h5>
            <span class="popup__message">견학신청을 취소하겠습니까?</span>
        </div>
        <div class="popup__btn align__right">
            <a href="#" class="btn w-auto light btn-lg  js-btn-close">아니오</a>
            <a href="#popup_cancel_ok" class="btn w-auto submit btn-lg  js-modal-detail">예,취소</a>
        </div>
    </div>
</div>

<div id="popup_cancel_ok" class="pop__mini ">
    <div class="section">
        <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
        <div class="popup__cnt">
            <h5 class="popup__title">전북 김제 스마트팜 혁신밸리<br>실증단지 </h5>
            <span class="popup__message">견학신청이 취소되었습니다.</span>
        </div>
        <div class="popup__btn align__right">
            <a href="#" class="btn w-auto submit btn-lg  js-btn-close">확인</a>
        </div>
    </div>
</div>

<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>

<%@include file ="footer.jsp" %>