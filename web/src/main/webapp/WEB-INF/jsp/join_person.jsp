<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/29
  Time: 10:23 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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

                <div class="tb__logo"><img src="resources/assets/image/img_loginLogo.png" alt="SMART FARM POTAL"></div>
                <div class="tb__join">
                    <div class="td__cell">
                        <div class="join__board">
                            <div class="join__title">회원가입</div>
                            <div class="join__step">
                                <div class="step__state step__state--through"><img src="resources/assets/image/ico_check.png" alt=""></div>
                                <div class="step__state step__state--through">2</div>
                                <div class="step__state">3</div>
                            </div>
                        </div>
                        <div class="join__field">
                            <div class="table__type">
                                <table class="table__type--my">
                                    <colgroup>
                                        <col style="width:27%;">
                                        <col style="width:73%;">
                                    </colgroup>
                                    <tbody>
                                    <tr>
                                        <th class="th__left">이름<span class="text__essential">*</span></th>
                                        <td class="td__modify"><input id="user_name" name ="user_name" type="text"></td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">아이디<span class="text__essential">*</span></th>
                                        <td class="td__modify"><input id = "user_id" name="user_id" type="text" style="width:230px;" placeholder="abcde@xxxxxxx.co.kr"><span class="text__dash"><button id="id_check" href="#" class="btn modify btn-lg">중복확인</button></span>
                                            <span id="text_guide_id" class="text--guide"></span></td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">비밀번호<span class="text__essential">*</span></th>
                                        <td class="td__modify"><input id="user_pw" name = "user_pw" type="password"> <span class="text--guide is-alert" style="display: none">비밀번호 규칙에 맞지 않습니다. 다시 입력해 주세요.</span>
                                            <div class="text__message">
                                                <ul>
                                                    <li>비밀번호는 8~15 자 입력 가능합니다.</li>
                                                    <li>영문소문자 / 숫자 / 특수문자 필수 혼합 입력</li>
                                                    <li>비밀번호는 동일한 문자열을 3 회 이상 반복할 수 없습니다.</li>
                                                    <li>비밀번호는 연속된 문자열을 3 회 이상 사용할 수 없습니다.</li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">비밀번호 확인<span class="text__essential">*</span></th>
                                        <td class="td__modify"><input id="user_pw_confirm" type="password" placeholder="사용자 비밀번호 입력"></td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">주소</th>
                                        <td class="td__modify"><input id="zip_code" name = "zip_code" type="text" placeholder="우편번호" style="width:180px;"> <span class="text__zipcode"><button id="juso_search" class="btn modify btn-lg">주소검색</button></span>
                                            <input id="juso_find" type="text" placeholder="주소">
                                            <input id="juso_detail" type="text" placeholder="나머지 주소">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">휴대전화번호<span class="text__essential">*</span></th>
                                        <td class="td__modify"><input id="mphone_num1" type="tel" class="tel" value="010" style="width:80px;"><span class="text__dash">-</span><input id="mphone_num2" type="tel" class="tel" style="width:80px;"><span class="text__dash">-</span><input id="mphone_num3" type="tel" class="tel" style="width:80px;"></td>
                                    </tr>
