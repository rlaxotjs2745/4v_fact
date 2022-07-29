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

                <div class="tb__logo"><c:if test="${profile == 'gimje-prod'}">
                    <h1><a href="/"><img src="resources/assets/image/img_loginLogo.png" alt="스마트팜 실증센터"></a></h1>
                </c:if></div>
                <form id="loginForm" action="api_post_login" method="post">
                <div class="tb__login">
                    <div class="td__cell--float">
                        <div class="login__field">
                            <a href="index" class="btn-login-close"><img src="resources/assets/image/ico_close.svg" alt="레이어닫기"></a>
                            <div class="login__title">LOGIN</div>
                            <div class="login__input">
                                <input name="id" type="text" class="text" placeholder="아이디를 입력해주세요">
                            </div>
                            <div class="login__input">
                                <input name="pw" type="password" class="text" placeholder="비밀번호를 입력해주세요">
                            </div>
                            <div class="login__checkbox">
                                <div class="checkbox">
                                    <input type="checkbox" id="login-1" name="id_save">
                                    <label for="login-1">아이디 저장</label>
                                </div>
                                <div class="checkbox">
                                    <input type="checkbox" id="login-2" name="uji">
                                    <label for="login-2">로그인 상태 유지</label>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-login">로그인</button>
                            <div class="login__util">
                                <a href="#popup_find_id" class="js-modal-detail">아이디 찾기</a>
                                <a href="#popup_find_pw" class="js-modal-detail">비밀번호 찾기</a>
                                <a href="join">회원 가입하기</a>
                            </div>
                        </div>
                    </div>
                </div>
                </form>
            </div>

            <!--popup / in popup-->
            <div id="popup_find_id" class="pop__mini ">
                <div class="section">
                    <button id="popup_find_id_close" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></button>
                    <div class="popup__cnt">
                        <h5 class="popup__title">아이디 찾기</h5>
                        <div class="popup__tabs">
                            <a href="#person" class="popup__tab is-selected">개인회원</a>
                            <a href="#group" class="popup__tab">기업/단체 회원</a>
                        </div>
                        <div class="popup__tab--contents" id="person">
                            <p class="tab__detail" style="margin-bottom: 4px;">이름:</p>
                            <div class="login__input">
                                <input id = "user_name" type="text" class="text" placeholder="이름을 입력해주세요">
                            </div>
                            <p class="tab__detail" style="margin-top: 20px;margin-bottom: 4px;">전화번호:</p>
                            <div class="login__input" style="margin-bottom: 20px;">
                                <input id="mphone_num1" type="tel" class="tel" value="010" style="width:80px;"><span class="text__dash">-</span>
                                <input id="mphone_num2" type="tel" class="tel" style="width:120px;"><span class="text__dash">-</span>
                                <input id="mphone_num3" type="tel" class="tel" style="width:120px;">
                            </div>
                            <p class="tab__text">실증단지 홈페이지의 아이디는 이메일을 아이디로 사용합니다.</p>
                            <strong class="tab__detail">본인 이름으로 가입된 휴대전화번호로 인증합니다.</strong>
                            <div class="popup__btn">
                                <button id="btn_id_find" href="#popup_find_id_result" class="btn submit btn-lg  js-modal-next">아이디 찾기</button>
                            </div>
                        </div>
                        <div class="popup__tab--contents" id="group">
                            <p class="tab__text">실증단지 홈페이지의 아이디는 이메일을 아이디로 사용합니다.</p>
                            <strong class="tab__detail">기업/단체 회원 아이디는 기업/단체 고유번호를<br>
                                확인할 수 있는 증빙서류</strong><br>
                            (예: 사업자등록증)를 제출하시면 확인 후 안내해 드립니다.<br>
                            담당자 연락처 : ${homepageInfo.homepage_admin}, xxxx@xxxxxxxx.com
                            <em>담당자</em><strong>${homepageInfo.homepage_admin}</strong>
                            <em>연락처</em><strong>${homepageInfo.homepage_admin_pnum}</strong>
                            <div class="popup__btn">
                                <a href="#" class="btn submit btn-lg  js-btn-close">확인</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="popup_find_id_result" class="pop__mini ">
                <div class="section">
                    <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
                    <div class="popup__cnt">
                        <h5 id="find_id_result" class="popup__title">아이디 찾기 결과</h5>
                    </div>
                    <div class="popup__btn">
                        <a href="#" class="btn submit btn-lg  js-btn-close">로그인 바로가기</a>
                    </div>
                </div>
            </div>

            <div id="popup_find_pw" class="pop__mini ">
                <div class="section">
                    <button id="popup_find_pw_close" href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></button>
                    <div class="popup__cnt">
                        <h5 class="popup__title">비밀번호 찾기</h5>
                        <p class="popup__text">비밀번호를 찾고자 하는 아이디를 입력해 주세요.</p>
                        <input id="user_id" type="text" placeholder="아이디를 입력해주세요" style="width: 280px;">
                        <br>
                        <span id="span_not_found" class="popup__alert is-alert" style="display: none;">아이디를 찾을 수 없습니다.</span>
                    </div>
                    <div class="popup__btn">
                        <button id="btn_id_check" class="btn submit btn-lg">다음</button>
                    </div>
                </div>
            </div>


            <div id="popup_find_pw_next" class="pop__mini ">
                <div class="section">
                    <button id="popup_find_pw_next_close" href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></button>
                    <div class="popup__cnt">
                        <h5 class="popup__title">비밀번호 찾기</h5>
                        <p class="popup__text">비밀번호를 찾을 방법을 선택하세요.</p>
                        <div class="radio radio--inline">
                            <input type="radio" id="find-1" name="find-pw" value="1" checked>
                            <label for="find-1">회원정보에 등록한 휴대전화로 인증 (*1*-9***-5***)</label>
                        </div>
                        <div class="radio radio--inline">
                            <input type="radio" id="find-2" name="find-pw" value="2">
                            <label for="find-2">회원정보에 등록한 이메일로 인증 (j*****@m*****.com)</label>
                        </div>
                    </div>
                    <input id="imsi_code_type" hidden>
                    <div class="popup__btn">
                        <button id="btn_send_imsi_code" class="btn submit btn-lg">다음</button>
                    </div>
                </div>
            </div>

            <div id="popup_find_pw_change" class="pop__mini ">
                <div class="section">
                    <button id="popup_find_pw_change_close" href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></button>
                    <div class="popup__cnt">
                        <h5 class="popup__title">비밀번호 찾기</h5>
                        <div class="popup__subject">휴대폰 또는 이메일로 전송된 인증코드를 입력해 주세요.</div>
                        <div class="popup__alert">
                            <input id="secret_code" type="text" placeholder="인증코드 입력" style="width:270px;">
                            <button id="btn_code_confirm" class="btn submit btn-lg">확인</button>
                        </div>
                        <span id="timer" class="popup__alert"></span>
                        <span id="span_code_not_found" class="popup__alert is-alert" style="display: none;">인증코드가 틀립니다.</span>

                        <p class="popup__text">변경할 비밀번호를 입력해 주세요.</p>
                        <div class="popup__subject">신규 비밀번호</div>
                        <div class="popup__alert">
                            <input id="password" type="password" placeholder="비밀번호를 입력해 주세요." style="width:270px;" disabled>
                        </div>
                        <div class="text__message">
                            <ul>
                                <li>비밀번호는 10~15 자 입력 가능합니다.</li>
                                <li>영문소문자 / 숫자 / 특수문자 필수 혼합 입력</li>
                                <li>비밀번호는 동일한 문자열을 3 회 이상 반복할 수 없습니다.</li>
                                <li>비밀번호는 연속된 문자열을 3 회 이상 사용할 수 없습니다.</li>
                            </ul>
                        </div>

                        <div class="popup__subject">비밀번호 확인</div>
                        <div class="popup__alert">
                            <input id="password_confirm" type="password" placeholder="사용자 비밀번호 입력" style="width:270px;" disabled>
                        </div>
                    </div>
                    <div class="popup__btn">
                        <button id="btn_change_password" href="#popup_find_pw_complete" class="btn submit btn-lg  js-modal-next">비밀번호 변경</button>
                    </div>
                </div>
            </div>

            <div id="popup_find_pw_complete" class="pop__mini ">
                <div class="section">
                    <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
                    <div class="popup__cnt">
                        <h5 class="popup__title">비밀번호 찾기</h5>
                        <p class="popup__text">비밀번호가 변경되었습니다.</p>
                    </div>
                    <div class="popup__btn">
                        <a href="#" class="btn submit btn-lg  js-btn-close">로그인 바로가기</a>
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

