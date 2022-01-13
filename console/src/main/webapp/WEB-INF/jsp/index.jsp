<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/07/30
  Time: 4:56 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" class="light-style">
<head>
    <title>SMART FARM | ADMIN</title>

    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <link rel="icon" type="image/x-icon" href="favicon.ico">

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&family=Roboto&display=swap" rel="stylesheet">

    <!-- Icon fonts -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/assets/vendor/fonts/fontawesome.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/assets/vendor/fonts/ionicons.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/assets/vendor/fonts/linearicons.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/assets/vendor/fonts/open-iconic.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/assets/vendor/fonts/pe-icon-7-stroke.css">

    <!-- Core stylesheets -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/assets/vendor/css/rtl/bootstrap-dark.css" class="theme-settings-bootstrap-css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/assets/vendor/css/rtl/appwork-dark.css" class="theme-settings-appwork-css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/assets/vendor/css/rtl/theme-corporate-dark.css" class="theme-settings-theme-css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/assets/vendor/css/rtl/colors-dark.css" class="theme-settings-colors-css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/assets/vendor/css/rtl/uikit.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/assets/css/demo.css">

    <!-- Load polyfills -->
    <script src="<%=request.getContextPath()%>/static/assets/vendor/js/polyfills.js"></script>
    <script>document['documentMode']===10&&document.write('<script src="https://polyfill.io/v3/polyfill.min.js?features=Intl.~locale.en"><\/script>')</script>

    <script src="<%=request.getContextPath()%>/static/assets/vendor/js/material-ripple.js"></script>
    <script src="<%=request.getContextPath()%>/static/assets/vendor/js/layout-helpers.js"></script>

    <!-- Core scripts -->
    <script src="<%=request.getContextPath()%>/static/assets/vendor/js/pace.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Libs -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/assets/vendor/libs/datatables/datatables.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/assets/vendor/libs/bootstrap-datepicker/bootstrap-datepicker.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/assets/vendor/libs/bootstrap-daterangepicker/bootstrap-daterangepicker.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/assets/vendor/libs/fullcalendar/fullcalendar.css">
</head>

<body>
<div class="page-loader">
    <div class="bg-primary"></div>
</div>

<!-- Layout wrapper -->
<div class="layout-wrapper layout-2">
    <div class="layout-inner">

        <!-- Layout sidenav -->
        <%@include file ="frame_lnb.jsp" %>
        <!-- / Layout sidenav -->

        <!-- Layout container -->
        <div class="layout-container">
            <!-- Layout gnb -->
            <%@include file ="frame_gnb.jsp" %>
            <!-- / Layout gnb -->

            <!-- Layout content -->
            <div id="contents" class="layout-content">


            </div>
            <!-- Layout content -->

        </div>
        <!-- / Layout container -->

    </div>

    <!-- Overlay -->
    <div class="layout-overlay layout-sidenav-toggle"></div>
</div>
<!-- / Layout wrapper -->

<!-- Core scripts -->
<script src="<%=request.getContextPath()%>/static/assets/vendor/libs/popper/popper.js"></script>
<script src="<%=request.getContextPath()%>/static/assets/vendor/js/bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/static/assets/vendor/js/sidenav.js"></script>

<!-- Libs -->
<script src="<%=request.getContextPath()%>/static/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="<%=request.getContextPath()%>/static/assets/vendor/libs/bootstrap-datepicker/bootstrap-datepicker.js"></script>
<script src="<%=request.getContextPath()%>/static/assets/vendor/libs/fullcalendar/fullcalendar.js"></script>

<!-- Demo -->
<script src="<%=request.getContextPath()%>/static/assets/js/demo.js"></script>

<script>


    $(".sidenav-item").on('click',function(){
        if( $(".sidenav-item").has('a')!=null){
            $(".sidenav-item").removeClass('active');
            $(this).addClass('active');
        }
    });
    $(function(){
        var sBtn = $("ul > li");    //  ul > li 이를 sBtn으로 칭한다. (클릭이벤트는 li에 적용 된다.)
        sBtn.find("a").click(function(){   // sBtn에 속해 있는  a 찾아 클릭 하면.
            sBtn.removeClass("active");     // sBtn 속에 (active) 클래스를 삭제 한다.
            $(this).parent().addClass("active"); // 클릭한 a에 (active)클래스를 넣는다.
        });
    });

    //최초 진입시 호출되는 ajax 페이지 초기값
    var cur = "";
    function load(a,b){
        console.log("cur = "+cur + "   load="+a);

        if(cur!=a){
            cur = a;
            var state = {'url':a};
            var title = b;
            //var url = a;
            history.pushState(state, title);
            $("#contents").load(a,{"tag":a} ,function(){
                //alert(a);
            });
        }else{//현재 주소 클릭시 변화 없음

            return;
        }
    }
    //문서 로드 완료 후 이벤트 처리
    (function() {
        // There's nothing to do for older browsers ;)
        if (!window.addEventListener)
            return;
        //window 내 mouse 위치 여부를 체크하기 위한 변수
        window.innerDoc = false; //mouseover Event Listener
        window.addEventListener('mouseover', function(event) { window.innerDoc = true; });
        // mouseout Event Listener
        window.addEventListener('mouseout', function(event) { window.innerDoc = false; });

        var blockPopstateEvent = document.readyState!="complete";
        window.addEventListener("load", function() {
            // The timeout ensures that popstate-events will be unblocked right
            // after the load event occured, but not in the same event-loop cycle.
            setTimeout(function(){ blockPopstateEvent = false; }, 0);
        }, false);
        window.addEventListener("popstate", function(evt) {
            if (blockPopstateEvent && document.readyState=="complete") {
                evt.preventDefault();
                evt.stopImmediatePropagation();
            }
            if (!window.innerDoc) {

                $("#contents").load(evt.state.url,{"tag":evt.state.url} ,function(){
                    //alert(a);
                    //lng 하이라이트 바꿔줘야 함
                });
            }
        }, false);
    })();
    $(document).ready(function() {
        //ajax로 호출되는 첫번째 페이지
        load("a10_dashboard","대시보드");
    });



</script>
</body>

</html>

