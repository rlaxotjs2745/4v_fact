<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/07/30
  Time: 4:56 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                        <%--<a href="my_group">나의 상담 및 정보</a>--%>
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
                        <a href="my_business" class="location__link--anchor is-selected">신청 현황</a>
                        <a href="my_agreement" class="location__link--anchor">협약 현황</a>
                        <a href="my_consignment" class="location__link--anchor">위탁 현황</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">실증서비스 신청 현황</h3>
            <div class="cnt__title">신청 목록 : 총 ${total_count}개</div>

            <div class="my__container">
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

                        <c:forEach items="${demoList}" var="demo" varStatus="status">
                        <tr>
                            <td>${status.count}</td>
                            <td class="td__left"><button id="demo_sel${status.index}" href="my_info" class="td__link"><c:if test="${not empty demo.demo_bs_subject}">${demo.demo_bs_subject}</c:if></button></td>
                            <td class="td__data" style="white-space: nowrap;">
                                <div class="request__step">
                                    <c:choose>
                                        <c:when test="${demo.user_demo_status eq 0}"><strong>신청 &gt; </strong>서류검토 &gt; 접수완료 &gt; 선정평가 &gt; 계획확정</c:when>
                                        <c:when test="${demo.user_demo_status eq 1 || demo.user_demo_status eq 2|| demo.user_demo_status eq 4}"><strong>접수중 &gt; 서류검토 &gt; </strong>접수완료 &gt; 선정평가 &gt; 계획확정</c:when>
                                        <c:when test="${demo.user_demo_status eq 3}"><strong>접수중 &gt; 서류검토 &gt; 접수완료 &gt; </strong>선정평가 &gt; 계획확정</c:when>
                                        <c:when test="${demo.user_demo_status eq 10 || demo.user_demo_status eq 12|| demo.user_demo_status eq 13|| demo.user_demo_status eq 14}"><strong>접수중 &gt; 서류검토 &gt; 접수완료 &gt; 선정평가 &gt; </strong>계획확정</c:when>
                                        <c:when test="${demo.user_demo_status > 29}"><strong>접수중 &gt; 서류검토 &gt; 접수완료 &gt; 선정평가 &gt; 계획확정</strong></c:when>
                                    </c:choose>
                                </div>
                            </td>
                        </tr>
                        </c:forEach>
                        <%--<tr>
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
                        </tr>--%>
                        </tbody>
                    </table>
                    <!--//-->
                </div>
                <!--//-->

                <!--접수중-->
                <div class="cnt__title">안내</div>

<c:forEach items="${demoList}" var="demo" varStatus="status">
    <c:set var="msg" value="${demo.demoBsMsgVo}"/>



                <div id="demo_msg${status.index}" class="table__type no--border demo_detail" <c:if test="${status.index >0}">style="display:none"</c:if>>
                    <table class="table__type--my ">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <c:choose>
                            <c:when test="${msg.msg_code eq 0}"> <%--td__attention--%>
                                <tr>
                                    <td class="td__infomation"><div class="td__attention"><strong>${msg.msg_contents} ex)서류 검토 완료 후 접수가 되었습니다.</strong></div></td>
                                </tr>
                            </c:when>
                            <c:when test="${msg.msg_code eq 1}"> <%--td__approval--%>
                                <tr>
                                    <td class="td__infomation"><div class="td__approval"><strong>${msg.msg_contents} ex)보완 요청이 있습니다. 보완요청서를 확인하시고, 본 화면에서 보완된 서류를 제출해 주십시오.</strong>
                                        <strong>등록시, 보완된 서류를 포함해서 모든 서류를 다시 제출해 주십시오. </strong>
                                        <c:if test="${msg.is_file eq 1}"><a href="#none" class="btn btn-download">보완요청서 보기</a></c:if></div>
                                        <c:if test="${msg.need_upload_file eq 1}"><div class="td__attention--fileupload"><a href="#popup_supply" class="btn dark btn-lg  js-modal-detail">서류등록</a></div></c:if>
                                    </td>
                                </tr>
                            </c:when>
                            <c:when test="${msg.msg_code eq 2}"> <%--td__pending--%>
                                <tr>
                                    <td class="td__infomation"><div class="td__pending"><strong>${msg.msg_contents} ex)심사가 보류 되었습니다.
                                        자세한 사항은 선정평가 종합의견서를 참고해 주십시오.</strong>
                                        <c:if test="${msg.is_file eq 1}"><a href="#none" class="btn btn-download">선정평가 종합의견서 다운로드</a></c:if></div></td>
                                </tr>
                            </c:when>
                            <c:when test="${msg.msg_code eq 3}"> <%--td__pending--%>
                                <tr>
                                    <td class="td__infomation"><div class="td__refusal"><strong>${msg.msg_contents} ex)신청하신 사업에 사용이 불가능합니다.
                                        자세한 사항은 아래의 선정평가 종합의견서를 참고해 주십시오.</strong>
                                        <c:if test="${msg.is_file eq 1}"><a href="#none" class="btn btn-download">선정평가 종합의견서 다운로드</a></c:if></div></td>
                                </tr>
                            </c:when>
                        </c:choose>
                        </tbody>
                    </table>
                </div>
                <!--//-->
