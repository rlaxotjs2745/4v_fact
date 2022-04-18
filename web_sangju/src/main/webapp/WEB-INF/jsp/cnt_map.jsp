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
                    <div class="location__deco">경북 상주 스마트팜 혁신밸리 실증단지의 위치를 안내합니다.</div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <div class="map__container">
                <div class="map__floor">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5998.039331814476!2d128.22309877971432!3d36.465591354935825!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35644c1dcff9549b%3A0x153127ce850fbefa!2z6rK97IOB67aB64-EIOyDgeyjvOyLnCDsgqzrsozrqbQg7LKt66Oh6ri4IDMwMi0zOA!5e0!3m2!1sko!2skr!4v1650203793011!5m2!1sko!2skr" width="100%" height="540" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    <%--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25845.04885890132!2d126.92339840468988!3d35.93152847826453!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3570406760f8b2e3%3A0xc4267ee9c1608835!2z64aN7JeF6riw7Iig7Iuk7Jqp7ZmU7J6s64uo!5e0!3m2!1sko!2skr!4v1629892696095!5m2!1sko!2skr" width="100%" height="540" style="border:0;" allowfullscreen="" loading="lazy"></iframe>--%>
                </div>

                <h3 class="page__subject">실증단지 주소</h3>
                <div class="map__address">
                    <ul>
                        <li><strong>주소</strong>(37127) 경북 상주시 사벌국면 청룡길 302-96 </li>
                        <li><strong>대표 전화</strong>054-531-1892</li>
                    </ul>
                </div>

                <div class="map__traffic">
                    <dl>
                        <dt><img src="<%=request.getContextPath()%>/static/assets/image/img_car.png" alt=""></dt>
                        <dd><p class="map__type">자가운전</p>
                            <ul>
                                <li><strong>상주IC</strong>상주IC 우회전 → 시내방향(3km) → 사벌국면방향(우회전, 계룡교) → 사벌국면행정복지센터방면(7.5km)</li>
                            </ul>
                        </dd>
                    </dl>
                    <%--<dl>
                        <dt><img src="<%=request.getContextPath()%>/static/assets/image/img_bus.png" alt=""></dt>
                        <dd><p class="map__type">고속/시외버스</p>
                            <ul>
                                <li><strong>택시이용</strong>익산고속(공용)버스터미널 → 한국농업기술진흥원 (약 2km)</li>
                                <li><strong>도보</strong>익산고속(공용)버스터미널 → 한국농업기술진흥원 (약 2km)</li>
                            </ul>
                        </dd>
                    </dl>
                    <dl>
                        <dt><img src="<%=request.getContextPath()%>/static/assets/image/img_ktx.png" alt=""></dt>
                        <dd><p class="map__type">기차(KTX)</p>
                            <ul>
                                <li><strong>택시이용</strong>익산역(KTX) 동부광장 → 한국농업기술진흥원 (약 2km)</li>
                                <li><strong>버스이용</strong>익산역(KTX) 서부광장(도보 300m) → “송학동”정거장 300번 버스 탑숭(2개 정류장)  → “송학지안리즈아파트” 정류장 하차 → 한국농업기술진흥원(도보 200m)</li>
                                <li><strong>도보</strong>익산역(KTX) 서부광장 → 한국농업기술진흥원 (약 1.5km)</li>
                            </ul>
                        </dd>
                    </dl>--%>
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