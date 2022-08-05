<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:25 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="header.jsp" %>

<div class="content" id="content">
    <div class="page__body">
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">서비스 이용 약관</h2>
                <div class="page__location">
                    <div class="location__deco">스마트팜 혁신밸리 실증단지 포탈 서비스의 이용과 관련하여 필요한 사항을 규정합니다.</div>
                </div>
            </div>
        </div>
        <%-- content --%>
        <div class="page__cnt" style="height: 50vh">
            <h3>홈페이지 이용관련 정책안내</h3> <br>
            <p>
                홈페이지 이용자가 제공하는 개인정보에 대한 개인정보보호정책과 서비스되고 있는 콘텐츠에 대한 저작권 정책을 제정하여 이용자에게 알려드리고 있습니다.<br>
                자세한 내용을 보고 싶으시면 해당 메뉴에서 확인해 주시기 바랍니다.
            </p>
            <br>
            <button class="btn submit btn-jumbo">개인정보처리방침 바로가기</button>
        </div>
    </div>
    <%@include file="footer.jsp" %>
    <%@include file="script.jsp" %>

</div>
<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
</body>
</html>