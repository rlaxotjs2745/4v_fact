<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:47 오전
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
                    <a href="#" class="under__depth--anchor">찾아오시는 길</a>
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
                <h2 class="page__title">찾아오시는 길</h2>
                <div class="page__location">
                    <div class="location__deco">전북 김제 스마트팜 혁신밸리 실증단지의 위치를 안내합니다.</div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <div class="map__container">
                <div class="map__floor">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25845.04885890132!2d126.92339840468988!3d35.93152847826453!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3570406760f8b2e3%3A0xc4267ee9c1608835!2z64aN7JeF6riw7Iig7Iuk7Jqp7ZmU7J6s64uo!5e0!3m2!1sko!2skr!4v1629892696095!5m2!1sko!2skr" width="100%" height="540" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                </div>

                <h3 class="page__subject">기관 주소</h3>
                <div class="map__address">
                    <ul>
                        <li><strong>후문 주차장 주소</strong>(54667) 전라북도 익산시 학곤로 133 (송학동 389-1)</li>
                        <li><strong>정문 주소</strong>(54667) 전라북도 익산시 평동로 457 (송학동 381)</li>
                        <li><strong>대표 전화</strong>063-919-1000</li>
                    </ul>
                </div>

                <div class="map__traffic">
                    <dl>
                        <dt><img src="resources/assets/image/img_car.png" alt=""></dt>
                        <dd><p class="map__type">자가운전</p>
                            <ul>
                                <li><strong>익산IC</strong>호남고속 → 신금로(1.4km) → 평동로(11.5km) → 농업기술실용화재단 ((구)국립식량과학원 벼맥류부)</li>
                                <li><strong>군산IC</strong>서해안고속도로 → 군익로(16.8km) → 농업기술실용화재단</li>
                            </ul>
                        </dd>
                    </dl>
                    <dl>
                        <dt><img src="resources/assets/image/img_bus.png" alt=""></dt>
                        <dd><p class="map__type">고속/시외버스</p>
                            <ul>
                                <li><strong>택시이용</strong>익산고속(공용)버스터미널 → 농업기술실용화재단 (약 2km)</li>
                                <li><strong>도보</strong>익산고속(공용)버스터미널 → 농업기술실용화재단 (약 2km)</li>
                            </ul>
                        </dd>
                    </dl>
                    <dl>
                        <dt><img src="resources/assets/image/img_ktx.png" alt=""></dt>
                        <dd><p class="map__type">기차(KTX)</p>
                            <ul>
                                <li><strong>택시이용</strong>익산역(KTX) 동부광장 → 농업기술실용화재단 (약 2km)</li>
                                <li><strong>버스이용</strong>익산역(KTX) 서부광장(도보 300m) → “송학동”정거장 300번 버스 탑숭(2개 정류장)  → “송학지안리즈아파트” 정류장 하차 → 농업기술실용화재단(도보 200m)</li>
                                <li><strong>도보</strong>익산역(KTX) 서부광장 → 농업기술실용화재단 (약 1.5km)</li>
                            </ul>
                        </dd>
                    </dl>
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