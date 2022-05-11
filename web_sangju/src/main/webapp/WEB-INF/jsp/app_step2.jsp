<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/12/14
  Time: 11:18 오전
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
            <div class="step is-active">
                <em>2.</em>
                <span>이용신청서 작성</span>
            </div>
            <div class="step ">
                <em>3.</em>
                <span>실증계획서 작성</span>
            </div>
            <div class="step ">
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
                <h3>이용 신청서</h3>

                <div class="table__type no--border">
                    <table class="table__type--app fl-right" style="width: 50%;">
                        <colgroup>
                            <col style="width:30%">
                            <col style="width:70%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th class="th__left">접수번호</th>
                            <td class="td__left"></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:15%">
                            <col style="width:20%">
                            <col style="width:15%">
                            <col style="width:15%">
                            <col style="width:20%">
                            <col style="width:15%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th class="th__left">기업명</th>
                            <td class="td__left" colspan="2"><input type="text"></td>
                            <th class="th__left">설립일</th>
                            <td class="td__left" colspan="2"><input type="text"></td>
                        </tr>
                        <tr>
                            <th class="th__left">사업자등록번호</th>
                            <td class="td__left" colspan="2"><input type="text"></td>
                            <th class="th__left">법인등록번호</th>
                            <td class="td__left" colspan="2"><input type="text"></td>
                        </tr>
                        <tr>
                            <th class="th__left">소재지 본사</th>
                            <td class="td__left" colspan="5">
                                <a href="#" class="btn modify btn-lg">찾기</a>
                                <input type="text" style="width: calc(100% - 70px);">
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">소재지 연구소</th>
                            <td class="td__left" colspan="5">
                                <a href="#" class="btn modify btn-lg">찾기</a>
                                <input type="text" style="width: calc(100% - 70px);">
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">전년도매출액</th>
                            <td class="td__left"><div class="input--group"><input type="text" placeholder="" style="width:180px; padding-right:60px;" class="user__input"><span class="user__text">백만원</span></div></td>
                            <th class="th__left">자기자본비율</th>
                            <td class="td__left"><div class="input--group"><input type="text" placeholder="" style="width:130px;" class="user__input"><span class="user__text">%</span></div></td>
                            <th class="th__left">상근인원</th>
                            <td class="td__left"><div class="input--group"><input type="text" placeholder="" style="width:130px;" class="user__input"><span class="user__text">명</span></div></td>
                        </tr>
                        <tr>
                            <th class="th__left" rowspan="2">업태, 종목</th>
                            <td class="th__left"><input type="text"></td>
                            <th class="th__left" rowspan="2">주 생산 품목</th>
                            <td class="th__left" rowspan="2" colspan="3">
                                <textarea name="" id="" cols="10" rows="4"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td class="th__left"><input type="text"></td>
                        </tr>
                        <tr>
                            <th class="th__left">개발예정품목(기술)</th>
                            <td class="th__left" colspan="5"><input type="text"></td>
                        </tr>
                        <tr>
                            <th class="th__left">이용신청시설</th>
                            <td class="td__left" colspan="5">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="facility-1" name="prevent">
                                    <label for="facility-1">온실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="facility-2" name="prevent">
                                    <label for="facility-2">R&amp;D연구실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="facility-3" name="prevent">
                                    <label for="facility-3">스타트업사무실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="facility-4" name="prevent">
                                    <label for="facility-4">기타</label> <input type="text" style="width:300px" placeholder="">
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:3%">
                            <col style="width:11.5%">
                            <col style="width:28.5%">
                            <col style="width:13%">
                            <col style="width:44%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th class="" rowspan="7">실<br>증<br>계<br>획</th>
                            <th class="th__left">실증주체</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증주체-1" name="실증주체">
                                    <label for="실증주체-1">자율</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증주체-2" name="실증주체">
                                    <label for="실증주체-2">위탁</label>
                                </div>
                            </td>
                            <th class="th__left">실증시설</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증시설-1" name="실증시설">
                                    <label for="실증시설-1">단동비닐</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증시설-2" name="실증시설">
                                    <label for="실증시설-2">연동비닐</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증시설-3" name="실증시설">
                                    <label for="실증시설-3">육묘장</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증시설-4" name="실증시설">
                                    <label for="실증시설-4">노지</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증시설-5" name="실증시설">
                                    <label for="실증시설-5">단동유리</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증시설-6" name="실증시설">
                                    <label for="실증시설-6">연동비닐 연동유리</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증시설-7" name="실증시설">
                                    <label for="실증시설-7">식물공장</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">실증방법</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증방법-1" name="실증방법">
                                    <label for="실증방법-1">비교실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증방법-2" name="실증방법">
                                    <label for="실증방법-2">단순실증</label>
                                </div>
                            </td>
                            <th class="th__left">실증목적</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증목적-1" name="실증목적">
                                    <label for="실증목적-1">성능확인</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증목적-2" name="실증목적">
                                    <label for="실증목적-2">자체평가</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">실증횟수</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증횟수-1" name="실증횟수">
                                    <label for="실증횟수-1">1회성실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증횟수-2" name="실증횟수">
                                    <label for="실증횟수-2">반복실증</label>
                                </div>
                            </td>
                            <th class="th__left">실증작물</th>
                            <td class="td__left">
                                <input type="text" value="작물명:">
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">실증조건</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증조건-1" name="실증조건">
                                    <label for="실증조건-1">일반환경</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증조건-2" name="실증조건">
                                    <label for="실증조건-2">특수환경</label>
                                </div>
                            </td>
                            <th class="th__left">생육토양</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="생육토양-1" name="생육토양">
                                    <label for="생육토양-1">토경재배</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="생육토양-2" name="생육토양">
                                    <label for="생육토양-2">수경재배</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="생육토양-3" name="생육토양">
                                    <label for="생육토양-3">고형배지배</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">실증대상</th>
                            <td class="td__left" colspan="3">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증대상-1" name="실증대상">
                                    <label for="실증대상-1">시설자재</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증대상-2" name="실증대상">
                                    <label for="실증대상-2">ICT기자재</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증대상-3" name="실증대상">
                                    <label for="실증대상-3">작물보호제/비료</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증대상-4" name="실증대상">
                                    <label for="실증대상-4">스마트팜SW</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증대상-5" name="실증대상">
                                    <label for="실증대상-5">생육모델</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증대상-6" name="실증대상">
                                    <label for="실증대상-6">로봇</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">실증기간</th>
                            <td class="td__left" colspan="3">
                                시작 <input type="text" class="datepicker"><span class="text--guide">부터 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                완료 <input type="text" class="datepicker"> &nbsp; (00년 00개월)
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">상주계획</th>
                            <td class="td__left" colspan="3">
                                1.필요시설:
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="상주계획-1" name="상주계획">
                                    <label for="상주계획-1">R&amp;D연구실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="상주계획-2" name="상주계획">
                                    <label for="상주계획-2">스타트업사무실</label>
                                </div>
                                <br>
                                2.상주인력:
                                <input type="text" style="width:calc(100% - 80px)">
                            </td>
                        </tr>
                        </tbody>
                    </table>

                    <div class="table__type no--border">
                        <table class="table__type--app">
                            <colgroup>
                                <col style="width:3%">
                                <col style="width:11.5%">
                                <col style="width:28.5%">
                                <col style="width:13%">
                                <col style="width:44%">
                            </colgroup>
                            <tbody>
                            <tr>
                                <th class="" rowspan="3">대<br>표<br>자</th>
                                <th class="th__left">성명</th>
                                <td class="td__left">
                                    <input type="text">
                                </td>
                                <th class="th__left">주소</th>
                                <td class="td__left">
                                    <a href="#" class="btn modify btn-lg">찾기</a>
                                    <input type="text" style="width: calc(100% - 70px);">
                                </td>
                            </tr>
                            <tr>
                                <th class="th__left" rowspan="2">전화번호</th>
                                <td class="td__left">
                                    사무실 <input type="text" style="width: calc(100% - 47px);">
                                </td>
                                <th class="th__left">FAX</th>
                                <td class="td__left">
                                    <input type="text">
                                </td>
                            </tr>
                            <tr>
                                <td class="td__left">
                                    휴대폰 <input type="text" style="width: calc(100% - 47px);">
                                </td>
                                <th class="th__left">E-mail</th>
                                <td class="td__left">
                                    <input type="text">
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="table__type no--border">
                        <table class="table__type--app">
                            <colgroup>
                                <col style="width:3%">
                                <col style="width:11.5%">
                                <col style="width:28.5%">
                                <col style="width:13%">
                                <col style="width:44%">
                            </colgroup>
                            <tbody>
                            <tr>
                                <th class="" rowspan="3">담<br>당<br>자</th>
                                <th class="th__left">부서</th>
                                <td class="td__left">
                                    <input type="text">
                                </td>
                                <th class="th__left">회사전화번호</th>
                                <td class="td__left">
                                    <input type="text">
                                </td>
                            </tr>
                            <tr>
                                <th class="th__left">직위</th>
                                <td class="td__left">
                                    <input type="text">
                                </td>
                                <th class="th__left">휴대폰번호</th>
                                <td class="td__left">
                                    <input type="text">
                                </td>
                            </tr>
                            <tr>
                                <th class="th__left">성명</th>
                                <td class="td__left">
                                    <input type="text">
                                </td>
                                <th class="th__left">E-mail</th>
                                <td class="td__left">
                                    <input type="text">
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer_app">
        <div class="footer__btn">
            <a href="#" class="btn dark btn-lg fl-left">임시저장</a>
            <a href="app_step1.html" class="btn info btn-lg ">이전</a>
            <a href="app_step3.html" class="btn submit btn-lg ">다음</a>
        </div>
    </div>
</div>

<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>

</body>
</html>
