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
                    <a href="#" class="under__depth--anchor">실증 절차</a>
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
                <h2 class="page__title">실증 절차</h2>
                <div class="page__location">
                    <div class="location__deco">실증 절차는 <b>자율형</b>과 <b>위탁형</b>으로 구분되어 있습니다.</div>

                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">자율형</h3>
            <div class="page__comment">실증단지 이용자가 자율실증을 희망 시 아래 절차에 따라 서비스 제공</div>

            <div class="step__desc">
                <div class="step__diagram">
                    <div class="step__diagram--circle circle--01"><span>사전<br>컨설팅</span></div>
                    <div class="step__diagram--circle circle--02"><span>임대 및<br>활용</span></div>
                    <div class="step__diagram--circle circle--03"><span>결과<br>처리</span></div>
                </div>
                <div class="step__autonomous">
                    <div class="step__autonomous--box box--01">
                        <b>STEP 01</b>
                        <ul>
                            <li><b>(농진원)</b> 실증항목(과제, 기술분야, 실증기간 등) 상담</li>
                            <li><b>(농진원, 이용자)</b> 필요항목(부지, 온실, 장비 등) 설정</li>
                            <li><b>(농진원)</b> 공동운영비(폐작물 처리, 공동방제 등) 사전 안내</li>
                            <li><b>(농진원, 이용자)</b> 임대계약 체결</li>
                        </ul>
                    </div>
                    <div class="step__autonomous--box box--02">
                        <b>STEP 02</b>
                        <ul>
                            <li><b>(농진원, 이용자)</b> 부지, 온실, 실증장비 등 임대 및 활용</li>
                            <li><b>(농진원)</b> 주 1회 시설 관리 및 점검</li>
                            <li><b>(농진원)</b> 실증데이터 수집 및 관리, 제공</li>
                        </ul>
                    </div>
                    <div class="step__autonomous--box box--03">
                        <b>STEP 03</b>
                        <ul>
                            <li><b>(농진원)</b> Raw data 정리 및 제공</li>
                            <li><b>(이용자)</b> 시설 원상태 복구 및 임대 <br>결과보고서 제출</li>
                            <li><b>(농진원)</b> 실증연계서비스(전시·체험, <br>표준화, 검정 등) 안내<br></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//-->

            <h3 class="page__subject">위탁형</h3>
            <div class="page__comment">실증단지 이용자가 위탁실증 의뢰 시 아래 절차에 따라 서비스 제공</div>

            <div class="step__desc">
                <div class="step__diagram--02">
                    <div class="step__diagram--circle circle--01"><span>사전<br>컨설팅</span></div>
                    <div class="step__diagram--circle circle--02"><span>설계</span></div>
                    <div class="step__diagram--circle circle--03"><span>실증</span></div>
                    <div class="step__diagram--circle circle--04"><span>결과<br>처리</span></div>
                </div>
                <div class="step__autonomous--02">
                    <div class="step__autonomous--box box--01">
                        <b>STEP 01</b>
                        <ul>
                            <li><b>(농진원)</b> 실증항목(과제, 기술분야,<br>실증기간 등) 상담</li>
                            <li><b>(농진원, 이용자)</b> 실증진행방향(예상결과 등)<br>및 실증비용 협의</li>
                            <li><b>(농진원, 이용자)</b> 위탁실증 계약체결</li>
                        </ul>
                    </div>
                    <div class="step__autonomous--box box--02">
                        <b>STEP 02</b>
                        <ul>
                            <li><b>(농진원)</b> 실증결과 창출을 위한<br>분석요건 도출 및 실증수행방안 수립</li>
                            <li><b>(농진원)</b> 유사환경·대조군 설정 및<br>예상결과 도출</li>
                            <li><b>(농진원)</b> Working model, 프로토타입<br>설계 및 사전 실증시범테스트 실시·확인</li>
                        </ul>
                    </div>
                    <div class="step__autonomous--box box--03">
                        <b>STEP 03</b>
                        <ul>
                            <li><b>(농진원)</b> 실증테스트(대조군 대비<br>비교실증, 반복 실증, 복합실증 등) 실시</li>
                            <li><b>(농진원, 이용자)</b> 중간보고(월 1회 이상)를<br>통한 실증 중간점검 및 실증방향 재검토</li>
                        </ul>
                    </div>
                    <div class="step__autonomous--box box--04">
                        <b>STEP 04</b>
                        <ul>
                            <li><b>(농진원)</b> Raw data 정리·제공,<br>실증데이터 관리·분석</li>
                            <li><b>(농진원)</b> 실증결과보고서 제공</li>
                            <li><b>(농진원)</b> 실증연계서비스(전시·체험,<br>표준화, 검정 등) 안내</li>
                        </ul>
                    </div>
                </div>
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