</c:forEach>

                <!--검토-->
<%--                <div class="table__type no--border">
                    <table class="table__type--my ">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__infomation"><div class="td__attention"><strong>서류 검토 완료 후 접수가 되었습니다.</strong></div></td>
                        </tr>
                        </tbody>
                    </table>
                </div>--%>
                <!--//-->

                <!--심사-->
<%--                <div class="table__type no--border">
                    <table class="table__type--my ">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__infomation"><div class="td__attention"><strong>심사중 입니다.</strong></div></td>
                        </tr>
                        </tbody>
                    </table>
                </div>--%>
                <!--//-->

                <!--계획확정 / 승인-->
<%--                <div class="table__type no--border">
                    <table class="table__type--my ">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__infomation"><div class="td__approval"><strong>신청하신 사업에 선정이 되었으며, 실증책임자 “000”이 지정되었습니다.
                                실증책임자와 이용계획을 확정해 주십시오. 확정 후, 협약이 진행됩니다.</strong>
                                <a href="#none" class="btn btn-download">선정평가 종합의견서 다운로드</a></div></td>
                        </tr>
                        </tbody>
                    </table>
                </div>--%>
                <!--//-->

                <!--계획확정 / 보류-->
<%--                <div class="table__type no--border">
                    <table class="table__type--my ">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__infomation"><div class="td__pending"><strong>심사가 보류 되었습니다.
                                자세한 사항은 선정평가 종합의견서를 참고해 주십시오.</strong>
                                <a href="#none" class="btn btn-download">선정평가 종합의견서 다운로드</a></div></td>
                        </tr>
                        </tbody>
                    </table>
                </div>--%>
                <!--//-->

                <!--계획확정 / 사용불가-->
<%--                <div class="table__type no--border">
                    <table class="table__type--my ">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__infomation"><div class="td__refusal"><strong>신청하신 사업에 사용이 불가능합니다.
                                자세한 사항은 아래의 선정평가 종합의견서를 참고해 주십시오.</strong>
                                <a href="#none" class="btn btn-download">선정평가 종합의견서 다운로드</a></div></td>
                        </tr>
                        </tbody>
                    </table>
                </div>--%>

                <!--//-->

                <div class="cnt__title">신청 현황</div>
                <%--<div class="table__type">
                    <table class="table__type--my">
                        <colgroup>
                            <col style="width:20%">
                            <col style="width:25%">
                            <col style="width:20%">
                            <col style="width:35%">
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
                            <th class="th__left">문의</th>
                            <td class="td__left">아무개. 063-000-0000, 내선 0, 이메일</td>
                        </tr>
                        <tr>
                            <th class="th__left">처리상태</th>
                            <td class="td__left" colspan="3"><div class="request__step"><strong>접수중 &gt; </strong>서류검토 &gt; 접수완료 &gt; 선정평가 &gt; 계획확정</div></td>
                        </tr>
                        <tr>
                            <th class="th__left">주요일정</th>
                            <td class="td__left" colspan="3">사업 게시 기간 : YYYY.MM.DD HH:00 ~ YYYY.MM.DD HH:00
                                선정 심사 기간 : YYYY.MM.DD HH:00 ~ YYYY.MM.DD HH:00 (심사 기간은 사정에 따라 변경이 될 수 있습니다.)
                                선정자 협약일 : 선정 후 1개월 이내 (협약 기간은 사정에 따라 변경이 될 수 있습니다.)</td>
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
                </div>--%>
                <!--//-->
                <%--<div class="table__type">
                    <table class="table__type--my">
                        <colgroup>
                            <col style="width:20%">
                            <col style="width:25%">
                            <col style="width:20%">
                            <col style="width:35%">
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
                            <th class="th__left">문의</th>
                            <td class="td__left">아무개. 063-000-0000, 내선 0, 이메일</td>
                        </tr>
                        <tr>
                            <th class="th__left">처리상태</th>
                            <td class="td__left" colspan="3"><div class="request__step"><span>접수중 &gt; 서류검토 &gt; </span><strong>접수완료</strong> &gt; 선정평가 &gt; 계획확정</div></td>
                        </tr>
                        <tr>
                            <th class="th__left">주요일정</th>
                            <td class="td__left" colspan="3">사업 게시 기간 : YYYY.MM.DD HH:00 ~ YYYY.MM.DD HH:00
                                선정 심사 기간 : YYYY.MM.DD HH:00 ~ YYYY.MM.DD HH:00 (심사 기간은 사정에 따라 변경이 될 수 있습니다.)
                                선정자 협약일 : 선정 후 1개월 이내 (협약 기간은 사정에 따라 변경이 될 수 있습니다.)</td>
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
                </div>--%>
                <!--//-->

