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

                <%--<div class="tb__logo"><img src="resources/assets/image/img_loginLogo.png" alt="SMART FARM POTAL"></div>--%>
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
                                <input name="pw" type="text" class="text" placeholder="비밀번호를 입력해주세요">
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
                    <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
                    <div class="popup__cnt">
                        <h5 class="popup__title">아이디 찾기</h5>
                        <div class="popup__tabs">
                            <a href="#person" class="popup__tab is-selected">개인회원</a>
                            <a href="#group" class="popup__tab">기업/단체 회원</a>
                        </div>
                        <div class="popup__tab--contents" id="person">
                            <p class="tab__text">실증단지 홈페이지의 아이디는 이메일을 아이디로 사용합니다.</p>
                            <strong class="tab__detail">본인 주민등록번호로 가입된 휴대전화로 인증합니다.</strong>
                            <div class="popup__btn">
                                <a href="#popup_find_id_result" class="btn submit btn-lg  js-modal-next">인증</a>
                            </div>
                        </div>
                        <div class="popup__tab--contents" id="group">
                            <p class="tab__text">실증단지 홈페이지의 아이디는 이메일을 아이디로 사용합니다.</p>
                            <strong class="tab__detail">기업/단체 회원 아이디는 기업/단체 고유번호를<br>
                                확인할 수 있는 증빙서류</strong><br>
                            (예: 사업자등록증)를 제출하시면 확인 후 안내해 드립니다.<br>
                            담당자 연락처 : 000-0000-0000, xxxx@xxxxxxxx.com
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
                        <h5 class="popup__title">아이디 찾기 결과</h5>
                        <p class="popup__text">XXXX님의 아이디는</p>
                        <strong class="popup__detail">XXXXX@XXXXXX.XXX</strong>입니다.
                    </div>
                    <div class="popup__btn">
                        <a href="#" class="btn submit btn-lg  js-btn-close">로그인 바로가기</a>
                    </div>
                </div>
            </div>

            <div id="popup_find_pw" class="pop__mini ">
                <div class="section">
                    <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
                    <div class="popup__cnt">
                        <h5 class="popup__title">비밀번호 찾기</h5>
                        <p class="popup__text">비밀번호를 찾고자 하는 아이디를 입력해 주세요.</p>
                        <input type="text" placeholder="아이디를 입력해주세요" style="width: 280px;">
                        <br>
                        <span class="popup__alert is-alert">아이디를 찾을 수 없습니다.</span>
                    </div>
                    <div class="popup__btn">
                        <a href="#popup_find_pw_next" class="btn submit btn-lg  js-modal-next">다음</a>
                    </div>
                </div>
            </div>


            <div id="popup_find_pw_next" class="pop__mini ">
                <div class="section">
                    <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
                    <div class="popup__cnt">
                        <h5 class="popup__title">비밀번호 찾기</h5>
                        <p class="popup__text">비밀번호를 찾을 방법을 선택하세요.</p>
                        <div class="radio radio--inline">
                            <input type="radio" id="find-1" name="find-pw">
                            <label for="find-1">회원정보에 등록한 휴대전화로 인증 (*1*-9***-5***)</label>
                        </div>
                        <div class="radio radio--inline">
                            <input type="radio" id="find-2" name="find-pw">
                            <label for="find-2">회원정보에 등록한 이메일로 인증 (j*****@m*****.com)</label>
                        </div>
                        <p class="popup__text">등록한 회원정보로 찾기 어려운 경우, 본인 확인 후 비밀번호 찾기</p>
                        <div class="radio radio--inline">
                            <input type="radio" id="find-3" name="find-pw">
                            <label for="find-3">본인 주민등록번호로 가입된 휴대전화로 인증</label>
                        </div>
                    </div>
                    <div class="popup__btn">
                        <a href="#popup_find_pw_change" class="btn submit btn-lg  js-modal-next">다음</a>
                    </div>
                </div>
            </div>

            <div id="popup_find_pw_change" class="pop__mini ">
                <div class="section">
                    <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
                    <div class="popup__cnt">
                        <h5 class="popup__title">비밀번호 찾기</h5>
                        <p class="popup__text">변경할 비밀번호를 입력해 주세요.</p>
                        <div class="popup__subject">신규 비밀번호</div>
                        <div class="popup__alert">
                            <input type="password" placeholder="비밀번호를 입력해 주세요." style="width:270px;">
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
                            <input type="password" placeholder="사용자 비밀번호 입력" style="width:270px;">
                        </div>
                    </div>
                    <div class="popup__btn">
                        <a href="#popup_find_pw_complete" class="btn submit btn-lg  js-modal-next">비밀번호 변경</a>
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
    <script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
    <script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
    <script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
    <script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
    <!-- Initialize Swiper -->
</body>
</html>