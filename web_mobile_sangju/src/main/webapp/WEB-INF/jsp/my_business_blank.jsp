<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 10:07 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="header.jsp" %>


<div class="page__h1">나의 사업</div>
</header>
<div class="content" id="content">
  <div class="page__body">
    <div class="page__menu--box">
      <div class="page__menu--inner">
        <div class="page__location">
          <div class="location__link">
            <a href="my_business" class="location__link--anchor is-selected">신청 현황</a>
            <a href="my_agreement" class="location__link--anchor">협약 현황</a>
            <a href="my_consignment" class="location__link--anchor">위탁 현황</a>
          </div>
        </div>
      </div>
    </div>
    <div class="page__cnt">
      <h3 class="page__subject">실증 서비스 신청 현황</h3>
      <div class="cnt__title">신청 목록 : 총 0개</div>

      <div class="table__blank">
        <div class="blank__title">참여중인 사업이 없습니다.</div>
        <div class="blank__text">실증 사업 신청을 이용해주세요.</div>
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
