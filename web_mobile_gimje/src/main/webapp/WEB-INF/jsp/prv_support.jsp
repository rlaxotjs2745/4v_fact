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


<div class="page__h1">실증서비스 이용료</div>
</header>
<div class="content" id="content">
    <div class="page__body">
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <div class="page__location">
                    <div class="location__link">
                        <a href="prv_fee" class="location__link--anchor ">개요</a>
                        <a href="prv_facility" class="location__link--anchor ">실증시설</a>
                        <a href="prv_support" class="location__link--anchor is-selected">지원시설</a>
                        <a href="prv_bill" class="location__link--anchor ">공과금</a>
                        <a href="prv_subsidy" class="location__link--anchor ">보증금</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">지원시설</h3>
            <div class="page__comment">지원시설 이용료는 사용시간 단위로 부과됩니다.</div>

            <div class="fee__container">

                <div class="cnt__title">지원시설 이용료 산정기준 및 방법</div>

                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:30%"></col>
                            <col style="width:70%"></col>
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>부과대상</th>
                            <td>R&D연구실, 공용제작실, 스타트업사무실</td>
                        </tr>
                        <tr>
                            <th>부과기준</th>
                            <td>재산평정가액의 1%</td>
                        </tr>
                        <tr>
                            <th>금액산출</th>
                            <td>사용승인 시설의 1일사용료 × 사용승인일수</td>
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
                            <col style="width:8%"></col>
                            <col style="width:12%"></col>
                            <col style="width:13%"></col>
                            <col style="width:13%"></col>
                            <col style="width:13%"></col>
                            <col style="width:14%"></col>
                            <col style="width:13%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>번호</th>
                            <th colspan="2">지원시 설명</th>
                            <th>면적(㎡)</th>
                            <th>재산평정 가격</th>
                            <th>기준금액</th>
                            <th>1일 사용료</th>
                            <th>사용승인기간(월)</th>
                            <th>이용료</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td colspan="3">산출식</td>
                            <td></td>
                            <td>a</td>
                            <td>b=a×1%</td>
                            <td>c=b/12</td>
                            <td>d</td>
                            <td>e=c×d</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td colspan="2">스타트업사무실</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <th colspan="2">공동제작실</th>
                            <th>장비명</th>
                            <th>재산평가 가격</th>
                            <th>기준금액</th>
                            <th>시간당 사용료</th>
                            <th>사용승인시간(시간)</th>
                            <th class="last-child">이용료</th>
                        </tr>
                        <tr>
                            <td rowspan="3" class="last-child">2</td>
                            <td rowspan="3" class="last-child">장비명</td>
                            <td></td>
                            <td></td>
                            <td>a</td>
                            <td>b=a×1%</td>
                            <td>c=(b/365)/24</td>
                            <td>d</td>
                            <td>e=c×d</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>a</td>
                            <td>b=a×1%</td>
                            <td>c=(b/365)/24</td>
                            <td>d</td>
                            <td>e=c×d</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>a</td>
                            <td>b=a×1%</td>
                            <td>c=(b/365)/24</td>
                            <td>d</td>
                            <td>e=c×d</td>
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