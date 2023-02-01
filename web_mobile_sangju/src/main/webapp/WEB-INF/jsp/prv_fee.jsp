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


<div class="page__h1">실증서비스 이용료 예시</div>
</header>
<div class="content" id="content">
    <div class="page__body">
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <div class="page__location">
                    <div class="location__link">
                        <a href="prv_fee" class="location__link--anchor is-selected">개요</a>
                        <a href="prv_facility" class="location__link--anchor ">실증시설</a>
                        <a href="prv_support" class="location__link--anchor ">지원시설</a>
                        <a href="prv_bill" class="location__link--anchor ">공과금</a>
                        <a href="prv_subsidy" class="location__link--anchor ">보증금</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="cnt__title">이용료 구분</h3>
            <div class="page__comment">실증센터는 실증단지이용자에게 ‘실증시설 이용료, 지원시설 이용료, 사용공과금, 시설이용 보증금’을 받을 수 있습니다.</div>

            <div class="fee__container">
                <div class="fee__diagram">
                    <ul>
                        <li>실증시설<br>이용료</li>
                        <li>지원시설<br>이용료</li>
                        <li>사용<br>공과금</li>
                        <li>시설이용<br>보증금</li>
                    </ul>
                </div>
                <!--//-->

                <div class="cnt__title">이용료 산출 기준 및 방법</div>
                <div class="cnt__text">실증서비스 이용료와 보증금은 실증단지 위탁자(실증단지를 소유한 지방자치단체)가 정한 기준과 방법을 따라 실증센터가 산출합니다. </div>


                <div class="cnt__title">실증 비용 예시</div>
                <div class="cnt__caption">분야 : 위탁실증</div>
                <div class="cnt__caption">조건</div>

                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:25%"></col>
                            <col style="width:25%"></col>
                            <col style="width:25%"></col>
                            <col style="width:25%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>항목</th>
                            <th>값</th>
                            <th>전북 김제</th>
                            <th>값</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>실증 기간</td>
                            <td>6개월 (10~3개월)</td>
                            <td>재배실증</td>
                            <td>촉성딸기</td>
                        </tr>
                        <tr>
                            <td>Co2 발생기</td>
                            <td>일 2시간 사용 (6개월)</td>
                            <td>지열사용</td>
                            <td>1일 8시간 (6개월)</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="cnt__effect">
                    <ul>
                        <li>경영비는 종묘, 비료, 농약, 기타재료비 등 포함된 비용</li>
                        <li>보조난방은 지열(히트펌프)의 용량이 부족할 경우 입주자 의사에 따라 작동하고 온실 사용료를 제외한 지열, 보조난방, CO2발생기 등 사용량에 따라 비용이 청구 됨</li>
                        <li>자율실증의 경우 경영비는 제외되며, 장비임대료·분석수수료 등은 입주자의 필요시 발생할 수 있음</li>
                    </ul>
                </div>
                <!--//-->

                <div class="cnt__caption">비용 설명</div>
                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:25%"></col>
                            <col style="width:25%"></col>
                            <col style="width:25%"></col>
                            <col style="width:25%"></col>
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>납부액</th>
                            <td colspan="3"><strong>8,789,130원</strong></td>
                        </tr>
                        <tr>
                            <th>총 금액</th>
                            <td class="td__won"><strong>17,578,260원</strong></td>
                            <th>납부액</th>
                            <td>50% <strong>8,789,130원</strong></td>
                        </tr>
                        <tr>
                            <th>온실 사용료</th>
                            <td class="td__won">8,572,320원</td>
                            <td colspan="2">47,624원×6개월×30일</td>
                        </tr>
                        <tr>
                            <th>경영비</th>
                            <td class="td__won">4,761,540원</td>
                            <td colspan="2">26,453원×6개월×30일</td>
                        </tr>
                        <tr>
                            <th>CO2 발생기</th>
                            <td class="td__won">1,094,400원</td>
                            <td colspan="2">3.2L/h×2시간×950원/L×6개월×30일</td>
                        </tr>
                        <tr>
                            <th>지열 전기료</th>
                            <td class="td__won">3,150,000원</td>
                            <td colspan="2">17,500원×6개월×30일</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="cnt__effect">
                    <ul>
                        <li>바우처 지원 시 할인율 50% (단, 예산 조기 소진 때는 할인이 불가능합니다.)</li>
                    </ul>
                </div>
            </div>
            <!--//-->
        </div>

    </div>
</div>
<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>

<%@include file ="footer.jsp" %>