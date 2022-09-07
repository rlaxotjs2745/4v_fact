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
                <span>실증단지 소개</span>
                <div class="under__depth">
                    <a href="#" class="under__depth--anchor">비전과 미션</a>
                    <div class="under__depth--list">
                        <a href="cnt_goal">비전과 미션</a>
                        <%--<a href="cnt_history">연혁</a>--%>
                        <a href="cnt_organize">조직도</a>
                        <a href="cnt_map">찾아오시는 길</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">비전과 미션</h2>
                <div class="page__location">
                    <div class="location__deco">한국농업기술진흥원은 1차 지역(전북 김제, 경북 상주) 스마트팜 혁신 밸리 실증 단지 운영을 하고 있습니다.</div>

                </div>
            </div>
        </div>
        <div class="page__cnt">
            <div class="goal__container">
                <h3 class="page__subject">목적</h3>
                <div class="goal__campain">
                    <div class="goal__campain--text"><strong>스마트팜 분야 신기술·제품 등의<br>
                        사용화·국산화를 위한<br>
                        거점 구축 및 실증을 통한 글로벌 경쟁력 제고</strong> </div>
                </div>

                <h3 class="page__subject">대상</h3>
                <div class="goal__figure">R&D 연계성, 현장 관련성, 전략분야, 실증희망제품 등을 종합적으로 고려하여,<br>
                    실증 서비스 대상 기업, 농업인, 연구기관 등을 선정</div>
                <!--//-->

                <div class="cnt__title">비전</div>
                <div class="goal__mission">
                    <img src="resources/assets/image/img_vision.png" alt="">
                    <span class="goal__mission--text">농업기술혁신으로 국민의 삶의 질 향상 견인</span>
                </div>
                <!--//-->

                <div class="cnt__title">미션</div>
                <div class="goal__mission">
                    <img src="resources/assets/image/img_mission01.png" alt="">
                    <span class="goal__mission--text">농업과학기술의 연구개발·보급·교육훈련 및 국제기술협력</span>
                </div>
                <div class="goal__mission">
                    <img src="resources/assets/image/img_mission02.png" alt="">
                    <span class="goal__mission--text">국민식량의 안정적 공급, 농식품 산업의 경쟁력 향상</span>
                </div>
                <div class="goal__mission">
                    <img src="resources/assets/image/img_mission03.png" alt="">
                    <span class="goal__mission--text">농업인 복지·농촌 활력 증진 등 농촌진흥에 관한 사무</span>
                </div>
                <!--//-->

                <div class="cnt__title">세부전략</div>
                <div class="goal__diagram">
                    <ul>
                        <li>
                            <strong>1.실증서비스</strong>
                            <span>실증 수요기반의<br>맞춤형 서비스 제공</span>

                        <li>
                            <strong>2.실증연계</strong>
                            <span>실증 전후 필요 기능<br>(정부R&D, 표준화, 전시체험, 검정 서비스 등) 집적화</span>
                        </li>
                        <li>
                            <strong>3.실증단지홍보</strong>
                            <span>실증 수요기반의<br>맞춤형 서비스 제공</span>
                        </li>
                    </ul>
                </div>
                <!--//-->

                <div class="cnt__title">기대효과</div>
                <div class="cnt__effect">
                    <div class="cnt__effect--item">
                        <span class="cnt__effect--num">01 <em>하나</em></span>
                        <div class="cnt__effect--text">스마트팜 실증 및 제품 고도화, 홍보마케팅 등 지원을 통한 스마트팜 기술의 국산화 제고 및 가속화에 기여</div>
                        <ul class="cnt__effect--list">
                            <li>제품 사용화 시 발생 가능한 위험 부담을 최소화하여 비용과 시간을 절감</li>
                            <li>스마트팜 분야 국내 기술수준 정밀진단 및 선진국과의 기술 격차 완화</li>
                        </ul>
                    </div>
                    <div class="cnt__effect--item">
                        <span class="cnt__effect--num">02 <em>둘</em></span>
                        <div class="cnt__effect--text">국내 스마트팜 기술의 검증을 기반으로 농가 신뢰성 향상을 통한 선순환 구조체계 구축 및 기업의 글로벌 경쟁력 강화를 통해 세계 스마트팜 시장 선도</div>
                        <ul class="cnt__effect--list">
                            <li>선순환 구조체계를 통한 시장 확대 및 전후방산업 육성</li>
                        </ul>
                    </div>
                    <div class="cnt__effect--item">
                        <span class="cnt__effect--num">03 <em>셋</em></span>
                        <div class="cnt__effect--text">스마트팜 연구 개발 및 산업화 촉진을 통한 국내·외 스마트팜 시장 활성화</div>
                        <ul class="cnt__effect--list">
                            <li>국내 스마트팜 기술 검증을 통한 이미지 부작으로 국내 및 해외시장에 우수성 홍보 효과</li>
                        </ul>
                    </div>
                    <div class="cnt__effect--item">
                        <span class="cnt__effect--num">04 <em>넷</em></span>
                        <div class="cnt__effect--text">스마트팜 R&D 연계 실증·검증을 통한 정밀농업 초석 마련</div>
                    </div>
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