<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/07/30
  Time: 4:56 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
    <link rel="stylesheet" href="resources/assets/vendor/fonts/fontawesome.css">
    <link rel="stylesheet" href="resources/assets/vendor/fonts/ionicons.css">
    <link rel="stylesheet" href="resources/assets/vendor/fonts/linearicons.css">
    <link rel="stylesheet" href="resources/assets/vendor/fonts/open-iconic.css">
    <link rel="stylesheet" href="resources/assets/vendor/fonts/pe-icon-7-stroke.css">

    <!-- Core stylesheets -->
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/bootstrap-dark.css" class="theme-settings-bootstrap-css">
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/appwork-dark.css" class="theme-settings-appwork-css">
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/theme-corporate-dark.css" class="theme-settings-theme-css">
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/colors-dark.css" class="theme-settings-colors-css">
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/uikit.css">
    <link rel="stylesheet" href="resources/assets/css/demo.css">

    <!-- Load polyfills -->
    <script src="resources/assets/vendor/js/polyfills.js"></script>
    <script>document['documentMode']===10&&document.write('<script src="https://polyfill.io/v3/polyfill.min.js?features=Intl.~locale.en"><\/script>')</script>

    <script src="resources/assets/vendor/js/material-ripple.js"></script>
    <script src="resources/assets/vendor/js/layout-helpers.js"></script>

    <!-- Core scripts -->
    <script src="resources/assets/vendor/js/pace.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Libs -->
    <link rel="stylesheet" href="resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="resources/assets/vendor/libs/datatables/datatables.css">
    <link rel="stylesheet" href="resources/assets/vendor/libs/bootstrap-datepicker/bootstrap-datepicker.css">
    <link rel="stylesheet" href="resources/assets/vendor/libs/bootstrap-daterangepicker/bootstrap-daterangepicker.css">
    <link rel="stylesheet" href="resources/assets/vendor/libs/fullcalendar/fullcalendar.css">
    <link rel="stylesheet" href="resources/assets/vendor/libs/flot/flot.css">


</head>

<body>
<div class="page-loader">
    <div class="bg-primary"></div>
</div>

<!-- Layout wrapper -->
<div class="layout-wrapper layout-2">
    <div class="layout-inner">

        <!-- Layout sidenav -->
        <%@include file ="layouts/frame_lnb.jsp" %>
        <!-- / Layout sidenav -->

        <!-- Layout container -->
        <div class="layout-container">
            <!-- Layout gnb -->
            <%@include file ="layouts/frame_gnb.jsp" %>
            <!-- / Layout gnb -->

            <!-- Layout content -->
            <div id="contents" class="layout-content">


            </div>
            <!-- Layout content -->
            <%@include file ="layouts/frame_footer.jsp" %>
        </div>
        <!-- / Layout container -->

    </div>

    <!-- Overlay -->
    <div class="layout-overlay layout-sidenav-toggle"></div>
</div>
<!-- / Layout wrapper -->

<!-- Core scripts -->
<script src="resources/assets/vendor/libs/popper/popper.js"></script>
<script src="resources/assets/vendor/js/bootstrap.js"></script>
<script src="resources/assets/vendor/js/sidenav.js"></script>

<!-- Libs -->
<script src="resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="resources/assets/vendor/libs/bootstrap-datepicker/bootstrap-datepicker.js"></script>
<script src="resources/assets/vendor/libs/fullcalendar/fullcalendar.js"></script>
<script src="resources/assets/vendor/libs/flot/flot.js"></script>
<script src="resources/assets/vendor/libs/flot/jquery.flot.time.js"></script>

<!-- Demo -->
<script src="resources/assets/js/demo.js"></script>

<script>

    $("li.sidenav-item").on('click',function(){
        if( $("li.sidenav-item").has('a')!=null){
            $(this).addClass("active");
        }
    });
    $(function(){
        var sBtn = $("ul > li");    //  ul > li 이를 sBtn으로 칭한다. (클릭이벤트는 li에 적용 된다.)
        sBtn.find("a").click(function(){   // sBtn에 속해 있는  a 찾아 클릭 하면.
            sBtn.removeClass("active");     // sBtn 속에 (active) 클래스를 삭제 한다.
            $(this).parent().addClass("active"); // 클릭한 a에 (active)클래스를 넣는다.
        });

    });

    var csrfParameter = $("meta[name='_csrf_parameter']").attr("content");
    var csrfHeader = $("meta[name='_csrf_header']").attr("content");
    var csrfToken = $("meta[name='_csrf']").attr("content");
    //최초 진입시 호출되는 ajax 페이지 초기값
    var cur = "";


    function pageLoad(url,param,title,usage){
        /*      State : 브라우저 이동 시 넘겨줄 데이터 (popstate 에서 받아서 원하는 처리를 해줄 수 있음)
                Title : 변경할 브라우저 제목 (변경 원치 않으면 null)
                Url : 변경할 주소*/


         console.log(param)


        if(param==null)
            param={cur_page:1};

        if(cur!=url+param.cur_page || usage == "asset_list"){
            cur = url+param.cur_page;
            history.pushState(url, title,url);

            $.ajaxSetup({
                headers:
                    { 'X-CSRF-TOKEN': csrfToken }
            });
            var request = $.ajax({
                url: url,
                method: 'post',
                data: JSON.stringify(param),//보내는 데이터
                contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                dataType:'html',//받는 데이터 타입
                success:function(result){
                    if(usage == "admin"){
                        $("#admin_index").html(result);
                    } else if(usage == "user"){
                        $("#user_index").html(result);
                    } else if(usage == "dormant_user"){
                        $("#dormant_user_index").html(result);
                    } else if(usage == "cur_asset_index"){
                        $("#cur_asset_index").html(result);
                    } else if(usage == "codeSelect"){
                        $("#code_select").append(result);
                    } else if(usage == "asset_list"){
                        $("#asset_list").html(result);
                    } else if(usage == "asset_reservation_list"){
                        $("#asset_reservation_list").html(result);
                    } else if(usage == "asset_reservation_items_list"){
                        $("#asset_reservation_items_list").html(result);
                    } else if(usage == "pr_contents"){
                        $("#modals-content").html(result);
                    } else if(usage == "reserve_view"){
                        $("#reserve_view_comp").html(result);
                    }

                    else{
                        $("#contents").html(result);


                    }
                },
                fail:function(xhr,status,err){
                    $("#contents").html("Request failed: " + status);
                }

            });

            /*            request.done(function(msg) {
                            $("#contents").html(msg);
                        });

                        request.fail(function(jqXHR, textStatus) {
                            $("#contents").html("Request failed: " + textStatus);
                        });*/

            //$("#contents").load(a,{"tag":a} ,function(){
            //alert(a);

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

                console.log(evt);
                pageLoad(evt.state,{cur_page:1},"");

            }
        }, false);


    })();

    $(document).ready(function() {
        //ajax로 호출되는 첫번째 페이지
        pageLoad('dashboard',{cur_page:1},'대시보드');

    });

</script>
</body>

</html>

