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
                <span>실증 안내/신청</span>
                <div class="under__depth">
                    <a href="#" class="under__depth--anchor">신청서 작성</a>
                    <div class="under__depth--list">
                        <a href="prv_part">실증 분야</a>
                        <a href="prv_step">실증 절차</a>
                        <a href="prv_use">이용가능시설</a>
                        <a href="prv_fee">실증서비스 이용료</a>
                        <a href="prv_application">신청서 작성</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">신청서 작성</h2>
                <div class="page__location">
                    <div class="location__deco">안내된 절차와 양삭에 따라서 신청해주시기 바랍니다.</div>
                    <div class="location__link">
                        <a href="prv_application" class="location__link--anchor is-selected">절차 안내 및 다운로드</a>
                        <a href="prv_prepare" class="location__link--anchor ">작성 안내</a>
                        <a href="prv_register" class="location__link--anchor ">신청서 등록</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">절차 안내 및 내려받기</h3>
            <%--<div class="page__comment">실증시설이용료, 장비이용료 및 실증서비스료의 90일에 해당하는 금액입니다. </div>--%>

            <div class="fee__container">

                <div class="cnt__title">실증단지 사용승인 절차
                    <%--<a href="/fileStore/실증신청서식.zip" class="btn submit fl-right"><i class="ico ico-download"></i>제공 양식 내려받기</a>--%>
                </div>
                <div class="application__diagram">
                    <div class="application__diagram--circle circle--01"><span>이용<br>신청</span></div>
                    <div class="application__diagram--circle circle--02"><span>서류<br>검토</span></div>
                    <div class="application__diagram--circle circle--03"><span>선정<br>평가</span></div>
                    <div class="application__diagram--circle circle--04"><span>결과<br>통보</span></div>
                    <div class="application__diagram--circle circle--05"><span>계약<br>체결</span></div>
                </div>
                <div class="application__autonomous">
                    <div class="application__autonomous--box box--01">
                        <ul>
                            <li>신청서 다운로드</li>
                            <li>신청서 작성(‘작성안내’ 메뉴 참고)</li>
                            <li>신청서 및 구비서류 접수</li>
                        </ul>
                    </div>
                    <div class="application__autonomous--box box--02">
                        <%--<span>이용신청자가 많아 선택적으로 사용승인을 해야 하는 경우는 선정평가를 통해 사용을 승인합니다. </span>--%>
                    </div>
                </div>

                <div class="cnt__title">이용 대상</div>
                <div class="cnt__text">스마트팜 기술을 연구·개발하고자 하는 법인 또는 개인 </div>
                <div class="cnt__list">
                    <ol>
                        <li>「농촌진흥법」에 정한 농업ᆞ농업인ᆞ농촌과 관련된 과학기술의 연구개발ᆞ보급, 농촌지도, 교육훈련 및 국제협력에 관한 업무를 수행하는 농업진흥기관 </li>
                        <li>「중소기업기본법」상 중소기업에 해당하는 기업</li>
                        <li>중견기업 이상의 경우 실증시설을 이용하는 다른 실증단지이용자를 선도 또는 지원할 수 있는 기업</li>
                        <li>국내의 기관이나 단체 또는 사업자와 공동으로 연구개발 및 기술이전을 주목적으로 설립한 외국연구기관</li>
                        <li>「특정연구기관 육성법」의 적용을 받는 연구기관</li>
                        <li style="word-spacing: -1px">「정부출연연구기관 등의 설립·운영 및 육성에 관한 법률」에 따라 설립된 정부출연연구기관 또는「과학기술분야 정부출연연구기관 등의 설립·운영 및 육성에 관한 법률」에 따라 설립된 과학기술분야 정부출연연구기관</li>
                        <li>「기초연구진흥 및 기술개발지원에 관한 법률」제14조제1항제2호에 따른 기업 부설연구소 중 스마트팜 관련 기업부설연구소 보유기업 </li>
                        <li>스마트팜 관련 자재, 장비, 시설공법, 영농기술 등을 개발하는 사업자 또는 대학 </li>
                        <li>농업 및 스마트팜 관련 서비스 분야의 7년 이내 창업·벤처기업</li>
                        <li>스마트팜 및 농업분야의 사업화를 위한 예비창업자</li>
                        <li>「농지법」또는「농어업ž농어촌 및 식품산업 기본법」에 따른 농업인</li>
                        <li>기타 실증센터장이 인정하는 기관이나 단체 또는 사업자 </li>
                    </ol>
                </div>

                <div class="cnt__title">이용 신청</div>
                <div class="cnt__text">실증단지를 이용하고자 하는 자는 사용신청서 및 구비서류를 제출해야 함</div>

                <div class="cnt__title">실증단지 이용 신청서 제출 서류</div>
                <div class="application__document">
                    <ol>
                        <li>실증단지 이용신청서 1부 (필수)</li>
                        <li>실증계획서 1부 (필수)</li>
                        <li>개인정보 수집ᆞ이용ᆞ제공에 관한 동의서 1부 (필수)</li>
                        <li>사업자등록증 1부 (해당 시)</li>
                        <li>법인등기부등본 1부 (해당 시)</li>
                        <li>법인인감증명서 1부 (해당 시)</li>
                        <li>4대보험 완납증명서 1부 (해당 시)</li>
                        <li>최근 2년간 재무제표 또는 회계감사 보고서 1부 (해당 시)</li>
                        <li>기타 (가점서류 및 기업역량을 보여줄 수 있는 자료) (해당 시)</li>
                    </ol>
                </div>

                <div class="cnt__title">선정평가 기준</div>
                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:16%"></col>
                            <col style="width:53%"></col>
                            <col style="width:18%"></col>
                            <col style="width:18%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>품목</th>
                            <th>내용</th>
                            <th>배점</th>
                            <th>비고</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td rowspan="2">실증제품의<br>우수성<br>(30점)</td>
                            <td class="">국내ᆞ외 제품과의 차별성 및 경쟁력 여부</td>
                            <td>20</td>
                            <td rowspan="7">전문가<br>평가</td>
                        </tr>
                        <tr>
                            <td class="">시장특성 및 산업환경 (시장규모, 선호도 등) 부합성</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td rowspan="2">실증계획의<br>구체성<br>(40점)</td>
                            <td class="">실증단지에 대한 구체적인 사용계획 및 관리방안</td>
                            <td>20</td>
                        </tr>
                        <tr>
                            <td class="">향후 실증검사에 대한 활용 및 사업화계획</td>
                            <td>20</td>
                        </tr>
                        <tr>
                            <td rowspan="2">사업수행<br>역량<br>(20점)</td>
                            <td class="">전문성 및 경험, 사업화성공 이력, 인적자원 등</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td class="">입주 후 매출액 및 신규인력 창출 가능 여부</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td>경영안전성<br>(10점)</td>
                            <td class="">재무제표를 통한 정량평가</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td colspan="2"><strong>합계</strong></td>
                            <td colspan="2"><strong>100</strong></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="cnt__effect">
                    <ul class="">
                        <li>추후 실증단지 운영 및 상황에 따라 해당 기준 및 배점은 변경 될 수 있음</li>
                    </ul>
                </div>

                <div class="cnt__title">선정평가 점수산출</div>
                <div class="cnt__text">최고점수와 최저점수를 제외한 위원의 평균점수에 가점을 부여하여 최종점수를 산정하며, 최종점수가 높은 이용 신청자를 선정.</div>
                <div class="application__counseling">
                    <ul>
                        <li>가점사항 : 가점사항에 따라 최대 5점까지 가점</li>
                    </ul>
                </div>

                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:20%"></col>
                            <col style="width:60%"></col>
                            <col style="width:20%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>번호</th>
                            <th>가점항목</th>
                            <th>가점</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>농업 및 스마트팜 관련 신기술(인증,검증) 보유기업(접수일 기준)</td>
                            <td>1</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>국가 연구개발사업 성공 종료기업 또는 수행중인 기업(접수일 기준 유효)<br>
                            - 농업 및 바이오분야 한함</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>친환경인증, 농림식품신기술(NET) 인증, 기타 다른 법률에 의한 기술분야 인증</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>지역혁신기업, 후계농업 경영인(접수일 기준 유효)</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>「사회적기업 육성법」에 따른 사회적기업 인증 기업(접수일 기준)</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>전라북도에 본사를 둔 기업</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>전라북도 김제시에 실증참여의향서를 기 제출한 기업</td>
                            <td>1</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
