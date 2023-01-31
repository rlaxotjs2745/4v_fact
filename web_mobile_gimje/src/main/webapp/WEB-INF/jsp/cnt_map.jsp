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


<div class="page__h1">찾아오시는 길</div>
</header>
<div class="content" id="content">
    <div class="page__body">
        <div class="page__cnt">
            <div class="map__container">
                <div class="map__floor">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25845.04885890132!2d126.92339840468988!3d35.93152847826453!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3570406760f8b2e3%3A0xc4267ee9c1608835!2z64aN7JeF6riw7Iig7Iuk7Jqp7ZmU7J6s64uo!5e0!3m2!1sko!2skr!4v1629892696095!5m2!1sko!2skr" width="100%" height="320" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
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
                                <li><strong>익산IC</strong>호남고속 → 신금로(1.4km) → 평동로(11.5km) → 한국농업기술진흥원 ((구)국립식량과학원 벼맥류부)</li>
                                <li><strong>군산IC</strong>서해안고속도로 → 군익로(16.8km) → 한국농업기술진흥원</li>
                            </ul>
                        </dd>
                    </dl>
                    <dl>
                        <dt><img src="resources/assets/image/img_bus.png" alt=""></dt>
                        <dd><p class="map__type">고속/시외버스</p>
                            <ul>
                                <li><strong>택시이용</strong>익산고속(공용)버스터미널 → 한국농업기술진흥원 (약 2km)</li>
                                <li><strong>도보</strong>익산고속(공용)버스터미널 → 한국농업기술진흥원 (약 2km)</li>
                            </ul>
                        </dd>
                    </dl>
                    <dl>
                        <dt><img src="resources/assets/image/img_ktx.png" alt=""></dt>
                        <dd><p class="map__type">기차(KTX)</p>
                            <ul>
                                <li><strong>택시이용</strong>익산역(KTX) 동부광장 → 한국농업기술진흥원 (약 2km)</li>
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
<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
<%@include file ="footer.jsp" %>