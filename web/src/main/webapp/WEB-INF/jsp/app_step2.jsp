<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/12/14
  Time: 11:18 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
        <c:if test="${profile == 'sangju-prod'}">
            <h1><a href="/"><img src="resources/assets/image/img-logo-s.png" alt="스마트팜 실증센터"></a></h1>
        </c:if>
        <c:if test="${profile == 'gimje-prod'}">
            <h1><a href="/"><img src="resources/assets/image/h1_logo_gimje.png" alt="스마트팜 실증센터"></a></h1>
        </c:if>
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
            <label for="select-business">지원사업 명</label>
            <select name="business" id="select-business" disabled>
                <option value="">${demoBs.demo_subject}</option>
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
                            <td class="td__left">${userDemoBs.user_demo_bs_app_code}</td>
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
                        <tr>
                            <th class="th__left">신청자</th>
                            <td class="td__left" colspan="2"><input type="text" value="${user.user_name}" disabled></td>

                            <th class="th__left">연락처 </th>
                            <td class="td__left" colspan="2"><input type="text" value="${user.mphone_num}" disabled></td>

                        </tr>
                            <th class="th__left">실증단지이용자</th>
                            <td class="td__left" colspan="5">
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type1" name="user_type" value="1" <c:if test="${userDemoBs.user_demo_bs_type eq 1}">checked</c:if>>
                                    <label for="user_type1">개인(기업설립예정 포함)</label>
                                </div>
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type2" name="user_type" value="2" <c:if test="${userDemoBs.user_demo_bs_type eq 0 or userDemoBs.user_demo_bs_type eq 2}">checked</c:if>>
                                    <label for="user_type2">일반기업</label>
                                </div>
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type3" name="user_type" value="4" <c:if test="${userDemoBs.user_demo_bs_type eq 4}">checked</c:if>>
                                    <label for="user_type3">농업진흥기관</label>
                                </div>
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type4" name="user_type" value="5" <c:if test="${userDemoBs.user_demo_bs_type eq 5}">checked</c:if>>
                                    <label for="user_type4">선도기관</label>
                                </div>
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type5" name="user_type" value="7" <c:if test="${userDemoBs.user_demo_bs_type eq 7}">checked</c:if>>
                                    <label for="user_type5">연구기관</label>
                                </div>
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type6" name="user_type" value="10" <c:if test="${userDemoBs.user_demo_bs_type eq 10}">checked</c:if>>
                                    <label for="user_type6">대학교</label>
                                </div>
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type7" name="user_type" value="99" <c:if test="${userDemoBs.user_demo_bs_type eq 99}">checked</c:if>>
                                    <label for="user_type7">기타단체</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">신청기업명</th>
                            <td class="td__left" colspan="2"><input id="corp_name" type="text" placeholder="사업자 등록증과 동일하게 입력" value="${userDemoBs.corp_name}"></td>
                            <th class="th__left">법인등록번호</th>
                            <td class="td__left" colspan="2"><input id="corp_reg_num" type="text" placeholder="ex)1234567-123456789" value="${userDemoBs.corp_reg_num}"></td>
                        </tr>
                        <tr>
                            <th class="th__left">사업자등록번호</th>
                            <td class="td__left" colspan="2"><input id="corp_num" type="text" placeholder="ex)123-12-1234567" value="${userDemoBs.corp_num}"></td>
                            <th class="th__left">설립일</th>
                            <td class="td__left" colspan="2"><input id="corp_birth" class="date_picker" type="text" placeholder="ex)2000.xx.xx" value="${userDemoBs.corp_birth}"></td>
                        </tr>
                        <tr>
                            <th class="th__left" rowspan="2">본사</th>
                            <td class="td__left" colspan="5">
                                <span>주소</span>
                                <button id="juso_corp_search" class="btn modify btn-lg">찾기</button>
                                <input id="corp_addr" type="text" style="width: calc(70% - 70px);" value="${userDemoBs.corp_addr}">
                                <input id="corp_addr2" type="text" style="width: 25%;margin-left:4px !important;margin-top: 0px!important;" value="${userDemoBs.corp_addr2}" placeholder="상세주소">
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">연락처 </th>
                            <td class="td__left"><input id="corp_phone" type="tel" value="${userDemoBs.corp_phone}" placeholder="'-'없이 숫자만"></td>
                            <td class="td__left">보유형태</td>
                            <td class="td__left" colspan="2">
                                <div class="radio radio--inline">
                                    <input type="radio" id="office_ower1" name="office_ower" value="0" <c:if test="${userDemoBs.is_office_ower eq 0}">checked</c:if>>
                                    <label for="office_ower1">자가</label>
                                </div>
                                <div class="radio radio--inline">
                                    <input type="radio" id="office_ower2" name="office_ower" value="1" <c:if test="${userDemoBs.is_office_ower eq 1}">checked</c:if>>
                                    <label for="office_ower2">임차</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left" rowspan="2">연구소</th>
                            <td class="td__left" colspan="5">
                                <span>주소</span>
                                <button id="juso_lab_search" class="btn modify btn-lg">찾기</button>
                                <input id="corp_rnd_addr" type="text" style="width: calc(70% - 70px);" value="${userDemoBs.corp_rnd_addr}">
                                <input id="corp_rnd_addr2" type="text" style="width: 25%;margin-left:4px !important;margin-top: 0px!important;" value="${userDemoBs.corp_rnd_addr2}" placeholder="상세주소">
                            </td>
                        </tr>

                        <tr>
                            <th class="th__left">연락처 </th>
                            <td class="td__left"><input id="lab_phone" type="tel" value="${userDemoBs.lab_phone}" placeholder="'-'없이 숫자만"></td>
                            <td class="td__left">연구소 보유형태</td>
                            <td class="td__left" colspan="2">
                                <div class="radio radio--inline">
                                    <input type="radio" id="lab_ower1" name="lab_ower" value="0" <c:if test="${userDemoBs.is_lab_ower eq 0}">checked</c:if>>
                                    <label for="lab_ower1">없음</label>
                                </div>
                                <div class="radio radio--inline">
                                    <input type="radio" id="lab_ower2" name="lab_ower" value="1" <c:if test="${userDemoBs.is_lab_ower eq 1}">checked</c:if>>
                                    <label for="lab_ower2">자가</label>
                                </div>
                                <div class="radio radio--inline">
                                    <input type="radio" id="lab_ower3" name="lab_ower" value="2" <c:if test="${userDemoBs.is_lab_ower eq 2}">checked</c:if>>
                                    <label for="lab_ower3">임차</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">대표 이메일</th>
                            <td class="td__left" colspan="2"><input id="email" type="text" placeholder="사업자 등록증과 동일하게 입력" value="${userDemoBs.corp_name}"></td>
                            <th class="th__left">홈페이지</th>
                            <td class="td__left" colspan="2"><input id="homepage" type="text" placeholder="ex)www.xxx.xxx" value="${userDemoBs.corp_reg_num}"></td>
                        </tr>
                        <tr>
                            <th class="th__left">인력현황</th>
                            <td class="td__left" colspan="5">
                                1.전체: <div class="input--group"><input id="man_total" type="text" placeholder="" style="width:100px;" class="user__input" value="${userDemoBs.man_total}"><span class="user__text">명</span></div>
                                (경영자:<div class="input--group"><input id="man_officer_count" type="text" placeholder="" style="width:100px;" class="user__input" value="${userDemoBs.man_officer_count}"><span class="user__text">명</span></div>, 연구/기술직:<div class="input--group"><input id="man_lab_count" type="text" placeholder="" style="width:100px;" class="user__input" value="${userDemoBs.man_lab_count}"><span class="user__text">명</span></div>, 기타:<div class="input--group"><input id="man_etc_count" type="text" placeholder="" style="width:100px;" class="user__input" value="${userDemoBs.man_etc_count}"><span class="user__text">명</span></div>)
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">자본금</th>
                            <td class="td__left"><div class="input--group"><input id="capital_amount" type="text" placeholder="" style="width:180px; padding-right:60px;" class="user__input" value="${userDemoBs.capital_amount}"><span class="user__text">백만원</span></div></td>
                            <th class="th__left">자기자본비율</th>
                            <td class="td__left"><div class="input--group"><input id="corp_er" type="text" placeholder="" style="width:130px;" class="user__input" value="${userDemoBs.corp_er}"><span class="user__text">%</span></div></td>
                            <th class="th__left">전년도 매출액</th>
                            <td class="td__left"><div class="input--group"><input id="corp_sales_amount" type="text" placeholder="" style="width:180px;padding-right:60px;" class="user__input" value="${userDemoBs.corp_sales_amount}"><span class="user__text">백만원</span></div></td>
                        </tr>
                        <tr>
                            <th class="th__left" rowspan="2">업태, 종목</th>
                            <td class="th__left"><input id="bs_type1" type="text" value="${userDemoBs.bs_type1}"></td>
                            <th class="th__left" rowspan="2">주 생산 품목</th>
                            <td class="th__left" rowspan="2" colspan="3">
                                <textarea name="main_product" id="main_product" cols="10" rows="4">${userDemoBs.main_product}</textarea>
                            </td>
                        </tr>
                        <tr>
                            <td class="th__left"><input id="bs_type2" type="text" value="${userDemoBs.bs_type2}"></td>
                        </tr>
                        <tr>
                            <th class="th__left">개발예정품목<br>(핵심기술)</th>
                            <td class="th__left" colspan="5"><input id="demobs_tech_plan" type="text" value="${userDemoBs.demobs_tech_plan}"></td>
                        </tr>
                        <tr>
                            <th class="th__left">이용신청시설</th>
                            <td class="td__left" colspan="5">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="req_facility1" name="req_facility" value="1">
                                    <label for="req_facility1">온실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="req_facility2" name="req_facility" value="2">
                                    <label for="req_facility2">R&amp;D연구실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="req_facility3" name="req_facility" value="4">
                                    <label for="req_facility3">스타트업사무실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="req_facility4" name="req_facility" value="512">
                                    <label for="req_facility4">기타</label> <input id="req_etc" type="text" style="width:300px" placeholder="" value="${userDemoBs.req_etc}">
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
                            <col style="width:10%">
                            <col style="width:33%">
                            <col style="width:10%">
                            <col style="width:44%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th class="" rowspan="7">실<br>증<br>계<br>획</th>
                            <th class="th__left">실증주체</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_type1" name="user_demo_type" value="1">
                                    <label for="user_demo_type1">자율</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_type2" name="user_demo_type" value="2">
                                    <label for="user_demo_type2">위탁</label>
                                </div>
                            </td>
                            <th class="th__left">실증시설</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_facility1" name="user_demo_facility" value="1">
                                    <label for="user_demo_facility1">단동비닐</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_facility2" name="user_demo_facility" value="2">
                                    <label for="user_demo_facility2">연동비닐</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_facility3" name="user_demo_facility" value="4">
                                    <label for="user_demo_facility3">육묘장</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_facility4" name="user_demo_facility" value="8">
                                    <label for="user_demo_facility4">노지</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_facility5" name="user_demo_facility" value="16">
                                    <label for="user_demo_facility5">단동유리</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_facility6" name="user_demo_facility" value="32">
                                    <label for="user_demo_facility6">연동유리</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_facility7" name="user_demo_facility" value="64">
                                    <label for="user_demo_facility7">식물공장</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">실증방법</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_way1" name="user_demo_way" value="1">
                                    <label for="user_demo_way1">비교실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_way2" name="user_demo_way" value="2">
                                    <label for="user_demo_way2">단순실증</label>
                                </div>
                            </td>
                            <th class="th__left">실증목적</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_goal1" name="user_demo_goal" value="1">
                                    <label for="user_demo_goal1">성능확인</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_goal2" name="user_demo_goal" value="2">
                                    <label for="user_demo_goal2">자체평가</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">실증횟수</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_repeat1" name="user_demo_repeat" value="1">
                                    <label for="user_demo_repeat1">1회성실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_repeat2" name="user_demo_repeat" value="2">
                                    <label for="user_demo_repeat2">반복실증</label>
                                </div>
                                <span>(반복횟수: <input id="user_demo_repeat_count" type="text" style="width:100px;" value="${userDemoBs.user_demo_repeat_count}"> 회)</span>
                            </td>
                            <th class="th__left">실증작물</th>

                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_is_crops1" name="user_demo_is_crops" value="1">
                                    <label for="user_demo_is_crops1">작물대상실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_is_crops2" name="user_demo_is_crops" value="2">
                                    <label for="user_demo_is_crops2">비작물대상실증</label>
                                </div>
                                <input id="user_demo_crops" type="text" value="${userDemoBs.user_demo_crops}">
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">실증조건</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_option1" name="user_demo_option" value="1">
                                    <label for="user_demo_option1">일반환경</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_option2" name="user_demo_option" value="2">
                                    <label for="user_demo_option2">특수환경</label>
                                </div>
                            </td>
                            <th class="th__left">생육토양</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="culture_soil1" name="culture_soil" value="1">
                                    <label for="culture_soil1">토경재배</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="culture_soil2" name="culture_soil" value="2">
                                    <label for="culture_soil2">수경재배</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="culture_soil3" name="culture_soil" value="4">
                                    <label for="culture_soil3">고형배지배</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">실증대상</th>
                            <td class="td__left" colspan="3">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="demo_type1" name="demo_type" value="1">
                                    <label for="demo_type1">시설자재</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="demo_type2" name="demo_type" value="2">
                                    <label for="demo_type2">ICT기자재</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="demo_type3" name="demo_type" value="4">
                                    <label for="demo_type3">작물보호제/비료</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="demo_type4" name="demo_type" value="8">
                                    <label for="demo_type4">스마트팜SW</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="demo_type5" name="demo_type" value="16">
                                    <label for="demo_type5">생육모델</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="demo_type6" name="demo_type" value="32">
                                    <label for="demo_type6">로봇</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">실증기간</th>
                            <td class="td__left" colspan="3">
                                <fmt:formatDate value="${userDemoBs.demo_start_date}" var="dstart_date" pattern="yyyy-MM-dd"/>
                                <fmt:formatDate value="${userDemoBs.demo_end_date}" var="dend_date" pattern="yyyy-MM-dd"/>
                                <input id="bs_demo_dur" type="text" class="date_range_picker" value="${dstart_date}~${dend_date}">
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">상주계획</th>
                            <td class="td__left" colspan="3">
                                1.필요시설:
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="resident_type1" name="resident_type" value="1">
                                    <label for="resident_type1">R&amp;D연구실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="resident_type2" name="resident_type" value="2">
                                    <label for="resident_type2">스타트업사무실</label>
                                </div>
                                <br>
                                2.상주인력:
                                <div class="input--group"><input id="resident_etc" type="text" placeholder="" style="width:130px;" class="user__input" value="${userDemoBs.resident_etc}"><span class="user__text">명</span></div>
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
                                        <input id="ceo_name" type="text"  value="${userDemoBs.ceo_name}">
                                    </td>
                                    <th class="th__left" rowspan="2">전화번호</th>
                                    <td class="td__left">
                                        사무실 <input id="ceo_pnumber" type="text" style="width: calc(100% - 47px);" value="${userDemoBs.ceo_pnumber}">
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">E-mail</th>
                                    <td class="td__left">
                                        <input id="ceo_email" type="text" value="${userDemoBs.ceo_email}">
                                    </td>
                                    <td class="td__left">
                                        휴대폰 <input id="ceo_mnumber" type="text" style="width: calc(100% - 47px);" value="${userDemoBs.ceo_mnumber}">
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">주소</th>
                                    <td colspan="3" class="td__left">
                                        <button id="juso_ceo_search" class="btn modify btn-lg">찾기</button>
                                        <input id="ceo_address" type="text" style="width: calc(70% - 70px);" value="${userDemoBs.ceo_address}">
                                        <input id="ceo_address2" type="text" style="width: 29%;margin-left:4px !important;margin-top: 0px!important;" value="${userDemoBs.ceo_address2}" placeholder="상세주소">
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
                                <th class="th__left">성명</th>
                                <td class="td__left">
                                    <input id="man_name" type="text" value="${userDemoBs.man_name}">
                                </td>


                                <th class="th__left">회사전화번호</th>
                                <td class="td__left">
                                    <input id="man_mnumber" type="text" value="${userDemoBs.man_mnumber}">
                                </td>
                            </tr>
                            <tr>
                                <th class="th__left">E-mail</th>
                                <td class="td__left">
                                    <input id="man_email" type="text" value="${userDemoBs.man_email}">
                                </td>


                                <th class="th__left">휴대폰번호</th>
                                <td class="td__left">
                                    <input id="man_pnumber" type="text" value="${userDemoBs.man_pnumber}">
                                </td>

                            </tr>
                            <tr>
                                <th class="th__left">부서</th>
                                <td class="td__left">
                                    <input id="man_dpart" type="text" value="${userDemoBs.man_dpart}">
                                </td>
                                <th class="th__left">직위</th>
                                <td class="td__left">
                                    <input id="man_role" type="text" value="${userDemoBs.man_role}">
                                </td>

                            </tr>
                            <tr>

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
            <button id="btn_app_step1" class="btn info btn-lg fl-left">이전</button>
            <button id="btn_save" class="btn dark btn-lg ">임시저장</button>
            <button id="btn_app_step3" class="btn submit btn-lg" disabled>다음</button>
        </div>
    </div>
