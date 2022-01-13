<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en" class="light-style">

<head>
    <title>Password reset - Pages - Appwork</title>

    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <link rel="icon" type="image/x-icon" href="favicon.ico">

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900" rel="stylesheet">

    <!-- Icon fonts -->
    <link rel="stylesheet" href="@{/assets/vendor/fonts/fontawesome.css">
    <link rel="stylesheet" href="@{/assets/vendor/fonts/ionicons.css">
    <link rel="stylesheet" href="@{/assets/vendor/fonts/linearicons.css">
    <link rel="stylesheet" href="@{/assets/vendor/fonts/open-iconic.css">
    <link rel="stylesheet" href="@{/assets/vendor/fonts/pe-icon-7-stroke.css">

    <!-- Core stylesheets -->
    <link rel="stylesheet" href="@{/assets/vendor/css/rtl/bootstrap.css" class="theme-settings-bootstrap-css">
    <link rel="stylesheet" href="@{/assets/vendor/css/rtl/appwork.css" class="theme-settings-appwork-css">
    <link rel="stylesheet" href="@{/assets/vendor/css/rtl/theme-corporate.css" class="theme-settings-theme-css">
    <link rel="stylesheet" href="@{/assets/vendor/css/rtl/colors.css" class="theme-settings-colors-css">
    <link rel="stylesheet" href="@{/assets/vendor/css/rtl/uikit.css">
    <link rel="stylesheet" href="@{/assets/css/demo.css">

    <!-- Load polyfills -->
    <script th:src="@{/assets/vendor/js/polyfills.js}"></script>
    <script>document['documentMode']===10&&document.write('<script src="https://polyfill.io/v3/polyfill.min.js?features=Intl.~locale.en"><\/script>')</script>

    <script th:src="@{/assets/vendor/js/material-ripple.js}"></script>
    <script th:src="@{/assets/vendor/js/layout-helpers.js}"></script>

    <!-- Theme settings -->
    <!-- This file MUST be included after core stylesheets and layout-helpers.js in the <head> section -->
    <script th:src="@{/assets/vendor/js/theme-settings.js}"></script>
    <script>
        window.themeSettings = new ThemeSettings({
            cssPath: '@{/assets/vendor/css/rtl/',
            themesPath: '@{/assets/vendor/css/rtl/'
        });
    </script>

    <!-- Core scripts -->
    <script th:src="@{/assets/vendor/js/pace.js}"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js}"></script>

    <!-- Libs -->
    <link rel="stylesheet" href="@{/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css">
    <!-- Page -->
    <link rel="stylesheet" href="@{/assets/vendor/css/pages/authentication.css">
</head>

<body>
<div class="page-loader">
    <div class="bg-primary"></div>
</div>

<!-- Content -->

<div class="authentication-wrapper authentication-2 ui-bg-cover ui-bg-overlay-container  px-4" style="background-image: url('@{/assets/image/img_bg_sangju.jpg');">
    <div class="authentication-inner py-5">

        <!-- Form -->
        <form class="card">
            <div class="p-4 p-sm-5">

                <!-- Logo -->
                <div class="d-flex justify-content-center align-items-center pb-2 mb-4">
                    <div class="ui-w-160">
                        <div class="w-160 position-relative cover" >
                            <img th:src="@{/assets/image/h1_logo@3x.png}" width="268px" height="60px">
                        </div>
                    </div>
                </div>
                <!-- / Logo -->

                <h3 class="text-center text-muted font-weight-normal mb-4">비밀번호 변경</h3>

                <hr class="mt-0 mb-4">

                <p>
                    이메일을 입력해주세요. 가입이 되어 있으면 변경된 비밀번호를 보내드립니다. 변경된 비밀번호로 로그인 후 반드시 비밀번호를 변경해 주세요.
                </p>

                <div class="form-group">
                    <input type="text" class="form-control" placeholder="이메일 입력">
                </div>

                <button type="button" class="btn btn-primary btn-block">비밀번호 변경을 위한 이메일 보내기</button>

            </div>
        </form>
        <!-- / Form -->

    </div>
</div>

<!-- / Content -->

<!-- Core scripts -->
<script th:src="@{/assets/vendor/libs/popper/popper.js}"></script>
<script th:src="@{/assets/vendor/js/bootstrap.js}"></script>
<script th:src="@{/assets/vendor/js/sidenav.js}"></script>

<!-- Libs -->
<script th:src="@{/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js}"></script>

<!-- Demo -->
<script th:src="@{/assets/js/demo.js}"></script>

</body>

</html>