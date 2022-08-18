<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <meta name="viewport"
          content="width=device-width,initial-scale=1.0, minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
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
                                <div class="step__state step__state--through"><img
                                        src="resources/assets/image/ico_check.png" alt=""></div>
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
                                        <td class="td__modify">
                                            <input id="user_name" name="user_name" type="text"
                                                   placeholder="이름을 입력해 주세요." maxlength="30">
                                            <span id="text_guide_name" class="text--guide"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">아이디<span class="text__essential">*</span></th>
                                        <td class="td__modify">
                                            <input id="user_id" name="user_id" type="text"
                                                                      style="width:100px;" placeholder="최대 30자"
                                                                      maxlength="30">
                                            @
                                            <input type="text" id="user_id2"
                                                   class="form-control form-control-sm d-inline-block align-middle mr-1"
                                                   value="" style="width: 100px" name="" placeholder="최대 30자"
                                                   maxlength="30">
                                            <select id="id_select_box"
                                                    class="form-control form-control-sm d-inline-block align-middle mr-1"
                                                    style="width: 100px">
                                                <option value="" id="select_init" selected disabled>선택</option>
                                                <option value="naver.com">naver.com</option>
                                                <option value="gmail.com">gmail.com</option>
                                                <option value="hanmail.net">hanmail.net</option>
                                                <option value="daum.net">daum.net</option>
                                                <option value="nate.com">nate.com</option>
                                                <option value="0">직접입력</option>
                                            </select>
                                            <button class="btn btn-default" id="drop_down_btn"
                                                    style="margin: 0px; padding: 0px">
                                                <img src="resources/assets/image/ico_paging.png">
                                            </button>
                                            <span class="text__dash">
                                                <button id="id_check" href="#" class="btn modify btn-lg">중복확인</button>
                                            </span>
                                            <span id="text_guide_id" class="text--guide"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">비밀번호<span class="text__essential">*</span></th>
                                        <td class="td__modify">
                                            <input id="user_pw" name="user_pw" type="password"
                                                   placeholder="비밀번호를 입력해주세요">
                                            <span class="text--guide is-alert" id="text_guide_pw"></span>
                                            <div class="text__message">
                                                <ul>
                                                    <li>비밀번호는 8~15 자 입력 가능합니다.</li>
                                                    <li>영문소문자 / 숫자 / 특수문자 필수 혼합 입력</li>
                                                    <li>비밀번호는 동일한 문자열을 3 회 이상 반복할 수 없습니다.</li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">비밀번호 확인<span class="text__essential">*</span></th>
                                        <td class="td__modify">
                                            <input id="user_pw_confirm" type="password"
                                                   placeholder="비밀번호를 한 번 더 입력해주세요" maxlength="128">
                                            <span id="text_guide_pwcf" class="text--guide"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">주소</th>
                                        <td class="td__modify">
                                            <input id="zip_code" name="zip_code" type="text"
                                                                      placeholder="우편번호" style="width:180px;">
                                            <span class="text__zipcode">
                                                <button id="juso_search" class="btn modify btn-lg">주소검색</button>
                                            </span>
                                            <input id="juso_find" type="text" placeholder="주소">
                                            <input id="juso_detail" type="text" placeholder="나머지 주소">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">휴대전화번호<span class="text__essential">*</span></th>
                                        <td class="td__modify">
                                            <input id="mphone_num1" type="tel" class="tel" value="010" maxlength="3"
                                                   style="width:80px;">
                                            <span class="text__dash">-</span>
                                            <input id="mphone_num2" type="tel" class="tel" maxlength="4"
                                                   style="width:80px;">
                                            <span class="text__dash">-</span>
                                            <input id="mphone_num3" type="tel" class="tel" maxlength="4"
                                                   style="width:80px;">
                                            <span class="text--guide is-alert" id="text_guide_mp"></span>
                                        </td>
                                    </tr>
                                    <%--                                    <tr>
                                                                            <th class="th__left">집전화번호</th>
                                                                            <td class="td__modify"><input type="tel" class="" ></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th class="th__left">회사전화번호</th>
                                                                            <td class="td__modify"><input type="tel" class="" ></td>
                                                                        </tr>--%>

                                    <%--                                    <tr>--%>
                                    <%--                                        <th class="th__left">소속</th>--%>
                                    <%--                                        <td class="td__modify">--%>
                                    <%--                                            <select id="corp_sel_name" style="width:250px;">--%>
                                    <%--                                                <option value="0" selected>소속없음</option>--%>
                                    <%--                                                <c:forEach items="${corps}" var="corp" varStatus="status">--%>
                                    <%--                                                    <option value="${corp.idx_corp_info}">${corp.corp_name_kor} (${corp.corp_addr} ${corp.corp_addr2})</option>--%>
                                    <%--                                                </c:forEach>--%>
                                    <%--                                            </select>--%>
                                    <%--                                            <span class="text--guide">실증센터에 등록된 기업/단체만 검색이 됩니다.</span>--%>
                                    <%--                                        </td>--%>
                                    <%--                                    </tr>--%>
                                    <tr>
                                        <th class="th__left">정보수신동의<span class="text__essential">*</span></th>
                                        <td class="td__register">전북 김제 스마트팜 실증밸리 실증단지의 정보를<br>
                                            <div class="radio radio--inline">
                                                <input type="radio" id="ad-1" name="ad-range" value="1" checked>
                                                <label for="ad-1">받고 싶습니다.</label>
                                            </div>
                                            <div class="radio radio--inline">
                                                <input type="radio" id="ad-2" name="ad-range" value="0">
                                                <label for="ad-2">받고 싶지 않습니다.</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">이벤트 및 광고</th>
                                        <td class="td__register">
                                            <div class="checkbox checkbox--inline">
                                                <input type="checkbox" id="type-1" name="type">
                                                <label for="type-1">이메일</label>
                                            </div>
                                            <div class="checkbox checkbox--inline">
                                                <input type="checkbox" id="type-2" name="type">
                                                <label for="type-2">SMS</label>
                                            </div>
                                            <span class="text--guide">체크하지 않아도 비밀번호 변경 등 개인정보 관리에 관련한 수신은 가능합니다.</span>
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
                        <input id="corp_name" type="text" class="" placeholder="기업명을 입력하세요." style="width:365px;"><span
                            class="text__dash"><button id="find_corp"
                                                       class="btn modify btn-lg  js-modal-detail">찾기</button></span>
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- Initialize Swiper -->
<script>
    if ('${profile}' == 'sangju-prod') {
        $('#login').css('background', 'url(resources/assets/image/img_bglogo.png) no-repeat 50% 50%');
    } else {
        $('#login').css('background', 'url(resources/assets/image/img_bglogo.jpg) no-repeat 50% 50%');
    }

    $("#zip_code, #juso_search, #juso_find").click(function () {
        var nowJuso = $(this).attr("id");
        new daum.Postcode({
            oncomplete: function (data) {
                $("#zip_code").val(data.zonecode);
                $("#juso_find").val(data.roadAddress + " " + data.buildingName);
                // console.log(data);
            }
        }).open();
    })

    var selectBool = 1;
    var confirmNameBool = 0;
    var confirmIdBool = 0;
    var confirmPwBool = 0;
    var confirmPhoneBool = 0;

    $('#user_name').change(function () {
        if (!CheckName($('#user_name').val())) {
            $('#text_guide_name').text("적절한 이름 형식이 아닙니다.(특수문자 등)");
            confirmNameBool = 0;
        } else {
            $('#text_guide_name').text("");
            confirmNameBool = 1;
        }
    })

    $('#user_pw').change(function () {
        if (!CheckPassword($('#user_pw').val())) {
            $('#text_guide_pw').text("적절한 비밀번호 형식이 아닙니다.");
            confirmPwBool = 0;
        } else {
            $('#text_guide_pw').text("사용 가능한 비밀번호입니다.");
            confirmPwBool = 1;
        }
    })

    $('#user_pw_confirm').change(function () {
        if ($('#user_pw').val() != $('#user_pw_confirm').val()) {
            $('#text_guide_pwcf').text("비밀번호가 일치하지 않습니다.");
            confirmPwBool = 0;
        } else {
            $('#text_guide_pwcf').text("");
            confirmPwBool = 1;
        }
    })

    $('#mphone_num1, #mphone_num2, #mphone_num3').change(function () {
        if (!CheckMphone($(this).val())) {
            $('#text_guide_mp').text("휴대폰번호는 숫자만 입력이 가능합니다.");
            confirmPhoneBool = 0;
        } else {
            $('#text_guide_mp').text("");
            confirmPhoneBool = 1;
        }
    })


    $(document).ready(function () {
        $(".search__none").hide();
        $(".search__find").hide();
        $('#user_id2').hide();
        $('#drop_down_btn').hide();
    });

    $("#id_select_box").change(function () {
        if ($('#id_select_box').val() == '0') {
            selectBool = 0;
            $('#user_id2').show();
            $('#drop_down_btn').show();
            $("#id_select_box").hide();
            $('#id_select_box').css('width', '1px');
            console.log(selectBool);
        } else {
            selectBool = 1;
            $('#user_id2').hide();
            $('#drop_down_btn').hide();
            $('#id_select_box').css('width', '100px');
            console.log(selectBool);
        }
    })

    $('#drop_down_btn').click(function () {
        selectBool = 1;
        $("#id_select_box").show();
        $("#id_select_box").trigger('click');
        $('#user_id2').hide();
        $('#drop_down_btn').hide();
        $('#id_select_box').css('width', '100px');
        $('#select_init').prop('selected', true);
    });

    $("#id_check").click(function () {
        confirmIdBool = 0;
        $("#text_guide_id").removeClass("is-alert");

        var user_id = '';
        if (selectBool) {
            if ($('#id_select_box').val() == '0') {
                return alert('아이디 도메인 주소를 선택해주세요.');
            }
            user_id = $("#user_id").val() + '@' + $('#id_select_box').val();
        } else {
            if ($('#user_id2').val() == '') {
                return alert('아이디 도메인 주소를 입력해주세요.');
            }
            user_id = $("#user_id").val() + '@' + $('#user_id2').val();
        }

        if (!CheckEmail(user_id)) {
            alert("적절한 이메일 형식이 아닙니다.\n(공백, 특수문자, 한글 등)");
            return;
        }

        var param = {"user_id": user_id};

        $.ajax({
            type: 'post',
            url: 'user_id_check', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
            dataType: 'json',//받는 데이터 타입
            success: function (result) {
                //작업이 성공적으로 발생했을 경우
                if (result.result_code == "SUCCESS") {
                    $("#text_guide_id").html(result.result_str);
                    confirmIdBool = 1;
                    $("#id_check").removeClass("modify");
                    $("#id_check").addClass("light");
                    $("#id_check").prop("disabled", true);
                } else {
                    $("#text_guide_id").html(result.result_str);
                    $("#text_guide_id").addClass("is-alert");
                }
            },
            error: function () {
                //에러가 났을 경우 실행시킬 코드
            }
        });
    });
    $("#find_corp").click(function () {
        $("#corp_search_result").load('search_corp_list', {"corp_name": $("#corp_name").val()}).trigger("create");
    });

    $("#join_confirm").click(function () {

        if (!confirmNameBool) return alert('적절한 이름 형식이 아닙니다.\n(특수문자 등)');
        if (!confirmIdBool) return alert('적절한 이메일 형식이 아닙니다.\n(공백, 특수문자, 한글 등)');
        if (!confirmPwBool) return alert('적절한 비밀번호 형식이 아닙니다.');
        if (!confirmPhoneBool) return alert('휴대폰번호는 숫자만 입력이 가능합니다.');


        var user_id = selectBool ? $("#user_id").val() + '@' + $('#id_select_box').val() : $("#user_id").val() + '@' + $('#user_id2').val();
        var user_pw = $("#user_pw").val();

        var param = {
            "user_id": user_id,
            "user_pw": user_pw,
            "user_name": $("#user_name").val(),
            "addr": "(" + $("#zip_code").val() + ") " + $("#juso_find").val() + " " + $("#juso_detail").val(),
            "mphone_num": $("#mphone_num1").val() + "-" + $("#mphone_num2").val() + "-" + $("#mphone_num3").val(),
            "email": $("#user_id").val(),
            "idx_corp_info": $("#idx_corp_info").val(),
            "is_service_agree": 1,
            "is_third_party_agree": 1,
            "auth_status": 0,
            "is_applicant": 0,
            "is_corporate_member": 0,
            "sign_in_type": 0,
            "is_sms_agree": $("#type-1").is(":checked") ? 1 : 0,
            "is_email_agree": $("#type-2").is(":checked") ? 1 : 0,
        };
        console.log(JSON.stringify(param));

        $.ajax({
            type: 'post',
            url: 'join_confirm', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
            dataType: 'json',//받는 데이터 타입
            success: function (result) {
                //작업이 성공적으로 발생했을 경우
                if (result.result_code == "SUCCESS") {
                    location.href = 'join_welcome'
                } else {
                    alert(result.result_str);
                }
            },
            error: function (err) {
                //에러가 났을 경우 실행시킬 코드
                alert('서버와 통신 중 에러가 발생했습니다.')
                console.log(err);
            }
        });
    });

    function CheckEmail(str) {
        var reg_email = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
        return reg_email.test(str);
    }

    function CheckName(str) {
        var reg_name = /^[가-힣]{2,7}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}|[a-zA-Z]{2,30}$/;
        return reg_name.test(str);
    }

    function CheckPassword(str) {
        var reg_pw = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
        return reg_pw.test(str);
    }

    function CheckMphone(str) {
        var reg_mp = /^[0-9]/;
        return reg_mp.test(str);
    }

</script>

</body>
</html>
