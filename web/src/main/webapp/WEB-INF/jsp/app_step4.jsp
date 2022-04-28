<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/12/14
  Time: 11:19 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko" class="html-popup">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SMART FARM</title>
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/assets/image/favicon_16.ico">
    <link rel="icon" href="<%=request.getContextPath()%>/static/assets/image/favicon_16.png">
    <link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/static/assets/image/favicon_152.png">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/assets/css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/assets/css/style.css">
</head>
<body>
<div class="wrapper" id="wrapper">
    <header class="header_app">
        <a href="/prv_application" class="close_window" onclick="javascript:window.close();"><img src="<%=request.getContextPath()%>/static/assets/image/ico_close.svg" alt=""></a>
        <h1><a href="/"><img src="<%=request.getContextPath()%>/static/assets/image/h1_logo_gimje.png" alt="스마트팜 실증센터"></a></h1>
        <h2>신청서 작성</h2>
        <div class="app__step">
            <div class="step is-passed">
                <em>1.</em>
                <span>지원사업 선택</span>
            </div>
            <div class="step is-passed">
                <em>2.</em>
                <span>이용신청서 작성</span>
            </div>
            <div class="step is-passed">
                <em>3.</em>
                <span>실증계획서 작성</span>
            </div>
            <div class="step is-active">
                <em>4.</em>
                <span>개인정보 수집 동의서 작성</span>
            </div>
            <div class="step ">
                <em>5.</em>
                <span>기타 서류등록</span>
            </div>
            <div class="step ">
                <em>6.</em>
                <span>신청서 확인 및 등록</span>
            </div>
        </div>
        <div class="app__business">
            <label for="select-business">지원사업 선택</label>
            <select name="business" id="select-business" disabled>
                <option value="${demoBs.demo_subject}"></option>
            </select>
        </div>
    </header>
    <div class="content_app" id="content_app">
        <!--//-->
        <div class="app__body">
            <div class="app__cnt">
                <h3>개인정보 수집·이용·제공에 관한 동의서</h3>
                <div class="app__agree">
                    <div class="checkbox">
                        <input type="checkbox" id="app-1" class="each_check" name="appgroup">
                        <label for="app-1">실증단지 이용약관 동의(필수)</label>
                    </div>
                    <div class="app__terms">제1장 총 칙
                        제 1조 (목적)
                        본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은XXXXX XXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트
                    </div>
                </div>
                <div class="app__agree">
                    <div class="checkbox">
                        <input type="checkbox" id="app-2" class="each_check" name="appgroup">
                        <label for="app-2">개인정보 수집 및 이용 동의(필수)</label>
                    </div>
                    <div class="app__terms">제1장 총 칙
                        제 1조 (목적)
                        본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은XXXXX XXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트
                    </div>
                </div>
                <div class="app__agree">
                    <div class="checkbox">
                        <input type="checkbox" id="app-3" class="each_check" name="appgroup">
                        <label for="app-3">개인정보처리 위탁에 관한 사항 동의(필수)</label>
                    </div>
                    <div class="app__terms">제1장 총 칙
                        제 1조 (목적)
                        본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은XXXXX XXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트
                    </div>
                </div>
                <div class="app__agree--all">
                    <div class="checkbox">
                        <input type="checkbox" id="app-4" name="appgroup">
                        <label for="app-4">전체동의</label>
                        <span class="cl-red">* “개인정보 수집·이용·제공에 관한 동의서”를 전체 동의하지 않을 경우는 신청서 등록을 하실 수 없습니다.</span>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="footer_app">
        <div class="footer__btn">
            <button id="btn_app_step3" class="btn info btn-lg fl-left">이전</button>
            <button id="btn_save" class="btn dark btn-lg">임시저장</button>
            <button id="btn_app_step5" class="btn submit btn-lg" disabled>다음</button>
        </div>
    </div>
</div>

<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/ui.common.js" type="text/javascript"></script>
<script>

    // 체크박스 전체 선택
    $(".app__agree").on("click", "#join-1", function () {
        $(this).parents(".app__agree").find('input').prop("checked", $(this).is(":checked"));
    });

    // 체크박스 개별 선택
    $(".app__agree").on("click", ".each_check", function() {
        var is_checked = true;

        $(".each_check").each(function(){
            is_checked = is_checked && $(this).is(":checked");
        });

        $("#app-4").prop("checked", is_checked);
    });



    $("#btn_app_step5").click(function(){
        var param  = {
            "idx_user":${userDemoBs.idx_user},
            "idx_demo_business":${userDemoBs.idx_demo_business}
        };
        goNextStep(param,'app_step5');
    });

    $("#btn_app_step3").click(function(){
        var param  = {
            "idx_user":${userDemoBs.idx_user},
            "idx_demo_business":${userDemoBs.idx_demo_business}
        };
        goNextStep(param,'app_step3');
    });

    function goNextStep(param,location){
        let f = document.createElement('form');

        let input_idx_user;
        input_idx_user = document.createElement('input');
        input_idx_user.setAttribute('type', 'hidden');
        input_idx_user.setAttribute('name', 'idx_user');
        input_idx_user.setAttribute('value', param.idx_user);

        f.appendChild(input_idx_user);

        let input_idx_demo_business;
        input_idx_demo_business = document.createElement('input');
        input_idx_demo_business.setAttribute('type', 'hidden');
        input_idx_demo_business.setAttribute('name', 'idx_demo_business');
        input_idx_demo_business.setAttribute('value', param.idx_demo_business);

        f.appendChild(input_idx_demo_business);


        f.setAttribute('method', 'post');
        f.setAttribute('action', location);
        document.body.appendChild(f);
        f.submit();
    }

</script>
</body>
</html>

