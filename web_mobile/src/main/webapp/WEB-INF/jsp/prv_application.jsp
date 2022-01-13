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


<div class="page__h1">신청서 작성</div>
</header>
<div class="content" id="content">
    <div class="page__body">
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <div class="page__location">
                    <div class="location__link">
                        <a href="prv_application" class="location__link--anchor is-selected">절차 안내 및 내려받기</a>
                        <a href="prv_prepare" class="location__link--anchor ">작성 안내</a>
                        <a href="prv_register" class="location__link--anchor ">신청서 등록/보완</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">절차 안내 및 내려받기</h3>
            <div class="page__comment">실증시설이용료, 장비이용료 및 실증서비스료의 90일에 해당하는 금액입니다. </div>

            <div class="fee__container">

                <div class="cnt__title">실증단지 사용승인 절차
                    <a href="#" class="btn submit fl-right"><i class="ico ico-download"></i>제공 양식 내려받기</a>
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
                        <span>이용신청자가 많아 선택적으로 사용승인을 해야 하는 경우는 선정평가를 통해 사용을 승인합니다. </span>
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
                        <li>「정부출연연구기관 등의 설립·운영 및 육성에 관한 법률」에 따라 설립된 정부출연연구기관 또는「과학기술분야 정부출연연구기관 등의 설립·운영 및 육성에 관한 법률」에 따라 설립된 과학기술분야 정부출연연구기관</li>
                        <li>「기초연구진흥 및 기술개발지원에 관한 법률」제14조제1항제2호에 따른 기업 부설연구소 중 스마트팜 관련 기업부설연구소 보유기업 </li>
                        <li>스마트팜 관련 자재, 장비, 시설공법, 영농기술 등을 개발하는 사업자 또는 대학 </li>
                        <li>농업 및 스마트팜 관련 서비스 분야의 7년 이내 창업·벤처기업</li>
                        <li>스마트팜 및 농업분야의 사업화를 위한 예비창업자</li>
                        <li>「농지법」또는「농어업ž농어촌 및 식품산업 기본법」에 따른 농업인</li>
                        <li>기타 실증센터장이 인정하는 기관이나 단체 또는 사업자 </li>
                    </ol>
                </div>

                <div class="cnt__title">이용 신청</div>
                <div class="cnt__text">실증단지를 이용하고자 하는 자는 실증단지 이용신청서와 함께 구비서류를 제출해야 함 </div>

                <div class="cnt__title">실증단지 이용 신청서 제출 서류</div>
                <div class="application__document">
                    <ol>
                        <li>[서식 1호] 실증단지 이용신청서 1부 (필수)</li>
                        <li>[서식 2호] 실증계획서 1부 (필수)</li>
                        <li>[서식 3호] 개인정보 수집ᆞ이용ᆞ제공에 관한 동의서 1부 (필수)</li>
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

                <div class="cnt__title">선정평가 점수산출</div>
                <div class="cnt__text">최고점수와 최저점수를 제외한 위원의 평균점수에 가점을 부여하여 최종점수를 산정하며, 최종점수가 높은 이용 신청자를 선정. 단, 지원시설은 실증단지 상주인력이 많은 신청자에게 우선 배정</div>
                <div class="application__counseling">
                    <ul>
                        <li>가점사항 : 가점사항에 따라 최대 5점까지 가점</li>
                        <li>다음 각 호의 하나에 해당하는 경우 사용불승인 가능</li>
                    </ul>
                </div>
                <div class="cnt__list">
                    <ol>
                        <li>실증시설 또는 실증장비 등을 파손하고 멸실시킬 위험이 있다고 인정되는 경우</li>
                        <li>실증시설의 관리 운용상 지장이 있다고 인정되는 경우</li>
                        <li>휴·폐업 중인 사업자</li>
                        <li>국가연구개발사업 참여 제한을 받고 있는 자</li>
                        <li>국세 및 지방세 체납, 부도 등으로 인한 강제집행, 파산, 화의개시, 회사정리 절차 개시 또는 경매절차개시 통지를 받은 자</li>
                        <li>금융기관으로부터 불량거래자로 규제 중인 자</li>
                        <li>과거 실증시설시 이용료를 2개월 이상 연체한 이력이 있는 경우</li>
                        <li>기타 실증센터장이 부적합하다고 인정하는 자</li>
                    </ol>
                    <p class="cnt__appendix">※ 이외 자세한 사항은 스마트팜 혁신벨리 실증단지 입주대상 모집 공고문 참조</p>
                </div>

                <div class="cnt__btn type--topborder">
                    <div class="btn__group">
                        <a href="#" class="btn submit btn-jumbo">제공 양식 내려받기 <br><em>실증단지 이용신청서,실증계획서,작물재배계획서</em></a>
                    </div>
                </div>
            </div>
            <!--//-->

        </div>

    </div>
</div>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/ui.common.js" type="text/javascript"></script>

<%@include file ="footer.jsp" %>
