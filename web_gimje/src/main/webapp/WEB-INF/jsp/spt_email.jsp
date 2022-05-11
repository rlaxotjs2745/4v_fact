<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:48 오전
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
                    <a href="#" class="under__depth--anchor">고객 지원</a>
                    <div class="under__depth--list">
                        <a href="spt_faq">FAQ</a>
                        <a href="spt_consultilg">상담 신청</a>
                        <%--<a href="spt_email?page=1">온라인 문의</a>--%>
                        <a href="spt_visit">견학 신청</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">온라인 문의</h2>
                <div class="page__location">
                    <div class="location__deco">온라인 문의를 통해 간소한 상담을 받을 수 있습니다.</div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <div class="spt__container">
                <div class="email__banner">
                    <div class="email__banner--title"><strong>실증단지를 이용하고자 하는 자에게 대면상담 보다<br>
                        간소한 상담을 위한 목적으로 운영</strong>이 됩니다.<br>
                        실증단지 이용의 신청서 및 시설등 상세한 안내는 대면상담을 신청해 주십시오.</div>
                </div>

                <div class="cnt__title">온라인 문의 전 당부 말씀</div>
                <div class="prevent__support">
                    <ul>
                        <li>상담을 원하시는 분께서는 실증단지의 시설특성과 사용현황을 파악해 주시기 바랍니다.</li>
                        <li>실증 계획이 있다면 실증 계획을 공유해 주실 수 있는지 검토 바랍니다</li>
                        <li>실증계획의 내용은 홈페이지 ‘실증 안내/신청 &gt; 신청서 작성 &gt; <a href="#none" class="btn btn-anchor">절차 안내 및 내려받기</a>’의 양식을 참고해 주십시오.</li>
                    </ul>
                </div>

                <div class="cnt__title">온라인 문의 가능 분야</div>
                <div class="prevent__support">
                    <ul>
                        <li>실증단지 전반적인 사항</li>
                    </ul>
                </div>
                <!--//-->

                <div class="cnt__btn type--topborder">
                    <div class="btn__group">
                        <c:if test="${is_login eq true}"> <a href="#popup_e_councelling" class="btn submit btn-jumbo  js-modal-detail">온라인문의 신청</a></c:if>
                        <c:if test="${is_login eq false}"><button href="void(0);" id="qna_warning" class="btn submit btn-jumbo  js-modal-detail">온라인문의 신청</button></c:if>
                    </div>
                </div>
                <div <c:if test="${is_login eq false}">hidden</c:if>>
                    <div class="table__caption">온라인상담 이력 : 총 ${total_count}회</div>
                    <div class="table__type "><!--no--head-->
                        <table class="table__type--my">
                            <colgroup>
                                <col style="width:7%">
                                <col style="width:12%">
                                <col>
                                <col style="width:13%">
                                <col style="width:15%">
                            </colgroup>
                            <thead>
                            <tr>
                                <th>상담수</th>
                                <th>상담일</th>
                                <th>주제</th>
                                <th>상담사</th>
                                <th>진행 상</th>
                            </tr>
                            </thead>
                            <tbody>
<c:forEach items="${demoBsQnaVOList}" var="qna" varStatus="status">
                            <tr>
                                <td>6</td>
                                <td><fmt:formatDate value="${qna.reg_date}" pattern="yyyy-MM-dd" /></td>
                                <td class="td__left"><a href="#popup_e_councelling_view" class="js-modal-detail">${qna.qna_subject}</a></td>
                                <td><c:if test="${qna.is_answer eq 0}">답변예정</c:if>
                                    <c:if test="${qna.is_answer eq 1}">홍순이</c:if>
                                </td>
                                <td>
                                    <c:if test="${qna.qna_status eq 0}">답변대기</c:if>
                                    <c:if test="${qna.qna_status eq 1}">답변완료</c:if>
                                    <c:if test="${qna.qna_status eq 1}">해결</c:if>
                                    <c:if test="${qna.qna_status eq 1}">답변불가</c:if>
                                </td>
                            </tr>