</div>

<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<script>

    $("#juso_corp_search, #juso_lab_search, #juso_ceo_search, #corp_addr, #corp_rnd_addr, #ceo_address").click(function() {
        var nowJuso = $(this).attr("id");
        new daum.Postcode({
            oncomplete: function (data) {
                if(nowJuso == "juso_corp_search" || nowJuso == "corp_addr"){
                    $("#corp_addr").val(data.roadAddress + " " + data.buildingName);
                } else if(nowJuso == "juso_lab_search" || nowJuso == "corp_rnd_addr"){
                    $("#corp_rnd_addr").val(data.roadAddress + " " + data.buildingName);
                } else if(nowJuso == "juso_ceo_search" || nowJuso == "ceo_address"){
                    $("#ceo_address").val(data.roadAddress + " " + data.buildingName);
                }
                // console.log(data);
            }
        }).open();
    })

    $(function() {
        $('.date_range_picker').daterangepicker({
            "locale": {
                // "format": "YYYY.MM.DD.",
                // "separator": "~",
                "applyLabel": "확인",
                "cancelLabel": "취소",
                "fromLabel": "From",
                "toLabel": "To",
                "customRangeLabel": "Custom",
                "weekLabel": "W",
                "daysOfWeek": ["월", "화", "수", "목", "금", "토", "일"],
                "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                "firstDay": 1
            },
            autoUpdateInput: false,
        });

        $('.date_picker').daterangepicker({
            "locale": {
                // "format": "YY.MM.DD.",
                // "separator": "~",
                "applyLabel": "확인",
                "cancelLabel": "취소",
                "fromLabel": "From",
                "toLabel": "To",
                "customRangeLabel": "Custom",
                "weekLabel": "W",
                "daysOfWeek": ["월", "화", "수", "목", "금", "토", "일"],
                "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                "firstDay": 1
            },
            autoUpdateInput: false,
            "singleDatePicker": true,
            "setDate": ""

        });

        $('.date_range_picker').on('apply.daterangepicker', function(ev, picker) {
            $(this).val(picker.startDate.format('YYYY.MM.DD') + '~' + picker.endDate.format('YYYY.MM.DD'));
        });

        $('.date_picker').on('apply.daterangepicker', function(ev, picker) {
            $(this).val(picker.startDate.format('YYYY.MM.DD'));
        });

        $('.date_range_picker, .date_picker').on('cancel.daterangepicker', function(ev, picker) {
            $(this).val('');
        });
    })


    $( document ).ready(function() {
        let i=1;
        let req_facility = ${userDemoBs.req_facility};
        $('input:checkbox[name="req_facility"]').each(function() {
            $("#req_facility"+i).prop('checked', ($(this).val()&req_facility)>0?true:false);
            i++;
        });

        i=1;
        let user_demo_type = ${userDemoBs.user_demo_type};
        $('input:checkbox[name="user_demo_type"]').each(function() {
            $("#user_demo_type"+i).prop('checked', ($(this).val()&user_demo_type)>0?true:false);
            i++;
        });
        i=1;
        let user_demo_facility = ${userDemoBs.user_demo_facility};
        $('input:checkbox[name="user_demo_facility"]').each(function() {
            $("#user_demo_facility"+i).prop('checked', ($(this).val()&user_demo_facility)>0?true:false);
            i++;
        });
        i=1;
        let user_demo_way = ${userDemoBs.user_demo_way};
        $('input:checkbox[name="user_demo_way"]').each(function() {
            $("#user_demo_way"+i).prop('checked', ($(this).val()&user_demo_way)>0?true:false);
            i++;
        });
        i=1;
        let user_demo_repeat = ${userDemoBs.user_demo_repeat};
        $('input:checkbox[name="user_demo_repeat"]').each(function() {
            $("#user_demo_repeat"+i).prop('checked', ($(this).val()&user_demo_repeat)>0?true:false);
            i++;
        });
        i=1;
        let user_demo_goal = ${userDemoBs.user_demo_goal};
        $('input:checkbox[name="user_demo_goal"]').each(function() {
            $("#user_demo_goal"+i).prop('checked', ($(this).val()&user_demo_goal)>0?true:false);
            i++;
        });
        i=1;
        let user_demo_option = ${userDemoBs.user_demo_option};
        $('input:checkbox[name="user_demo_option"]').each(function() {
            $("#user_demo_option"+i).prop('checked', ($(this).val()&user_demo_option)>0?true:false);
            i++;
        });
        i=1;
        let culture_soil = ${userDemoBs.culture_soil};
        $('input:checkbox[name="culture_soil"]').each(function() {
            $("#culture_soil"+i).prop('checked', ($(this).val()&culture_soil)>0?true:false);
            i++;
        });
        i=1;
        let demo_type = ${userDemoBs.demo_type};
        $('input:checkbox[name="demo_type"]').each(function() {
            $("#demo_type"+i).prop('checked', ($(this).val()&demo_type)>0?true:false);
            i++;
        });
        i=1;
        let resident_type = ${userDemoBs.resident_type};
        $('input:checkbox[name="resident_type"]').each(function() {
            $("#resident_type"+i).prop('checked', ($(this).val()&resident_type)>0?true:false);
            i++;
        });
        i=1;
        let user_demo_is_crops = ${userDemoBs.user_demo_is_crops};
        $('input:checkbox[name="user_demo_is_crops"]').each(function() {
            $("#user_demo_is_crops"+i).prop('checked', ($(this).val()&user_demo_is_crops)>0?true:false);
            i++;
        });
    });

    $("#btn_app_step1").click(function(){
        if (!confirm("변경한 내용 저장여부를 확인해 주세요. 뒤로 이동하시겠습니까.")) {
            // 취소(아니오) 버튼 클릭 시 이벤트

        } else {
            location.href='app_step1';
            // 확인(예) 버튼 클릭 시 이벤트
        }
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


    $("#btn_save").click(function(){

        if (!confirm("저장하시겠습니까.")) {
            // 취소(아니오) 버튼 클릭 시 이벤트

        } else {
            // 확인(예) 버튼 클릭 시 이벤트
            save_temp();
            $('#btn_app_step3').attr('disabled', false);

        }


    });

    $("#select-business").change(function (){
        console.log($(this).val());
    });

    function save_temp(){
        let i=0;
        let req_facility = 0;
        $('input:checkbox[name="req_facility"]:checked').each(function() {
            req_facility|=$(this).val();
        });
        console.log(req_facility);

        let user_demo_type = 0;
        $('input:checkbox[name="user_demo_type"]:checked').each(function() {
            user_demo_type|=$(this).val();
        });
        console.log(user_demo_type);

        let user_demo_facility = 0;
        $('input:checkbox[name="user_demo_facility"]:checked').each(function() {
            user_demo_facility|=$(this).val();
        });
        console.log(user_demo_facility);

        let user_demo_way = 0;
        $('input:checkbox[name="user_demo_way"]:checked').each(function() {
            user_demo_way|=$(this).val();
        });
        console.log(user_demo_way);

        let user_demo_repeat = 0;
        $('input:checkbox[name="user_demo_repeat"]:checked').each(function() {
            user_demo_repeat|=$(this).val();
        });
        console.log(user_demo_repeat);

        let user_demo_goal = 0;
        $('input:checkbox[name="user_demo_goal"]:checked').each(function() {
            user_demo_goal|=$(this).val();
        });
        console.log(user_demo_goal);

        let user_demo_option = 0;
        $('input:checkbox[name="user_demo_option"]:checked').each(function() {
            user_demo_option|=$(this).val();
        });
        console.log(user_demo_option);

        let culture_soil = 0;
        $('input:checkbox[name="culture_soil"]:checked').each(function() {
            culture_soil|=$(this).val();
        });
        console.log(culture_soil);

        let demo_type = 0;
        $('input:checkbox[name="demo_type"]:checked').each(function() {
            demo_type|=$(this).val();
        });
        console.log(demo_type);

        let resident_type = 0;
        $('input:checkbox[name="resident_type"]:checked').each(function() {
            resident_type|=$(this).val();
        });

        let user_demo_is_crops = 0;
        $('input:checkbox[name="user_demo_is_crops"]:checked').each(function() {
            user_demo_is_crops|=$(this).val();
        });
        console.log(resident_type);


        let param = {
            idx_user_demo_bs:${userDemoBs.idx_user_demo_bs},//		number	32		0		◯	지원사업
            idx_demo_business:${userDemoBs.idx_demo_business},//		number	32		0		◯	지원사업
            idx_user:${userDemoBs.idx_user},
            idx_corp_info: ${userDemoBs.idx_corp_info},

            user_demo_bs_type:$('input[name="user_type"]:checked').val(), //		number	4		1			사업 진행 주체 타입	0:개인, 1:일반기업, 2:미등록기업(설립전), 3: 농업진흥기관, 4:선도기업, 5:외국연구기관, 6:특정연구기관, 7:정부출연연구기관, 8:스마트팜 관련 기업부설연구소 보유기업, 9: 대학교, 99:기타 단체

            corp_name:$('#corp_name').val(),//		varchar2	100					회사이름
            corp_birth: $('#corp_birth').val(),//		varchar2	20					회사 설립일
            corp_num: $('#corp_num').val(),//		varchar2	20					사업자등록번호
            corp_reg_num: $('#corp_reg_num').val(),//		varchar2	20					법인등록번호

            corp_addr: $('#corp_addr').val(),//		varchar2	200					본사 소재지
            corp_addr2: $('#corp_addr2').val(),//		varchar2	200					본사 소재지
            corp_phone: $('#corp_phone').val(),//		varchar2	200					본사 소재지
            is_office_ower:$('input[name="office_ower"]:checked').val(),

            corp_rnd_addr: $('#corp_rnd_addr').val(),//		varchar2	200					본사 소재지
            corp_rnd_addr2: $('#corp_rnd_addr2').val(),//		varchar2	200					본사 소재지
            lab_phone: $('#corp_phone').val(),//		varchar2	200					본사 소재지
            email: $('#email').val(),//	varchar2	320					대표 이메일
            homepage: $('#homepage').val(),//	varchar2	255					회사 홈페이지

            is_lab_ower:$('input[name="lab_ower"]:checked').val(),

            capital_amount: $('#capital_amount').val()*1,//		number	20					자본금
            corp_sales_amount: $('#corp_sales_amount').val()*1,//		number	10					매출액
            corp_er: $('#corp_er').val()*1,//	number	10					자기자본비율

            //employees_count: $('#employees_count').val()*1,//	number	10					직원수
            bs_type1: $('#bs_type1').val(),//	varchar2	20					업태 종목
            bs_type2: $('#bs_type2').val(),//	varchar2	20					업태 종목
            main_product: $('#main_product').val(),//	varchar2	200					주생산품목
            demobs_tech_plan: $('#demobs_tech_plan').val(),//	varchar2	100					개발예정품목

            req_facility:req_facility,//     이용 실증시설
            req_etc:$('#req_etc').val(),//	VARCHAR2	400					이용 실증시설 기타

            ceo_name: $('#ceo_name').val(),//	varchar2	100					대표자 이름
            ceo_mnumber: $('#ceo_mnumber').val(),//	varchar2	20					대표자 모바일번호
            ceo_pnumber: $('#ceo_pnumber').val(),//	varchar2	20					대표자 사무실 번호
            ceo_email: $('#ceo_email').val(),//	varchar2	400					대표자 이메일
            ceo_address: $('#ceo_address').val(),//	varchar2	1000					대표자 주소
            ceo_address2:$('#ceo_address2').val(),//	varchar2	1000					대표자 주소

            man_name: $('#man_name').val(),//	varchar2	100					담당자 이름
            man_mnumber: $('#man_mnumber').val(),//	varchar2	20					담당자 모바일 번호
            man_pnumber: $('#man_pnumber').val(),//	varchar2	20					담당자 사무실 번호
            man_email: $('#man_email').val(),//	varchar2	400					담당자 이메일
            man_dpart: $('#man_dpart').val(),//	varchar2	400					담당자 부서
            man_role: $('#man_role').val(),//	varchar2	400					담당자 직위

            user_demo_type: user_demo_type,//	number	4		0			실증 주체	0:자율, 1:위탁
            user_demo_facility: user_demo_facility,//	number	4		1			실증 시설	1:단동, 2:연동, 4:육묘장, 8:노지, 16:단동유리, 32:연동유리, 64:식물공장
            user_demo_way: user_demo_way,//	number	4		0			실증 방법	0: 단순, 1:비교
            user_demo_repeat: user_demo_repeat,//	number	4		0			실증횟수	0:반복 없음, 1:반복실증
            user_demo_repeat_count:$('#user_demo_repeat_count').val()*1,
            user_demo_goal: user_demo_goal,//	number	4		0			실증 목표	0::성능확인, 1:자체평가
            user_demo_option: user_demo_option,//	number	4		0			실증 조건	0: 일반환경, 1:특수환경
            user_demo_crops: $('#user_demo_crops').val(),//	varchar2	100					실증작물
            user_demo_is_crops:user_demo_is_crops,
            culture_soil: culture_soil,//	number	4		0			생육토양	0: 토경재배, 1:수경재배, 2:고형배지재배
            demo_type: demo_type,//	number	4		0			실증 대상	0:해당없음, 1:시설자재, 2:ict기자재, 4:작물보호제/비료, 8:스마트팜sw, 16:생육모델, 32:로봇, 512:기타
            demo_start_date: new Date($('#bs_demo_dur').val().split('~')[0]),
            demo_end_date: new Date($('#bs_demo_dur').val().split('~')[1]),		//	입주 종료 날짜
            resident_type: resident_type,//	number	4		0			상주 타입	0:해당없음, 1:r&d연구실, 2:스타트업사무실, 512:기타
            resident_etc: $('#resident_etc').val(),//	varchar2	100					이용 실증시설 기타	이용 신청시설 기타 내용
            staff_num: $('#staff_num').val()*1,//	number	10					상주인원

            man_total:$('#man_total').val(),//	number	4		0			총임직원 수
            man_officer_count:$('#man_officer_count').val(),//	number	4		0			사무직원 수
            man_lab_count:$('#man_lab_count').val(),//	number	4		0			연구직원 수
            man_etc_count:$('#man_etc_count').val()//	number	4		0			키타지원 수

        };

        console.log(param);

        $.ajax({
            type: 'post',
            url :'app_step2_save_temp', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                if(result.result_code=="SUCCESS"){
                    alert(result.result_str);

                }
                else {
                    alert(result.result_str);
                }
                //STATUS_001 :
            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
            }
        });
    }

</script>





</body>
</html>
