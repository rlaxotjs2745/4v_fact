<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko" class="light-style">
<head>
    <sec:csrfMetaTags />
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
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/bootstrap.css" class="theme-settings-bootstrap-css">
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/appwork.css" class="theme-settings-appwork-css">
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/theme-corporate.css" class="theme-settings-theme-css">
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/colors.css" class="theme-settings-colors-css">
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/uikit.css">


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
    <link rel="stylesheet" href="resources/assets/vendor/libs/spinkit/spinkit.css">
    <link rel="stylesheet" href="resources/assets/vendor/libs/datatables/datatables.css">
    <link rel="stylesheet" href="resources/assets/vendor/libs/bootstrap-datepicker/bootstrap-datepicker.css">
    <link rel="stylesheet" href="resources/assets/vendor/libs/flatpickr/flatpickr.css">
    <link rel="stylesheet" href="resources/assets/vendor/libs/fullcalendar/fullcalendar.css">
    <!-- include codemirror (codemirror.css, codemirror.js, xml.js, formatting.js) -->
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/codemirror.css">
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/theme/monokai.css">

    <link rel="stylesheet" type="text/css" href="resources/assets/css/demo.css">
    <link rel="stylesheet" type="text/css" href="resources/assets/vendor/libs/summernote/summernote.css">

    <!-- 공통 css 추가 -->
    <link rel="stylesheet" href="resources/assets/css/common.css">
    <sec:authorize access="isAuthenticated()">
        <!-- csrf 처리 -->
        <sec:csrfMetaTags />
        <script>
            try {
                let csrfParameter = $("meta[name='_csrf_parameter']").attr("content");
                let csrfHeader = $("meta[name='_csrf_header']").attr("content");
                let csrfToken = $("meta[name='_csrf']").attr("content");

                // ajax가 호출 되는 전역
                $.ajaxSetup({
                    beforeSend: function(xhr, settings) {
                        if (!/^(GET|HEAD|OPTIONS)$/i.test(settings.type) && !this.crossDomain) {
                            xhr.setRequestHeader(csrfHeader, csrfToken)
                        }
                    }
                });

                // form
                $("form").each(function() {
                    let input = $("<input/>").attr({name:csrfParameter, type:"hidden", value:csrfToken});
                    $(this).append(input);
                });
            } catch(e) {
                console.log(e);
            }
        </script>
        <!-- csrf 처리 -->
    </sec:authorize>

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
<%--            <div id="loading_symbol">--%>
<%--                <img src="resources/assets/image/g_loading.gif">--%>
<%--            </div>--%>

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
<script src="resources/assets/vendor/libs/moment/moment.js"></script>
<script src="resources/assets/vendor/libs/moment/moment-ko.js"></script>

<script src="resources/assets/vendor/libs/bootstrap-datepicker/bootstrap-datepicker.js"></script>
<script src="resources/assets/vendor/libs/bootstrap-datepicker/bootstrap-datepicker.ko.js"></script>
<script src="resources/assets/vendor/libs/flatpickr/flatpickr.js"></script>
<script src="resources/assets/vendor/libs/fullcalendar/fullcalendar.js"></script>
<script src="resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="resources/assets/vendor/libs/block-ui/block-ui.js"></script>
<!-- Demo -->
<script src="resources/assets/vendor/libs/summernote/summernote.js"></script>
<script src="resources/assets/js/demo.js"></script>


<script>
    $.blockUI({
        message: '<div class="sk-fold sk-primary mx-auto mb-4"><div class="sk-fold-cube"></div><div class="sk-fold-cube"></div><div class="sk-fold-cube"></div><div class="sk-fold-cube"></div></div><h5 class="text-body">LOADING...</h5>',
        css: {
            backgroundColor: 'rgba(0,0,0,0.0)',
            border: '0',
            color: '#000000',
            zIndex: 9999999
        },
        overlayCSS:  {
            backgroundColor: '#fff',
            opacity: 0.3,
            zIndex: 9999990
        }
    });
    $(document).ajaxStart($.blockUI).ajaxStop($.unblockUI);

/*=== lnb active 처리 ====*/
    $("li.sidenav-item").on('click',function(){
        if( $("li.sidenav-item").has('a')!=null){
            $(this).addClass("active");
        }
    });
    $(function(){
        let sBtn = $("ul > li");    //  ul > li 이를 sBtn으로 칭한다. (클릭이벤트는 li에 적용 된다.)
        sBtn.find("a").click(function(){   // sBtn에 속해 있는  a 찾아 클릭 하면.
            sBtn.removeClass("active");     // sBtn 속에 (active) 클래스를 삭제 한다.
            $(this).parent().addClass("active"); // 클릭한 a에 (active)클래스를 넣는다.
        });

    });

/*==== 글로벌 데이터 ========*/
    let _pageReload = '${pageOnLoad}';
    let curMyIdx = ${admin.idx_admin};

