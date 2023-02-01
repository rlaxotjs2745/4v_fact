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
                        <a href="prv_fee" class="location__link--anchor ">개요</a>
                        <a href="prv_facility" class="location__link--anchor is-selected">실증시설</a>
                        <a href="prv_support" class="location__link--anchor ">지원시설</a>
                        <a href="prv_bill" class="location__link--anchor ">공과금</a>
                        <a href="prv_subsidy" class="location__link--anchor ">보증금</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">실증시설</h3>
            <div class="page__comment">실증시설 이용료는 시설별 사용일수를 기준으로 부과됩니다.</div>

            <div class="fee__container">

                <div class="cnt__title">실증시설 이용료 산정기준 및 방법</div>

                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:30%"></col>
                            <col style="width:70%"></col>
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>부과대상</th>
                            <td>노지, 유리온실, 비닐온실</td>
                        </tr>
                        <tr>
                            <th>부과기준</th>
                            <td>사용승인 실증시설의 재산평정가격 1%</td>
                        </tr>
                        <tr>
                            <th>금액산출</th>
                            <td>사용승인 시설의 1일사용료×사용승인일수</td>
                        </tr>
                        <tr>
                            <td colspan="2">사용공과금은 별도 부과</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:6%"></col>
                            <col style="width:8%"></col>
                            <col style="width:6%"></col>
                            <col style="width:9%"></col>
                            <col style="width:9%"></col>
                            <col style="width:9%"></col>
                            <col style="width:9%"></col>
                            <col style="width:8%"></col>
                            <col style="width:10%"></col>
                            <col style="width:9%"></col>
                            <col style="width:8%"></col>
                            <col style="width:9%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th rowspan="2">번호</th>
                            <th rowspan="2">실증<br>시설</th>
                            <th rowspan="2">세부<br>명칭</th>
                            <th colspan="2">사용승인 면적(㎡)</th>
                            <th colspan="2">면적당 재산평정가격(원)</th>
                            <th rowspan="2">대부료</th>
                            <th rowspan="2">기준<br>금액</th>
                            <th rowspan="2">1일<br>사용료</th>
                            <th rowspan="2">사용승인<br>일수</th>
                            <th rowspan="2">이용료</th>
                        </tr>
                        <tr>
                            <th>전용면적</th>
                            <th>공용면적</th>
                            <th>전용면적</th>
                            <th>공용면적</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td colspan="3">산출식</td>
                            <td>a</td>
                            <td>b</td>
                            <td>c</td>
                            <td>d</td>
                            <td>육모장</td>
                            <td>e=(a×c)+(b×d)</td>
                            <td>f=e/365</td>
                            <td>g</td>
                            <td>h=f×g</td>
                        </tr>
                        <tr>
                            <td rowspan="2">1</td>
                            <td rowspan="2">토지</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td rowspan="2">2</td>
                            <td rowspan="2">비닐<br>온실</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td rowspan="2" class="last-child">3</td>
                            <td rowspan="2" class="last-child">유리<br>온실</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        </tbody>
                    </table>
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