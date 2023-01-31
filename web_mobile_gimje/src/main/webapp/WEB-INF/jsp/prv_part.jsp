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


<div class="page__h1">실증 가능 분야</div>
</header>
<div class="content" id="content">
    <div class="page__body">
        <!--//-->
        <div class="page__cnt">
            <h3 class="page__subject">실증서비스 유형</h3>

            <div class="part__container">
                <div class="part__service bg--free">
                    <div class="part__service--title">자율형</div>
                    <div class="part__service--desc">의뢰인이 부지, 온실, 장비 등을 임대하여 자체적으로 실증 추진 별도 요청 시, 스마트팜 혁신밸리 실증단지에서 자율실증을 하였다는 실증확인서(한국농업기술진흥원) 발급</div>
                    <div class="part__service--text">부지, 온실, 장비 임대 가능. 이용에 따른 별도 비용을 부과</div>
                </div>
                <div class="part__service bg--lent">
                    <div class="part__service--title">위탁형</div>
                    <div class="part__service--desc">의뢰인이 제품의 성능, 품질, 내구성, 호환성 등 R&D결과물에 대한 <br>
                        실증 요청 시, 일련의 절차를 거쳐 실증결과서(한국농업기술진흥원) 까지 발급 </div>
                    <div class="part__service--text">부지, 온실, 장비 임대 불가능</div>
                </div>
            </div>
            <!--//-->

            <h3 class="page__subject">실증 방법 및 기간</h3>
            <div class="table__type">
                <table class="table__type--normal">
                    <colgroup>
                        <col style="width:20%"></col>
                        <col style="width:60%"></col>
                        <col></col>
                    </colgroup>
                    <thead>
                    <tr>
                        <th>구분</th>
                        <th>내용</th>
                        <th>소요 기간(참고)</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>단일제품 성능실증</td>
                        <td class="td__left">단일제품에 대한 내구성, 정밀도, 안정성 등 테스트·분석</td>
                        <td>약 30일</td>
                    </tr>
                    <tr>
                        <td>비교 실증</td>
                        <td class="td__left">대조군 대비 실험군의 실증 결과를 비교하여 결과 도출‧분석</td>
                        <td>6개월 or 1년 단위</td>
                    </tr>
                    <tr>
                        <td>비교 실증</td>
                        <td class="td__left">동일한 조건의 테스트 절차에 따라 3회 이상의 실증을 추진한 후 결과를 도출·분석</td>
                        <td>6개월 or 1년 단위</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="table__desc">
                <ul>
                    <li>실증 분야에 따른 세부 실증 매뉴얼 및 소요기간 개발‧검증 추진 中</li>
                    <li>제품 및 성능 등 실증요구사항에 따라 소요기간은 유동적일 수 있음</li>
                </ul>
            </div>
            <!--//-->

            <h3 class="page__subject">지역별 특화분야</h3>
            <!--김제-->
            <div class="part__area">
                <img src="resources/assets/image/img_area_gimje.png" alt="">
            </div>
            <div class="part__area--subscript">
                <strong class="subscript--title">주요특징</strong>
                <p class="subscript--text">· 스마트팜 ICT기자재 실증</p>
                <p class="subscript--text">· 신품종, 약용작물, 기능성물질 실증 및 효과 분석</p>
            </div>
            <!--//-->
            <!--상주-->
            <div class="part__area">
                <img src="resources/assets/image/img_area_sangju.png" alt="">
            </div>
            <div class="part__area--subscript">
                <strong class="subscript--title">주요특징</strong>
                <p class="subscript--text">· 농업용로봇, 수출 플랜트 거점화</p>
                <p class="subscript--text">· 병해충 및 방제관련 실증</p>
            </div>
            <!--//-->

            <h3 class="page__subject">실증서비스 분야</h3>
            <div class="table__type">
                <table class="table__type--normal">
                    <colgroup>
                        <col style="width:22%"></col>
                        <col style="width:22%"></col>
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
                        <td> 센서, 구동기</td>
                        <td class="td__left">-  센서의 정확도, 고장율, 호환성 실증<br>
                            -  구동기의 작동성능, 고장률, 호환성 실증</td>
                    </tr>
                    <tr>
                        <td>온실 구조자재</td>
                        <td>구조자재, 피복재</td>
                        <td class="td__left">-  내환경성 및 내구성 실증<br>
                            -  보온·차광 효율성 실증</td>
                    </tr>
                    <tr>
                        <td>농업용 로봇</td>
                        <td>방제, 정식, 운송, 수확 등</td>
                        <td class="td__left">-  주행정확도, 속도, 자율주행 성능 실증<br>
                            -  로봇의 내환경성, 내구성, 안전성능 실증</td>
                    </tr>
                    <tr>
                        <td>병해충</td>
                        <td>진단, 방제</td>
                        <td class="td__left">-  진단·예찰 제품의 정확도 실증<br>
                            -  병해 절감 효과 실증</td>
                    </tr>
                    <tr>
                        <td>수출플랜트</td>
                        <td>국가별</td>
                        <td class="td__left">-  국가별 환경에 맞는 내구성, 재배실증</td>
                    </tr>
                    <tr>
                        <td>병해충</td>
                        <td>진단, 방제</td>
                        <td class="td__left">-  센서 및 구동기와의 호환성, 정확성 실증<br>
                            -  내구성, 안전성능 실증 및 재배실증<br>
                            -  양액의 효과, 공급량, 폐액 재활용 비율 실증<br>
                            -  인공광원의 효율성, 재배 실증</td>
                    </tr>
                    <tr>
                        <td>육모</td>
                        <td>파종, 접목 등</td>
                        <td class="td__left">-  파종 성공률, 작업속도, 관수성능, 접목 성공률 등</td>
                    </tr>
                    <tr>
                        <td>생육모델</td>
                        <td>신품종, 기능성</td>
                        <td class="td__left">-  작물 재배실증, 물질 분석, 생산성 향상 실증 등</td>
                    </tr>
                    <tr>
                        <td>에너지 절감</td>
                        <td>신재생, 냉난방, 절감기자재</td>
                        <td class="td__left">-  온실 에너지 최적화 실증<br>
                            -  에너지 절감 기자재 효율성 실증</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!--//-->

            <h3 class="page__subject">연계 지원방안</h3>
            <div class="table__subscript">
                <p class="table__subscript--board">R&D, 표준화, 검정서비스, 분석, 사업화 등 연계 추진</p>
            </div>
            <div class="part__area--feedback">
                <img src="resources/assets/image/img_connect_feedback.png" alt="농산업체 R&D - 시제품시작 - 스마트팜 기자재,장비 실증 / 소프트웨어,시스템 실증 - 미표준 기자재.장비 실증 - 검인증, 품질인증 - 스마트팜 확산 사업">
            </div>
            <!--//-->
        </div>

        <div class="page__btn">
            <div class="btn__desc">실증 분야에 궁금한 것이 있나요? <br>상담을 신청하시거나 1:1로 문의해 주시면 <br>상세히 안내를 드리겠습니다.</div>
            <div class="btn__group">
                <a href="#" class="btn__part bg--qa"><img src="resources/assets/image/img_question.png" alt="">1:1문의<em>바로가기</em></a>
                <a href="#" class="btn__part bg--cs"><img src="resources/assets/image/img_consultation.png" alt="">상담 신청<em>바로가기</em></a>
            </div>
        </div>
    </div>
</div>
<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>

<%@include file ="footer.jsp" %>