console.log("path="+'${path}');
/*==== page load 처리 ========*/
    var cur = "";
    let filter1 = null;
    let filter2 = null;

    function pageLoad(url, param=null, title="실증단지 웹 어드민", usage=null){

/*  url : 로딩할 주소,
    param : 페이지 로딩 시 전달할 파라미터
    title : 브라우저 타이틀
    usage : .html로 대치할 선택자
*/
        if(param==null) {
            param = {};
            filter1 = 9999;
            filter2 = 9998;
        }else{
            if (param['cur_page'] == null) {
                param['cur_page'] = 1;
            }
            if (param['filter1'] == null && filter1 != null) {
                param['filter1'] = filter1;
            }
            if (param['filter2'] == null && filter2 != null) {
                param['filter2'] = filter2;
            }

            if (param['filter1'] != null) {
                filter1 = param['filter1'];
            }
            if (param['filter2'] != null) {
                filter2 = param['filter2'];
            }
        }

        if(cur === url+param['cur_page']){
            return;
        }

        if(cur !== url+param['cur_page'] && usage==null)
        {
            history.pushState(param, title, url);
        }

/*
        if(cur !== url+param['cur_page']/!* || usage === "asset_list" || usage==='site_adver_mng' || usage==='site_event_mng' || usage==='pr_contents' || usage==='event_contents'*!/){
            cur = url+param['cur_page'];

            if(url.indexOf('cur_asset_index') === -1
                && url.indexOf('user_index') === -1
                && url.indexOf('dormant_user_index') === -1
                && url.indexOf('admin_corporate') === -1
                && url.indexOf('c431_site_adver_mng') === -1
                && url.indexOf('c421_site_event_mng') === -1
                && url.indexOf('pr_contents') === -1
                && url.indexOf('event_contents') === -1
                ) {
                history.pushState(param, title, url);
            }
*/

        if(usage==null)
            usage="#contents";

            var request = $.ajax({
                url: url,
                method: 'post',
                data: JSON.stringify(param),//보내는 데이터
                contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                dataType:'html',//받는 데이터 타입
                success:function(result){
                    $(usage).html(result);


                    /*
                    if(usage === "admin"){
                        $("#admin_index").html(result);
                    } else if(usage === "user"){
                        $("#user_index").html(result);
                    } else if(usage === "dormant_user"){
                        $("#dormant_user_index").html(result);
                    } else if(usage === "cur_asset_index"){
                        $("#cur_asset_index").html(result);
                    } else if(usage === "codeSelect"){
                        $("#code_select").append(result);
                    } else if(usage === "asset_list"){
                        $("#asset_list").html(result);
                    } else if(usage === "asset_reservation_list"){
                        $("#asset_reservation_list").html(result);
                    } else if(usage === "asset_reservation_items_list"){
                        $("#asset_reservation_items_list").html(result);
                    } else if(usage === "pr_contents"){
                        $("#modals-content").html(result);
                    } else if(usage === "event_contents"){
                        $("#modals-content").html(result);
                    } else if(usage === "reserve_view") {
                        $("#reserve_view_comp").html(result);
                    } else if(usage === 'site_adver_mng'){
                        $("#site_adver_mng").html(result);
                    } else if(usage === 'site_event_mng'){
                        $("#site_event_mng").html(result);
                    } else if(usage === '#dashboard_calendar_view'){
                        $(usage).html(result);
                    } else if(usage === '#appl_contents'){
                        $(usage).html(result);
                    } else{
                        $("#contents").html(result);
                    }*/

                },
                fail:function(xhr,status,err){

                    $(usage).html("<div class='row'><div class='align-items-center'>"+"Page:"+url+"     Request failed: " + status +"</div></div>");
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

/*        }else{//현재 주소 클릭시 변화 없음
            return false;
        }*/
    }

/*==========    브라우저 뒤로가기 했을 때 처리    ==============*/
    (function() {
        // There's nothing to do for older browsers ;)
        if (!window.addEventListener)
            return;
        //window 내 mouse 위치 여부를 체크하기 위한 변수
        window.innerDoc = false; //mouseover Event Listener
        window.addEventListener('mouseover', function(event) { window.innerDoc = true; });
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

/*                $("#contents").load(evt.state.url,evt.state.title ,function(){
                    //alert(a);
                    //lng 하이라이트 바꿔줘야 함
                });*/

                pageLoad(evt.state.url,{cur_page:1},evt.state.title);
            }
        }, false);


    })();



    $(document).ready(function() {
        //ajax로 호출되는 첫번째 페이지
        if(_pageReload !== ''){
            pageLoad('${path}', null);
        }else{
            pageLoad('dashboard',{cur_page:1},'대시보드');
        }
    });

    const autoHyphen = (target) => {
        target.value = target.value
            .replace(/[^0-9]/g, '')
            .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
    }

    const autoHyphen2 = (target) => {
        target.value = target.value
            .replace(/[^0-9]/g, '')
            .replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
    }


</script>
<style>
    #loading_symbol{
        display: block;
        position: absolute;
        text-align: center;
    }
</style>
</body>
</html>
