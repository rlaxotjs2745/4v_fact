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
    <link rel="shortcut icon" href="resources/assets/image/favicon_16.ico">
    <link rel="icon" href="resources/assets/image/favicon_16.png">
    <link rel="apple-touch-icon-precomposed" href="resources/assets/image/favicon_152.png">
    <link rel="stylesheet" type="text/css" href="resources/assets/css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="resources/assets/css/style.css">
</head>
<body>
<div class="wrapper" id="wrapper">
    <header class="header_app">
        <a href="#none" class="close_window" onclick="javascript:window.close();"><img src="resources/assets/image/ico_close.svg" alt=""></a>
        <h1><a href="main.html"><img src="resources/assets/image/h1_logo_gimje.png" alt="스마트팜 실증센터"></a></h1>
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
            <div class="step is-passed">
                <em>4.</em>
                <span>개인정보 수집 동의서 작성</span>
            </div>
            <div class="step is-active">
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
                <h3>기타 서류 등록</h3>
                <div class="app__etc">
                    <p class="etc__title">안내</p>
                    <ul>
                        <li>- 기타 서류는 해당자에 한하거나, 신청자의 필요에 따라 등록할 수 있습니다.</li>
                        <li>- 사업 공고를 확인하셔서 해당되는 서류는 첨부해 주십시오.</li>
                        <li>- 첨부 파일의 항목이 없는 경우는 “기타” 항목으로 올려주십시오.</li>
                        <li>- 기타 항목에 첨부할 파일이 여러 파일인 경우는 ZIP파일로 올려주십시오.</li>
                        <li>- 모든 파일은 PDF로 등록해 주십시오.</li>
                    </ul>
                </div>

                <div class="app__fileupload">
                    <div class="fileupload__title">사업자등록증 사본 (해당자에 한함)</div>
                    <input type="file" class="fileupload">
                </div>
                <div class="app__fileupload">
                    <div class="fileupload__title">등기부등본 사본 (해당자에 한함, 원본은 차후 요청시,제출해 주십시오.)</div>
                    <input type="file" class="fileupload">
                </div>
                <div class="app__fileupload">
                    <div class="fileupload__title">법인인감증명서 (해당자에 한함, 원본은 차후 요청시,제출해 주십시오.)</div>
                    <input type="file" class="fileupload">
                </div>
                <div class="app__fileupload">
                    <div class="fileupload__title">4대보험 완납증명서 (해당자에 한함, 원본은 차후 요청시,제출해 주십시오.)</div>
                    <input type="file" class="fileupload">
                </div>
                <div class="app__fileupload">
                    <div class="fileupload__title">최근 2년간 재무제표 또는 회계감사 보고서 (해당자에 한함, 원본은 차후 요청시,제출해 주십시오.)</div>
                    <input type="file" class="fileupload">
                </div>
                <div class="app__fileupload">
                    <div class="fileupload__title">기타 (가점서류 및 기업역량을 보여줄 수 있는 자료, 자유 양식)</div>
                    <input type="file" class="fileupload">
                </div>

            </div>
        </div>
    </div>
    <div class="footer_app">
        <div class="footer__btn">
            <a href="#" class="btn dark btn-lg fl-left">임시저장</a>
            <a href="app_step4.html" class="btn info btn-lg ">이전</a>
            <a href="app_step6.html" class="btn submit btn-lg ">다음</a>
        </div>
    </div>
</div>

<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>

</body>
</html>