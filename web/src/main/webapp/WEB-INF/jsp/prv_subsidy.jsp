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
                    <a href="#" class="under__depth--anchor">실증서비스 이용료</a>
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
                <h2 class="page__title">실증서비스 이용료</h2>
                <div class="page__location">
                    <div class="location__deco">실증 서비스 이용료를 안내해드립니다</div>
                    <div class="location__link">
                        <a href="prv_fee" class="location__link--anchor ">개요</a>
                        <a href="prv_facility" class="location__link--anchor ">실증시설</a>
                        <a href="prv_support" class="location__link--anchor ">지원시설</a>
                        <a href="prv_bill" class="location__link--anchor ">공과금</a>
                        <a href="prv_subsidy" class="location__link--anchor is-selected">보증금</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">보증금</h3>
            <div class="page__comment">실증시설이용료, 장비이용료 및 실증서비스료의 90일에 해당하는 금액입니다. </div>

            <div class="fee__container">

                <div class="cnt__title">보증금 산정기준 및 방법</div>

                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:26%"></col>
                            <col style="width:74%"></col>
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>부과대상</th>
                            <td>실증단지 사용승인을 받은 실증단지이용자</td>
                        </tr>
                        <tr>
                            <th>부과기준</th>
                            <td>사용승인 받은 실증시설에 대한 3개월간의 이용료 상당금액</td>
                        </tr>
                        <tr>
                            <th>금액산출</th>
                            <td>(사용승인 받은 실증시설 1일 이용료×90)</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:40%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>구분</th>
                            <th>시설이용료</th>
                            <th>실증장비이용료</th>
                            <th>실증서비스료</th>
                            <th>보증금(원)</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1일 사용료</td>
                            <td>a</td>
                            <td>b</td>
                            <td>c</td>
                            <td>(a+b+c) X 90</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <!--//-->
        </div>

    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
</body>
</html>