<c:forEach items="${demoList}" var="demo2" varStatus="status">
                <div id="demo_detail${status.index}" class="table__type demo_detail" <c:if test="${status.index >0}">style="display:none"</c:if>>
                    <table class="table__type--my">
                        <colgroup>
                            <col style="width:20%">
                            <col style="width:25%">
                            <col style="width:20%">
                            <col style="width:35%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th class="th__left">사업명</th>
                            <td class="td__left">${demo2.demo_bs_subject}</td>
                            <th class="th__left">접수번호</th>
                            <td class="td__left">미부여</td>
                        </tr>
                        <tr>
                            <th class="th__left">신청일</th>
                            <td class="td__left"><fmt:formatDate value="${demo2.reg_date}" pattern="yyyy-MM-dd" /></td>
                            <th class="th__left">문의</th>
                            <td class="td__left">아무개. 063-000-0000, 내선 0, 이메일</td>
                        </tr>
                        <tr>
                            <th class="th__left">처리상태</th>
                            <td class="td__left" colspan="3" style="white-space: nowrap;"><div class="request__step"><c:choose>
                                <c:when test="${demo2.user_demo_status eq 0}"><strong>신청 &gt; </strong>서류검토 &gt; 접수완료 &gt; 선정평가 &gt; 계획확정</c:when>
                                <c:when test="${demo2.user_demo_status eq 1 || demo2.user_demo_status eq 2|| demo2.user_demo_status eq 4}"><strong>접수중 &gt; 서류검토 &gt; </strong>접수완료 &gt; 선정평가 &gt; 계획확정</c:when>
                                <c:when test="${demo2.user_demo_status eq 3}"><strong>접수중 &gt; 서류검토 &gt; 접수완료 &gt; </strong>선정평가 &gt; 계획확정</c:when>
                                <c:when test="${demo2.user_demo_status eq 10 || demo2.user_demo_status eq 12|| demo2.user_demo_status eq 13|| demo2.user_demo_status eq 14}"><strong>접수중 &gt; 서류검토 &gt; 접수완료 &gt; 선정평가 &gt; </strong>계획확정</c:when>
                                <c:when test="${demo2.user_demo_status > 29}"><strong>접수중 &gt; 서류검토 &gt; 접수완료 &gt; 선정평가 &gt; 계획확정</strong></c:when>
                            </c:choose></div></td>
                        </tr>
                        <tr>
                            <th class="th__left">주요일정</th>
                            <td class="td__left" colspan="3">사업 게시 기간 : YYYY.MM.DD HH:00 ~ YYYY.MM.DD HH:00
                                선정 심사 기간 : YYYY.MM.DD HH:00 ~ YYYY.MM.DD HH:00 (심사 기간은 사정에 따라 변경이 될 수 있습니다.)
                                선정자 협약일 : 선정 후 1개월 이내 (협약 기간은 사정에 따라 변경이 될 수 있습니다.)</td>
                        </tr>
                        <tr>
                            <th class="th__left">제출서류</th>
                            <td class="td__left" colspan="3"><a href="#none" class="btn btn-download">1. 실증단지 이용신청서</a>
                                <a href="#none" class="btn btn-download">2. 실증계획서</a>
                                <a href="#none" class="btn btn-download">3. 사업자등록증 사본</a>
                                <a href="#none" class="btn btn-download">4. 대표자 주민등록등본</a>
                                <a href="#none" class="btn btn-download">5. 인감증명서</a></td>
                        </tr>
                        <c:if test="${demo2.user_demo_status > 29}">
                        <tr>
                            <th class="th__left">최종서류 <a href="#none"><img src="resources/assets/image/ico_info.png" alt=""></a></th>
                            <td class="td__left" colspan="3"><a href="#none" class="btn btn-download">이용신청서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">실증계획서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">이용료산출서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">이용계획확정서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">계약안내서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                            </td>
                        </tr>
                        </c:if>
                        </tbody>
                    </table>
                    <!--//-->
                </div>
