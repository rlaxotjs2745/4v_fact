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


<div class="page__h1">나의 사업</div>
</header>
<div class="content" id="content">
    <div class="page__body">
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <div class="page__location">
                    <div class="location__link">
                        <a href="my_business" class="location__link--anchor ">신청 현황</a>
                        <a href="my_agreement" class="location__link--anchor is-selected">협약 현황</a>
                        <a href="my_consignment" class="location__link--anchor">위탁 현황</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">협약 현황</h3>
            <div class="cnt__title">협약 절차</div>
            <div class="my__container">
                <div class="my__diagram">
                    <div class="my__diagram--circle circle--01"><span>실증 책임자 지정<br>(실증센터)</span></div>
                    <div class="my__diagram--circle circle--02"><span>이용계획 변경<br>의사 확인<br>(실증센터, 신청자)</span></div>
                    <div class="my__diagram--circle circle--03"><span>계획서 상세 검토<br>및 보완<br>(실증센터, 신청자)</span></div>
                    <div class="my__diagram--circle circle--04"><span>이용계획서 서명<br>(실증센터, 신청자)</span></div>
                </div>

                <div class="cnt__title">협약 필요 사업 : 총 00개</div>
                <div class="table__type">
                    <table class="table__type--customer table__fixed">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">20 <a href="#none" class="td__link">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</a></div>
                                <div class="td__block"><div class="request__step"><strong>협약중 &gt; </strong>협약완료</div></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">19 <a href="#none" class="td__link">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</a></div>
                                <div class="td__block"><div class="request__step"><span>협약중 &gt; </span><strong>협약완료</strong></div></div>
                        </tr>
                        </tbody>
                    </table>
                    <!--//-->
                </div>
                <!--//-->

                <div class="cnt__title">협약 현황</div>
                <div class="table__type">
                    <table class="table__type--my table__fixed">
                        <colgroup>
                            <col style="width:30%">
                            <col style="width:70%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th class="th__left">사업명</th>
                            <td class="td__left">XXXXXXX XXXXXXX XXXXXX XXXXXXXXXXXXXXX</td>
                        </tr>
                        <tr>
                            <th class="th__left">접수번호</th>
                            <td class="td__left">미부여</td>
                        </tr>
                        <tr>
                            <th class="th__left">신청일</th>
                            <td class="td__left">YYYY.MM.DD-HH:00</td>
                        </tr>
                        <tr>
                            <th class="th__left">승인일</th>
                            <td class="td__left">YYYY.MM.DD-HH:00</td>
                        </tr>
                        <tr>
                            <th class="th__left">실증 책임자</th>
                            <td class="td__left">아무개. 063-000-0000, 내선 0, 이메일</td>
                        </tr>
                        <tr>
                            <th class="th__left">분야</th>
                            <td class="td__left">스마트팜</td>
                        </tr>
                        <tr>
                            <th class="th__left">체결기한</th>
                            <td class="td__left">YYYY.MM.DD-HH:00</td>
                        </tr>
                        <tr>
                            <th class="th__left">이용료납부</th>
                            <td class="td__left">미납 (납부예정액 : 00,000,000원}, <br>납부 (납부액 : 00,000,000원)</td>
                        </tr>
                        <tr>
                            <th class="th__left">계약</th>
                            <td class="td__left">체결전, 체결 (계약서)</td>
                        </tr>
                        <tr>
                            <th class="th__left">최종서류 <a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_info.png" alt=""></a></th>
                            <td class="td__left"><a href="#none" class="btn btn-download">이용신청서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">실증계획서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">이용료산출서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">이용계획확정서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">계약안내서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">제출서류</th>
                            <td class="td__left"><a href="#none" class="btn btn-download">1. 실증단지 이용신청서</a>
                                <a href="#none" class="btn btn-download">2. 실증계획서</a>
                                <a href="#none" class="btn btn-download">3. 사업자등록증 사본</a>
                                <a href="#none" class="btn btn-download">4. 대표자 주민등록등본</a>
                                <a href="#none" class="btn btn-download">5. 인감증명서</a></td>
                        </tr>
                        </tbody>
                    </table>
                    <!--//-->
                </div>
                <!--//-->
            </div>
        </div>

    </div>
</div>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/ui.common.js" type="text/javascript"></script>
<%@include file ="footer.jsp" %>