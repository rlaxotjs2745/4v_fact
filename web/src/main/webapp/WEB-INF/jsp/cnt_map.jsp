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

        <c:if test="${profile == 'sangju-prod'}">
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
                            <dt><img src="resources/assets/image/img_car.png" alt=""></dt>
                            <dd><p class="map__type">자가운전</p>
                                <ul>
                                    <li><strong>상주IC</strong>상주IC 우회전 → 시내방향(3km) → 사벌국면방향(우회전, 계룡교) → 사벌국면행정복지센터방면(7.5km)</li>
                                </ul>
                            </dd>
                        </dl>
                    </div>
                    <!--//-->
                </div>
            </div>
        </c:if>
        <c:if test="${profile == 'gimje-prod' or profile == 'local'}">

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
                        <iframe src="https://www.google.com/maps/embed?pb=!1m19!1m8!1m3!1d2135.798107933143!2d126.95888977957975!3d35.88348276432381!3m2!1i1024!2i768!4f13.1!4m8!3e0!4m0!4m5!1s0x357038ac78a65607%3A0x743416b5c8cec676!2z7Zmp7Yag66GcIOyghOudvOu2geuPhCDquYDsoJzsi5wg67Cx6rWs66m0!3m2!1d35.883898099999996!2d126.9599899!5e0!3m2!1sko!2skr!4v1650202695968!5m2!1sko!2skr" width="100%" height="540" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>

                    <h3 class="page__subject">실증단지 주소</h3>
                    <div class="map__address">
                        <ul>
                            <li><strong>주소</strong>(54331) 전라북도 김제시 백구면 황토로 1079</li>
                            <li><strong>대표 전화</strong>063-540-3600</li>
                        </ul>
                    </div>

                    <div class="map__traffic">
                        <dl>
                            <dt><img src="resources/assets/image/img_car.png" alt=""></dt>
                            <dd><p class="map__type">자가운전</p>
                                <ul>
                                    <li><strong>전주IC</strong>전주IC에서 익산방면 10km 또는 익산역에서 김제방면 11.6km</li>
                                </ul>
                            </dd>
                        </dl>

                    </div>
                    <!--//-->
                </div>
            </div>
        </c:if>

    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
</body>
</html>