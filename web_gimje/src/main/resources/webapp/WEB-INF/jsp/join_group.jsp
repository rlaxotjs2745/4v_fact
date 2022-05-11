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
                            <div class="table__hat">기본 정보</div>
                            <div class="table__type">
                                <table class="table__type--my">
                                    <colgroup>
                                        <col style="width:30%">
                                        <col style="width:70%">
                                    </colgroup>
                                    <tbody>
                                    <tr>
                                        <th class="th__left">기업(단체)명<span class="text__essential">*</span></th>
                                        <td class="td__modify"><input type="text" placeholder="기업(단체)명을 입력"></td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">아이디<span class="text__essential">*</span></th>
                                        <td class="td__modify"><input type="text" placeholder="이메일 입력" style="width:210px;"><span class="text__dash"><a href="#" class="btn modify btn-lg">중복확인</a></span></td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">비밀번호<span class="text__essential">*</span></th>
                                        <td class="td__modify is-alert"><input type="password"> <span class="text--guide is-alert">비밀번호 규칙에 맞지 않습니다. 다시 입력해 주세요.</span>
                                            <div class="text__message">
                                                <ul>
                                                    <li>비밀번호는 10~15 자 입력 가능합니다.</li>
                                                    <li>영문소문자 / 숫자 / 특수문자 필수 혼합 입력</li>
                                                    <li>비밀번호는 동일한 문자열을 3 회 이상 반복할 수 없습니다.</li>
                                                    <li>비밀번호는 연속된 문자열을 3 회 이상 사용할 수 없습니다.</li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">비밀번호 확인<span class="text__essential">*</span></th>
                                        <td class="td__modify"><input type="password" placeholder="사용자 비밀번호 입력"></td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">사업자등록번호<span class="text__essential">*</span></th>
                                        <td class="td__modify"><input type="tel" style="width:80px;" placeholder="000"><span class="text__dash">-</span><input type="tel" style="width:80px;" placeholder="0000"><span class="text__dash">-</span><input type="tel" style="width:80px;" placeholder="000"></td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">대표자명<span class="text__essential">*</span></th>
                                        <td class="td__modify"><input type="text" placeholder="대표자명 입력"></td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">업태/종목<span class="text__essential">*</span></th>
                                        <td class="td__modify"><input type="text" placeholder="업태" style="width:48%"><span class="text__dash">/</span><input type="text" placeholder="종목" style="width:47%"></td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">주소<span class="text__essential">*</span></th>
                                        <td class="td__modify"><input type="text" placeholder="우편번호" style="width:180px;"> <span class="text__zipcode"><a href="#" class="btn modify btn-lg">주소검색</a></span>
                                            <input type="text" placeholder="상세주소">
                                            <input type="text" placeholder="나머지 주소">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">홈페이지</th>
                                        <td class="td__modify"><span class="text__lock">https://</span><input type="text" placeholder="홈페이지 주소 입력" style="width:calc(100% - 55px)"></td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">회사전화번호<span class="text__essential">*</span></th>
                                        <td class="td__modify"><input type="text" placeholder="000-0000-0000"></td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">팩스번호</th>
                                        <td class="td__modify"><input type="text" placeholder="000-0000-0000"></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="table__hat">담당자 정보
                                <span class="hat--desc">
                  <div class="checkbox">
                    <input type="checkbox" id="group-1" name="logingroup">
                    <label for="group-1">대표자와 동일</label>
                  </div>
                </span>
                                <span class="hat--notice">담당자 정보 변경시, 정확한 정보를 입해 주십시오.  <br>실증서비스의 업무 연락은 담당자에게 연락을 드립니다.</span>
                            </div>
                            <div class="table__type">
                                <table class="table__type--my">
                                    <colgroup>
                                        <col style="width:30%">
                                        <col style="width:70%">
                                    </colgroup>
                                    <tbody>
                                    <tr>
                                        <th class="th__left">이름</th>
                                        <td class="td__modify"><input type="text" placeholder="기업(단체)명을 입력"></td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">이메일</th>
                                        <td class="td__modify"><input type="text" placeholder="이메일 입력"></td>
                                    </tr>
                                    <tr>
                                        <th class="th__left">휴대전화번호<span class="text__essential">*</span></th>
                                        <td class="td__modify"><input type="tel" style="width:80px;" placeholder="000"><span class="text__dash">-</span><input type="tel" style="width:80px;" placeholder="0000"><span class="text__dash">-</span><input type="tel" style="width:80px;" placeholder="000"></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="join__btn">
                                <a href="join_2" class="btn light ">뒤로</a>
                                <a href="join_welcome" class="btn submit ">가입하기</a>
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
                        <input type="text" class="" placeholder="기업명을 입력하세요." style="width:365px;"><span class="text__dash"><a href="#popup_company" class="btn modify btn-lg  js-modal-detail">찾기</a></span>
                        <br>
                        <span class="popup--guide">실증센터에 등록된 기업/단체만 검색이 됩니다.</span>

                        <!--검색후-->
                        <div class="search__none">
                            <strong>검색 결과가 없습니다.</strong>
                            <span>기업 회원으로 가입을 했으나, 심사가 완료되지 않을 수 있습니다.<br>
                  가입 통보를 받은 후 다시 확인<br>
                  해 주십시오.</span>
                        </div>

                        <!--검색후-->
                        <div class="search__none">
                            <strong>검색 결과</strong>
                            <div class="table__type">
                                <table class="table__type--my">
                                    <colgroup>
                                        <col style="width:35%;">
                                        <col style="width:30%;">
                                        <col style="width:35%;">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>기업명</th>
                                        <th>사업자 등록 번호</th>
                                        <th>대표자</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>꿈꾸는농장</td>
                                        <td>000-00-0000</td>
                                        <td class="td__modify">홍길동 <span class="text__dash"><a href="#" class="btn modify submit btn-lg">선택</a></span></td>
                                    </tr>
                                    <tr>
                                        <td>꿈꾸는농장</td>
                                        <td>000-00-0000</td>
                                        <td class="td__modify">홍길동 <span class="text__dash"><a href="#" class="btn modify submit btn-lg">선택</a></span></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
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
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
<!-- Initialize Swiper -->
</body>
</html>
