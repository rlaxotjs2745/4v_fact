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
                    <a href="#" class="under__depth--anchor">이용가능시설</a>
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
                <h2 class="page__title">이용가능시설</h2>
                <div class="page__location">
                    <div class="location__deco">스마트팜 혁신밸리 실증단지에서 이용하실 수 있는 시설입니다.</div>
                    <div class="location__link">
                        <a href="prv_use" class="location__link--anchor ">실증 온실</a>
                        <a href="prv_location" class="location__link--anchor ">실증 장비</a>
                        <a href="prv_office" class="location__link--anchor is-selected">입주 사무실</a>
                    </div>
                </div>
            </div>
        </div>
        <c:if test="${profile == 'sangju-prod'}">
            <div class="page__cnt">
                <h3 class="page__subject">입주 사무실 소개</h3>

                <div class="use__container">
                    <!--//-->
                    <div class="use__image">
<%--                            <figure><img src="resources/assets/image/img_greenhouse_gimje.png" alt="김제 실증온실 세부"></figure>--%>
                        <figure><img src="resources/assets/image/img_office_sangju.png" alt="상주 입주사무실 세부"></figure>
                    </div>
                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:50%"></col>
                                <col style="width:50%"></col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>번호</th>
                                <th>평수</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>41.28m<sup>2</sup> (약 13평)</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                </div>
                <!--//-->

            </div>
        </c:if>
        <c:if test="${profile == 'gimje-prod'}">
            <div class="page__cnt">
                <h3 class="page__subject">입주 사무실 소개</h3>

                <div class="use__container">
                    <div class="use__image">
                        <figure><img src="resources/assets/image/img_office_gimje.png" alt="김제 입주사무실 세부"></figure>
<%--                        <figure><img src="resources/assets/image/img_greenhouse_sangju.png" alt="상주 실증온실 세부"></figure>--%>
                    </div>
                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:50%"></col>
                                <col style="width:50%"></col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>번호</th>
                                <th>평수</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>42.63m<sup>2</sup> (약 13평)</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>37.19m<sup>2</sup> (약 11평)</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>49.612m<sup>2</sup> (약 15평)</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>49.350m<sup>2</sup> (약 15평)</td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
                <!--//-->

            </div>
        </c:if>


    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
</body>
</html>