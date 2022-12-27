<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>

<html lang="ko" class="dark-style">

<head>
    <title>실증센터 어드민</title>

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
    <link rel="stylesheet" href="resources/assets/css/demo.css">

    <!-- Load polyfills -->
    <script src="resources/assets/vendor/js/polyfills.js"></script>
    <script>document['documentMode']===10&&document.write('<script src="https://polyfill.io/v3/polyfill.min.js?features=Intl.~locale.en"><\/script>')</script>

    <script src="resources/assets/vendor/js/material-ripple.js"></script>
    <script src="resources/assets/vendor/js/layout-helpers.js"></script>

    <!-- Theme settings -->
    <!-- This file MUST be included after core stylesheets and layout-helpers.js in the <head> section -->
    <script src="resources/assets/vendor/js/theme-settings.js"></script>
    <script>
        window.themeSettings = new ThemeSettings({
            cssPath: 'resources/assets/vendor/css/',
            themesPath: 'resources/assets/vendor/css/',
            controls: [
                'rtl', 'style', 'layoutPosition', 'layoutNavbarFixed', 'layoutFooterFixed',
                'layoutReversed', 'navbarBg', 'sidenavBg', 'footerBg'
            ]
        });
    </script>

    <!-- Core scripts -->
    <script src="resources/assets/vendor/js/pace.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>



    <!-- Libs -->
    <link rel="stylesheet" href="resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css">
    <!-- Page -->
    <link rel="stylesheet" href="resources/assets/vendor/css/pages/authentication.css">

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

<!-- Content -->

<div class="authentication-wrapper authentication-2 ui-bg-cover ui-bg-overlay-container px-4" style="background-image:url('resources/assets/image/img_bg_sangju.jpg');">
    <div class="ui-bg-overlay bg-dark opacity-25"></div>

    <div class="authentication-inner py-5">

        <div class="card">
            <div class="p-4 p-sm-5">
                <!-- Logo -->
                <div class="d-flex justify-content-center align-items-center pb-2 mb-4">
                    <div class="ui-w-160">
                        <div class="w-160 position-relative" >
                            <img src="resources/assets/image/h1_logo_3x.png" width="268px" height="60px">
                        </div>
                    </div>
                </div>
                <!-- / Logo -->

                <h3 class="text-center text-muted font-weight-bolder mb-4">관리자 로그인</h3>

                <!-- Form -->
                <%--<form action="login" method="post">--%>
                   <%-- <sec:csrfInput />--%>
                    <div class="form-group">
                        <label class="form-label">아이디</label>
                        <input id="input_id" name="username" type="text" class="form-control">
                    </div>
                    <div class="form-group">
                        <label class="form-label d-flex justify-content-between align-items-end">
                            <div>패스워드</div>
                           <%--<a href="password_reset" class="d-block small">비밀번호를 잊어버리셨나요?</a>--%>
                        </label>
                        <input id="input_pw" name="password" type="password" class="form-control">
                    </div>
                    <span id = "span_result" class="is-alert" style="display: none">아이디 또는 비밀번호를 찾을 수 없습니다.</span>
                    <div class="d-flex justify-content-between align-items-center m-0">
                        <label class="custom-control custom-checkbox m-0">
<%--                            <input type="checkbox" class="custom-control-input">--%>
<%--                            <span class="custom-control-label">자동 로그인</span>--%>
                        </label>
                        <button id="btn_login" type="button" class="btn btn-primary">로그인</button>
                    </div>
                <%--</form>--%>
                <!-- / Form -->


    </div>
</div>

<!-- / Content -->

<!-- Core scripts -->
<script src="resources/assets/vendor/libs/popper/popper.js"></script>
<script src="resources/assets/vendor/js/bootstrap.js"></script>
<script src="resources/assets/vendor/js/sidenav.js"></script>

<!-- Libs -->
<script src="resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

<!-- Demo -->
<script src="resources/assets/js/demo.js"></script>
<script>
    $(window).ready(function(){
        $("#theme-settings").hide();
    });

         $("#btn_login").click(function(){

             var param = {
                 "admin_id":$("#input_id").val(),
                 "admin_pw":$("#input_pw").val()
             };
             console.log(JSON.stringify(param));

             $.ajax({
                 type: 'post',
                 url :'admin_login', //데이터를 주고받을 파일 주소 입력
                 data: JSON.stringify(param),//보내는 데이터
                 contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                 dataType:'json',//받는 데이터 타입
                 success: function(result){
                     //작업이 성공적으로 발생했을 경우
                     if(result.result_code=="SUCCESS"){
                         //access_token을 받았으니 사용해야지

                         if($.cookie('access_token')!='undefined')
                         {
                             $.removeCookie('access_token', { path: '/' }); // => true
                             $.removeCookie('refresh_token', { path: '/' }); // => true
                         }
                         $.cookie('access_token', result.access_token, { expires: 1, path: '/' });
                         $.cookie('refresh_token', result.refresh_token, { expires: 365, path: '/' });
                         location.replace('/');
                     }
                     else {
                         $("#span_result").show();
                         //alert(result.result_str);
                     }
                 },
                 error:function(){
                     //에러가 났을 경우 실행시킬 코드
                 }
             });
         });
        $("#input_id").on("propertychange change keyup paste input", function() {
            $("#span_result").hide();
        });
        $("#input_pw").on("propertychange change keyup paste input", function() {
            $("#span_result").hide();
        });

</script>
</body>

</html>