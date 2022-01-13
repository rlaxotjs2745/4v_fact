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


<div class="page__h1">이용가능시설</div>
</header>
<div class="content" id="content">
    <div class="page__body">

        <div class="page__menu--box">
            <div class="page__menu--inner">
                <div class="page__location">
                    <div class="location__link">
                        <a href="prv_use" class="location__link--anchor is-selected">실증 온실</a>
                        <a href="prv_location" class="location__link--anchor ">실증 장비</a>
                        <a href="prv_office" class="location__link--anchor ">입주 사무실</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">실증 온실 소개</h3>

            <div class="use__container">
                <div class="table__type">
                    <table class="table__type--normal table__fixed">
                        <colgroup>
                            <col style="width:50%"></col>
                            <col></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>전북 김제</th>
                            <th>경북 상주</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>주력분야 : ICT 기자재<br>
                                ① ICT기자재      ② 신품종(아열대 제외)<br>
                                ③ 기능성 물질    ④ 약용작물</td>
                            <td>주력분야 : 농업용 로봇<br>
                                ① 농업용 로봇      ② 병해충 연구<br>
                                ③ 수출플랜트</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">실증온실 세부 소개</div>
                <div class="use__image">
                    <figure><img src="<%=request.getContextPath()%>/static/assets/image/img_greenhouse_gimje.png" alt="김제 실증온실 세부"></figure>
                    <!--<figure><img src="<%=request.getContextPath()%>/static/assets/image/img_greenhouse_sangju.png" alt="상주 실증온실 세부"></figure>-->
                </div>
                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:10%"></col>
                            <col style="width:15%"></col>
                            <col style="width:20%"></col>
                            <col style="width:25%"></col>
                            <col style="width:30%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>번호</th>
                            <th>형태</th>
                            <th>시설</th>
                            <th>규격(평)</th>
                            <th>임대료(원/월)</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>비닐</td>
                            <td>벤치</td>
                            <td>840m²(254)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>유리</td>
                            <td>벤치</td>
                            <td>840m²(254)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>유리</td>
                            <td>벤치</td>
                            <td>840m²(254)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>유리</td>
                            <td>육모장</td>
                            <td>1,260m²(381)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>비닐</td>
                            <td>벤치</td>
                            <td>840m²(254)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>유리</td>
                            <td>벤치</td>
                            <td>420m²(127)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>유리</td>
                            <td>벤치</td>
                            <td>420m²(127)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>유리</td>
                            <td>행인거터</td>
                            <td>420m²(127)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>유리</td>
                            <td>행인거터</td>
                            <td>420m²(127)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>유리</td>
                            <td>행인거터</td>
                            <td>420m²(127)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>11</td>
                            <td>비닐</td>
                            <td>행인거터</td>
                            <td>840m²(254)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>12</td>
                            <td>유리</td>
                            <td>행인거터</td>
                            <td>1,260m²(381)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>13</td>
                            <td>유리</td>
                            <td>행인거터</td>
                            <td>1,260m²(381)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>14</td>
                            <td>유리</td>
                            <td>식물공장</td>
                            <td>40×2m²(12×2)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>15</td>
                            <td>비닐</td>
                            <td>단동비닐온실</td>
                            <td>186m²(56)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>16</td>
                            <td>비닐</td>
                            <td>단동비닐온실</td>
                            <td>186m²(56)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>17</td>
                            <td>비닐</td>
                            <td>단동비닐온실</td>
                            <td>217m²(65)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>18</td>
                            <td>비닐</td>
                            <td>단동비닐온실</td>
                            <td>217m²(65)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>19</td>
                            <td>비닐</td>
                            <td>단동비닐온실</td>
                            <td>217m²(65)</td>
                            <td>923,905</td>
                        </tr>
                        <tr>
                            <td>-</td>
                            <td>나대지</td>
                            <td>단동비닐온실</td>
                            <td>4,360m²(1,319)</td>
                            <td>923,905</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="cnt__title">실증온실 시설 사진 예시</div>
                <div class="use__house">
                    <ul>
                        <li><figure><img src="<%=request.getContextPath()%>/static/assets/image/img_use_house_01.jpg" alt=""></figure><span>벤로형 온실</span></li>
                        <li><figure><img src="<%=request.getContextPath()%>/static/assets/image/img_use_house_02.jpg" alt=""></figure><span>행잉거터</span></li>
                        <li><figure><img src="<%=request.getContextPath()%>/static/assets/image/img_use_house_03.jpg" alt=""></figure><span>육묘 벤치</span></li>
                        <li><figure><img src="<%=request.getContextPath()%>/static/assets/image/img_use_house_04.jpg" alt=""></figure><span>단동온실</span></li>
                        <li><figure><img src="<%=request.getContextPath()%>/static/assets/image/img_use_house_05.jpg" alt=""></figure><span>EBB베드<br>(저면관수베드)</span></li>
                        <li><figure><img src="<%=request.getContextPath()%>/static/assets/image/img_use_house_06.jpg" alt=""></figure><span>포그(fog) 설비</span></li>
                    </ul>
                </div>
            </div>
            <!--//-->

        </div>

    </div>
</div>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/ui.common.js" type="text/javascript"></script>



<%@include file ="footer.jsp" %>