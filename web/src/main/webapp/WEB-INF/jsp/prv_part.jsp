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
                    <a href="#" class="under__depth--anchor">실증 분야</a>
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
                <h2 class="page__title">실증 분야</h2>
                <div class="page__location">
                    <div class="location__deco">고객님의 수요기반 맞춤형 실증서비스를 제공합니다.</div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">실증서비스 유형</h3>

            <div class="part__container">
                <div class="part__service bg--free">
                    <div class="part__service--title">자율형</div>
                    <div class="part__service--desc">실증단지 이용자가 부지, 온실, 장비등을 임대하여 자체적으로 실증 진행 <br>이용자 요청 시, 실증확인서(실증수행 및 입주사실 증명) 발급 가능</div>
                    <div class="part__service__appendix">실비성 재료(육묘, 양액 등) 이용자 자체 수급</div>
                </div>
                <div class="part__service bg--lent">
                    <div class="part__service--title">위탁형</div>
                    <div class="part__service--desc">실증단지 이요자가 작성한 작물재배 및 데이터 수집계획서에 따라<br>
                        농진원이 실증 진행<br>
                        이용자 요청 시, 실증결과서(실증수행, 실증과정 중 도출된 수치 등의 객관적 내용) <br>발급 가능 </div>
                    <div class="part__service__appendix">실비성 재료(육묘, 양액 등) 비용 별도 청구</div>
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
                        <td>약 1개월</td>
                    </tr>
                    <tr>
                        <td>비교 실증</td>
                        <td class="td__left">대조군 대비 실험군의 실증 결과를 비교하여 결과 도출‧분석</td>
                        <td>약 6개월 ~ 12개월</td>
                    </tr>
                    <tr>
                        <td>반복 실증</td>
                        <td class="td__left">동일한 조건의 테스트 절차에 따라 3회 이상의 실증을 추진한 후 결과를 도출·분석</td>
                        <td>약 6개월 ~ 12개월</td>
                    </tr>
                    </tbody>
                </table>
                <div class="table__desc">
                    <ul>
                        <%--<li>실증 분야에 따른 세부 실증 매뉴얼 및 소요기간 개발‧검증 추진 中</li>--%>
                        <li>제품 및 성능 등 실증요구사항에 따라 소요기간은 유동적일 수 있음</li>
                    </ul>
                </div>
            </div>
            <!--//-->


            <h3 class="page__subject">지역별 특화분야</h3>

            <c:if test="${profile == 'sangju-prod'}">
                <!--상주-->
                <div class="part__area">
                    <img src="resources/assets/image/img_area_sangju2.png" alt="">
                </div>
                <div class="part__area--subscript">
                    <strong class="subscript--title">주요특징</strong>
                    <p class="subscript--text">· 농업용로봇, 수출 플랜트 거점화</p>
                    <p class="subscript--text">· 병해충 및 방제관련 실증</p>
                </div>
                <!--//-->
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

            </c:if>
            <c:if test="${profile == 'gimje-prod' or profile == 'local'}">
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
                    <img src="resources/assets/image/img_area_sangju2.png" alt="">
                </div>
                <div class="part__area--subscript">
                    <strong class="subscript--title">주요특징</strong>
                    <p class="subscript--text">· 농업용로봇, 수출 플랜트 거점화</p>
                    <p class="subscript--text">· 병해충 및 방제관련 실증</p>
                </div>
                <!--//-->
            </c:if>
            <%--<c:if test="${profile == 'local'}">
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
                    <img src="resources/assets/image/img_area_sangju2.png" alt="">
                </div>
                <div class="part__area--subscript">
                    <strong class="subscript--title">주요특징</strong>
                    <p class="subscript--text">· 농업용로봇, 수출 플랜트 거점화</p>
                    <p class="subscript--text">· 병해충 및 방제관련 실증</p>
                </div>
                <!--//-->
            </c:if>--%>



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
                        <td>ICT기자재</td>
                        <td>제어기, 양액기, 광원 등</td>
                        <td class="td__left">-  센서 및 구동기와의 호환성, 정확성 실증<br>
                            -  내구성, 안전성능 실증 및 재배실증<br>
                            -  양액의 효과, 공급량, 폐액 재활용 비율 실증<br>
                            -  인공광원의 효율성, 재배 실증</td>
                    </tr>
                    <tr>
                        <td>육묘</td>
                        <td>파종, 접목 등</td>
                        <td class="td__left">-  발아율, 작업속도, 관수성능, 접목 활착률 등</td>
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

            <h3 class="page__subject">연계 지원 방안</h3>
            <div class="table__subscript">
                <p class="table__subscript--board">R&D, 표준화, 검정서비스, 분석, 사업화 등 연계 추진</p>
            </div>
            <div class="part__area--feedback">
                <img src="resources/assets/image/img_connect_feedback.png" alt="농산업체 R&D - 시제품시작 - 스마트팜 기자재,장비 실증 / 소프트웨어,시스템 실증 - 미표준 기자재.장비 실증 - 검인증, 품질인증 - 스마트팜 확산 사업">
            </div>
            <!--//-->
        </div>

        <div class="page__btn">
            <div class="btn__desc">실증 분야에 궁금한 것이 있나요? 상담을 신청하시거나 온라인으로 문의해 주시면 상세히 안내를 드리겠습니다.</div>
            <div class="btn__application">
                <a href="spt_consulting" class="btn btn-jumbo submit">상담 신청</a>
            </div>

        </div>
    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
</body>
</html>