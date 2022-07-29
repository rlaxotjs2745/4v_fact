<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/29
  Time: 10:23 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" class="view">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SMART FARM</title>
    <link rel="shortcut icon" href="resources/assets/image/favicon_16.ico">
    <link rel="icon" href="resources/assets/image/favicon_16.png">
    <link rel="apple-touch-icon-precomposed" href="resources/assets/image/favicon_152.png">
    <link rel="stylesheet" type="text/css" href="resources/assets/css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="resources/assets/css/style.css">
</head>
<body>
<div class="wrapper" id="wrapper">
    <div class="login" id="login">
        <!--//-->
        <div class="page__full">
            <div class="page__floating">
                <div class="tb__init">
                    <a href="main"><img src="resources/assets/image/ico_close.svg" alt=""></a>
                </div>
                <div class="tb__logo">
                    <c:if test="${profile == 'gimje-prod'}">
                        <img src="resources/assets/image/img_loginLogo.png" alt="스마트팜 실증센터">
                    </c:if>
                </div>
                <div class="tb__join">
                    <div class="td__cell">
                        <div class="join__board">
                            <div class="join__title">회원가입</div>
                            <div class="join__step">
                                <div class="step__state step__state--through"><img src="resources/assets/image/ico_check.png" alt=""></div>
                                <div class="step__state step__state--through"><img src="resources/assets/image/ico_check.png" alt=""></div>
                                <div class="step__state step__state--through">3</div>
                            </div>

                        </div>
                        <div class="join__field">
                            <div class="join__welcome">
                                <div class="join__welcome--message">
                                    <strong>회원가입이 완료</strong>되었습니다.
                                </div>
                                <div class="join__welcome--info">
                                    <%--<span>아이디 : <strong>XXXXXXX@XXXXXXXX.com</strong></span>--%>
                                </div>
                            </div>

                            <div class="join__btn">
                                <a href="login" class="btn submit ">로그인</a>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
<!-- Initialize Swiper -->
<script>
    if('${profile}' == 'sangju-prod'){
        $('#login').css('background', 'url(resources/assets/image/img_bglogo.png) no-repeat 50% 50%');
    }else {
        $('#login').css('background', 'url(resources/assets/image/img_bglogo.jpg) no-repeat 50% 50%');
    }

</script>
</body>
</html>