<script>
    if('${profile}' == 'sangju-prod'){
        $('#login').css('background', 'url(resources/assets/image/img_bglogo.png) no-repeat 50% 50%');
    }else {
        $('#login').css('background', 'url(resources/assets/image/img_bglogo.jpg) no-repeat 50% 50%');
    }

    $("#btn_id_find").click(function(){
        $("#find_id_result *").remove("");
        //$("#text_guide_id").removeClass("is-alert");

        var user_name = $("#user_name").val();
        var mphone_num = $("#mphone_num1").val()+"-"+$("#mphone_num2").val()+"-"+$("#mphone_num3").val();

        var param = {user_name:user_name,
            mphone_num:mphone_num};
        console.log(param);
        $.ajax({
            type: 'post',
            url :'user_id_find', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                console.log(result);
                if(result.result_code=="SUCCESS"){

                    var user_data = result["userVO"];
                    var txt = "<p class='popup__text'>"+user_data.user_name+"님의 아이디는</p>"
                    +"<strong class='popup__detail'>"+user_data.user_id+"</strong>입니다.";

                    $("#find_id_result").append(txt);
                }
                else {
                    var txt = "<span class='popup__alert is-alert'>아이디를 찾을 수 없습니다.</span>";
                    $("#find_id_result").append(txt);
                }

                $("#popup_find_id_close").click();

                var popName = $("#popup_find_id_result");
                $('html').css({
                    "overflow": "hidden"
                });
                popName.before("<div class='dimed'></div>");
                popName.addClass("is-on");


                $("#user_name").val("");
                $("#mphone_num1").val("");
                $("#mphone_num2").val("");
                $("#mphone_num3").val("");
            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
            }
        });
    });


    $("#btn_id_check").click(function(){

        $("#span_not_found").hide();

        var param = {user_id:$("#user_id").val()};
        $.ajax({
            type: 'post',
            url :'user_id_check', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                console.log(result);
                if(result.result_code=="SUCCESS"){

                    $("#span_not_found").show();
                }
                else {
                    var user_data = result["userVO"];
                    $("#find-1").next().text("회원정보에 등록한 휴대전화로 인증 ("+user_data.mphone_num+")");
                    $("#find-2").next().text("회원정보에 등록한 이메일로 인증 ("+user_data.email+")");

                    $("#popup_find_pw_close").click();

                    var popName = $("#popup_find_pw_next");
                    $('html').css({
                        "overflow": "hidden"
                    });
                    popName.before("<div class='dimed'></div>");
                    popName.addClass("is-on");
                    $("#user_id").val("");


                }
            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
            }
        });
    });

    var AuthTimer;
    $("#btn_send_imsi_code").click(function(){

        $("#span_not_found").hide();
        $("#span_code_not_found").hide();


        var param = {user_id:$("#user_id").val(),
        code_type:$("input:radio[name='find-pw']:checked").val( ) };

        $.ajax({
            type: 'post',
            url :'send_imsi_code', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                console.log(result);
                if(result.result_code=="SUCCESS"){

                    $("#popup_find_pw_next_close").click();

                    var popName = $("#popup_find_pw_change");
                    $('html').css({
                        "overflow": "hidden"
                    });
                    popName.before("<div class='dimed'></div>");
                    popName.addClass("is-on");

                    AuthTimer = new $ComTimer();
                    AuthTimer.comSecond = 300; // 제한 시간 5분
                    AuthTimer.fnCallback = function(){
                        $("#timer").text("제한시간 만료");
                        $("#timer").addClass("is-alert");
                    }; // 제한 시간 만료 메세지
                    AuthTimer.timer =  setInterval(function(){AuthTimer.fnTimer()},1000);
                    AuthTimer.domId = document.getElementById("timer");


                }
                else {
                    alert(result.result_str);
                }
            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
            }
        });
    });


    $("#btn_code_confirm").click(function(){

        $("#span_code_not_found").hide();

        var param = {user_id:$("#user_id").val(),
            secret_code:$("#secret_code").val()
             };

        $.ajax({
            type: 'post',
            url :'confirm_code', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                console.log(result);
                if(result.result_code=="SUCCESS"){
                    $("#secret_code").attr("disabled", true);
                    $("#btn_code_confirm").attr("disabled", true);
                    $("#span_code_not_found").text("인증되었습니다");
                    $("#span_code_not_found").removeClass("is-alert");
                    $("#span_code_not_found").show();
                    $("#timer").removeClass("is-alert");
                    $("#timer").hide();
                    if(AuthTimer!=null)
                        AuthTimer.fnStop();

                    $("#password").attr("disabled", false);
                    $("#password_confirm").attr("disabled", false);
                    $("#btn_change_password").attr("disabled", false);



                }
                else {
                    alert(result.result_str);
                }
            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
            }
        });
    });

    $("#btn_change_password").click(function(){

        var passwd = $("#password").val();

        if(passwd<8){
            alert("패스워드는 8자 이상이어야 합니다.");
            return;
        }

        if($("#password").val()!=$("#password_confirm").val()){
            alert("패스워드가 동일한지 확인해 주세요");
            return;
        }


        var param = {user_id:$("#user_id").val(),
            user_pw:$("#password").val(),
            secret_code:$("#secret_code").val()
        };

        $.ajax({
            type: 'post',
            url :'change_password', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                console.log(result);
                if(result.result_code=="SUCCESS"){



                    $("#secret_code").val("");
                    $("#secret_code").attr("disabled", false);

                    $("#btn_code_confirm").attr("disabled", false);
                    $("#span_code_not_found").text("인증코드가 틀립니다.");
                    $("#span_code_not_found").addClass("is-alert");
                    $("#timer").removeClass("is-alert");
                    $("#timer").show();

                    $("#password").attr("disabled", true);
                    $("#password").val("");
                    $("#password_confirm").attr("disabled", true);
                    $("#password_confirm").val("");
                    $("#btn_change_password").attr("disabled", true);


                    $("#popup_find_pw_change").click();

                    var popName = $("#popup_find_pw_complete");
                    $('html').css({
                        "overflow": "hidden"
                    });
                    popName.before("<div class='dimed'></div>");
                    popName.addClass("is-on");


                }
                else {
                    alert(result.result_str);
                }
            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
            }
        });
    });

    // 타이머 구현_daldal
    function $ComTimer(){
        //prototype extend
    }

    $ComTimer.prototype = {
        comSecond : ""
        , fnCallback : function(){}
        , timer : ""
        , domId : ""
        , fnTimer : function(){
            var m = Math.floor(this.comSecond / 60) + "분 " + (this.comSecond % 60) + "초";	// 남은 시간 계산
            this.comSecond--;					// 1초씩 감소
            //console.log(m);
            this.domId.innerText = m;
            if (this.comSecond < 0) {			// 시간이 종료 되었으면..
                clearInterval(this.timer);		// 타이머 해제

                alert("인증시간이 초과하였습니다. 다시 인증해주시기 바랍니다.");



            }
        }
        ,fnStop : function(){
            clearInterval(this.timer);
        }
    }

    function CheckEmail(str)
    {
        var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
        if(!reg_email.test(str)) {
            return false;
        }
        else {
            return true;
        }
    }


</script>
    <!-- Initialize Swiper -->
</body>
</html>