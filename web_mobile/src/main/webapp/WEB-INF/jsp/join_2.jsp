<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/29
  Time: 12:21 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
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
        <div class="tb__logo"><img src="resources/assets/image/img_loginLogo@3x.png" alt="">
          <a href="login" class="btn-close"><img src="resources/assets/image/ico_close.png" alt="취소"></a>
        </div>

        <div class="tb__join">
          <div class="td__cell">
            <div class="join__board">
              <div class="join__title">회원가입</div>
              <div class="join__step">
                <div class="step__state step__state--through">1</div>
                <div class="step__state">2</div>
                <div class="step__state">3</div>
              </div>
            </div>

            <div class="join__field">
              <div class="join__range">
                <a href="join" class="join__range--type ">개인회원 등록</a>
                <a href="join_2" class="join__range--type is-active">기업/단체 회원 등록</a>
              </div>
              <div class="join__text">
                실증서비스 사업 참여시, 개인회원 및 기업/단체 모두 가능합니다.
                기업/단체 이름으로 사업 참여를 원하시는 분은 기업/단체회원으로 등록을 바랍니다.
              </div>
              <div class="join__agree">
                <div class="checkbox">
                  <input type="checkbox" id="join-1" name="logingroup">
                  <label for="join-1">전북 김제 스마트팜 혁신밸리 실증단지 (이하실증단지) 이용약관,
                    개인정보 수집 및 이용, 개인정보처리 위탁에 대한 사항에 모두 동의합니다.</label>
                </div>
              </div>
              <div class="join__agree">
                <div class="checkbox">
                  <input type="checkbox" id="join-2" name="logingroup">
                  <label for="join-2">실증단지 이용약관 동의(필수)</label>
                </div>
                <div class="join__terms">제1장 총 칙
                  제 1조 (목적)
                  본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은XXXXX XXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트
                </div>
              </div>
              <div class="join__agree">
                <div class="checkbox">
                  <input type="checkbox" id="join-3" name="logingroup">
                  <label for="join-3">실증단지 이용약관 동의(필수)</label>
                </div>
                <div class="join__terms">제1장 총 칙
                  제 1조 (목적)
                  본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은XXXXX XXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트
                </div>
              </div>
              <div class="join__agree">
                <div class="checkbox">
                  <input type="checkbox" id="join-4" name="logingroup">
                  <label for="join-4">실증단지 이용약관 동의(필수)</label>
                </div>
                <div class="join__terms">제1장 총 칙
                  제 1조 (목적)
                  본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은XXXXX XXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트스트본 약관은 XXXXXXXXXX텍스트본 약관은 XXXXXXXXXX텍스트
                </div>
              </div>

              <div class="join__btn">
                <a href="login" class="btn light ">취소</a>
                <a href="join_group" class="btn submit ">다음</a>

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
</body>
</html>