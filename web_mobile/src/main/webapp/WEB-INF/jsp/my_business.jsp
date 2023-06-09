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
                        <a href="my_business" class="location__link--anchor is-selected">신청 현황</a>
                        <a href="my_agreement" class="location__link--anchor">협약 현황</a>
                        <a href="my_consignment" class="location__link--anchor">위탁 현황</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">실증 서비스 신청 현황</h3>
            <div class="cnt__title">신청 목록 : 총 00개</div>

            <div class="my__container">
                <div class="table__type">
                    <table class="table__type--customer table__fixed">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">20 <a href="#none" class="td__link">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</a></div>
                                <div class="td__block"><div class="request__step"><strong>접수중 &gt; </strong>서류검토 &gt; 접수완료 &gt; 선정평가 &gt; 계획확정</div></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">19 <a href="#none" class="td__link">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</a></div>
                                <div class="td__block"><div class="request__step"><span>접수중 &gt; </span><strong>서류검토</strong> &gt; 접수완료 &gt; 선정평가 &gt; 계획확정</div></div>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">18 <a href="#none" class="td__link">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</a></div>
                                <div class="td__block"><div class="request__step"><span>접수중 &gt; 서류검토 &gt; </span><strong>접수완료</strong> &gt; 선정평가 &gt; 계획확정</div></div>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">17 <a href="#none" class="td__link">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</a></div>
                                <div class="td__block"><div class="request__step"><span>접수중 &gt; 서류검토 &gt; 접수완료 &gt; </span><strong>선정평가</strong> &gt; 계획확정</div></div>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">16 <a href="#none" class="td__link">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</a></div>
                                <div class="td__block"><div class="request__step"><span>접수중 &gt; 서류검토 &gt; 접수완료 &gt; 선정평가 &gt; </span><strong>계획확정</strong></div></div>
                        </tr>
                        </tbody>
                    </table>
                    <!--//-->
                </div>
                <!--//-->

                <div class="cnt__title">안내</div>
                <div class="my__result">
                    <div class="result__attention"><strong>보완 요청이 있습니다. 보완요청서를 확인하시고,</strong><br>
                        <strong>본 화면에서 보완된 서류를 제출해 주십시오.</strong><br>
                        <strong>등록시, 보완된 서류를 포함해서</strong><br>
                        <strong>모든 서류를 다시 제출해 주십시오.</strong><br>
                        <a href="#none" class="btn btn-download">보완요청서 보기</a></div>
                    <div class="result__attention--fileupload"><a href="#popup_supply" class="btn dark btn-lg  js-modal-detail">서류등록</a></div>
                </div>

                <div class="my__result">
                    <div class="result__attention"><strong>검토 완료 후 접수가 되었습니다.</strong></div>
                </div>

                <div class="my__result">
                    <div class="result__attention"><strong>심사중 입니다.</strong></div>
                </div>

                <div class="my__result">
                    <div class="result__attention">
              <span class="result__submit">신청하신 사업에 선정이 되었으며, 실증책임자 “000”이 지정되었습니다.<br>
              실증책임자와 이용계획을 확정해 주십시오. 확정 후, 협약이 진행됩니다.</span>
                        <a href="#none" class="btn btn-download">선정평가 종합의견서 다운로드</a>
                    </div>
                </div>

                <div class="my__result">
                    <div class="result__attention">
              <span class="result__hold">심사가 보류 되었습니다.<br>
                자세한 사항은 선정평가 종합의견서를 <br>참고해 주십시오.</span>
                        <a href="#none" class="btn btn-download">선정평가 종합의견서 다운로드</a>
                    </div>
                </div>

                <div class="my__result">
                    <div class="result__attention">
              <span class="result__hold">신청하신 사업에 사용이 불가능합니다.<br>
                자세한 사항은 아래의 선정평가 종합의견서를 <br>참고해 주십시오.</span>
                        <a href="#none" class="btn btn-download">선정평가 종합의견서 다운로드</a>
                    </div>
                </div>

                <div class="my__result">
                    <div class="result__attention"><strong>실증책임자와 이용계획을 확정과 함께 이용료를</strong><br>
                        <strong>확인해 주십시오.</strong><br>
                        <strong>확정된 서류는 아래 최종서류에서 확인이 가능합니다.</strong><br>
                    </div>
                </div>
                <div class="table__type inner__table">
                    <table class="table__type--my table__fixed">
                        <colgroup>
                            <col style="width:30%">
                            <col style="width:70%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__left">최종서류 <a href="#none"><img src="resources/assets/image/ico_info.png" alt=""></a></td>
                            <td class="td__left" colspan="3"><a href="#none" class="btn btn-download">이용신청서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">실증계획서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">이용료산출서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">이용계획확정서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                                <a href="#none" class="btn btn-download">계약안내서</a><em class="recode--time">(YYYY.MM.DD. HH:MM 수정)</em>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="cnt__title">신청 현황</div>
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
                            <th class="th__left">문의</th>
                            <td class="td__left">아무개. 063-000-0000, 내선 0, 이메일</td>
                        </tr>
                        <tr>
                            <th class="th__left">처리상태</th>
                            <td class="td__left"><div class="request__step"><strong>접수중 &gt; </strong>서류검토 &gt; 접수완료 &gt; 선정평가 &gt; 계획확정</div></td>
                        </tr>
                        <tr>
                            <th class="th__left">주요일정</th>
                            <td class="td__left">사업 게시 기간 : YYYY.MM.DD HH:00 ~ YYYY.MM.DD HH:00
                                선정 심사 기간 : YYYY.MM.DD HH:00 ~ YYYY.MM.DD HH:00 (심사 기간은 사정에 따라 변경이 될 수 있습니다.)
                                선정자 협약일 : 선정 후 1개월 이내 (협약 기간은 사정에 따라 변경이 될 수 있습니다.)</td>
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
                            <th class="th__left">문의</th>
                            <td class="td__left">아무개. 063-000-0000, 내선 0, 이메일</td>
                        </tr>
                        <tr>
                            <th class="th__left">처리상태</th>
                            <td class="td__left"><div class="request__step"><span>접수중 &gt; </span><strong>서류검토</strong> &gt; 접수완료 &gt; 선정평가 &gt; 계획확정</div></td>
                        </tr>
                        <tr>
                            <th class="th__left">주요일정</th>
                            <td class="td__left">사업 게시 기간 : YYYY.MM.DD HH:00 ~ YYYY.MM.DD HH:00
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
                </div>
                <!--//-->
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
                            <th class="th__left">문의</th>
                            <td class="td__left">아무개. 063-000-0000, 내선 0, 이메일</td>
                        </tr>
                        <tr>
                            <th class="th__left">처리상태</th>
                            <td class="td__left"><div class="request__step"><span>접수중 &gt; 서류검토 &gt; 접수완료 &gt; </span><strong>선정평가</strong> &gt; 계획확정</div></td>
                        </tr>
                        <tr>
                            <th class="th__left">주요일정</th>
                            <td class="td__left">사업 게시 기간 : YYYY.MM.DD HH:00 ~ YYYY.MM.DD HH:00
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
                        <!--<tr>
                          <th class="th__left">최종서류 <a href="#none"><img src="resources/assets/image/ico_info.png" alt=""></a></th>
                          <td class="td__left" colspan="3"><a href="#none" class="btn btn-download">이용신청서</a><em class="recode&#45;&#45;time">(YYYY.MM.DD. HH:MM 수정)</em>
                            <a href="#none" class="btn btn-download">실증계획서</a><em class="recode&#45;&#45;time">(YYYY.MM.DD. HH:MM 수정)</em>
                            <a href="#none" class="btn btn-download">이용료산출서</a><em class="recode&#45;&#45;time">(YYYY.MM.DD. HH:MM 수정)</em>
                            <a href="#none" class="btn btn-download">이용계획확정서</a><em class="recode&#45;&#45;time">(YYYY.MM.DD. HH:MM 수정)</em>
                            <a href="#none" class="btn btn-download">계약안내서</a><em class="recode&#45;&#45;time">(YYYY.MM.DD. HH:MM 수정)</em>
                          </td>
                        </tr>-->
                        </tbody>
                    </table>
                    <!--//-->
                </div>
                <!--//-->
            </div>
        </div>
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
                    <table class="table__type--normal table__fixed">
                        <colgroup>
                            <col style="width:35%">
                            <col style="width:65%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th class="th__left">접수번호</th>
                            <td class="td__left"></td>
                        </tr>
                        <tr>
                            <th class="th__left">신청업체명</th>
                            <td class="td__left"></td>
                        </tr>
                        <tr>
                            <th class="th__left">사업자등록번호</th>
                            <td class="td__left"></td>
                        </tr>
                        <tr>
                            <th class="th__left">대표자</th>
                            <td class="td__left"></td>
                        </tr>
                        <tr>
                            <th class="th__left">이용신청시설</th>
                            <td class="td__left">
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
                                    <label for="facility-4">기타( &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;)</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">보완요청일</th>
                            <td class="td__left">YYYY.MM.DD</td>
                        </tr>
                        <tr>
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
                            <td class="td__left">1.기업현황</td>
                            <td class="td__left"></td>
                        </tr>
                        <tr>
                            <td class="td__left">2.실증계획</td>
                            <td class="td__left"></td>
                        </tr>
                        <tr>
                            <td class="td__left">3.사업화 계획</td>
                            <td class="td__left"></td>
                        </tr>
                        <tr>
                            <td class="td__left">4.안정성 검토</td>
                            <td class="td__left"></td>
                        </tr>
                        <tr>
                            <th class="th__left last-child" rowspan="2">작물재배 계획서</th>
                            <td class="td__left">1.일반사항</td>
                            <td class="td__left"></td>
                        </tr>
                        <tr>
                            <td class="td__left">2.재배설계</td>
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
    </div>
</div>
<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
<%@include file ="footer.jsp" %>