<%--                                    <tr>
                                        <th class="th__left">집전화번호</th>
                                        <td class="td__modify"><input type="tel" class="" ></td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">회사전화번호</th>
                                        <td class="td__modify"><input type="tel" class="" ></td>
                                    </tr>--%>
                                    <tr>
                                        <th class="th__left">소속</th>
                                        <td class="td__modify"><input id = "corp_sel_name" type="text" class="" placeholder="소속없음" style="width:250px;"><span class="text__dash"><input id = "idx_corp_info" type="hidden"/><a href="#popup_company" class="btn modify btn-lg  js-modal-mini">찾기</a></span><span class="text--guide">실증센터에 등록된 기업/단체만 검색이 됩니다.</span></td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">정보수신동의<span class="text__essential">*</span></th>
                                        <td class="td__register">전북 김제 스마트팜 실증밸리 실증단지의 정보를<br>
                                            <div class="radio radio--inline">
                                                <input type="radio" id="ad-1" name="ad-range" value="1" checked>
                                                <label for="ad-1">네에 받습니다.</label>
                                            </div>
                                            <div class="radio radio--inline">
                                                <input type="radio" id="ad-2" name="ad-range" value="0">
                                                <label for="ad-2">아니오 받지 않습니다.</label>
                                            </div></td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">매체</th>
                                        <td class="td__register">
                                            <div class="checkbox checkbox--inline">
                                                <input type="checkbox" id="type-1" name="type">
                                                <label for="type-1">이메일</label>
                                            </div>
                                            <div class="checkbox checkbox--inline">
                                                <input type="checkbox" id="type-2" name="type">
                                                <label for="type-2">SMS</label>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="join__btn">
                                <a href="join" class="btn light ">뒤로</a>
                                <button id="join_confirm" class="btn submit ">가입하기</button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="popup_company" class="pop__mini ">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">기업 검색</h5>
                    <div class="popup__search">
                        <input id="corp_name" type="text" class="" placeholder="기업명을 입력하세요." style="width:365px;"><span class="text__dash"><button id="find_corp" class="btn modify btn-lg  js-modal-detail">찾기</button></span>
                        <br>
                        <span class="popup--guide">실증센터에 등록된 기업/단체만 검색이 됩니다.</span>

                        <!--검색후-->
                        <div id="corp_search_result">
                        </div>
                    </div>
                </div>
                <div class="popup__btn">
                    <a href="#" class="btn light btn-lg  js-btn-close">취소</a>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>


<!-- Initialize Swiper -->
<script>

    $(document).ready(function(){
        $(".search__none").hide();
        $(".search__find").hide();
    });
    $("#id_check").click(function(){
        $("#text_guide_id").removeClass("is-alert");
        var user_id = $("#user_id").val();
        var param = {"user_id":user_id};

        if(!CheckEmail(user_id)){
            alert("아이디는 이메일형식입니다");
            return;
        }

        console.log(param);
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
                    $("#text_guide_id").html(result.result_str);
                }
                else {
                    $("#text_guide_id").html(result.result_str);
                    $("#text_guide_id").addClass("is-alert");
                }
            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
            }
        });
    });
    $("#find_corp").click(function(){
        $("#corp_search_result").load('search_corp_list',{ "corp_name": $("#corp_name").val() }).trigger("create");
    });

    $("#join_confirm").click(function(){

        var user_id = $("#user_id").val();
        var user_pw = $("#user_pw").val();

        if(!CheckEmail(user_id)){
            alert("아이디는 이메일형식이어야 합니다.");
            return;
        }
        if(user_pw<8){
            alert("비밀번호는 8자 이상이어야합니다.");
            return;
        }

        var param = {
            "user_id":user_id,
            "user_pw":user_pw,
            "user_name":$("#user_name").val(),
            "addr":"("+ $("#zip_code").val()+") "+$("#juso_find").val() +" "+$("#juso_detail").val(),
            "mphone_num":$("#mphone_num1").val()+"-"+$("#mphone_num2").val()+"-"+$("#mphone_num3").val(),
            "email":$("#user_id").val(),
            "idx_corp_info":$("#idx_corp_info").val()

        };
        console.log(JSON.stringify(param));

        $.ajax({
            type: 'post',
            url :'join_confirm', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                if(result.result_code=="SUCCESS"){
                    location.href='join_welcome'
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

    var new_popup;
    $("#juso_search,#zip_code,#juso_find").click(function(){
        var cw=screen.availWidth;     //화면 넓이
        var ch=screen.availHeight;    //화면 높이
        var sw=640;    //띄울 창의 넓이
        var sh=480;    //띄울 창의 높이
        var ml=(cw-sw)/2;        //가운데 띄우기위한 창의 x위치
        var mt=(ch-sh)/2;         //가운데 띄우기위한 창의 y위치

        new_popup = window.open("juso_search?juso_type=join", '주소검색','width='+sw+',height='+sh+',top='+mt+',left='+ml+', resizable=no');
    });
    /**
     * 주소검색 결과 처리
     */
    function fn_setJuso(data) {
        //alert(data["type"]);
        $("#juso_find").val(data["roadFullAddr"]);
        $("#zip_code").val(data["zipNo"]);
        new_popup.close();
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

</body>
</html>
