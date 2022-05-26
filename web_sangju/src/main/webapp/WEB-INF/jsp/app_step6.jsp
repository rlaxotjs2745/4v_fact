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
        <a href="/prv_application" class="close_window" onclick="javascript:window.close();"><img src="resources/assets/image/ico_close.svg" alt=""></a>
        <h1><a href="/"><img src="resources/assets/image/img-logo-s.png" alt="스마트팜 실증센터"></a></h1>
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
            <div class="step is-passed">
                <em>5.</em>
                <span>기타 서류등록</span>
            </div>
            <div class="step is-active">
                <em>6.</em>
                <span>신청서 확인 및 등록</span>
            </div>
        </div>
        <div class="app__business">
            <label for="select-business">지원사업 선택</label>
            <select name="business" id="select-business" disabled>
                <option value="">${demoBs.demo_subject}</option>
            </select>
        </div>
    </header>
    <div class="content_app" id="content_app">
        <!--//-->
        <div class="app__body">
            <div class="app__cnt">
                <h3>신청서 확인 및 등록</h3>
                <div class="app__etc">
                    <p class="etc__title">안내</p>
                    <ul>
                        <li>- 작성하신 “이용신청서, 실증계획서”를 충분히 확인해 주십시오.
                        <li>-  등록 전에 수정이 필요한 경우는 “이전”버튼을 선택하여 수정해 주십시오.</li>
                        <li>-  등록 후에 수정이 필요한 경우는 “마이 페이지 / 나의 사업”에서 마감 전까지 수정하실 수 있습니다.</li>
                        <li>-  신청서를 등록하는 사업의 마감일은 <span class="cl-red">XXXX년 XX월 XX일 XX시 XX분</span> 까지 입니다.</li>
                    </ul>
                </div>

                <div class="app__register">
                    <div class="register__title">
                        <p>이용신청서</p>
                        <a href="#popup_supply" class="btn dark js-modal-detail">확인</a>
                    </div>
                </div>
                <div class="app__register">
                    <div class="register__title">
                        <p>실증계획서</p>
                        <a href="#none" class="btn dark">확인</a>
                    </div>
                </div>
                <div class="app__register">
                    <div class="register__title">
                        <p>개인정보 수집·이용·제공에 관한 동의서</p>
                        <a href="#none" class="btn dark">확인</a>
                    </div>
                </div>
                <div class="app__register">
                    <div class="register__title">
                        <p>기타서류<br><br>
                            <span>XXXXXXXX.zip</span></p>
                        <a href="#none" class="btn dark">내려받기</a>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="footer_app">
        <div class="footer__btn">
            <!--<a href="#" class="btn dark btn-lg fl-left">임시저장</a>-->
            <a href="app_step5.html" class="btn info btn-lg ">이전</a>
            <a href="#none" class="btn submit btn-lg " onclick="javascript: window.close();  ">신청서등록</a>
        </div>
    </div>

    <div id="popup_supply" class="pop__detail popup__a4">
        <div class="section">
            <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
            <a class="btn btn-print" onclick="javascript:print(); return false;" href="#none"><img src="resources/assets/image/ico_print.png" alt="인쇄하기"></a>
            <div class="popup__cnt">
                <h5 class="popup__title">신청서 확인</h5>

                <div class="popup__preview">
                    <select name="business2" id="select-business2">
                        <option value="">사업공고명</option>
                        <option value="">사업공고명</option>
                        <option value="">사업공고명</option>
                        <option value="">사업공고명</option>
                        <option value="">사업공고명</option>
                        <option value="">사업공고명</option>
                    </select>
                </div>
                <div class="popup__scroll--area" style="height:600px">

                    <div style="height:1800px;">pdf 미리보기</div>
                </div>
            </div>
            <div class="popup__btn">
                <a href="#" class="btn dark btn-lg  js-btn-close">수정</a>
                <a href="#" class="btn submit btn-lg">확인</a>
            </div>

            <!--<div class="form__btn">
              <a href="#none" class="btn-line js-btn-close">이벤트 참여하기</a>
            </div>-->

        </div>
    </div>
</div>

<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>

</body>
</html>