</c:forEach>
    <%--
                            <tr>
                                <td>5</td>
                                <td>YYYY.MM.DD</td>
                                <td class="td__left">신청서 작성</td>
                                <td>홍순이</td>
                                <td>회신 완료</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>YYYY.MM.DD</td>
                                <td class="td__left">신청서 작성</td>
                                <td>홍순이</td>
                                <td>회신 완료</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>YYYY.MM.DD</td>
                                <td class="td__left">신청서 작성</td>
                                <td>홍순이</td>
                                <td>회신 완료</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>YYYY.MM.DD</td>
                                <td class="td__left">신청서 작성</td>
                                <td>홍순이</td>
                                <td>회신 완료</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>YYYY.MM.DD</td>
                                <td class="td__left">신청서 작성</td>
                                <td>홍순이</td>
                                <td>회신 완료</td>
                            </tr>--%>

                            </tbody>
                        </table>
                        <!--//-->
                        <div class="table__paging">
                            <c:set var="name" value="${total_count/amount}" />

                            <c:if test="${is_past eq true}"><a href="spt_prevent?page=1" class="paging__prev2"><img src="resources/assets/image/ico_paging_prev_02.png" alt=""></a></c:if>
                            <c:if test="${is_prev eq true}"><a href="spt_prevent?page=${cur_page-1}" class="paging__prev"><img src="resources/assets/image/ico_paging_prev.png" alt=""></a></c:if>
                            <c:forEach var="i" begin="1" end="${page_amount}">
                                <a href="spt_prevent?page=${(cur_sector-1)*page_amount+i}" <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">class="is-active"</c:if>>${(cur_sector-1)*page_amount+i}</a>
                            </c:forEach>
                            <c:if test="${is_next eq true}"><a href="spt_prevent?page=${cur_page+1}" class="paging__next"><img src="resources/assets/image/ico_paging_next.png" alt=""></a></c:if>
                            <c:if test="${is_last eq true}"><a href="spt_prevent?page=${tot_page}" class="paging__next2"><img src="resources/assets/image/ico_paging_next_02.png" alt=""></a></c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div id="popup_e_councelling" class="pop__detail">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">온라인 문의</h5>
                    <div class="table__hat">기본정보</div>
                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:20%">
                                <col style="width:25%">
                                <col style="width:20%">
                                <col style="width:35%">
                            </colgroup>
                            <tbody>
                            <tr>
                                <th class="th__left">신청자</th>
                                <td class="td__left">홍길동</td>
                                <th class="th__left">이메일</th>
                                <td class="td__left">abcd@domain.com</td>
                            </tr>
                            <tr>
                                <th class="th__left">연락처</th>
                                <td class="td__left">010-0000-0000</td>
                                <th class="th__left">상태</th>
                                <td class="td__left">-</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="table__hat">민원분야</div>
                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:100%">
                            </colgroup>
                            <tbody>
                            <tr>
                                <td class="td__left">
                                    <div class="checkbox checkbox--inline">
                                        <input type="checkbox" id="prevent-1" name="prevent">
                                        <label for="prevent-1">이용 신청 안내</label>
                                    </div>
                                    <div class="checkbox checkbox--inline">
                                        <input type="checkbox" id="prevent-2" name="prevent">
                                        <label for="prevent-2">이용 신청서 작성</label>
                                    </div>
                                    <div class="checkbox checkbox--inline">
                                        <input type="checkbox" id="prevent-3" name="prevent">
                                        <label for="prevent-3">시설과 장비 이용상황</label>
                                    </div>
                                    <div class="checkbox checkbox--inline">
                                        <input type="checkbox" id="prevent-4" name="prevent">
                                        <label for="prevent-4">실증 가능성 검토</label>
                                    </div>
                                    <div class="checkbox checkbox--inline">
                                        <input type="checkbox" id="prevent-5" name="prevent">
                                        <label for="prevent-5">실증 모델 검토</label>
                                    </div>
                                    <div class="checkbox checkbox--inline">
                                        <input type="checkbox" id="prevent-6" name="prevent">
                                        <label for="prevent-6">사용 승인 후 상담</label>
                                    </div>
                                    <br>
                                    <div class="checkbox checkbox--inline">
                                        <input type="checkbox" id="prevent-7" name="prevent">
                                        <label for="prevent-7">기타</label> <input type="text" style="width:300px" placeholder="기타목적을 작성해주세요." >
                                    </div>
                                </td>
                            </tr>

                            </tbody>
                        </table>

                    <div class="input--group">
                        <select name="" id="">
                            <option value="">대분류</option>
                            <option value="">대분대분류대분류류</option>
                            <option value="">대분류</option>
                            <option value="">대분류</option>
                            <option value="">대분류</option>
                        </select>
                        <select name="" id="">
                            <option value="">중분류</option>
                            <option value="">중분류중분류중분류중분류</option>
                            <option value="">중분류</option>
                            <option value="">중분류</option>
                            <option value="">중분류</option>
                        </select>
                        <select name="" id="">
                            <option value="">소분류</option>
                            <option value="">소분류소분류소분류소분류</option>
                            <option value="">소분류</option>
                            <option value="">소분류</option>
                            <option value="">소분류</option>
                        </select>
                    </div>

                    <div class="table__hat">신청내용</div>
                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:20%">
                                <col style="width:80%">
                            </colgroup>
                            <tbody>
                            <tr>
                                <th class="th__left">제목</th>
                                <td class="td__left">
                                    <input type="text" />
                                </td>
                            </tr>
                            <tr>
                                <th class="th__left">내용</th>
                                <td class="td__left">
                                    <textarea name="" id="" cols="30" rows="6"></textarea>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="popup__btn">
                    <a href="#" class="btn light btn-lg  js-btn-close">취소</a>
                    <a href="#" class="btn submit btn-lg">상담신청</a>
                </div>

                <!--<div class="form__btn">
                  <a href="#none" class="btn-line js-btn-close">이벤트 참여하기</a>
                </div>-->

            </div>
        </div>

        <div id="popup_e_councelling_view" class="pop__detail">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">온라인 문의</h5>

                    <div class="popup__scroll--area">
                        <div class="table__hat">기본정보</div>
                        <div class="table__type">
                            <table class="table__type--normal">
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:25%">
                                    <col style="width:20%">
                                    <col style="width:35%">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th class="th__left">신청자</th>
                                    <td class="td__left">홍길동</td>
                                    <th class="th__left">이메일</th>
                                    <td class="td__left">abcd@domain.com</td>
                                </tr>
                                <tr>
                                    <th class="th__left">연락처</th>
                                    <td class="td__left">010-0000-0000</td>
                                    <th class="th__left">상태</th>
                                    <td class="td__left">회신완료</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="table__hat">민원분야</div>
                        <div class="input--group">
                            <div class="input--group__category">
                                XXXXXXX / XXXXXXX / XXXXXXX
                            </div>
                        </div>

                        <div class="table__hat">문의내용</div>
                        <div class="table__type">
                            <table class="table__type--normal">
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:80%">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th class="th__left">제목</th>
                                    <td class="td__left">
                                        <span class="text--pre">이메일 신청 제목입력</span>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">내용</th>
                                    <td class="td__left">
                                        <span class="text--pre">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="table__hat">회신내용</div>
                        <div class="table__type">
                            <table class="table__type--normal">
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:25%">
                                    <col style="width:20%">
                                    <col style="width:35%">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th class="th__left">상담사</th>
                                    <td class="td__left">010-0000-0000</td>
                                    <th class="th__left">회신일</th>
                                    <td class="td__left">YYYY.MM.DD. HH:MM</td>
                                </tr>
                                <tr>
                                    <th class="th__left">내용</th>
                                    <td class="td__left" colspan="3">
                                        <span class="text--pre">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="popup__btn">
                    <a href="#" class="btn light btn-lg  js-btn-close">닫기</a>
                </div>

                <!--<div class="form__btn">
                  <a href="#none" class="btn-line js-btn-close">이벤트 참여하기</a>
                </div>-->

            </div>
        </div>

    </div>
</div>

<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>
<script>
    $("#qna_warning").click(function() {
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