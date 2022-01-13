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


<div class="page__h1">온라인 문의</div>
</header>
<div class="content" id="content">
    <div class="page__body">

        <div class="page__cnt">
            <div class="spt__container">
                <div class="email__banner">
                    <div class="email__banner--title"><strong>실증단지를 이용하고자 하는 자에게 대면상담 보다<br>
                        간소한 상담을 위한 목적으로 운영</strong>이 됩니다.<br>
                        실증단지 이용의 신청서 및 시설등 상세한 안내는 대면상담을 신청해 주십시오.</div>
                </div>

                <div class="cnt__title">온라인 문의 신청 전 당부 말씀</div>
                <div class="prevent__support">
                    <ul>
                        <li>상담을 원하시는 분께서는 실증단지의 시설특성과 사용현황을 파악해 주시기 바랍니다.</li>
                        <li>실증 계획이 있다면 실증 계획을 공유해 주실 수 있는지 검토 바랍니다.</li>
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
                        <a href="#popup_e_councelling" class="btn submit btn-jumbo  js-modal-detail">이메일상담 신청</a>
                    </div>
                </div>

                <div class="table__caption">이메일상담 이력 : 총 10회</div>
                <div class="table__type "><!--no--head-->
                    <table class="table__type--my">
                        <colgroup>
                            <col style="width:10%">
                            <col style="width:15%">
                            <col>
                            <col style="width:15%">
                            <col style="width:15%">
                        </colgroup>
                        <thead>
                        <tr>
                            <th>상담수</th>
                            <th>상담일</th>
                            <th>주제</th>
                            <th>상담사</th>
                            <th>상담 형식</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>6</td>
                            <td>YYYY.MM.DD</td>
                            <td class="td__left"><a href="#popup_e_councelling_view" class="js-modal-detail">신청서 작성</a></td>
                            <td>홍순이</td>
                            <td>회신 완료</td>
                        </tr>
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
                        <a href="#none" class="paging__next"><img src="<%=request.getContextPath()%>/static/assets/image/ico_paging_next.png" alt=""></a>
                        <a href="#none" class="paging__next2"><img src="<%=request.getContextPath()%>/static/assets/image/ico_paging_next_02.png" alt=""></a>
                    </div>
                </div>
            </div>
        </div>


        <div id="popup_e_councelling" class="pop__detail">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="<%=request.getContextPath()%>/static/assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">온라인 문의</h5>

                    <div class="table__hat">기본정보</div>
                    <div class="table__type">
                        <table class="table__type--my table__fixed">
                            <colgroup>
                                <col style="width:100%">
                            </colgroup>
                            <tbody>
                            <tr>
                                <td class="td__form">
                                    <div class="th__block">신청자</div>
                                    <div class="td__block">홍길동</div>
                                </td>
                            </tr>
                            <tr>
                                <td class="td__form">
                                    <div class="th__block">이메일</div>
                                    <div class="td__block">abcd@domain.com</div>
                                </td>
                            </tr>
                            <tr>
                                <td class="td__form">
                                    <div class="th__block">연락처</div>
                                    <div class="td__block">010-0000-0000</div>
                                </td>
                            </tr>
                            <tr>
                                <td class="td__form">
                                    <div class="th__block">상태</div>
                                    <div class="td__block">-</div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="table__hat">민원분야</div>
                    <div class="input--group">
                        <select name="" id="">
                            <option value="">대분류</option>
                            <option value="">대분대</option>
                            <option value="">대분류</option>
                            <option value="">대분류</option>
                            <option value="">대분류</option>
                        </select>
                        <select name="" id="">
                            <option value="">중분류</option>
                            <option value="">중분류</option>
                            <option value="">중분류</option>
                            <option value="">중분류</option>
                            <option value="">중분류</option>
                        </select>
                        <select name="" id="">
                            <option value="">소분류</option>
                            <option value="">소분류</option>
                            <option value="">소분류</option>
                            <option value="">소분류</option>
                            <option value="">소분류</option>
                        </select>
                    </div>

                    <div class="table__hat">문의내용</div>
                    <div class="table__type">
                        <table class="table__type--my table__fixed">
                            <colgroup>
                                <col style="width:100%">
                            </colgroup>
                            <tbody>
                            <tr>
                                <td class="td__form">
                                    <div class="th__block">제목</div>
                                    <div class="td__block"><input type="text" /></div>
                                </td>
                            </tr>
                            <tr>
                                <td class="td__form">
                                    <div class="th__block">내용</div>
                                    <div class="td__block"><textarea name="" id="" cols="30" rows="6"></textarea></div>
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

            </div>
        </div>
    </div>
</div>

<div id="popup_e_councelling_view" class="pop__detail">
    <div class="section">
        <a href="#none" class="js-modal-close"><img src="<%=request.getContextPath()%>/static/assets/image/ico_close.png" alt="닫기"></a>
        <div class="popup__cnt">
            <h5 class="popup__title">온라인 문의</h5>

            <div class="popup__scroll--area">
                <div class="table__hat">기본정보</div>
                <div class="table__type">
                    <table class="table__type--my table__fixed">
                        <colgroup>
                            <col style="width:3100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">신청자</div>
                                <div class="td__block">홍길동</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">이메일</div>
                                <div class="td__block">abcd@domain.com</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">연락처</div>
                                <div class="td__block">010-0000-0000</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">상태</div>
                                <div class="td__block">-</div>
                            </td>
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
                    <table class="table__type--my table__fixed">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">제목</div>
                                <div class="td__block">이메일 신청 제목입력</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">내용</div>
                                <div class="td__block">
                                    <span class="text--pre">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</span>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="table__hat">회신내용</div>
                <div class="table__type">
                    <table class="table__type--my table__fixed">
                        <colgroup>
                            <col style="width:3100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">상담사</div>
                                <div class="td__block">010-0000-0000</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">회신일</div>
                                <div class="td__block">YYYY.MM.DD. HH:MM</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">내용</div>
                                <div class="td__block"><span class="text--pre">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</span></div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="popup__btn">
            <a href="#" class="btn submit btn-lg  js-btn-close">확인</a>
        </div>
    </div>
</div>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/ui.common.js" type="text/javascript"></script>

<%@include file ="footer.jsp" %>