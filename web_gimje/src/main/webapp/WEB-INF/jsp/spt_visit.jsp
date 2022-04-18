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
        <div class="page__breadcrumbs--box">
            <div class="page__breadcrumbs--inner">
                <span>홈</span>
                <span>고객 지원</span>
                <div class="under__depth">
                    <a href="#" class="under__depth--anchor">견학 신청</a>
                    <div class="under__depth--list">
                        <a href="spt_faq">FAQ</a>
                        <a href="spt_prevent?page=1">상담 신청</a>
                        <%--<a href="spt_email?page=1">온라인 문의</a>--%>
                        <a href="spt_visit?page=1">견학 신청</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">견학 신청</h2>
                <div class="page__location">
                    <div class="location__deco">스마트팜 혁신밸리 실증단지의 이해를 돕기 위하여 현장 견학을 실시하고 있습니다.</div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <div class="spt__container">
                <div class="visit__banner">
                    <div class="visit__banner--title"><strong>실증단지 견학은 신증단지의 시설을 확인하고 설명을 들을 수 있습니다.</strong><br>
                        실증단지 견학시, 실증사업에 참여중인 기업의 연구 목적에 따라 일부 시설은<br>
                        제한될 수 있으며, 사정에 따라 견학 코스가 변경이 될 수 있습니다.</div>
                </div>
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
                        </nav>
                        <div class="monthpicker--content">
                            <div class="monthpicker--months monthpicker--body active">
                                <div class="monthpicker--cells monthpicker--cells-months">
                                    <div class="monthpicker--cell monthpicker--cell-month disabled" data-month="0">1월</div>
                                    <div class="monthpicker--cell monthpicker--cell-month disabled" data-month="1">2월</div>
                                    <div class="monthpicker--cell monthpicker--cell-month disabled" data-month="2">3월</div>
                                    <div class="monthpicker--cell monthpicker--cell-month disabled" data-month="3">4월</div>
                                    <div class="monthpicker--cell monthpicker--cell-month disabled" data-month="4">5월</div>
                                    <div class="monthpicker--cell monthpicker--cell-month disabled" data-month="5">6월</div>
                                    <div class="monthpicker--cell monthpicker--cell-month disabled" data-month="6">7월</div>
                                    <div class="monthpicker--cell monthpicker--cell-month disabled" data-month="7">8월</div>
                                    <div class="monthpicker--cell monthpicker--cell-month disabled" data-month="10">9월</div>
                                    <div class="monthpicker--cell monthpicker--cell-month current selected" data-month="9">10월</div>
                                    <div class="monthpicker--cell monthpicker--cell-month" data-month="10">11월</div>
                                    <div class="monthpicker--cell monthpicker--cell-month" data-month="11">12월</div>
                                </div>
                            </div>
                        </div>
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
                        <c:if test="${is_login eq true}"><a href="#popup_visit" class="btn submit btn-jumbo  js-modal-detail">견학 신청서 작성</a></c:if>
                        <c:if test="${is_login eq false}"><button href="void(0);" id="visit_warning" class="btn submit btn-jumbo  js-modal-detail">견학 신청서 작성</button></c:if>

                    </div>
                </div>
                <div <c:if test="${is_login eq false}">hidden</c:if>>
                    <div class="table__caption">나의 견학 신청</div>
                    <div class="table__type "><!--no--head-->
                        <table class="table__type--my">
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
                                <th>견학 목적</th>
                                <th>상태</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${visitReqVOS}" var="visit" varStatus="status">
                            <tr>
                                <td>
                                    <c:if test="${visit.is_group eq 0}">개인</c:if>
                                    <c:if test="${visit.is_group eq 1}">단체</c:if>
                                </td>
                                <td>${visit.visitor}</td>
                                <td><fmt:formatDate value="${visit.resulvation_date}" pattern="yyyy-MM-dd" /></td>
                                <td class="td__left"><a href="#popup_visit_view" class="js-modal-detail">${visit.visit_goal}</a></td>
                                <td>
                                    <c:if test="${visit.visit_req_status eq 0}">신청</c:if>
                                    <c:if test="${visit.visit_req_status eq 1}">접수</c:if>
                                    <c:if test="${visit.visit_req_status eq 2}">승인</c:if>
                                    <c:if test="${visit.visit_req_status eq 3}">방문</c:if>
                                    <c:if test="${visit.visit_req_status eq 4}">방문완료</c:if>
                                    <c:if test="${visit.visit_req_status eq 5}">방문취소</c:if>
                                    <c:if test="${visit.visit_req_status eq 6}">승인거절</c:if>
                                </td>
                            </tr>
                                </c:forEach>
    <%--                        <tr>
                                <td>단체</td>
                                <td>도레미</td>
                                <td>YYYY.MM.DD</td>
                                <td class="td__left"><a href="#popup_visit_view" class="js-modal-detail">신청서 작성</a></td>
                                <td>접수</td>
                            </tr>--%>
                            </tbody>
                        </table>
                        <!--//-->
                    </div>
                </div>
            </div>
        </div>


        <div id="popup_visit" class="pop__detail">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="<%=request.getContextPath()%>/static/assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">견학신청서 작성</h5>

                    <div class="popup__scroll--area">
                        <div class="table__type">
                            <table class="table__type--normal">
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:80%">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th class="th__left">구분<span class="text__essential">*</span></th>
                                    <td class="td__left">
                                        <div class="radio radio--inline">
                                            <input type="radio" id="people-1" name="people-range">
                                            <label for="people-1">개인</label>
                                        </div>
                                        <div class="radio radio--inline">
                                            <input type="radio" id="people-2" name="people-range">
                                            <label for="people-2">단체</label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">단체명<span class="text__essential">*</span></th>
                                    <td class="td__left"><input type="text" placeholder="단체명을 입력해주세요." style="width:350px;" />
                                        <br><span class="text--guide">개인의 경우 입력을 하지 않으셔도 됩니다.</span></td>
                                </tr>
                                <tr>
                                    <th class="th__left">신청인 성명<span class="text__essential">*</span></th>
                                    <td class="td__left"><input type="text" placeholder="신청인에 이름을 입력해 주세요." style="width:350px;" /></td>
                                </tr>
                                <tr>
                                    <th class="th__left">견학 희망일<span class="text__essential">*</span></th>
                                    <td class="td__left"><input type="text" class="datepicker" /><!--<span class="text&#45;&#45;guide">최소 10일 전에 신청해 주세요.</span>-->
                                        &nbsp;&nbsp;&nbsp;&nbsp;<div class="radio radio--inline">
                                            <input type="radio" id="day-1" name="day-range">
                                            <label for="day-1">오전</label>
                                        </div>
                                        <div class="radio radio--inline">
                                            <input type="radio" id="day-2" name="day-range">
                                            <label for="day-2">오후</label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">견학 인원<span class="text__essential">*</span></th>
                                    <td class="td__left"><div class="input--group"><input type="number" placeholder="" style="width:80px;" class="user__input" /><span class="user__text">명</span></div></td>
                                </tr>
                                <tr>
                                    <th class="th__left">연락처<span class="text__essential">*</span></th>
                                    <td class="td__left"><input type="tel" style="width:80px;" /><span class="text__dash">-</span><input type="tel" style="width:80px;" /><span class="text__dash">-</span><input type="tel" style="width:80px;" /></td>
                                </tr>
                                <tr>
                                    <th class="th__left">이메일<span class="text__essential">*</span></th>
                                    <td class="td__left"><input type="text" style="width:100px;" /><span class="text__dash">@</span><input type="tel" style="width:100px;" />
                                        <select name="" id="">
                                            <option value="">직접입력</option>
                                            <option value="">naver.com</option>
                                            <option value="">naver.com</option>
                                            <option value="">naver.com</option>
                                            <option value="">naver.com</option>
                                            <option value="">naver.com</option>
                                        </select>
                                        <br><span class="text--guide">확정 메일 및 확정 결과를 메일로 알려 드립니다. 정확히 입력해 주세요.</span>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">거주지 주소</th>
                                    <td class="td__left"><input type="text" placeholder="우편번호" style="width:180px;" /> <span class="text__zipcode"><a href="#" class="btn dark btn-lg">주소검색</a></span>
                                        <input type="text" placeholder="상세주소">
                                        <input type="text" placeholder="나머지 주소">
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">견학 목적<span class="text__essential">*</span></th>
                                    <td class="td__left"><input type="text" placeholder="견학목적을 입력해주세요."></td>
                                </tr>
                                <tr>
                                    <th class="th__left">기타사전 질문</th>
                                    <td class="td__left"><input type="text" placeholder="입력"></td>
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
                <a href="#none" class="js-modal-close"><img src="<%=request.getContextPath()%>/static/assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">견학신청 내용</h5>

                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:20%">
                                <col style="width:80%">
                            </colgroup>
                            <tbody>
                            <tr>
                                <th class="th__left">상태</th>
                                <td class="td__left"><strong>접수중</strong> <strong class="cl-gr">예약완료</strong> <strong class="cl-red">예약취소</strong></td>
                            </tr>
                            <tr>
                                <th class="th__left">구분</th>
                                <td class="td__left">단체</td>
                            </tr>
                            <tr>
                                <th class="th__left">단체명</th>
                                <td class="td__left">도레미파솔라시도</td>
                            </tr>
                            <tr>
                                <th class="th__left">신청인 성명</th>
                                <td class="td__left">김도도</td>
                            </tr>
                            <tr>
                                <th class="th__left">견학 희망일</th>
                                <td class="td__left">2021년 00월 00일</td>
                            </tr>
                            <tr>
                                <th class="th__left">견학 인원</th>
                                <td class="td__left">00 명</td>
                            </tr>
                            <tr>
                                <th class="th__left">연락처</th>
                                <td class="td__left">000-0000-0000</td>
                            </tr>
                            <tr>
                                <th class="th__left">이메일</th>
                                <td class="td__left">xxxx@xxxx.xxx</td>
                            </tr>
                            <tr>
                                <th class="th__left">거주지 주소</th>
                                <td class="td__left">서울시 xxxxxxxxxxxxxxxx  xxx</td>
                            </tr>
                            <tr>
                                <th class="th__left">견학 목적</th>
                                <td class="td__left">xxxx xxxx</td>
                            </tr>
                            <tr>
                                <th class="th__left">기타사전 질문</th>
                                <td class="td__left">xxxxxxxx xxxx xxxx</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="popup__btn">
                    <a href="#popup_visit_cancel" class="btn cancel btn-lg fl-left js-modal-detail">신청 취소</a>
                    <a href="#" class="btn submit btn-lg  js-btn-close">확인</a>
                </div>


            </div>
        </div>

        <div id="popup_visit_cancel" class="pop__mini ">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="<%=request.getContextPath()%>/static/assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">전북 김제 스마트팜 혁신밸리<br>실증단지</h5>
                    <span class="popup__message">견학신청을 취소하겠습니까?</span>
                </div>
                <div class="popup__btn">
                    <a href="#" class="btn light btn-lg  js-btn-close">아니오</a>
                    <a href="#popup_cancel_ok" class="btn submit btn-lg  js-modal-detail">예,취소</a>
                </div>
            </div>
        </div>

        <div id="popup_cancel_ok" class="pop__mini ">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="<%=request.getContextPath()%>/static/assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">전북 김제 스마트팜 혁신밸리<br>실증단지</h5>
                    <span class="popup__message">견학신청이 취소되었습니다.</span>
                </div>
                <div class="popup__btn align__right">
                    <a href="#" class="btn w-auto submit btn-lg  js-btn-close">확인</a>
                </div>
            </div>
        </div>

    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>
<script>
    $("#visit_warning").click(function() {
        var result = confirm('신청하려면 로그인이 필요합니다. 로그인 페이지로 이동하시겠습니까');
        if(result) {
            location.replace('login');
        } else {

        }


    });
</script>
</div>
</body>
</html>