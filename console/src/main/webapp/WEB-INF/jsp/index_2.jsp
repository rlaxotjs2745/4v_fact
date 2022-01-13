<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/07/30
  Time: 4:56 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Layout sidenav -->
<%@include file ="frame_lnb.jsp" %>
<!-- / Layout sidenav -->

<!-- Layout gnb -->
<%@include file ="frame_gnb.jsp" %>
<!-- / Layout gnb -->

        <!-- Layout content -->
        <div id="contents" class="layout-content">
            <!--동적 페이지 호출 영역-->
        </div>
            <!-- / Layout container -->
<!-- Layout footer -->
<%@include file ="frame_footer.jsp" %>
<!-- / Layout footer -->
<script>
    $(document).ready(function() {
        //ajax로 호출되는 첫번째 페이지
        load("a10_dashboard","대시보드");
    });

</script>
</body>
</html>

