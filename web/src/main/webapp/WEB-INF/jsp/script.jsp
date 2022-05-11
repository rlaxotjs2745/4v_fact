<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/10/27
  Time: 5:33 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/evo-calendar.min.js" type="text/javascript"></script>

<script>
    $("#login_console").on('click',function (){
        window.open(href="http://fourthevision.asuscomm.com:10001/console/user?id=${sessionScope.userid}" ,"FACT User Console");
    });

</script>