</c:forEach>

                <!--//-->
            </div>
        </div>


        <div id="popup_supply" class="pop__detail ">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">보완요청서</h5>


                    <div class="popup__scroll--area">
                        <div class="table__headline">이용신청서 및 사업계획서 보완 요청서
                            <a class="btn btn-util" href="#none"><img src="resources/assets/image/ico_print.png" alt="인쇄하기"></a>
                        </div>
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
                                    <th class="th__left">접수번호</th>
                                    <td class="td__left" colspan="3"></td>
                                </tr>
                                <tr>
                                    <th class="th__left">신청업체명</th>
                                    <td class="td__left"></td>
                                    <th class="th__left">사업자등록번호</th>
                                    <td class="td__left"></td>
                                </tr>
                                <tr>
                                    <th class="th__left">대표자</th>
                                    <td class="td__left" colspan="3"></td>
                                </tr>
                                <tr>
                                    <th class="th__left">이용신청시설</th>
                                    <td class="td__left" colspan="3">
                                        <div class="checkbox checkbox--inline">
                                            <input type="checkbox" id="facility-1" name="prevent">
                                            <label for="facility-1">온실</label>
                                        </div>
                                        <div class="checkbox checkbox--inline">
                                            <input type="checkbox" id="facility-2" name="prevent">
                                            <label for="facility-2">R&D연구실</label>
                                        </div>
                                        <div class="checkbox checkbox--inline">
                                            <input type="checkbox" id="facility-3" name="prevent">
                                            <label for="facility-3">스타트업사무실</label>
                                        </div>
                                        <div class="checkbox checkbox--inline">
                                            <input type="checkbox" id="facility-4" name="prevent">
                                            <label for="facility-4">기타(&nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;)</label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">보완요청일</th>
                                    <td class="td__left">YYYY.MM.DD</td>
                                    <th class="th__left">보완서류 제출 마감일</th>
                                    <td class="td__left">YYYY.MM.DD</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="table__type">
                            <table class="table__type--normal">
                                <colgroup>
                                    <col style="width:18%">
                                    <col style="width:18%">
                                    <col style="width:64%">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th colspan="2">구분</th>
                                    <th>보완 요청 사항</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th class="th__left" colspan="2">실증단지 이용신청서</th>
                                    <td class="td__left"></td>
                                </tr>
                                <tr>
                                    <th class="th__left" rowspan="4">실증계획서</th>
                                    <th class="th__left">1.기업현황</th>
                                    <td class="td__left"></td>
                                </tr>
                                <tr>
                                    <th class="th__left">2.실증계획</th>
                                    <td class="td__left"></td>
                                </tr>
                                <tr>
                                    <th class="th__left">3.사업화 계획</th>
                                    <td class="td__left"></td>
                                </tr>
                                <tr>
                                    <th class="th__left">4.안정성 검토</th>
                                    <td class="td__left"></td>
                                </tr>
                                <tr>
                                    <th class="th__left last-child" rowspan="2">작물재배 계획서</th>
                                    <th class="th__left">1.일반사항</th>
                                    <td class="td__left"></td>
                                </tr>
                                <tr>
                                    <th class="th__left cell-child">2.재배설계</th>
                                    <td class="td__left"></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="table__agree">&lt;유의사항&gt;
                            1. 이용신청기업은 보완기간 내에 보완을 완료하여 보완서류 제출일까지 보완내역과 함께 제출하여 주시기 바랍니다.
                            2. 보완 요청에도 불구하고 이용신청서 및 사업계획서를 보완하지 아니하거나, 제출기한까지 제출되지 아니한 경우에는 신청을 무효화하고, 기 제출된 서류는 자체 폐기될 수 있음을 알려 드립니다.
                        </div>
                    </div>
                </div>
                <div class="popup__btn">
                    <a href="#" class="btn light btn-lg  js-btn-close">취소</a>
                    <a href="#" onclick="javascript:print(); return false;" class="btn submit btn-lg">출력</a>
                </div>

                <!--<div class="form__btn">
                  <a href="#none" class="btn-line js-btn-close">이벤트 참여하기</a>
                </div>-->

            </div>
        </div>


    </div>
</div>

<%@include file ="footer.jsp" %><%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>
<script>
    <c:forEach items="${demoList}" var="demo3" varStatus="status">
    $("#demo_sel"+"${status.index}").on("click", function() {

        $(".demo_detail").css("display","none");
        $("#demo_detail"+"${status.index}").css("display","block");
        $("#demo_msg"+"${status.index}").css("display","block");
    });
    </c:forEach>
</script>
</div>
</body>
</html>