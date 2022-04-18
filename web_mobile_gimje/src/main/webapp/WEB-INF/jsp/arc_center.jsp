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
<div class="page__h1">실증단지 소개</div>
</header>

<div class="content" id="content">
    <div class="page__body">
        <div class="page__cnt">
            <div class="arc__container">
                <div class="center__banner">
                    <img src="<%=request.getContextPath()%>/static/assets/image/img_topimg_introduction.jpg" alt="전북 김제 실증단지 소개">
                </div>
                <div class="center__banner--download">
                    <a href="#" class="btn info btn-lg text-bold"><img src="<%=request.getContextPath()%>/static/assets/image/ico_pdf.png" alt="">소개 자료 내려 받기</a>
                </div>

                <h3 class="page__subject">추진 배경</h3>
                <div class="cnt__title">목적</div>
                <div class="cnt__text">‘21년도 하반기 운영 예정인 1차지역(경북 상주, 전북 김제) 스마트팜 혁신밸리 실증단지의 구성 및 실증분야, 실증장비 등 설명자료를 배포하여 참여 희망기업 모집을 하고자 함</div>
                <div class="cnt__effect">
                    <ul>
                        <li>1차지역(경북 상주, 전북 김제) 실증단지 위탁운영기관으로 농업기술실용화재단 지정(‘19.3)</li>
                    </ul>
                </div>
                <!--//-->

                <h3 class="page__subject">주요 내용</h3>
                <div class="cnt__title">지원 내용</div>
                <div class="cnt__text">스마트팜 기자재‧장비의 성능 실증을 위한 인프라 및 서비스 제공을 통하여 제품 상용화‧국산화 지원</div>
                <div class="center__support">
                    <ul>
                        <li>스마트팜 기술‧제품의 성능확인을 위하여 실증을 통해 검증 할 수 있는 물리적</li>
                        <li>인프라 및 서비스(실증 온실 및 장비, 작물재배관리 서비스 등) 제공</li>
                        <li>실증서비스를 통해 R&D 결과물에 대한 성능 확인 가능</li>
                        <li>우수 스마트팜 제품 및 기술을 상시 전시‧체험 할 수 있는 홍보 공간 제공</li>
                        <li>실증단지 우수 실증 제품의 상용화‧사업화(제품 개선 및 마케팅 등) 연계 지원</li>
                        <li>스마트팜 표준화, 검정서비스 등과 연계하여 제품 신뢰성 제고</li>
                    </ul>
                </div>
                <!--//-->

                <div class="cnt__title">지원 대상</div>
                <div class="cnt__text">스마트팜 ICT 기자재 제품·기술을 보유하고 이에 대한 실증을 하고자 하는 기업·연구기관·농업인 등</div>
                <!--//-->

                <div class="cnt__title">실증단지 구성</div>
                <div class="cnt__text">유리온실, 연동비닐온실, 단동비닐온실, 식물공장, 나대지 등</div>
                <div class="center__support">
                    <ul>
                        <li>(상주) 유리온실 15구역(육묘장 1), 연동비닐 3구역, 단동비닐 3구역</li>
                        <li>(김제) 유리온실 10구역(육묘장 1), 연동비닐 3구역, 단동비닐 5구역, 식물공장 1구역</li>
                    </ul>
                </div>
                <div class="cnt__effect">
                    <ul>
                        <li>지역별로 온실 유형 및 크기는 다양하게 구성되어 있음</li>
                    </ul>
                </div>
                <!--//-->

                <div class="cnt__title">지역별 특화분야</div>
                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:30%"></col>
                            <col style="width:35%"></col>
                            <col style="width:35%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th rowspan="2">구분</th>
                            <th colspan="2">1차 지역</th>
                        </tr>
                        <tr>
                            <th>전북 김제</th>
                            <th>경북 상주</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>운영 일정(안)</th>
                            <td>
                                &lt;주력분야 : ICT 기자재&gt;<br>
                                ①ICT 기자재 ②신품종(아열대 제외)<br>
                                ③기능성 물질 ④약용작물
                            </td>
                            <td>&lt;주력분야 : 농업용 로봇&gt;<br>
                                ①농업용 로봇 ②자율주행 로봇<br>
                                ③병해충 ④수출 플랜트 거점화</td>
                        </tr>
                        <tr>
                            <th>온실 사용료</th>
                            <td colspan="2">‘21년도 하반기 (김제 `21.8월, 상주`21.9월 운영 예정)</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">분야별 실증서비스 항목</div>
                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:15%"></col>
                            <col style="width:20%"></col>
                            <col></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>대분류</th>
                            <th>중분류</th>
                            <th>실증항목</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>스마트팜</td>
                            <td>센서, 구동기</td>
                            <td class="td__left">- 센서의 정확도, 고장율, 호환성 실증<br>
                                - 구동기의 작동성능, 고장률, 호환성 실증</td>
                        </tr>
                        <tr>
                            <td>온실 구조자재</td>
                            <td>구조자재, 피복재</td>
                            <td class="td__left">- 내환경성 및 내구성 실증<br>
                                - 보온·차광 효율성 실증</td>
                        </tr>
                        <tr>
                            <td>농업용 로봇</td>
                            <td>방제, 정식, 운송, 수확 등</td>
                            <td class="td__left">- 주행정확도, 속도, 자율주행 성능 실증<br>
                                - 로봇의 내환경성, 내구성, 안전성능 실증</td>
                        </tr>
                        <tr>
                            <td>병해충</td>
                            <td>진단, 방제</td>
                            <td class="td__left">- 진단·예찰 제품의 정확도 실증<br>
                                - 병해 절감 효과 실증</td>
                        </tr>
                        <tr>
                            <td>수출플랜트</td>
                            <td>국가별</td>
                            <td class="td__left">- 국가별 환경에 맞는 내구성, 재배실증</td>
                        </tr>
                        <tr>
                            <td>ICT기자재</td>
                            <td>제어기, 양액기, 광원 등</td>
                            <td class="td__left">- 센서 및 구동기와의 호환성, 정확성 실증<br>
                                - 내구성, 안전성능 실증 및 재배실증<br>
                                - 양액의 효과, 공급량, 폐액 재활용 비율 실증<br>
                                - 인공광원의 효율성, 재배 실증</td>
                        </tr>
                        <tr>
                            <td>육묘</td>
                            <td>파종, 접목 등</td>
                            <td class="td__left">- 파종 성공률, 작업속도, 관수성능, 접목 성공률 등</td>
                        </tr>
                        <tr>
                            <td>생육모델</td>
                            <td>신품종, 기능성</td>
                            <td class="td__left">- 작물 재배실증, 물질 분석, 생산성 향상 실증 등</td>
                        </tr>
                        <tr>
                            <td>에너지 절감</td>
                            <td>신재생, 냉난방, 절감기자재</td>
                            <td class="td__left">- 온실 에너지 최적화 실증<br>
                                - 에너지 절감 기자재 효율성 실증</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">예상 실증비용(위탁형 실증)</div>
                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:21%"></col>
                            <col style="width:57%"></col>
                            <col></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th rowspan="2">항목</th>
                            <th rowspan="2">산출</th>
                            <th>임대료 (원/일)</th>
                        </tr>
                        <tr>
                            <th>전북 김제 (1,260m2, 유리)</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>온실사용료</td>
                            <td>(시설가액+부지가액) × 대부료율(1%)</td>
                            <td>47,624</td>
                        </tr>
                        <tr>
                            <td>경영비</td>
                            <td>농진청 2019 농축산물소득자료집(촉성딸기 기준)</td>
                            <td>26,453</td>
                        </tr>
                        <tr class="subtotal">
                            <td>소계</td>
                            <td></td>
                            <td>74,077</td>
                        </tr>
                        <tr>
                            <td>보조난방(가스)</td>
                            <td>122.25L/h × 1285.25원/L × 5개월 × 3시간</td>
                            <td>36,526</td>
                        </tr>
                        <tr>
                            <td>CO2 발생기</td>
                            <td>3.2L/h × 4시간 × 950원/L × 7개월(4~10월)</td>
                            <td>12,160</td>
                        </tr>
                        <tr>
                            <td>지열전기료</td>
                            <td>15,000(원/m2) × 1260m2 × 8개월(8h/일)</td>
                            <td>17,500</td>
                        </tr>
                        <tr class="subtotal">
                            <td>합계</td>
                            <td></td>
                            <td>140,263</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="cnt__effect">
                    <ul>
                        <li>경영비는 재배시 필요한 종묘, 비료, 농약, 기타재료비 등 포함된 비용</li>
                        <li>보조난방은 지열(히트펌프)의 용량이 부족할 경우 입주자 의사에 따라 작동하고 온실 사용료를 제외한 지열, 보조난방, CO2발생기 등 사용량에 따라 비용이 청구 됨</li>
                    </ul>
                </div>
                <!--//-->

                <div class="cnt__title">실증장비 구축</div>
                <div class="center__support">
                    <ul>
                        <li>지역별 특화분야, 실증분야별로 필요한 장비를 보유하고 있음</li>
                        <li>모니터링 시스템, 육묘 실증장비, 스마트팜 ICT기자재 신뢰성 실증 장비, 농업용 로봇 실증장비, 시제품 제작장비 등 구축</li>
                    </ul>
                </div>
                <!--//-->

                <h3 class="page__subject">향후 계획</h3>
                <div class="cnt__text">실증단지 참여기업 모집공고 및 온라인 사업설명회 추진(5월중)</div>
                <div class="cnt__effect">
                    <ul>
                        <li>자세한 내용은 [붙임1] 설명자료를 참조하여 주시기 바랍니다.</li>
                    </ul>
                </div>
                <!--//-->

                <h3 class="page__subject">문의처</h3>
                <div class="cnt__text">스마트팜사업팀 정호석(063-919-1716, hsjeong@efact.or.kr)</div>
                <div class="cnt__text">(상주)스마트팜사업팀 심재민(063-919-1724, woals447447@efact.or.kr)</div>
                <div class="cnt__text">(김제)스마트팜사업팀 김민호(063-919-1720, bigstone04@efact.or.kr)</div>

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