<%--


                <div class="cnt__list">
                    <ol>
                        <li>실증시설 또는 실증장비 등을 파손하고 멸실시킬 위험이 있다고 인정되는 경우 </li>
                        <li>실증시설의 관리 운용상 지장이 있다고 인정되는 경우</li>
                        <li>휴·폐업 중인 사업자</li>
                        <li>국가연구개발사업 참여 제한을 받고 있는 자</li>
                        <li>국세 및 지방세 체납, 부도 등으로 인한 강제집행, 파산, 화의개시, 회사정리 절차 개시 또는 경매절차개시 통지를 받은 자</li>
                        <li>금융기관으로부터 불량거래자로 규제 중인 자</li>
                        <li>과거 실증시설시 이용료를 2개월 이상 연체한 이력이 있는 경우 </li>
                        <li>기타 실증센터장이 부적합하다고 인정하는 자</li>
                    </ol>
                </div>--%>


                <div class="cnt__title">사용 불승인</div>
                <div class="cnt__text">다음 각호에 하나에 해당하는 경우 상용불승인 가능</div>
<%--                <div class="application__counseling">
                    <ul>
                        <li>가점사항 : 가점사항에 따라 최대 5점까지 가점</li>
                        <li>다음 각 호의 하나에 해당하는 경우 사용불승인 가능</li>
                    </ul>
                </div>--%>
                <div class="cnt__list">
                    <ol>
                        <li>실증시설 또는 실증장비 등을 파손하고 멸실시킬 위험이 있다고 인정되는 경우 </li>
                        <li>실증시설의 관리 운용상 지장이 있다고 인정되는 경우</li>
                        <li>휴·폐업 중인 사업자</li>
                        <li>국가연구개발사업 참여 제한을 받고 있는 자</li>
                        <li>국세 및 지방세 체납, 부도 등으로 인한 강제집행, 파산, 화의개시, 회사정리 절차 개시 또는 경매절차개시 통지를 받은 자</li>
                        <li>금융기관으로부터 불량거래자로 규제 중인 자</li>
                        <li>과거 실증시설시 이용료를 2개월 이상 연체한 이력이 있는 경우 </li>
                        <li>기타 실증센터장이 부적합하다고 인정하는 자</li>
                    </ol>
                </div>
                <p class="cnt__appendix">※ 이외에 자세한 사항은 스마트팜 혁신벨리 실증단지 입주대상 모집 공고문 참조</p>
                <p class="cnt__appendix">※ 신청 가능 사업 공고는 열린마당 > <a href="brd_announce?page=1">사업공고</a> 참조</p>

                <div class="cnt__btn type--topborder">
                    <div class="btn__group">
                        <%--<a href="#" class="btn dark btn-jumbo">제공 양식 내려 받기</a>--%>

                        <a href="/fileStore/실증신청서식.zip" class="btn submit btn-jumbo">실증단지 입주대상 모집 공고문 내려받기</a>
                        <a href="prv_register" class="btn submit btn-jumbo">신청서 작성과 등록하기</a>
                    </div>
                </div>
            </div>
            <!--//-->

        </div>

    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
</body>
</html>
