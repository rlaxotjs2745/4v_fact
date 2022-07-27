<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/11/04
  Time: 11:30 오전
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
<%--                    <div class="location__link">
                        <a href="my_business.html" class="location__link--anchor is-selected">신청 현황</a>
                        <a href="my_agreement.html" class="location__link--anchor">협약 현황</a>
                        <a href="my_consignment.html" class="location__link--anchor">위탁 현황</a>
                    </div>--%>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">실증서비스 신청 현황</h3>
            <div class="cnt__title">신청 목록 : 총 ${user_demo_bs_count}개</div>

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
                                <td class="td__left"><button id="demo_sel${status.index}" href="my_info" class="td__link"><c:if test="${not empty demo.demo_subject}">${demo.demo_subject}</c:if></button></td>
                                <td class="td__data" style="white-space: nowrap;">
                                    <div class="request__step">
                                        <c:choose>
                                            <c:when test="${demo.user_demobs_status eq 0}"><strong>신청 > </strong>접수완료 > 선정평가 > 계획확정</c:when>
                                            <c:when test="${demo.user_demobs_status eq 1}">신청 > <strong>접수완료 > </strong>선정평가 > 계획확정</c:when>
                                            <c:when test="${demo.user_demobs_status eq 1 && demo.is_confirm eq 1 && demo.is_share eq 0}">신청 > 접수완료 > <strong>선정평가 > </strong>계획확정</c:when>
                                            <c:when test="${demo.user_demobs_status eq 1 && demo.is_confirm eq 1 && demo.is_share eq 1}">신청 > 접수완료 > 선정평가 > <strong>계획확정</strong></c:when>
                                        </c:choose>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <!--//-->
                </div>
                <!--//-->


                <div class="cnt__title">진행 현황</div>

                <div class="my__step">
                    <div class="step is-active">
                        <span>접수중</span>
                        <em>접수일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step ">
                        <span>서류검토</span>
                    </div>
                    <div class="step ">
                        <span>접수완료</span>
                    </div>
                    <div class="step ">
                        <span>선정평가</span>
                    </div>
                    <div class="step ">
                        <span>계획확정</span>
                    </div>
                    <div class="step ">
                        <span>협약중</span>
                    </div>
                    <div class="step ">
                        <span>협약완료</span>
                    </div>
                    <div class="step ">
                        <span>사업중</span>
                    </div>
                </div>


                <%--
                <div class="my__step">
                    <div class="step is-passed">
                        <span>접수중</span>
                        <em>접수일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-active">
                        <span>서류검토</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step ">
                        <span>접수완료</span>
                    </div>
                    <div class="step ">
                        <span>선정평가</span>
                    </div>
                    <div class="step ">
                        <span>계획확정</span>
                    </div>
                    <div class="step ">
                        <span>협약중</span>
                    </div>
                    <div class="step ">
                        <span>협약완료</span>
                    </div>
                    <div class="step ">
                        <span>사업중</span>
                    </div>
                </div>
                <div class="my__step">
                    <div class="step is-passed">
                        <span>접수중</span>
                        <em>접수일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>서류검토</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-active">
                        <span>접수완료</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step ">
                        <span>선정평가</span>
                    </div>
                    <div class="step ">
                        <span>계획확정</span>
                    </div>
                    <div class="step ">
                        <span>협약중</span>
                    </div>
                    <div class="step ">
                        <span>협약완료</span>
                    </div>
                    <div class="step ">
                        <span>사업중</span>
                    </div>
                </div>
                <div class="my__step">
                    <div class="step is-passed">
                        <span>접수중</span>
                        <em>접수일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>서류검토</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>접수완료</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-active">
                        <span>선정평가</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step ">
                        <span>계획확정</span>
                    </div>
                    <div class="step ">
                        <span>협약중</span>
                    </div>
                    <div class="step ">
                        <span>협약완료</span>
                    </div>
                    <div class="step ">
                        <span>사업중</span>
                    </div>
                </div>
                <div class="my__step">
                    <div class="step is-passed">
                        <span>접수중</span>
                        <em>접수일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>서류검토</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>접수완료</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>선정평가</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-active">
                        <span>계획확정</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step ">
                        <span>협약중</span>
                    </div>
                    <div class="step ">
                        <span>협약완료</span>
                    </div>
                    <div class="step ">
                        <span>사업중</span>
                    </div>
                </div>
                <div class="my__step">
                    <div class="step is-passed">
                        <span>접수중</span>
                        <em>접수일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>서류검토</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>접수완료</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>선정평가</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>계획확정</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-active">
                        <span>협약중</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step ">
                        <span>협약완료</span>
                    </div>
                    <div class="step ">
                        <span>사업중</span>
                    </div>
                </div>
                <div class="my__step">
                    <div class="step is-passed">
                        <span>접수중</span>
                        <em>접수일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>서류검토</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>접수완료</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>선정평가</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>계획확정</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>협약중</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-active">
                        <span>협약완료</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step ">
                        <span>사업중</span>
                    </div>
                </div>
                <div class="my__step">
                    <div class="step is-passed">
                        <span>접수중</span>
                        <em>접수일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>서류검토</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>접수완료</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>선정평가</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>계획확정</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>협약중</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-passed">
                        <span>협약완료</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>
                    <div class="step is-active">
                        <span>사업중</span>
                        <em>처리일<br>YYYY.MM.DD HH:MM</em>
                    </div>--%>
                </div>

                <!--접수중-->
                <div class="cnt__title">안내</div>
                <div class="table__type no--border">
                    <table class="table__type--my ">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__infomation"><div class="td__attention"><strong>보완 요청이 있습니다. 보완요청서를 확인하시고, 본 화면에서 보완된 서류를 제출해 주십시오.</strong>
                                <strong>등록시, 보완된 서류를 포함해서 모든 서류를 다시 제출해 주십시오. </strong>
                                <a href="#none" class="btn btn-download">보완요청서 보기</a></div>
                                <div class="td__attention--fileupload"><a href="#popup_supply" class="btn dark btn-lg  js-modal-detail">서류등록</a></div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <!--검토-->
                <div class="table__type no--border">
                    <table class="table__type--my ">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__infomation"><div class="td__attention"><strong>검토 완료 후 접수가 되었습니다.</strong></div></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <!--심사-->
                <div class="table__type no--border">
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
                </div>
                <!--//-->

                <!--실증담당자 지정-->
                <div class="table__type no--border">
                    <table class="table__type--my ">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__infomation"><div class="td__attention"><strong>실증담당자가 지정되었습니다.</strong>
                                <strong>아래의 최종서류를 확인후 변경할 부분이 없다면, ‘계획확정’ 버튼을 선택해 주십시오.</strong>
                                <strong>서류에 대한 문의는 실증담당자와 상의해 주십시오.</strong></div></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <!--계획확정 / 승인-->
                <div class="table__type no--border">
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
                </div>
                <!--//-->

                <!--계획확정 / 보류-->
                <div class="table__type no--border">
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
                </div>
                <!--//-->

                <!--계획확정 / 사용불가-->
                <div class="table__type no--border">
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
                </div>
                <!--//-->

                <div class="cnt__title">신청 현황</div>
                <!--//-->
                <div class="table__type">
                    <table class="table__type--my">
                        <colgroup>
                            <col style="width:18%">
                            <col style="width:35%">
                            <col style="width:17%">
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
                        <!--<tr>
                          <th class="th__left">처리상태</th>
                          <td class="td__left" colspan="3"><div class="request__step"><span>접수중 &gt; 서류검토 &gt; </span><strong>접수완료</strong> &gt; 선정평가 &gt; 계획확정</div></td>
                        </tr>-->
                        <tr>
                            <th class="th__left">주요일정</th>
                            <td class="td__left" colspan="3">사업 게시 기간 : YYYY.MM.DD HH:00 ~ YYYY.MM.DD HH:00
                                선정 심사 기간 : YYYY.MM.DD HH:00 ~ YYYY.MM.DD HH:00 (심사 기간은 사정에 따라 변경이 될 수 있습니다.)
                                선정자 협약일 : 선정 후 1개월 이내 (협약 기간은 사정에 따라 변경이 될 수 있습니다.)</td>
                        </tr>
                        <tr>
                            <th class="th__left">제출서류</th>
                            <td class="td__left" colspan="3"><a href="#none" class="btn btn-download">확인</a></td>
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
                            <col style="width:35%">
                            <col style="width:17%">
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
                            <th class="th__left">실증담당자</th>
                            <td class="td__left">아무개. 063-000-0000, 내선 0, 이메일</td>
                            <th class="th__left">분야</th>
                            <td class="td__left">스마트팜</td>
                        </tr>
                        <tr>
                            <th class="th__left">체결기한</th>
                            <td class="td__left">YYYY.MM.DD-HH:00</td>
                            <th class="th__left">이용료납부</th>
                            <td class="td__left">00,000,000원 입금요청</td>
                        </tr>
                        <tr>
                            <th class="th__left">계약</th>
                            <td class="td__left" colspan="3">체결전</td>
                        </tr>
                        <tr>
                            <th class="th__left">최종서류 <a href="#none"><img src="resources/assets/image/ico_info.png" alt=""></a></th>
                            <td class="td__left" colspan="3"><a href="#none" class="btn btn-download">이용신청서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">실증계획서</a><em class="recode--time">(YYYY.MM.DD HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">이용료산출서</a><em class="recode--time">(YYYY.MM.DD HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">이용계획확정서</a><em class="recode--time">(YYYY.MM.DD HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">계약안내서</a><em class="recode--time">(YYYY.MM.DD HH:MM 수정)</em></td>
                        </tr>
                        <tr>
                            <th class="th__left">제출서류</th>
                            <td class="td__left" colspan="3"><a href="#none" class="btn btn-download">확인</a></td>
                        </tr>
                        </tbody>
                    </table>
                    <!--//-->
                </div>
                <!--//-->

                <div class="cnt__title">실증계획
                    <a href="#none" class="btn modify fl-right">콘솔 바로 가기</a>
                </div>
                <div class="table__type">
                    <table class="table__type--my">
                        <colgroup>
                            <col style="width:18%">
                            <col style="width:35%">
                            <col style="width:17%">
                            <col style="width:35%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th class="th__left">실증주체</th>
                            <td class="td__left" colspan="3">자율</td>
                        </tr>
                        <tr>
                            <th class="th__left">이용신청시설</th>
                            <td class="td__left" colspan="3">단독비닐, 단동유리</td>
                        </tr>
                        <tr>
                            <th class="th__left">실증방법</th>
                            <td class="td__left">단순실증</td>
                            <th class="th__left">실증목적</th>
                            <td class="td__left">성능확인, 자체 평가</td>
                        </tr>
                        <tr>
                            <th class="th__left">실증횟수</th>
                            <td class="td__left">1회성실증</td>
                            <th class="th__left">실증작물</th>
                            <td class="td__left">토마토</td>
                        </tr>
                        <tr>
                            <th class="th__left">실증조건</th>
                            <td class="td__left">특수환경</td>
                            <th class="th__left">생육토양</th>
                            <td class="td__left">토경재배</td>
                        </tr>
                        <tr>
                            <th class="th__left">실증대상</th>
                            <td class="td__left" colspan="3">ICT기자재. 작물보호제/비료. 스마트팜SW</td>
                        </tr>
                        <tr>
                            <th class="th__left" rowspan="2">실증기간</th>
                            <td class="td__left" colspan="3">2021.00.00. 부터 2021.00.00까지 (00년 00개월)</td>
                        </tr>
                        <tr>
                            <td class="td__left" colspan="3">연장] 2021.00.00. 부터 2021.00.00까지 (00년 00개월)</td>
                        </tr>
                        <tr>
                            <th class="th__left">상주계획</th>
                            <td class="td__left" colspan="3">R&D연구실 상주인력 : 5명</td>
                        </tr>
                        </tbody>
                    </table>
                    <!--//-->
                </div>
                <!--//-->

                <div class="cnt__title">입주 정보
                    <a href="#popup_pee" class="btn pee__btn js-modal-detail">이용료 확인</a>
                </div>
                <div class="table__type">
                    <table class="table__type--my">
                        <colgroup>
                            <col style="width:18%">
                            <col style="width:35%">
                            <col style="width:17%">
                            <col style="width:35%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th class="th__left">입주일</th>
                            <td class="td__left">2021.00.00</td>
                            <th class="th__left">퇴거일</th>
                            <td class="td__left">2021.00.00</td>
                        </tr>
                        <tr>
                            <th class="th__left">실증 서비스료</th>
                            <td class="td__left">00,000,000 원</td>
                            <th class="th__left">보증금</th>
                            <td class="td__left">00,000,000 원</td>
                        </tr>
                        </tbody>
                    </table>
                    <!--//-->
                </div>
                <!--//-->

                <div class="cnt__title">최종서류</div>
                <div class="table__type">
                    <table class="table__type--my">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__left"><a href="#none" class="btn btn-download">이용신청서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">실증계획서</a><em class="recode--time">(YYYY.MM.DD HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">이용료산출서</a><em class="recode--time">(YYYY.MM.DD HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">이용계획확정서</a><em class="recode--time">(YYYY.MM.DD HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">계약안내서</a><em class="recode--time">(YYYY.MM.DD HH:MM 수정)</em></td>
                        </tr>
                        </tbody>
                    </table>
                    <!--//-->
                </div>
                <!--//-->

                <div class="cnt__title">실증결과보고서</div>
                <div class="table__type">
                    <table class="table__type--my">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__left"><a href="#none" class="btn btn-download">실증결과보고서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">실증데이터분석서</a><em class="recode--time">(YYYY.MM.DD HH:MM 수정)</em></td>
                        </tr>
                        </tbody>
                    </table>
                    <!--//-->
                </div>
                <!--//-->

                <div class="cnt__title">실증시설 이용변경 이력</div>
                <div class="table__type">
                    <table class="table__type--my">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__left">이용변경 이력이 없습니다.</td>
                        </tr>
                        </tbody>
                    </table>
                    <!--//-->
                </div>
                <!--//-->

                <div class="cnt__title">기타사항</div>
                <div class="table__type">
                    <table class="table__type--my">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__left">텍스트 텍스트텍스트 <br>텍스트텍스트 </td>
                        </tr>
                        </tbody>
                    </table>
                    <!--//-->
                    <br>
                    <p class="text--guide is-alert">* 각종 서류 신청 발급은 콘솔사이트에서 신청/발급을 받으십시오.</p>

                </div>
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

        <div id="popup_pee" class="pop__detail ">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
                <a class="btn btn-print" onclick="javascript:print(); return false;" href="#none"><img src="resources/assets/image/ico_print.png" alt="인쇄하기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">이용요금</h5>
                    <div class="popup__scroll--area">

                        <div class="popup__divide"><em>이용기간</em>
                            <select name="" id="">
                                <option value="2021">2021</option>
                                <option value="2020">2020</option>
                                <option value="2019">2019</option>
                                <option value="2018">2018</option>
                                <option value="2017">2017</option>
                            </select>
                            <select name="" id="">
                                <option value="1월">1월</option>
                                <option value="2월">2월</option>
                                <option value="3월">3월</option>
                                <option value="4월">4월</option>
                                <option value="5월">5월</option>
                                <option value="6월">6월</option>
                                <option value="7월">7월</option>
                                <option value="8월">8월</option>
                                <option value="9월">9월</option>
                                <option value="10월">10월</option>
                                <option value="11월">11월</option>
                                <option value="12월">12월</option>
                            </select>
                        </div>
                        <hr>
                        <div class="pee__cell--outer">
                            <div class="pee__cell col-4">
                                <span class="cell__title">당월<br>실증시설이용료</span>
                                <span class="cell__won">0,000,000원</span>
                            </div>
                            <div class="pee__cell col-4">
                                <span class="cell__title">당월<br>지원시설 이용료</span>
                                <span class="cell__won">0,000,000원</span>
                            </div>
                            <div class="pee__cell col-4">
                                <span class="cell__title">당월<br>공과금</span>
                                <span class="cell__won">0,000,000원</span>
                            </div>
                            <div class="pee__cell col-4">
                                <span class="cell__title">시설 보증금<br>기납부액</span>
                                <span class="cell__won">0,000,000원</span>
                            </div>
                            <div class="pee__cell col-12">
                                <span class="cell__title"><strong>10월 납부금액</strong><br>고지서 발급일 전인 경우, 예상액입니다.</span>
                                <span class="cell__won">0,000,000원</span>
                            </div>
                        </div>

                        <div class="cnt__title">이용 내역</div>
                        <div class="table__type no--border">
                            <table class="table__type--pee">
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:20%">
                                    <col style="width:20%">
                                    <col style="width:20%">
                                    <col style="width:20%">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th colspan="2">이용내역</th>
                                    <th>이용내역(원)</th>
                                    <th>할인금액(원)</th>
                                    <th>할인금액(원)</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th class="th__middle" rowspan="3">실증시설</th>
                                    <th class="">유리온실</th>
                                    <td class="td__right">1,340,166</td>
                                    <td class="td__right">-166</td>
                                    <td class="td__right">1,340,000</td>
                                </tr>
                                <tr>
                                    <th class="">비닐온실</th>
                                    <td class="td__right">835,488</td>
                                    <td class="td__right">-488</td>
                                    <td class="td__right">835,000</td>
                                </tr>
                                <tr class="tr__subsum">
                                    <th class="th__sum">소계</th>
                                    <td class="td__right">2,175,654</td>
                                    <td class="td__right">-654</td>
                                    <td class="td__right">2,175,000</td>
                                </tr>
                                <tr>
                                    <th class="th__middle" rowspan="4">지원시설</th>
                                    <th class="">R&D사무실</th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr>
                                    <th class="">회의실</th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr>
                                    <th class="">기자재</th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr class="tr__subsum">
                                    <th class="th__sum">소계</th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr>
                                    <th class="th__middle" rowspan="3">공과금</th>
                                    <th class="">전력사용</th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr>
                                    <th class="">농수사용</th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr class="tr__subsum">
                                    <th class="th__sum">소계</th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr>
                                    <th class="th__middle">10원 미만 할인</th>
                                    <th class=""></th>
                                    <td class="td__right">-</td>
                                    <td class="td__right">-</td>
                                    <td class="td__right">-</td>
                                </tr>
                                <tr>
                                    <th class="th__middle">부가세</th>
                                    <th class=""></th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr class="tr__subtotal">
                                    <th class="" colspan="4">총 청구 요금</th>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <!--//-->


                        <div class="cnt__title">이용료 상세내역</div>
                        <div class="table__type no--border">
                            <table class="table__type--pee">
                                <colgroup>
                                    <col style="width:17%">
                                    <col style="width:16%">
                                    <col style="width:16%">
                                    <col style="width:16%">
                                    <col style="width:17%">
                                    <col style="width:18%">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th>이용내역</th>
                                    <th>이용내역(원)</th>
                                    <th>할인금액(원)</th>
                                    <th>할인금액(원)</th>
                                    <th>할인금액(원)</th>
                                    <th>할인금액(원)</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th class="th__middle">유리온실(399)</th>
                                    <th class="">1</th>
                                    <th class="">1</th>
                                    <td class="td__right">1,340,166</td>
                                    <td class="td__right">-166</td>
                                    <td class="td__right">1,340,000</td>
                                </tr>
                                <tr>
                                    <th class="th__middle">비닐온실(399)</th>
                                    <th class="">1</th>
                                    <th class="">1</th>
                                    <td class="td__right">835,488</td>
                                    <td class="td__right">-488</td>
                                    <td class="td__right">835,000</td>
                                </tr>
                                <tr>
                                    <th class="th__middle">R&D 사무실</th>
                                    <th class="">1</th>
                                    <th class="">1</th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr>
                                    <th class="">회의실(대)</th>
                                    <th class="">1</th>
                                    <th class="">1</th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr>
                                    <th class="">회의실(중)</th>
                                    <th class="">1</th>
                                    <th class="">1</th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr>
                                    <th class="">회의실(소)</th>
                                    <th class="">1</th>
                                    <th class="">1</th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr>
                                    <th class="">토양시험기</th>
                                    <th class="">1</th>
                                    <th class="">1</th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr>
                                    <th class="">___ 시험기</th>
                                    <th class="">1</th>
                                    <th class="">1</th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr>
                                    <th class="">___ 챔버</th>
                                    <th class="">1</th>
                                    <th class="">1</th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr>
                                    <th class="">전력사용</th>
                                    <th class="">1</th>
                                    <th class="">1</th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr>
                                    <th class="">농수사용</th>
                                    <th class="">1</th>
                                    <th class="">1</th>
                                    <td class="td__right">0,000,000</td>
                                    <td class="td__right">0</td>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                <tr class="tr__subtotal">
                                    <th class="" colspan="5">이용료 합계</th>
                                    <td class="td__right">0,000,000</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <!--//-->
                    </div>
                </div>
                <div class="popup__btn">
                    <a href="#" class="btn light btn-lg  js-btn-close">취소</a>
                    <a href="#" onclick="javascript:print(); return false;" class="btn submit btn-lg">출력</a>
                </div>
            </div>
        </div>

    </div>
</div>
<%@include file ="footer.jsp" %>
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