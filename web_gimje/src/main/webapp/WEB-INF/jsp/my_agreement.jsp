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
    <div class="page__body">
        <div class="page__breadcrumbs--box">
            <div class="page__breadcrumbs--inner">
                <span>홈</span>
                <span>마이 페이지</span>
                <div class="under__depth">
                    <a href="#" class="under__depth--anchor">나의 사업</a>
                    <div class="under__depth--list">
                        <a href="my_info">나의 정보</a>
                        <a href="my_business">나의 사업</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">나의 사업</h2>
                <div class="page__location">
                    <div class="location__deco">나의 사업 현황 및 안내 내용을 확인하여 주시기 바랍니다.</div>
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
                    <table class="table__type--customer">
                        <colgroup>
                            <col style="width:10%">
                            <col style="width:60%">
                            <col style="width:30%">
                        </colgroup>
                        <thead>
                        <tr>
                            <th>번호</th>
                            <th class="th__left">사업명</th>
                            <th>현황</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>20</td>
                            <td class="td__left"><a href="my_info" class="td__link">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</a></td>
                            <td class="td__data">
                                <div class="request__step"><strong>접수중 &gt; </strong>서류검토 &gt; 접수완료 &gt; 선정평가 &gt; 계획확정</div>
                            </td>
                        </tr>
                        <tr>
                            <td>19</td>
                            <td class="td__left"><a href="my_info" class="td__link">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</a></td>
                            <td class="td__data">
                                <div class="request__step"><span>접수중 &gt; </span><strong>서류검토</strong> &gt; 접수완료 &gt; 선정평가 &gt; 계획확정</div>
                            </td>
                        </tr>
                        <tr>
                            <td>18</td>
                            <td class="td__left"><a href="my_info" class="td__link">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</a></td>
                            <td class="td__data">
                                <div class="request__step"><span>접수중 &gt; 서류검토 &gt; </span><strong>접수완료</strong> &gt; 선정평가 &gt; 계획확정</div>
                            </td>
                        </tr>
                        <tr>
                            <td>17</td>
                            <td class="td__left"><a href="my_info" class="td__link">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</a></td>
                            <td class="td__data">
                                <div class="request__step"><span>접수중 &gt; 서류검토 &gt; 접수완료 &gt; </span><strong>선정평가</strong> &gt; 계획확정</div>
                            </td>
                        </tr>
                        <tr>
                            <td>16</td>
                            <td class="td__left"><a href="my_info" class="td__link">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</a></td>
                            <td class="td__data">
                                <div class="request__step"><span>접수중 &gt; 서류검토 &gt; 접수완료 &gt; 선정평가 &gt; </span><strong>계획확정</strong></div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <!--//-->
                </div>
                <!--//-->

                <div class="cnt__title">협약 현황</div>
                <div class="table__type">
                    <table class="table__type--my">
                        <colgroup>
                            <col style="width:18%">
                            <col style="width:30%">
                            <col style="width:15%">
                            <col style="width:37%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th class="th__left">사업명</th>
                            <td class="td__left">XXXXXXX XXXXXXX XXXXXX XXXXXXXXXXXXXXX</td>
                            <th class="th__left">접수번호</th>
                            <td class="td__left">미부여</td>
                        </tr>
                        <tr>
                            <th class="th__left">신청일</th>
                            <td class="td__left">YYYY.MM.DD-HH:00</td>
                            <th class="th__left">승인일</th>
                            <td class="td__left">YYYY.MM.DD-HH:00</td>
                        </tr>
                        <tr>
                            <th class="th__left">실증 책임자</th>
                            <td class="td__left">아무개. 063-000-0000, 내선 0, 이메일</td>
                            <th class="th__left">분야</th>
                            <td class="td__left">스마트팜</td>
                        </tr>
                        <tr>
                            <th class="th__left">체결기한</th>
                            <td class="td__left">YYYY.MM.DD-HH:00</td>
                            <th class="th__left">이용료납부</th>
                            <td class="td__left">미납 (납부예정액 : 00,000,000원}, 납부 (납부액 : 00,000,000원)</td>
                        </tr>
                        <tr>
                            <th class="th__left">계약</th>
                            <td class="td__left" colspan="3">체결전, 체결 (계약서)</td>
                        </tr>
                        <tr>
                            <th class="th__left">최종서류 <a href="#none"><img src="<%=request.getContextPath()%>/static/assets/image/ico_info.png" alt=""></a></th>
                            <td class="td__left" colspan="3"><a href="#none" class="btn btn-download">이용신청서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">실증계획서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">이용료산출서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">이용계획확정서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">계약안내서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">제출서류</th>
                            <td class="td__left" colspan="3"><a href="#none" class="btn btn-download">1. 실증단지 이용신청서</a>
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
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
</body>
</html>