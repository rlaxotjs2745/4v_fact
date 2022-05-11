<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:23 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="header.jsp" %>


<div class="page__h1">서비스 이용료</div>
</header>
<div class="content" id="content">
    <div class="page__body">

        <div class="page__cnt">
            <div class="arc__container">

                <div class="cnt__title">예상 실증비용(위탁형 실증)</div>
                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:21%">
                            <col style="width:57%">
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th rowspan="2">항목</th>
                            <th rowspan="2">산출</th>
                            <th>임대료 (원/일)</th>
                        </tr>
                        <tr>
                            <th>전북 김제 (1,260m2, 유리)</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>온실사용료</td>
                            <td>(시설가액+부지가액) × 대부료율(1%)</td>
                            <td>47,624</td>
                        </tr>
                        <tr>
                            <td>경영비</td>
                            <td>농진청 2019 농축산물소득자료집(촉성딸기 기준)</td>
                            <td>26,453</td>
                        </tr>
                        <tr class="subtotal">
                            <td>소계</td>
                            <td></td>
                            <td>74,077</td>
                        </tr>
                        <tr>
                            <td>보조난방(가스)</td>
                            <td>122.25L/h × 1285.25원/L × 5개월 × 3시간</td>
                            <td>36,526</td>
                        </tr>
                        <tr>
                            <td>CO2 발생기</td>
                            <td>3.2L/h × 4시간 × 950원/L × 7개월(4~10월)</td>
                            <td>12,160</td>
                        </tr>
                        <tr>
                            <td>지열전기료</td>
                            <td>15,000(원/m2) × 1260m2 × 8개월(8h/일)</td>
                            <td>17,500</td>
                        </tr>
                        <tr class="subtotal">
                            <td>합계</td>
                            <td></td>
                            <td>140,263</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="cnt__effect">
                    <ul>
                        <li>경영비는 재배시 필요한 종묘, 비료, 농약, 기타재료비 등 포함된 비용</li>
                        <li>보조난방은 지열(히트펌프)의 용량이 부족할 경우 입주자 의사에 따라 작동하고 온실 사용료를 제외한 지열, 보조난방, CO2발생기 등 사용량에 따라 비용이 청구 됨</li>
                        <li>자율실증의 경우 경영비는 제외되며, 장비임대료·분석수수료 등은 입주자의 필요시 발생할 수 있음</li>
                    </ul>
                </div>
                <!--//-->


                <div class="cnt__text">실증기간 6개월(10∼3월), 재배실증(촉성딸기), CO2발생기 일 2시간사용(6개월), 지열사용 1일 8시간(6개월)</div>
                <div class="pee__calculate"><ul>
                    <li>온실사용료 = 47,624원×6개월×30일 = 8,572,320원</li>
                    <li>경영비 = 26,453원×6개월×30일 = 4,761,540원</li>
                    <li>CO2발생기 = 3.2L/h×2시간×950원/L×6개월×30일= 1,094,400원</li>
                    <li>지열전기료 = 17,500원×6개월×30일 = 3,150,000원</li>
                    <li>총 17,578,260원의 비용이 발생하나, 바우처 지원 시 부담금액의 50%인 8,789,130원</li>
                </ul>
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