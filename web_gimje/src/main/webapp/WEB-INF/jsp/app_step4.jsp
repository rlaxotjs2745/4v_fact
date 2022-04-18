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
        <a href="#none" class="close_window" onclick="javascript:window.close();"><img src="<%=request.getContextPath()%>/static/assets/image/ico_close.svg" alt=""></a>
        <h1><a href="main.html"><img src="<%=request.getContextPath()%>/static/assets/image/h1_logo_gimje.png" alt="스마트팜 실증센터"></a></h1>
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
            <select name="business" id="select-business">
                <option value="">사업공고명</option>
                <option value="">사업공고명</option>
                <option value="">사업공고명</option>
                <option value="">사업공고명</option>
                <option value="">사업공고명</option>
                <option value="">사업공고명</option>
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
                        <input type="checkbox" id="app-1" name="appgroup">
                        <label for="app-1">실증단지 이용약관 동의(필수)</label>
                    </div>
                    <div class="app__terms">제1장 총 칙
                        제 1조 (목적)
                        본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은XXXXX XXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트
                    </div>
                </div>
                <div class="app__agree">
                    <div class="checkbox">
                        <input type="checkbox" id="app-2" name="appgroup">
                        <label for="app-2">개인정보 수집 및 이용 동의(필수)</label>
                    </div>
                    <div class="app__terms">제1장 총 칙
                        제 1조 (목적)
                        본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은XXXXX XXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트
                    </div>
                </div>
                <div class="app__agree">
                    <div class="checkbox">
                        <input type="checkbox" id="app-3" name="appgroup">
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
            <a href="#" class="btn dark btn-lg fl-left">임시저장</a>
            <a href="app_step3.html" class="btn info btn-lg ">이전</a>
            <a href="app_step5.html" class="btn submit btn-lg ">다음</a>
        </div>
    </div>
</div>

<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/ui.common.js" type="text/javascript"></script>

</body>
</html>

