<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/12/14
  Time: 11:18 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
            <div class="step is-active">
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
            <select name="business" id="select-business" disabled>
                <option value="">${demoBs.demo_subject}</option>
            </select>
        </div>
    </header>
    <div class="content_app" id="content_app">
        <!--//-->
        <div class="app__body">
            <div class="app__cnt">
                <h3>실증계획서</h3>

                <div class="table__agree"><strong>*유의사항</strong>
                    본 사업계획서의 내용은 실증단지이용자 선정 심의에 중요한 자료이므로 사실에 입각하여 정확히 기재해 주시기 바랍니다.(기재사항과 실제내용이 다를 경우에는 이용심사에 불이익을 받을 수 있습니다)
                    제출하신 자료는 반환되지 않으며 대외비로 관리됩니다.
                </div>
               <div class="table__signature">
                   <div class="app__fileupload">
                       <div class="fileupload__title">실증계획서 원본 업로드</div>
                       <input id="user_demobs_file" type="file" class="fileupload">
                       <span id="user_demobs_file_info" class="text-info"></span>
                   </div>
<%--                     이용신청인 : <input id="signature_name" type="text" value="홍길동" disabled style="width:200px;"><br>
                    <div class="checkbox checkbox--inline">
                        <input id="" type="checkbox" id="signature-1" name="signature">
                        <label for="signature-1">동의</label>
                    </div>
                    <p>서명 대체 안내<br>
                        본 포탈에서 작성 후, 등록한 실증계획서는 수기로 작성시 날인한 것과 동일한 효과가 있습니다.<br>
                        만약, 서명 대체에 동의하지 않는 경우는 사업공고의 담당자에게 문의 후 우편이나 이메일로 접수해 주십시오.
                    </p>
                    <span class="cl-red">위 안내에 동의시, 계획서 입력이 가능합니다.</span>--%>
                </div>

                <div class="table__caption">1.기업현황</div>
                <div class="cnt__title">일반현황</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:16%">
                            <col style="width:16%">
                            <col style="width:18%">
                            <col style="width:16%">
                            <col style="width:16%">
                            <col style="width:18%">
                        </colgroup>
                        <tbody>

                        <tr>
                            <th class="th__left">실증단지이용자</th>
                            <td class="td__left" colspan="5">
                        <c:choose>
                            <c:when test="${userDemoBs.user_demo_bs_type eq 1}">
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type1" name="user_type" value="1" checked>
                                    <label for="user_type1">개인(기업설립예정 포함)</label>
                                </div>
                            </c:when>
                            <c:when test="${userDemoBs.user_demo_bs_type eq 2}">
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type2" name="user_type" value="2" checked>
                                    <label for="user_type2">일반기업</label>
                                </div>
                            </c:when>
                            <c:when test="${userDemoBs.user_demo_bs_type eq 4}">
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type3" name="user_type" value="4" checked>
                                    <label for="user_type3">농업진흥기관</label>
                                </div>
                            </c:when>
                            <c:when test="${userDemoBs.user_demo_bs_type eq 5}">
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type4" name="user_type" value="5" checked>
                                    <label for="user_type4">선도기관</label>
                                </div>
                            </c:when>
                            <c:when test="${userDemoBs.user_demo_bs_type eq 7}">
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type5" name="user_type" value="7" checked>
                                    <label for="user_type5">연구기관</label>
                                </div>
                            </c:when>
                            <c:when test="${userDemoBs.user_demo_bs_type eq 10}">
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type6" name="user_type" value="10" checked>
                                    <label for="user_type6">대학교</label>
                                </div>
                            </c:when>
                            <c:when test="${userDemoBs.user_demo_bs_type eq 99}">
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type7" name="user_type" value="99" checked>
                                    <label for="user_type7">기타단체</label>
                                </div>
                            </c:when>
                        </c:choose>
                            </td>
                        </tr>

                        <tr>
                            <th class="th__left">신청기업명</th>
                            <td class="td__left" colspan="2"><input id = "corp_name" type="text" placeholder="사업자 등록증과 동일하게 입력" value="${userDemoBs.corp_name}" disabled></td>
                            <th class="th__left">대표자</th>
                            <td class="td__left" colspan="2"><input id="ceo_name" type="text" value="${userDemoBs.ceo_name}" disabled></td>

                        </tr>
                        <tr>
                            <th class="th__left">사업자등록번호</th>
                            <td class="td__left" colspan="2"><input id = "corp_num" type="text" placeholder="123-12-1234567" value="${userDemoBs.corp_num}" disabled></td>
                            <th class="th__left">법인등록번호</th>
                            <td class="td__left" colspan="2"><input id = "corp_reg_num" type="text" placeholder="1234567-123456789" value="${userDemoBs.corp_reg_num}" disabled></td>

                        </tr>
                        <tr>
                            <th class="th__left">설립일</th>
                            <td class="td__left" colspan="2"><input id = "corp_birth" type="text" placeholder="2000-05-01" value="${userDemoBs.corp_birth}" disabled></td>
                            <th class="th__left">연락처 </th>
                            <td class="td__left" colspan="2"><input id="corp_phone" type="text" value="${userDemoBs.corp_phone}" disabled></td>
                        </tr>
                        <tr>
                            <th class="th__left">본사 주소</th>
                            <td class="td__left" colspan="5">
                                <input id = "corp_addr" type="text" style="width: calc(70% - 70px);" value="${userDemoBs.corp_addr}" disabled>
                                <input id = "corp_addr2" type="text" style="width: 25%;margin-left:4px !important;margin-top: 0px!important;" value="${userDemoBs.corp_addr2}" placeholder="상세주소" disabled>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">인력현황</th>
                            <td class="td__left" colspan="5">
                                1.전체: <div class="input--group"><input type="text" placeholder="" style="width:100px;" class="user__input" value="${userDemoBs.man_total}" disabled><span class="user__text">명</span></div>
                                (경영자:<div class="input--group"><input type="text" placeholder="" style="width:100px;" class="user__input" value="${userDemoBs.man_officer_count}" disabled><span class="user__text">명</span></div>, 연구/기술직:<div class="input--group"><input type="text" placeholder="" style="width:100px;" class="user__input" value="${userDemoBs.man_lab_count}" disabled><span class="user__text">명</span></div>, 기타:<div class="input--group"><input type="text" placeholder="" style="width:100px;" class="user__input" value="${userDemoBs.man_etc_count}" disabled><span class="user__text">명</span></div>)
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">자본금</th>
                            <td class="td__left"><div class="input--group"><input id = "capital_amount" type="text" placeholder="" style="width:180px; padding-right:60px;" class="user__input" value="${userDemoBs.capital_amount}" disabled><span class="user__text">백만원</span></div></td>
                            <th class="th__left">자기자본비율</th>
                            <td class="td__left"><div class="input--group"><input id = "corp_er" type="text" placeholder="" style="width:130px;" class="user__input" value="${userDemoBs.corp_er}" disabled><span class="user__text">%</span></div></td>
                            <th class="th__left">전년도 매출액</th>
                            <td class="td__left"><div class="input--group"><input id = "corp_sales_amount" type="text" placeholder="" style="width:180px;padding-right:60px;" class="user__input" value="${userDemoBs.corp_sales_amount}" disabled><span class="user__text">백만원</span></div></td>
                        </tr>
                        <tr>
                            <th class="th__left" rowspan="2">업태, 종목</th>
                            <td class="th__left"><input id = "bs_type1" type="text" value="${userDemoBs.bs_type1}" disabled></td>
                            <th class="th__left" rowspan="2">주 생산 품목</th>
                            <td class="th__left" rowspan="2" colspan="3">
                                <textarea name="main_product" id="main_product" cols="10" rows="4" disabled>${userDemoBs.main_product}</textarea>
                            </td>
                        </tr>
                        <tr>
                            <td class="th__left"><input id = "bs_type2" type="text" value="${userDemoBs.bs_type2}" disabled></td>
                        </tr>
                        <tr>
                            <th class="th__left">핵심기술<br>(기술)</th>
                            <td class="th__left" colspan="5"><input id = "demobs_tech_plan" type="text" value="${userDemoBs.demobs_tech_plan}" disabled></td>
                        </tr>
                        <tr>
                            <th class="th__left">관계회사</th>
                            <td class="td__left" colspan="5">
                                <input id="consolidated_company" type="text" value="${userDemoBs.consolidated_company}">
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left" rowspan="4">주요연혁</th>
                            <th class="">년월</th>
                            <th class="" colspan="4">
                                주요내용(자본 증감, 대표자변경, 상호변경 및 주요경영내용 변경 등)
                            </th>
                        </tr>
                        <tr>
                            <td class="td__left"><input id="history1_date" class="date_picker" type="text" value="${userDemoBs.history1_date}"></td>
                            <td class="td__left" colspan="4"><input id="history1" type="text" value="${userDemoBs.history1}"></td>
                        </tr>
                        <tr>
                            <td class="td__left"><input id="history2_date" class="date_picker" type="text" value="${userDemoBs.history2_date}"></td>
                            <td class="td__left" colspan="4"><input id="history2" type="text" value="${userDemoBs.history2}"></td>
                        </tr>
                        <tr>
                            <td class="td__left"><input id="history3_date" class="date_picker" type="text" value="${userDemoBs.history3_date}"></td>
                            <td class="td__left" colspan="4"><input id="history3" type="text" value="${userDemoBs.history3}"></td>
                        </tr>
                        <tr>
                            <th class="th__left" rowspan="4">주요 포상현황</th>
                            <th>년월</th>
                            <th colspan="2">상장명/포상명</th>
                            <th>수여기관</th>
                            <th>비고</th>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input id="prize1_date" class="date_picker" type="text" value="${userDemoBs.prize1_date}">
                            </td>
                            <td class="td__left" colspan="2">
                                <input id="prize1" type="text" value="${userDemoBs.prize1}">
                            </td>
                            <td class="td__left">
                                <input id="prize1_org" type="text" value="${userDemoBs.prize1_org}">
                            </td>
                            <td class="td__left">
                                <input id="prize1_etc" type="text" value="${userDemoBs.prize1_etc}">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input id="prize2_date" class="date_picker" type="text" value="${userDemoBs.prize2_date}">
                            </td>
                            <td class="td__left" colspan="2">
                                <input id="prize2" type="text" value="${userDemoBs.prize2}">
                            </td>
                            <td class="td__left">
                                <input id="prize2_org" type="text" value="${userDemoBs.prize2_org}">
                            </td>
                            <td class="td__left">
                                <input id="prize2_etc" type="text" value="${userDemoBs.prize2_etc}">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input id="prize3_date" class="date_picker" type="text" value="${userDemoBs.prize3_date}">
                            </td>
                            <td class="td__left" colspan="2">
                                <input id="prize3" type="text" value="${userDemoBs.prize3}">
                            </td>
                            <td class="td__left">
                                <input id="prize3_org" type="text" value="${userDemoBs.prize3_org}">
                            </td>
                            <td class="td__left">
                                <input id="prize3_etc" type="text" value="${userDemoBs.prize3_etc}">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">연구소 현황</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:16%">
                            <col style="width:16%">
                            <col style="width:18%">
                            <col style="width:16%">
                            <col style="width:16%">
                            <col style="width:18%">
                        </colgroup>
                        <tbody>
                            <th class="th__left">연구소 보유형태</th>
                                <td class="td__left" colspan="5">
                                    <c:choose>
                                        <c:when test="${userDemoBs.is_lab_ower eq 0}">
                                            <div class="radio checkbox--inline">
                                                <input id="lab_ower_1" type="radio" name="lab_ower_" value="0" checked>
                                                <label for="lab_ower_1">없음</label>
                                            </div>
                                        </c:when>
                                        <c:when test="${userDemoBs.is_lab_ower eq 1 || userDemoBs.is_lab_ower eq 2}">
                                            <div class="radio checkbox--inline">
                                                <input id="lab_ower_2" type="radio" name="lab_ower_" value="1" checked>
                                                <label for="lab_ower_2">보유함</label>
                                            </div>
                                        </c:when>
                                    </c:choose>
                                </td>
                            </tr>
                            <c:if test="${userDemoBs.is_lab_ower ne 0}">
                            <tr>
                                <th class="th__left">연구소</th>
                                <td class="td__left" colspan="5">
                                    <span>주소</span>
                                    <input id="corp_rnd_addr" type="text" style="width: calc(70% - 70px);" value="${userDemoBs.corp_rnd_addr}" disabled>
                                    <input id="corp_rnd_addr2" type="text" style="width: 25%;margin-left:4px !important;margin-top: 0px!important;" value="${userDemoBs.corp_rnd_addr2}" placeholder="상세주소" disabled>
                                </td>
                            </tr>
                            <tr>
                                <th class="th__left" rowspan="4">연구개발투자에<br>관한 사항</th>
                                <td class="td__left">연구소 설립일</td>
                                <td class="td__left" colspan="4">
                                    <input id="lab_est_date" type="text" class="date_picker" value="${userDemoBs.lab_est_date}">
                                </td>
                            </tr>
                            <tr>
                                <td class="td__left">연구소 보유형태</td>
                                <td class="td__left" colspan="4">
                                    <c:choose>
                                        <c:when test="${userDemoBs.is_lab_ower eq 1}">
                                            <div class="radio checkbox--inline">
                                                <input type="radio" id="lab_ower1" name="lab_ower" value="1" checked>
                                                <label for="lab_ower1">자가</label>
                                            </div>
                                        </c:when>
                                        <c:when test="${userDemoBs.is_lab_ower eq 2}">
                                            <div class="radio checkbox--inline">
                                                <input type="radio" id="lab_ower2" name="lab_ower" value="2" checked>
                                                <label for="lab_ower2">임차</label>
                                            </div>
                                        </c:when>
                                    </c:choose>
                               </td>
                            </tr>
                            <tr>
                                <td class="td__left">연구소 전담인력 수</td>
                                <td class="td__left" colspan="4">
                                    <div class="input--group"><input id="mam_lab_count2" type="text" placeholder="" style="width:30%;" class="user__input" value="${userDemoBs.man_lab_count}"><span class="user__text">명</span></div>
                                </td>
                            </tr>
                            <tr>
                                <td class="td__left">연구소개발투자비율</td>
                                <td class="td__left" colspan="4">
                                    연구개발비/총매출액: <div class="input--group"><input id="rnd_rate" type="text" placeholder="" style="width:100%;" class="user__input" value="${userDemoBs.rnd_rate}"><span class="user__text">%</span></div>
                                </td>
                            </tr>
                            </c:if>
                        </tbody>
                    </table>
                </div>
            <!--//-->

                <div class="cnt__title">대표자의 연구개발 주요 실적</div>
                <div class="table__unit">
                    (단위:백만원)
                </div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:22%">
                            <col style="width:20%">
                            <col style="width:18%">
                            <col style="width:20%">
                            <col style="width:20%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>개발과제명 또는<br>연구논문명</th>
                            <th>개발(연구) 기관/기업</th>
                            <th>기간</th>
                            <th>역할</th>
                            <th>주요성과</th>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input id="ceo_rnd_result1" type="text" value="${userDemoBsDetailVO.ceo_rnd_result1}">
                            </td>
                            <td class="td__left">
                                <input id="ceo_rnd_result1_org" type="text" value="${userDemoBsDetailVO.ceo_rnd_result1_org}">
                            </td>
                            <td class="td__left">
                                <input id="ceo_rnd_result1_dur" class="date_picker" type="text" value="${userDemoBsDetailVO.ceo_rnd_result1_dur}">
                            </td>
                            <td class="td__left">
                                <input id="ceo_rnd_result1_role" type="text" value="${userDemoBsDetailVO.ceo_rnd_result1_role}">
                            </td>
                            <td class="td__left">
                                <input id="ceo_rnd_result1_result" type="text" value="${userDemoBsDetailVO.ceo_rnd_result1_result}">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input id="ceo_rnd_result2" type="text" value="${userDemoBsDetailVO.ceo_rnd_result2}">
                            </td>
                            <td class="td__left">
                                <input id="ceo_rnd_result2_org" type="text" value="${userDemoBsDetailVO.ceo_rnd_result2_org}">
                            </td>
                            <td class="td__left">
                                <input id="ceo_rnd_result2_dur" class="date_picker" type="text" value="${userDemoBsDetailVO.ceo_rnd_result2_dur}">
                            </td>
                            <td class="td__left">
                                <input id="ceo_rnd_result2_role" type="text" value="${userDemoBsDetailVO.ceo_rnd_result2_role}">
                            </td>
                            <td class="td__left">
                                <input id="ceo_rnd_result2_result" type="text" value="${userDemoBsDetailVO.ceo_rnd_result2_result}">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="app__btn">
                        <span class="btn__desc">*중요한 내용 위주로 작성해주시고 자세한 내용은 실증계획서에 상세하게 작성해 주십시오.</span>
                    </div>
                </div>
                <div class="cnt__title">연구개발 추진 현황</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:15%">
                            <col style="width:55%">
                            <col style="width:30%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>구분</th>
                            <th>내용</th>
                            <th>비고(특허,인증)</th>
                        </tr>
                        <tr>
                            <td rowspan="3">자체개발</td>
                            <td class="td__left">
                                <input id="rnd_effort1" type="text" value="${userDemoBsDetailVO.rnd_effort1}">
                            </td>
                            <td class="td__left">
                                <input id="rnd_effort1_etc" type="text" value="${userDemoBsDetailVO.rnd_effort1_etc}">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input id="rnd_effort2" type="text" value="${userDemoBsDetailVO.rnd_effort2}">
                            </td>
                            <td class="td__left">
                                <input id="rnd_effort2_etc" type="text" value="${userDemoBsDetailVO.rnd_effort2_etc}">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input id="rnd_effort3" type="text" value="${userDemoBsDetailVO.rnd_effort3}">
                            </td>
                            <td class="td__left">
                                <input id="rnd_effort3_etc" type="text" value="${userDemoBsDetailVO.rnd_effort3_etc}">
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="3">국가과제</td>
                            <td class="td__left">
                                <input id="rnd_effort4" type="text" value="${userDemoBsDetailVO.rnd_effort4}">
                            </td>
                            <td class="td__left">
                                <input id="rnd_effort4_etc" type="text" value="${userDemoBsDetailVO.rnd_effort4_etc}">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input id="rnd_effort5" type="text" value="${userDemoBsDetailVO.rnd_effort5}">
                            </td>
                            <td class="td__left">
                                <input id="rnd_effort5_etc" type="text" value="${userDemoBsDetailVO.rnd_effort5_etc}">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input id="rnd_effort6" type="text" value="${userDemoBsDetailVO.rnd_effort6}">
                            </td>
                            <td class="td__left">
                                <input id="rnd_effort6_etc" type="text" value="${userDemoBsDetailVO.rnd_effort6_etc}">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">지식재산권 보유 현황(특허,실용신안,상표,디자인 등)</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:16%">
                            <col style="width:18%">
                            <col style="width:18%">
                            <col style="width:15%">
                            <col style="width:18%">
                            <col style="width:15%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>구분</th>
                            <th>출원/등록번호</th>
                            <th>명칭</th>
                            <th>출원/등록일자</th>
                            <th>담당기관</th>
                            <th>비고</th>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input id="own_ip1_type" type="text" value="${userDemoBsDetailVO.own_ip1_type}">
                            </td>
                            <td class="td__left">
                                <input id="own_ip1_code" type="text" value="${userDemoBsDetailVO.own_ip1_code}">
                            </td>
                            <td class="td__left">
                                <input id="own_ip1" type="text" value="${userDemoBsDetailVO.own_ip1}">
                            </td>
                            <td class="td__left">
                                <input id="own_ip1_date" type="text" class="date_picker" value="${userDemoBsDetailVO.own_ip1_date}">
                            </td>
                            <td class="td__left">
                                <input id="own_ip1_org" type="text" value="${userDemoBsDetailVO.own_ip1_org}">
                            </td>
                            <td class="td__left">
                                <input id="own_ip1_etc" type="text" value="${userDemoBsDetailVO.own_ip1_etc}">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input id="own_ip2_type" type="text" value="${userDemoBsDetailVO.own_ip2_type}">
                            </td>
                            <td class="td__left">
                                <input id="own_ip2_code" type="text" value="${userDemoBsDetailVO.own_ip2_code}">
                            </td>
                            <td class="td__left">
                                <input id="own_ip2" type="text" value="${userDemoBsDetailVO.own_ip2}">
                            </td>
                            <td class="td__left">
                                <input id="own_ip2_date" type="text" class="date_picker"  value="${userDemoBsDetailVO.own_ip2_date}">
                            </td>
                            <td class="td__left">
                                <input id="own_ip2_org" type="text" value="${userDemoBsDetailVO.own_ip2_org}">
                            </td>
                            <td class="td__left">
                                <input id="own_ip2_etc" type="text" value="${userDemoBsDetailVO.own_ip2_etc}">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input id="own_ip3_type" type="text" value="${userDemoBsDetailVO.own_ip3_type}">
                            </td>
                            <td class="td__left">
                                <input id="own_ip3_code" type="text" value="${userDemoBsDetailVO.own_ip3_code}">
                            </td>
                            <td class="td__left">
                                <input id="own_ip3" type="text" value="${userDemoBsDetailVO.own_ip3}">
                            </td>
                            <td class="td__left">
                                <input id="own_ip3_date" type="text" class="date_picker" value="${userDemoBsDetailVO.own_ip3_date}">
                            </td>
                            <td class="td__left">
                                <input id="own_ip3_org" type="text" value="${userDemoBsDetailVO.own_ip3_org}">
                            </td>
                            <td class="td__left">
                                <input id="own_ip3_etc" type="text" value="${userDemoBsDetailVO.own_ip3_etc}">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">국내외 인증 보유 현황</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:22%">
                            <col style="width:28%">
                            <col style="width:28%">
                            <col style="width:22%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>구분</th>
                            <th>출원/등록번호</th>
                            <th>명칭</th>
                            <th>출원/등록일자</th>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input id="own_cert1_type" type="text" value="${userDemoBsDetailVO.own_cert1_type}">
                            </td>
                            <td class="td__left">
                                <input id="own_cert1_code" type="text" value="${userDemoBsDetailVO.own_cert1_code}">
                            </td>
                            <td class="td__left">
                                <input id="own_cert1" type="text" value="${userDemoBsDetailVO.own_cert1}">
                            </td>
                            <td class="td__left">
                                <input id="own_cert1_date" type="text" class="date_picker" value="${userDemoBsDetailVO.own_cert1_date}">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input id="own_cert2_type" type="text" value="${userDemoBsDetailVO.own_cert2_type}">
                            </td>
                            <td class="td__left">
                                <input id="own_cert2_code" type="text" value="${userDemoBsDetailVO.own_cert2_code}">
                            </td>
                            <td class="td__left">
                                <input id="own_cert2" type="text" value="${userDemoBsDetailVO.own_cert2}">
                            </td>
                            <td class="td__left">
                                <input id="own_cert2_date" type="text" class="date_picker" value="${userDemoBsDetailVO.own_cert2_date}">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input id="own_cert3_type" type="text" value="${userDemoBsDetailVO.own_cert3_type}">
                            </td>
                            <td class="td__left">
                                <input id="own_cert3_code" type="text" value="${userDemoBsDetailVO.own_cert3_code}">
                            </td>
                            <td class="td__left">
                                <input id="own_cert3" type="text" value="${userDemoBsDetailVO.own_cert3}">
                            </td>
                            <td class="td__left">
                                <input id="own_cert3_date" type="text" class="date_picker" value="${userDemoBsDetailVO.own_cert3_date}">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">연구/개발인력 인적사항</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:10%">
                            <col style="width:10%">
                            <col style="width:10%">
                            <col style="width:10%">
                            <col style="width:10%">
                            <col style="width:10%">
                            <col style="width:15%">
                            <col style="width:25%">
                        </colgroup>
                        <tbody id="human_table">
                        <tr>
                            <th rowspan="2">번호</th>
                            <th>성명</th>
                            <th>과학기술인<br>등록번호</th>
                            <th colspan="3">전공 및 학위</th>
                            <th>연구담당<br>분야</th>
                            <th rowspan="2">주요 경력,연구개발 실적</th>
                        </tr>
                        <tr>
                            <th>직위</th>
                            <th>생년월일</th>
                            <th>학교</th>
                            <th>학력(학위)</th>
                            <th>취득년도</th>
                            <th>6T관련<br>기술분류</th>
                        </tr>
                        <c:forEach items="${userBsHumanResourceVOList}" var="humanR" varStatus="status">
                        <tr id="human1_t${status.count}">

                            <td rowspan="2">${status.count}</td>
                            <td class="td__left">
                                <input id="rnd_user_name${status.count}" type="text" value="${humanR.rnd_user_name}">
                            </td>
                            <td class="td__left">
                                <input id="rnd_user_code${status.count}" type="text" value="${humanR.rnd_user_code}">
                            </td>
                            <td class="td__left" rowspan="2">
                                <input id="rnd_user_school${status.count}" type="text" value="${humanR.rnd_user_school}">
                            </td>
                            <td class="td__left" rowspan="2">
                                <input id="rnd_user_grad${status.count}" type="text" value="${humanR.rnd_user_grad}">
                            </td>
                            <td class="td__left" rowspan="2">
                                <input id="rnd_user_col_date${status.count}" type="text" value="${humanR.rnd_user_col_date}">
                            </td>
                            <td class="td__left">
                                <input id="rnd_user_col_part${status.count}" type="text" value="${humanR.rnd_user_col_part}">
                            </td>
                            <td class="td__left" rowspan="2">
                                <input id="rnd_user_result${status.count}" type="text" value="${humanR.rnd_user_result}">
                            </td>
                        </tr>
                        <tr id="human2_t${status.count}">
                            <td class="td__left">
                                <input id="rnd_user_role${status.count}" type="text" value="${humanR.rnd_user_role}">
                            </td>
                            <td class="td__left">
                                <input id="rnd_user_birth${status.count}" class="date_picker" type="text" value="${humanR.rnd_user_birth}">
                            </td>
                            <td class="td__left">
                                <input id="rnd_user_6t${status.count}" type="text" value="${humanR.rnd_user_6t}">
                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="app__btn">
                        <button id="human_delete" class="btn default fl-right" title="행추가">-</button>
                    </div>
                    <div class="app__btn">
                        <button id="human_add" class="btn default fl-right" title="행추가">┼</button>
                    </div>
                </div>
                <!--//-->

                <div class="cnt__title">실증계획관련 보유장비 및 기자재</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:10%">
                            <col style="width:20%">
                            <col style="width:10%">
                            <col style="width:15%">
                            <col style="width:10%">
                            <col style="width:10%">
                            <col style="width:15%">
                            <col style="width:10%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>번호</th>
                            <th>장비명</th>
                            <th>무게(kg)</th>
                            <th>크기(W x D x H)</th>
                            <th>사용전원</th>
                            <th>소비전력</th>
                            <th>용도</th>
                            <th>실증단지설치여부</th>
                        </tr>
                        <tr>
                            <th>1</th>
                            <td class="td__left">
                                <input id="own_device1" type="text" value="${userDemoBsDetailVO.own_device1}">
                            </td>
                            <td class="td__left">
                                <input id="own_device1_weight" type="text" value="${userDemoBsDetailVO.own_device1_weight}">
                            </td>
                            <td class="td__left">
                                <input id="own_device1_size" type="text" value="${userDemoBsDetailVO.own_device1_size}">
                            </td>
                            <td class="td__left">
                                <input id="own_device1_pw" type="text" value="${userDemoBsDetailVO.own_device1_pw}">
                            </td>
                            <td class="td__left">
                                <input id="own_device1_wat" type="text" value="${userDemoBsDetailVO.own_device1_wat}">
                            </td>
                            <td class="td__left">
                                <input id="own_device1_type" type="text" value="${userDemoBsDetailVO.own_device1_type}">
                            </td>
                            <td class="td__left">
                                <select id="is_in_own_device1">
                                    <option value="1"<c:if test="${userDemoBsDetailVO.is_in_own_device1 == 1}">selected</c:if>>설치</option>
                                    <option value="0"<c:if test="${userDemoBsDetailVO.is_in_own_device1 == 0}">selected</c:if>>미설치</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>2</th>
                            <td class="td__left">
                                <input id="own_device2" type="text" value="${userDemoBsDetailVO.own_device2}">
                            </td>
                            <td class="td__left">
                                <input id="own_device2_weight" type="text" value="${userDemoBsDetailVO.own_device2_weight}">
                            </td>
                            <td class="td__left">
                                <input id="own_device2_size" type="text" value="${userDemoBsDetailVO.own_device2_size}">
                            </td>
                            <td class="td__left">
                                <input id="own_device2_pw" type="text" value="${userDemoBsDetailVO.own_device2_pw}">
                            </td>
                            <td class="td__left">
                                <input id="own_device2_wat" type="text" value="${userDemoBsDetailVO.own_device2_wat}">
                            </td>
                            <td class="td__left">
                                <input id="own_device2_type" type="text" value="${userDemoBsDetailVO.own_device2_type}">
                            </td>
                            <td class="td__left">
                                <select id="is_in_own_device2">
                                    <option value="1"<c:if test="${userDemoBsDetailVO.is_in_own_device2 == 1}">selected</c:if>>설치</option>
                                    <option value="0"<c:if test="${userDemoBsDetailVO.is_in_own_device2 == 0}">selected</c:if>>미설치</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>3</th>
                            <td class="td__left">
                                <input id="own_device3" type="text" value="${userDemoBsDetailVO.own_device3}">
                            </td>
                            <td class="td__left">
                                <input id="own_device3_weight" type="text" value="${userDemoBsDetailVO.own_device3_weight}">
                            </td>
                            <td class="td__left">
                                <input id="own_device3_size" type="text" value="${userDemoBsDetailVO.own_device3_size}">
                            </td>
                            <td class="td__left">
                                <input id="own_device3_pw" type="text" value="${userDemoBsDetailVO.own_device3_pw}">
                            </td>
                            <td class="td__left">
                                <input id="own_device3_wat" type="text" value="${userDemoBsDetailVO.own_device3_wat}">
                            </td>
                            <td class="td__left">
                                <input id="own_device3_type" type="text" value="${userDemoBsDetailVO.own_device3_type}">
                            </td>
                            <td class="td__left">
                                <select id="is_in_own_device3">
                                    <option value="1"<c:if test="${userDemoBsDetailVO.is_in_own_device3 == 1}">selected</c:if>>설치</option>
                                    <option value="0"<c:if test="${userDemoBsDetailVO.is_in_own_device3 == 0}">selected</c:if>>미설치</option>
                                </select>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="app__btn">
                        <span class="btn__desc fl-left">주) 1) 보유장비를 실증단지로 이동하여 설치사용하는지 여부</span>
                    </div>
                </div>
                <!--//-->


                <div class="table__caption">2.실증계획</div>
                <div class="cnt__title">실증개요</div>
                <div class="editor__title">
                    <strong>실증배경, 필요성, 목표</strong> (실증을 해야하는 이유가 잘 설명되도록 작성)
                </div>
                <textarea id="demo_needs" class="editor__box" style="border: 1px solid #e8e8e8;" rows="10">${userDemoBsDetailVO.demo_needs}</textarea>
                <!--//-->

                <div class="editor__title">
                    <strong>실증관리 핵심요소</strong> (실증과정에서 가장 중요하게 관리/유지되어야 하는 사항)
                </div>
                <textarea id="demo_main_point" class="editor__box" style="border: 1px solid #e8e8e8;" rows="10">${userDemoBsDetailVO.demo_main_point}</textarea>
                <!--//-->

                <div class="editor__title">
                    <strong>실증결과의 활용계획</strong> (실증결과의 활용계획)
                </div>
                <textarea id="demo_use_plan" class="editor__box" style="border: 1px solid #e8e8e8;" rows="10">${userDemoBsDetailVO.demo_use_plan}</textarea>
                <!--//-->

                <div class="cnt__title">실증기간</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:20%">
                            <col style="width:80%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>구분</th>
                            <th>세부 내용</th>
                        </tr>
                        <tr>
                            <th>실증기간</th>
                            <td class="td__left">
                                <fmt:formatDate value="${userDemoBs.demo_start_date}" var="dstart_date" pattern="yyyy-MM-dd"/>
                                <fmt:formatDate value="${userDemoBs.demo_end_date}" var="dend_date" pattern="yyyy-MM-dd"/>
                                <input id="bs_demo_dur" type="text" class="date_range_picker" value="${dstart_date}~${dend_date}">
                                <span id="bs_demo_numofmonth"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>실증기간 중 작물재배기간</th>
                            <td class="td__left">
                                <fmt:formatDate value="${userDemoBs.farming_start_date}" var="fstart_date" pattern="yyyy-MM-dd"/>
                                <fmt:formatDate value="${userDemoBs.farming_end_date}" var="fend_date" pattern="yyyy-MM-dd"/>
                                1)작물재배기간 <input id="farming_start_date" type="text" class="date_range_picker" value="${fstart_date}~${fend_date}">
                                2)재배작기수: <input id="farming_repeat" type="text" style="width:100px;" value="${userDemoBs.farming_repeat}"> &nbsp; 기작
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">실증대상</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:5%">
                            <col style="width:15%">
                            <col style="width:50%">
                            <col style="width:30%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th colspan="2">구분</th>
                            <th>실증대상 예시</th>
                            <th>실증대상</th>
                        </tr>
                        <tr>
                            <td rowspan="3">기<br>자<br>재</td>
                            <td>시설자재</td>
                            <td class="td__left">
                                - 피복자재 : 유리, 비닐, 차단막 등<br>
                                - 구조자재 : 파이프, 강재, 연결자재 등<br>
                                - 설비자재 : 관수 및 양액용 파이프, 분사노출 등<br>
                                - 기타자재 : 베드, 거터 등
                            </td>
                            <td>
                                <textarea id="demo_facil_mat" cols="10" rows="3">${userDemoBsDetailVO.demo_facil_mat}</textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>ICT기자재</td>
                            <td class="td__left">
                                - 센서류 : 온도, 습도, CO2, 수분, 풍속/풍향 등<br>
                                - 제어기류 : 복합환경제어기, 단순제어기 등<br>
                                - 구동기류 : 천창, 측창, 환풍기, 냉/낭방기, 양액/관수기 등
                            </td>
                            <td>
                                <textarea id="demo_facil_ict" cols="10" rows="3">${userDemoBsDetailVO.demo_facil_ict}</textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>작물보호제<br>및 비료</td>
                            <td class="td__left">
                                - 작불보호제, 영양제, 비료,  양액 등
                            </td>
                            <td>
                                <textarea id="demo_facil_fer" cols="10" rows="1">${userDemoBsDetailVO.demo_facil_fer}</textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">스마트팜<br>SW</td>
                            <td class="td__left">
                                - 구동SW : 제어기용, 센서용, 구동기용 등<br>
                                - 관제SW : 스마트팜 통합관리용
                            </td>
                            <td>
                                <textarea id="demo_facil_sw" cols="10" rows="1">${userDemoBsDetailVO.demo_facil_sw}</textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">로봇</td>
                            <td class="td__left">
                                - 경작기, 파종기. 접목(삽목)기, 방제기 등<br>
                                - 수확기, 선별기, 운반기 등
                            </td>
                            <td>
                                <textarea id="demo_facil_robot" cols="10" rows="1">${userDemoBsDetailVO.demo_facil_robot}</textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">생육(모델)<br>실증</td>
                            <td class="td__left">
                                - 육모모델 생장모델, 기능성모델
                            </td>
                            <td>
                                <textarea id="demo_facil_model" cols="10" rows="1">${userDemoBsDetailVO.demo_facil_model}</textarea>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">실증유형</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:15%">
                            <col style="width:85%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>구분</th>
                            <th>세부 내용</th>
                        </tr>
                        <tr>
                            <td>실증 주체</td>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_type1" type="checkbox" name="user_demo_type" onClick="return false;" value="1">
                                    <label for="user_demo_type1">자율실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_type2" type="checkbox" name="user_demo_type" onClick="return false;" value="2">
                                    <label for="user_demo_type2">위탁실증</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>실증 시설</td>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_facility5" type="checkbox" name="user_demo_facility" onClick="return false;" value="16">
                                    <label for="user_demo_facility5">단동유리온실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_facility6" type="checkbox" name="user_demo_facility" onClick="return false;" value="32">
                                    <label for="user_demo_facility6">연동유리온실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_facility1" type="checkbox" name="user_demo_facility" onClick="return false;" value="1">
                                    <label for="user_demo_facility1">단동비닐온실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_facility2" type="checkbox" name="user_demo_facility" onClick="return false;" value="2">
                                    <label for="user_demo_facility2">연동비닐온실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_facility4" type="checkbox" name="user_demo_facility" onClick="return false;" value="8">
                                    <label for="user_demo_facility4">노지</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_facility7" type="checkbox" name="user_demo_facility" onClick="return false;" value="64">
                                    <label for="user_demo_facility7">식물공장</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_facility3" type="checkbox" name="user_demo_facility" onClick="return false;" value="4">
                                    <label for="user_demo_facility3">육묘장</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>실증 방법</td>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_way1" type="checkbox" name="user_demo_way" onClick="return false;" value="1">
                                    <label for="user_demo_way1">비교실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_way2" type="checkbox" name="user_demo_way" onClick="return false;" value="2">
                                    <label for="user_demo_way2">단순실증</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>실증 목적</td>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_goal1" type="checkbox" name="user_demo_goal" onClick="return false;" value="1">
                                    <label for="user_demo_goal1">성능확인실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_goal2" type="checkbox" name="user_demo_goal" onClick="return false;" value="2">
                                    <label for="user_demo_goal2">자체평가실증</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>실증 횟수</td>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_repeat1" type="checkbox" name="user_demo_repeat" onClick="return false;" value="1">
                                    <label for="user_demo_repeat1">1회성실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_repeat2" type="checkbox"name="user_demo_repeat" onClick="return false;" value="2">
                                    <label for="user_demo_repeat2">반복실증</label>
                                </div>
                                (반복횟수: <input id="user_demo_repeat_count" type="text" style="width:100px;" value="${userDemoBs.user_demo_repeat_count}" disabled> 회)
                            </td>
                        </tr>
                        <tr>
                            <td>실증 작물</td>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_is_crops1" type="checkbox" name="user_demo_is_crops" onClick="return false;" value="2">
                                    <label for="user_demo_is_crops1">비작물실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_is_crops2" type="checkbox" name="user_demo_is_crops" onClick="return false;" value="1">
                                    <label for="user_demo_is_crops2">작물대상실증</label>
                                </div>
                                (실증대상 작물명: <input id="user_demo_crops" type="text" style="width:200px;" value="${userDemoBs.user_demo_crops}" disabled>)
                            </td>
                        </tr>
                        <tr>
                            <td>생육 토양</td>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input id="culture_soil1" type="checkbox" name="culture_soil" onClick="return false;" value="1">
                                    <label for="culture_soil1">토경재배실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input id="culture_soil2" type="checkbox" name="culture_soil" onClick="return false;" value="2">
                                    <label for="culture_soil2">수경재배실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input id="culture_soil3" type="checkbox" name="culture_soil" onClick="return false;" value="4">
                                    <label for="culture_soil3">고형배지재배실증</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>실증 조건</td>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_option1" type="checkbox" name="user_demo_option" onClick="return false;" value="1">
                                    <label for="user_demo_option1">일반환경실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_option2" type="checkbox" name="user_demo_option" onClick="return false;" value="2">
                                    <label for="user_demo_option2">특수환경실증</label>
                                </div>
<%--                                <div class="checkbox checkbox--inline">
                                    <input id="user_demo_option2" type="checkbox" id="실증조건-3" name="실증조건">
                                    <label for="실증조건-3">특수기후실증</label>
                                </div>--%>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">실증설계 <em>(자유양식에 의거 상세 작성)</em></div>
                <div class="editor__title">
                    <strong>1)온실설치</strong>
                    <ul class="editor__list">
                        <li>*노지실증의 경우에만 해당(상세자료 별첨가능)</li>
                        <li>- 온실 설치 개요도를 작성하고 설치관련 주요사항을 설명</li>
                        <li>- 비교실증인 경우 실험군과 대조군의 특성을 알 수 있게 설명</li>
                    </ul>
                </div>
                <textarea id="demo_paln_gh" class="editor__box" style="border: 1px solid #e8e8e8;" rows="10">${userDemoBsDetailVO.demo_paln_gh}</textarea>
                <!--//-->
                <div class="editor__title">
                    <strong>2)기자재설치</strong>
                    <ul class="editor__list">
                        <li>- 온시내외의 기계장치(센서, 제어기, 장치) 설치개요도(상세자료 별첨가능)</li>
                        <li>- 실증 목적상 필요로 하는 특정 기계장치 및 설치 특기사항</li>
                        <li>- 비교실증인 경우 실험군과 대조군의 특성을 알 수 있게 설명</li>
                    </ul>
                </div>
                <textarea id="demo_paln_facil" class="editor__box" style="border: 1px solid #e8e8e8;" rows="10">${userDemoBsDetailVO.demo_paln_facil}</textarea>
                <!--//-->
                <div class="editor__title">
                    <strong>3)실험,시험 분석</strong>
                    <ul class="editor__list">
                        <li>- 작물실험 : 재배작물에 대한 생육조사나 실험계획(상세자료 별첨가능, 기타 서류 등록 단계에서 첨부해 주세요.)</li>
                        <li>- 시험분석 : 기자재나 장비에 대한 검사 분석 계획 </li>
                    </ul>
                </div>
                <textarea id="demo_paln_exper" class="editor__box" style="border: 1px solid #e8e8e8;" rows="10">${userDemoBsDetailVO.demo_paln_exper}</textarea>
                <!--//-->
                <div class="editor__title">
                    <strong>4)실증관리</strong>
                    <ul class="editor__list">
                        <li>- 인력계획 : 실증참여 전담인력수와 상주인력 계획</li>
                        <li>- 인전관리 : 실증과정중 예상되는 위험상황과 대응계획</li>
                    </ul>
                </div>
                <textarea id="demo_paln_mng" class="editor__box" style="border: 1px solid #e8e8e8;" rows="10">${userDemoBsDetailVO.demo_paln_mng}</textarea>
                <!--//-->

                <div class="table__caption">3.사업과 계획</div>
                <div class="cnt__title">지재권 및 인증 확보계획(해당시)</div>
                <div class="editor__title">
                    <strong>지자재,인증</strong>
                    <ul class="editor__list">
                        <li>- 실증결과 및 실증대상에 대한 지재권 확보방안</li>
                        <li>- 실증대상의 사업화에 필요한 인증과 인증확보 계획</li>
                    </ul>
                </div>
                <textarea id="demo_plan_ip" class="editor__box" style="border: 1px solid #e8e8e8;" rows="10">${userDemoBsDetailVO.demo_plan_ip}</textarea>
                <!--//-->

                <div class="cnt__title">국내외 시장성</div>
                <div class="editor__title">
                    <strong>시장현황과 전망</strong>
                    <ul class="editor__list">
                        <li>- 실증대상과 관련한 국내외 시장현황과 전망(상세자료 별첨가능, 기타 서류 등록 단계에서 첨부해 주세요.)</li>
                    </ul>
                </div>
                <textarea id="demo_plan_target" class="editor__box" style="border: 1px solid #e8e8e8;" rows="10">${userDemoBsDetailVO.demo_plan_target}</textarea>
                <!--//-->

                <div class="cnt__title">판매계획</div>
                <div class="editor__title">
                    <strong>판매전략과 전망</strong>
                    <ul class="editor__list">
                        <li>- 실증완료 후 실증대상의 국내외 판매전략과 매출전망(실증완료후 3년)</li>
                    </ul>
                </div>
                <textarea id="demo_plan_sales" class="editor__box" style="border: 1px solid #e8e8e8;" rows="10">${userDemoBsDetailVO.demo_plan_sales}</textarea>
                <!--//-->

                <div class="cnt__title">후속 연구개발 계획</div>
                <div class="editor__title">
                    <strong>연구개발계획</strong>
                    <ul class="editor__list">
                        <li>- 실증결과의 활용을 위한 후속 연구계획(있을 경우에 한함)</li>
                    </ul>
                </div>
                <textarea id="demo_plan_post" class="editor__box" style="border: 1px solid #e8e8e8;" rows="10">${userDemoBsDetailVO.demo_plan_post}</textarea>
                <!--//-->

                <div class="table__caption">4.안전성 검토</div>
                <div class="cnt__title">반입 기자재 리스트</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:20%">
                            <col style="width:20%">
                            <col style="width:15%">
                            <col style="width:15%">
                            <col style="width:10%">
                            <col style="width:10%">
                            <col style="width:10%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>구분</th>
                            <th>명칭</th>
                            <th>용도</th>
                            <th>단위/규격</th>
                            <th>수량</th>
                            <th>단가</th>
                            <th>금액</th>
                        </tr>

                        <tr>
                            <td>시설자재</a>
                            </td>
                            <td class="td__left">
                                <input id="in_facil_mat" type="text" value="${userDemoBsDetailVO.in_facil_mat}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_mat_type" type="text" value="${userDemoBsDetailVO.in_facil_mat_type}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_mat_stnrd" type="text" value="${userDemoBsDetailVO.in_facil_mat_stnrd}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_mat_amount" type="text" value="${userDemoBsDetailVO.in_facil_mat_amount}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_mat_val" type="text" value="${userDemoBsDetailVO.in_facil_mat_val}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_mat_price" type="text" value="${userDemoBsDetailVO.in_facil_mat_price}">
                            </td>
                        </tr>
                        <tr>
                            <td>ICT기자재</a>
                            </td>
                            <td class="td__left">
                                <input id="in_facil_ict" type="text" value="${userDemoBsDetailVO.in_facil_ict}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_ict_type" type="text" value="${userDemoBsDetailVO.in_facil_ict_type}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_ict_stnrd" type="text" value="${userDemoBsDetailVO.in_facil_ict_stnrd}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_ict_amount" type="text" value="${userDemoBsDetailVO.in_facil_ict_amount}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_ict_val" type="text" value="${userDemoBsDetailVO.in_facil_ict_val}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_ict_price" type="text" value="${userDemoBsDetailVO.in_facil_ict_price}">
                            </td>
                        </tr>


                        <tr>
                            <td>작물보호제/비료</a>
                            </td>
                            <td class="td__left">
                                <input id="in_facil_fer" type="text" value="${userDemoBsDetailVO.in_facil_fer}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_fer_type" type="text" value="${userDemoBsDetailVO.in_facil_fer_type}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_fer_stnrd" type="text" value="${userDemoBsDetailVO.in_facil_fer_stnrd}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_fer_amount" type="text" value="${userDemoBsDetailVO.in_facil_fer_amount}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_fer_val" type="text" value="${userDemoBsDetailVO.in_facil_fer_val}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_fer_price" type="text" value="${userDemoBsDetailVO.in_facil_fer_price}">
                            </td>
                        </tr>


                        <tr>
                            <td>스마트팜SW</a>
                            </td>
                            <td class="td__left">
                                <input id="in_facil_sw" type="text" value="${userDemoBsDetailVO.in_facil_sw}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_sw_type" type="text" value="${userDemoBsDetailVO.in_facil_sw_type}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_sw_stnrd" type="text" value="${userDemoBsDetailVO.in_facil_sw_stnrd}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_sw_amount" type="text" value="${userDemoBsDetailVO.in_facil_sw_amount}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_sw_val" type="text" value="${userDemoBsDetailVO.in_facil_sw_val}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_sw_price" type="text" value="${userDemoBsDetailVO.in_facil_sw_price}">
                            </td>
                        </tr>
                       <tr>
                            <td>종자/종묘</a>
                            </td>
                            <td class="td__left">
                                <input id="in_facil_seeding" type="text" value="${userDemoBsDetailVO.in_facil_seeding}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_seedingtype" type="text" value="${userDemoBsDetailVO.in_facil_seedingtype}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_seeding_stnrd" type="text" value="${userDemoBsDetailVO.in_facil_seeding_stnrd}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_seeding_amount" type="text" value="${userDemoBsDetailVO.in_facil_seeding_amount}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_seeding_val" type="text" value="${userDemoBsDetailVO.in_facil_seeding_val}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_seeding_price" type="text" value="${userDemoBsDetailVO.in_facil_seeding_price}">
                            </td>
                        </tr>
                        <tr>
                            <td>로봇</a>
                            </td>
                            <td class="td__left">
                                <input id="in_facil_robot" type="text" value="${userDemoBsDetailVO.in_facil_robot}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_robot_type" type="text" value="${userDemoBsDetailVO.in_facil_robot_type}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_robot_stnrd" type="text" value="${userDemoBsDetailVO.in_facil_robot_stnrd}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_robot_amount" type="text" value="${userDemoBsDetailVO.in_facil_robot_amount}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_robot_val" type="text" value="${userDemoBsDetailVO.in_facil_robot_val}">
                            </td>
                            <td class="td__left">
                                <input id="in_facil_robot_price" type="text" value="${userDemoBsDetailVO.in_facil_robot_price}">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">실증단지 반입 유해화학물질 목록</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:14%">
                            <col style="width:20%">
                            <col style="width:15%">
                            <col style="width:13%">
                            <col style="width:13%">
                            <col style="width:15%">
                            <col style="width:10%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>번호</th>
                            <th>물질명</th>
                            <th>화학식</th>
                            <th>예상사용량</th>
                            <th>보관함</th>
                            <th>보관장소</th>
                            <th>특이사항</th>
                        </tr>
                        <tr>
                            <th>1</th>
                            <td class="td__left">
                                <input id="in_hazd_chemical1" type="text" value="${userDemoBsDetailVO.in_hazd_chemical1}">
                            </td>
                            <td class="td__left">
                                <input id="in_hazd_chemical1_form" type="text" value="${userDemoBsDetailVO.in_hazd_chemical1_form}">
                            </td>
                            <td class="td__left">
                                <input id="in_hazd_chemical1_amount" type="text" value="${userDemoBsDetailVO.in_hazd_chemical1_amount}">
                            </td>
                            <td class="td__left">
                                <input id="in_hazd_chemical1_case" type="text" value="${userDemoBsDetailVO.in_hazd_chemical1_case}">
                            </td>
                            <td class="td__left">
                                <input id="in_hazd_chemical1_loc" type="text" value="${userDemoBsDetailVO.in_hazd_chemical1_loc}">
                            </td>
                            <td class="td__left">
                                <input id="in_hazd_chemical1_etc" type="text" value="${userDemoBsDetailVO.in_hazd_chemical1_etc}">
                            </td>
                        </tr>
                        <tr>
                            <th>2</th>
                            <td class="td__left">
                                <input id="in_hazd_chemical2" type="text" value="${userDemoBsDetailVO.in_hazd_chemical2}">
                            </td>
                            <td class="td__left">
                                <input id="in_hazd_chemical2_form" type="text" value="${userDemoBsDetailVO.in_hazd_chemical2_form}">
                            </td>
                            <td class="td__left">
                                <input id="in_hazd_chemical2_amount" type="text" value="${userDemoBsDetailVO.in_hazd_chemical2_amount}">
                            </td>
                            <td class="td__left">
                                <input id="in_hazd_chemical2_case" type="text" value="${userDemoBsDetailVO.in_hazd_chemical2_case}">
                            </td>
                            <td class="td__left">
                                <input id="in_hazd_chemical2_loc" type="text" value="${userDemoBsDetailVO.in_hazd_chemical2_loc}">
                            </td>
                            <td class="td__left">
                                <input id="in_hazd_chemical2_etc" type="text" value="${userDemoBsDetailVO.in_hazd_chemical2_etc}">
                            </td>
                        </tr>
                        <tr>
                            <th>3</th>
                            <td class="td__left">
                                <input id="in_hazd_chemical3" type="text" value="${userDemoBsDetailVO.in_hazd_chemical3}">
                            </td>
                            <td class="td__left">
                                <input id="in_hazd_chemical3_form" type="text" value="${userDemoBsDetailVO.in_hazd_chemical3_form}">
                            </td>
                            <td class="td__left">
                                <input id="in_hazd_chemical3_amount" type="text" value="${userDemoBsDetailVO.in_hazd_chemical3_amount}">
                            </td>
                            <td class="td__left">
                                <input id="in_hazd_chemical3_case" type="text" value="${userDemoBsDetailVO.in_hazd_chemical3_case}">
                            </td>
                            <td class="td__left">
                                <input id="in_hazd_chemical3_loc" type="text" value="${userDemoBsDetailVO.in_hazd_chemical3_loc}">
                            </td>
                            <td class="td__left">
                                <input id="in_hazd_chemical3_etc" type="text" value="${userDemoBsDetailVO.in_hazd_chemical3_etc}">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">폐기물 발생추정</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:20%">
                            <col style="width:30%">
                            <col style="width:25%">
                            <col style="width:25%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>구분</th>
                            <th>발생량</th>
                            <th>보관장소</th>
                            <th>반출계획</th>
                        </tr>
                        <tr>
                            <td>오염수</td>
                            <td class="td__left">
                                <input id="waste_water_amount" type="text" value="${userDemoBsDetailVO.waste_water_amount}">
                            </td>
                            <td class="td__left">
                                <input id="waste_water_case" type="text" value="${userDemoBsDetailVO.waste_water_case}">
                            </td>
                            <td class="td__left">
                                <input id="waste_water_ext_plan" type="text" value="${userDemoBsDetailVO.waste_water_ext_plan}">
                            </td>
                        </tr>
                        <tr>
                            <td>폐기토양/배지</td>
                            <td class="td__left">
                                <input id="waste_soil_amount" type="text" value="${userDemoBsDetailVO.waste_soil_amount}">
                            </td>
                            <td class="td__left">
                                <input id="waste_soil_case" type="text" value="${userDemoBsDetailVO.waste_soil_case}">
                            </td>
                            <td class="td__left">
                                <input id="waste_soil_ext_plan" type="text" value="${userDemoBsDetailVO.waste_soil_ext_plan}">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">소요 전력량 및 내역</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:12%">
                            <col style="width:22%">
                            <col style="width:22%">
                            <col style="width:22%">
                            <col style="width:22%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>번호</th>
                            <th>장비명</th>
                            <th>용도</th>
                            <th>사용전원</th>
                            <th>소비전력</th>
                        </tr>
                        <tr>
                            <th>1</th>
                            <td class="td__left">
                                <input id="facil_pw1" type="text" value="${userDemoBsDetailVO.facil_pw1}">
                            </td>
                            <td class="td__left">
                                <input id="facil_pw1_type" type="text" value="${userDemoBsDetailVO.facil_pw1_type}">
                            </td>
                            <td class="td__left">
                                <input id="facil_pw1_v" type="text" value="${userDemoBsDetailVO.facil_pw1_v}">
                            </td>
                            <td class="td__left">
                                <input id="facil_pw1_w" type="text" value="${userDemoBsDetailVO.facil_pw1_w}">
                            </td>
                        </tr>
                        <tr>
                            <th>2</th>
                            <td class="td__left">
                                <input id="facil_pw2" type="text" value="${userDemoBsDetailVO.facil_pw2}">
                            </td>
                            <td class="td__left">
                                <input id="facil_pw2_type" type="text" value="${userDemoBsDetailVO.facil_pw2_type}">
                            </td>
                            <td class="td__left">
                                <input id="facil_pw2_v" type="text" value="${userDemoBsDetailVO.facil_pw2_v}">
                            </td>
                            <td class="td__left">
                                <input id="facil_pw2_w" type="text" value="${userDemoBsDetailVO.facil_pw2_w}">
                            </td>
                        </tr>
                        <tr>
                            <th>3</th>
                            <td class="td__left">
                                <input id="facil_pw3" type="text" value="${userDemoBsDetailVO.facil_pw3}">
                            </td>
                            <td class="td__left">
                                <input id="facil_pw3_type" type="text" value="${userDemoBsDetailVO.facil_pw3_type}">
                            </td>
                            <td class="td__left">
                                <input id="facil_pw3_v" type="text" value="${userDemoBsDetailVO.facil_pw3_v}">
                            </td>
                            <td class="td__left">
                                <input id="facil_pw3_w" type="text" value="${userDemoBsDetailVO.facil_pw3_w}">
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>
                <!--//-->

            </div>
        </div>
    </div>
    <div class="footer_app">
        <div class="footer__btn">
            <button id="btn_app_step2" class="btn info btn-lg fl-left">이전</button>
            <button id="btn_save" class="btn dark btn-lg">임시저장</button>
            <button id="btn_app_step4" class="btn submit btn-lg" disabled>다음</button>
        </div>
    </div>
</div>

<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<script>
    $(function() {
        $('.date_range_picker').daterangepicker({
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
            "setDate": ""

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



    });
    $("#bs_start_date").on("change", function(){
        var day = 0;
        var month = 0;
        var year = 0;
        var gap = new Date($("#be_demo_dur").val().split(" ~ ")[1]) - new Date($("#be_demo_dur").val().split(" ~ ")[0]);

        day = Math.floor(gap / (1000 * 60 * 60 * 24)) || 0;
        if(Math.floor(day/30) >= 1){
            month = Math.floor(day/30);
            if(Math.floor(month/12) >= 1){
                year = Math.floor(month/12);
                month = month % 12;
            }
        }
        $("#bs_demo_numofmonth").text("(" + year + "년 " + month + "개월)");
    })

    <c:forEach items="${fileArr}" var="file">
        if("${file.file_type}" == "1") {
            $("#user_demobs_file_info").text("제출 완료: ${file.fileInfoVO.file_name}")
        }
    </c:forEach>


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

    let human_count = ${userBsHumanResourceVOList.size()};

    $("#human_add").click(function(){

        let order = human_count+1;

        var html = "<tr id='human1_t"+order+"'>"

            +"<td rowspan='2'>"+order+"</td>"
            +"<td class='td__left'>"
            +"<input id='rnd_user_name"+order+"' type='text'>"
            +"</td>"
            +"<td class='td__left'>"
            +"<input id='rnd_user_code"+order+"' type='text'>"
            +"</td>"
            +"<td class='td__left' rowspan='2'>"
            +"<input id= 'rnd_user_school"+order+"' type='text'>"
            +"</td>"
            +"<td class='td__left' rowspan='2'>"
            +"<input id='rnd_user_grad"+order+"' type='text'>"
            +"</td>"
            +"<td class='td__left' rowspan='2'>"
            +"<input id='rnd_user_col_date"+order+"' type='text'>"
            +"</td>"
            +"<td class='td__left'>"
            +"<input id='rnd_user_col_part"+order+"' type='text'>"
            +"</td>"
            +"<td class='td__left' rowspan='2'>"
            +"<input id='rnd_user_result"+order+"' type='text'>"
            +"</td>"
            +"</tr>"
            +"<tr id='human2_t"+order+"'>"
            +"<td class='td__left'>"
            +"<input id='rnd_user_role"+order+"' type='text'>"
            +"</td>"
            +"<td class='td__left'>"
            +"<input id='rnd_user_birth"+order+"' type='text'>"
            +"</td>"
            +"<td class='td__left'>"
            +"<input id='rnd_user_6t"+order+"' type='text'>"
            +"</td>"
            +"</tr>";
        $("#human_table").append(html);
        human_count++;

    });

    $("#human_delete").click(function(){
        let order = human_count;
        if(human_count>3){
            $('#human1_t'+order).remove();
            $('#human2_t'+order).remove();
            human_count--;
        }
    });


    $("#btn_app_step2").click(function(){
        if (!confirm("변경한 내용 저장여부를 확인해 주세요. 뒤로 이동하시겠습니까.")) {
            // 취소(아니오) 버튼 클릭 시 이벤트

        } else {
            var param  = {
                "idx_user":${userDemoBs.idx_user},
                "idx_demo_business":${userDemoBs.idx_demo_business}
            };
            goNextStep(param,'app_step2');
            // 확인(예) 버튼 클릭 시 이벤트
        }
    });

    $("#btn_app_step4").click(function(){
        var param  = {
            "idx_user":${userDemoBs.idx_user},
            "idx_demo_business":${userDemoBs.idx_demo_business}
        };
        goNextStep(param,'app_step4');
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
            $('#btn_app_step4').attr('disabled', false);

        }
    });

function save_temp(){
    let i=0;
    let req_facility = 0;
    $('input:checkbox[name="req_facility"]:checked').each(function() {
        req_facility|=$(this).val();
    });

    let user_demo_type = 0;
    $('input:checkbox[name="user_demo_type"]:checked').each(function() {
        user_demo_type|=$(this).val();
    });

    let user_demo_facility = 0;
    $('input:checkbox[name="user_demo_facility"]:checked').each(function() {
        user_demo_facility|=$(this).val();
    });

    let user_demo_way = 0;
    $('input:checkbox[name="user_demo_way"]:checked').each(function() {
        user_demo_way|=$(this).val();
    });

    let user_demo_repeat = 0;
    $('input:checkbox[name="user_demo_repeat"]:checked').each(function() {
        user_demo_repeat|=$(this).val();
    });

    let user_demo_goal = 0;
    $('input:checkbox[name="user_demo_goal"]:checked').each(function() {
        user_demo_goal|=$(this).val();
    });

    let user_demo_option = 0;
    $('input:checkbox[name="user_demo_option"]:checked').each(function() {
        user_demo_option|=$(this).val();
    });

    let culture_soil = 0;
    $('input:checkbox[name="culture_soil"]:checked').each(function() {
        culture_soil|=$(this).val();
    });

    let demo_type = 0;
    $('input:checkbox[name="demo_type"]:checked').each(function() {
        demo_type|=$(this).val();
    });

    let resident_type = 0;
    $('input:checkbox[name="resident_type"]:checked').each(function() {
        resident_type|=$(this).val();
    });


    let param = {
        idx_user_demo_bs:${userDemoBs.idx_user_demo_bs},//		number	32		0		◯	지원사업
        idx_demo_business:${userDemoBs.idx_demo_business},//		number	32		0		◯	지원사업
        user_demobs_status:${userDemoBs.user_demobs_status},//									0:지원서 작성중, 1: 신청함, 2: 서류 검토 중, 3:서류 보완요청,  4:서류검토완료, 5:서류 부적격, 10:심사 중 11:심사통과, 12:심사보류, 13:심사 부적격, 20:이의신청, 21:이의 검토중, 22:이의 기각, 23:이의 인용, 30:협약중, 31:협약보완요청, 32:협약완료, 33:협약보류, 34:협약 실패,  40:사업 시작, 50:사업 종료, 60:결산중, 61:결산 완료, 99:최종 탈락
        idx_user:${userDemoBs.idx_user},



        lab_est_date : $('#lab_est_date').val(),//	VARCHAR2	20					연구소 설립일수
        rnd_rate : $('#rnd_rate').val(),//	NUMBER	4					연구개발투자비율
        consolidated_company:$('#consolidated_company').val(),//	VARCHAR2	100 연결회사
        farming_start_date: new Date($('#farming_start_date').val().split('~')[0]),
        farming_end_date: new Date($('#farming_start_date').val().split('~')[1]),
        farming_repeat: $('#farming_repeat').val(),
        history1:$('#history1').val(),//	varchar2	100					주요연혁 1
        history1_date:$('#history1_date').val(),//	varchar2	20					주요연혁 1 날짜
        history2:$('#history2').val(),//	varchar2	100					주요연혁 2
        history2_date:$('#history2_date').val(),//	varchar2	20					주요연혁 2 날짜
        history3:$('#history3').val(),//	varchar2	100					주요연혁 3
        history3_date:$('#history3_date').val(),//	varchar2	20					주요연혁 3 날짜
        prize1:$('#prize1').val(),//	varchar2	100					포상현황1
        prize1_date:$('#prize1_date').val(),//	varchar2	20					포상날자1
        prize1_org:$('#prize1_org').val(),//	varchar2	100					포상기관1
        prize1_etc:$('#prize1_etc').val(),//	varchar2	100					포상 비고1
        prize2:$('#prize2').val(),//	varchar2	100					포상현황2
        prize2_date:$('#prize2_date').val(),//	varchar2	20					포상날자2
        prize2_org:$('#prize2_org').val(),//	varchar2	100					포상기관2
        prize2_etc:$('#prize2_etc').val(),//	varchar2	100					포상 비고2
        prize3:$('#prize3').val(),//	varchar2	100					포상현황3
        prize3_date:$('#prize3_date').val(),//	varchar2	20					포상날자3
        prize3_org:$('#prize3_org').val(),//	varchar2	100					포상기관3
        prize3_etc:$('#prize3_etc').val(),//	varchar2	100					포상 비고3
        demo_start_date: new Date($('#bs_demo_dur').val().split('~')[0]),
        demo_end_date: new Date($('#bs_demo_dur').val().split('~')[1])

    };
    console.log(param);


    $.ajax({
        type: 'post',
        url :'app_step3_save_temp', //데이터를 주고받을 파일 주소 입력
        data: JSON.stringify(param),//보내는 데이터
        contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
        dataType:'json',//받는 데이터 타입
        success: function(result){
            //작업이 성공적으로 발생했을 경우
            if(result.result_code=="SUCCESS"){
                //alert(result.result_str);

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


    let userBsHumanResourceVOList = new Array();
    for(let j=1;j<human_count+1;j++){
        let param_human = {
            idx_user_demo_bs:${userDemoBs.idx_user_demo_bs},
            rnd_user_name:$("#rnd_user_name"+j+"").val(),
            rnd_user_role:$("#rnd_user_role"+j+"").val(),
            rnd_user_code:$("#rnd_user_code"+j+"").val(),
            rnd_user_birth:$("#rnd_user_birth"+j+"").val(),
            rnd_user_grad:$("#rnd_user_grad"+j+"").val(),
            rnd_user_col:$("#rnd_user_col"+j+"").val(),
            rnd_user_school:$("#rnd_user_school"+j+"").val(),
            rnd_user_col_date:$("#rnd_user_col_date"+j+"").val(),
            rnd_user_col_part:$("#rnd_user_col_part"+j+"").val(),
            rnd_user_6t:$("#rnd_user_6t"+j+"").val(),
            rnd_user_result:$("#rnd_user_result"+j+"").val()
        }
        userBsHumanResourceVOList.push(param_human);
    }

    let param_detail = {
        idx_user_demo_bs_detail:${userDemoBsDetailVO.idx_user_demo_bs_detail},//number	32	n		◯		인덱스	auto increase
        idx_user_demo_bs:${userDemoBsDetailVO.idx_user_demo_bs},//		number	32		0		◯	지원사업

        ceo_rnd_result1:$('#ceo_rnd_result1').val(),//varchar2	100					대표자의 연구개발 과제, 논문명
        ceo_rnd_result1_org:$('#ceo_rnd_result1_org').val(),//varchar2	40					연구개발 기관
        ceo_rnd_result1_dur:$('#ceo_rnd_result1_dur').val(),//varchar2	40					연구개발 기간
        ceo_rnd_result1_role:$('#ceo_rnd_result1_role').val(),//varchar2	40					연구개발 역할
        ceo_rnd_result1_result:$('#ceo_rnd_result1_result').val(),//varchar2	100					연구개발 주요성과
        ceo_rnd_result2:$('#ceo_rnd_result2').val(),//varchar2	100					대표자의 연구개발 과제, 논문명
        ceo_rnd_result2_org:$('#ceo_rnd_result2_org').val(),//varchar2	40					연구개발 기관
        ceo_rnd_result2_dur:$('#ceo_rnd_result2_dur').val(),//varchar2	40					연구개발 기간
        ceo_rnd_result2_role:$('#ceo_rnd_result2_role').val(),//varchar2	40					연구개발 역할
        ceo_rnd_result2_result:$('#ceo_rnd_result2_result').val(),//varchar2	100					연구개발 주요성과
        rnd_effort1:$('#rnd_effort1').val(),//varchar2	200					연구개발추진현황
        rnd_effort1_type:$('#rnd_effort1_type').val()*1,//number	4					연구개발 타입	0:자체개발, 1:국가과제
        rnd_effort1_etc:$('#rnd_effort1_etc').val(),//varchar2	40					연구개발 비고, 특허, 인증
        rnd_effort2:$('#rnd_effort2').val(),//varchar2	200					연구개발추진현황
        rnd_effort2_type:$('#rnd_effort2_type').val()*1,//number	4					연구개발 타입	0:자체개발, 1:국가과제
        rnd_effort2_etc:$('#rnd_effort2_etc').val(),//varchar2	40					연구개발 비고, 특허, 인증
        rnd_effort3:$('#rnd_effort3').val(),//varchar2	200					연구개발추진현황
        rnd_effort3_type:$('#rnd_effort3_type').val()*1,//number	4					연구개발 타입	0:자체개발, 1:국가과제
        rnd_effort3_etc:$('#rnd_effort3_etc').val(),//varchar2	40					연구개발 비고, 특허, 인증
        rnd_effort4:$('#rnd_effort4').val(),//varchar2	200					연구개발추진현황
        rnd_effort4_type:$('#rnd_effort4_type').val()*1,//number	4					연구개발 타입	0:자체개발, 1:국가과제
        rnd_effort4_etc:$('#rnd_effort4_etc').val(),//varchar2	40					연구개발 비고, 특허, 인증
        rnd_effort5:$('#rnd_effort5').val(),//varchar2	200					연구개발추진현황
        rnd_effort5_type:$('#rnd_effort5_type').val()*1,//number	4					연구개발 타입	0:자체개발, 1:국가과제
        rnd_effort5_etc:$('#rnd_effort5_etc').val(),//varchar2	40					연구개발 비고, 특허, 인증
        rnd_effort6:$('#rnd_effort6').val(),//varchar2	200					연구개발추진현황
        rnd_effort6_type:$('#rnd_effort6_type').val()*1,//number	4					연구개발 타입	0:자체개발, 1:국가과제
        rnd_effort6_etc:$('#rnd_effort6_etc').val(),//varchar2	40					연구개발 비고, 특허, 인증
        own_ip1:$('#own_ip1').val(),//varchar2	100					지재권보유 명칭
        own_ip1_type:$('#own_ip1_type').val(),//varchar2	40					지재권 타입
        own_ip1_code:$('#own_ip1_code').val(),//varchar2	40					지재권 출원번호
        own_ip1_date:$('#own_ip1_date').val(),//varchar2	40					지재권 출원날짜
        own_ip1_org:$('#own_ip1_org').val(),//varchar2	40					지재권 담당기관
        own_ip1_etc:$('#own_ip1_etc').val(),//varchar2	40					지재권 비고
        own_ip2:$('#own_ip2').val(),//varchar2	100					지재권보유 명칭
        own_ip2_type:$('#own_ip2_type').val(),//varchar2	40					지재권 타입
        own_ip2_code:$('#own_ip2_code').val(),//varchar2	40					지재권 출원번호
        own_ip2_date:$('#own_ip2_date').val(),//varchar2	40					지재권 출원날짜
        own_ip2_org:$('#own_ip2_org').val(),//varchar2	40					지재권 담당기관
        own_ip2_etc:$('#own_ip2_etc').val(),//varchar2	40					지재권 비고
        own_ip3:$('#own_ip3').val(),//varchar2	100					지재권보유 명칭
        own_ip3_type:$('#own_ip3_type').val(),//varchar2	40					지재권 타입
        own_ip3_code:$('#own_ip3_code').val(),//varchar2	40					지재권 출원번호
        own_ip3_date:$('#own_ip3_date').val(),//varchar2	40					지재권 출원날짜
        own_ip3_org:$('#own_ip3_org').val(),//varchar2	40					지재권 담당기관
        own_ip3_etc:$('#own_ip3_etc').val(),//varchar2	40					지재권 비고
        own_cert1:$('#own_cert1').val(),//varchar2	100					인증보유 명칭
        own_cert1_type:$('#own_cert1_type').val(),//varchar2	40					인증 타입
        own_cert1_code:$('#own_cert1_code').val(),//varchar2	40					인증등록번호
        own_cert1_date:$('#own_cert1_date').val(),//varchar2	40					인증 출원날짜
        own_cert2:$('#own_cert2').val(),//varchar2	100					인증보유 명칭
        own_cert2_type:$('#own_cert2_type').val(),//varchar2	40					인증 타입
        own_cert2_code:$('#own_cert2_code').val(),//varchar2	40					인증등록번호
        own_cert2_date:$('#own_cert2_date').val(),//varchar2	40					인증 출원날짜
        own_cert3:$('#own_cert3').val(),//varchar2	100					인증보유 명칭
        own_cert3_type:$('#own_cert3_type').val(),//varchar2	40					인증 타입
        own_cert3_code:$('#own_cert3_code').val(),//varchar2	40					인증등록번호
        own_cert3_date:$('#own_cert3_date').val(),//varchar2	40					인증 출원날짜
        own_device1:$('#own_device1').val(),//varchar2	100					보유장비명
        own_device1_weight:$('#own_device1_weight').val(),//varchar2	40					무게
        own_device1_size:$('#own_device1_size').val(),//varchar2	40					크기(wxdxh)
        own_device1_pw:$('#own_device1_pw').val(),//varchar2	10					사용전원
        own_device1_wat:$('#own_device1_wat').val(),//varchar2	10					소비전력
        own_device1_type:$('#own_device1_type').val(),//varchar2	10					용도
        is_in_own_device1:$('#is_in_own_device1').val()*1,//number	4					설치여부	0:n, 1:y
        own_device2:$('#own_device2').val(),//varchar2	100					보유장비명
        own_device2_weight:$('#own_device2_weight').val(),//varchar2	40					무게
        own_device2_size:$('#own_device2_size').val(),//varchar2	40					크기(wxdxh)
        own_device2_pw:$('#own_device2_pw').val(),//varchar2	10					사용전원
        own_device2_wat:$('#own_device2_wat').val(),//varchar2	10					소비전력
        own_device2_type:$('#own_device2_type').val(),//varchar2	10					용도
        is_in_own_device2:$('#is_in_own_device2').val()*1,//number	4					설치여부	0:n, 1:y
        own_device3:$('#own_device3').val(),//varchar2	100					보유장비명
        own_device3_weight:$('#own_device3_weight').val(),//varchar2	40					무게
        own_device3_size:$('#own_device3_size').val(),//varchar2	40					크기(wxdxh)
        own_device3_pw:$('#own_device3_pw').val(),//varchar2	10					사용전원
        own_device3_wat:$('#own_device3_wat').val(),//varchar2	10					소비전력
        own_device3_type:$('#own_device3_type').val(),//varchar2	10					용도
        is_in_own_device3:$('#is_in_own_device3').val()*1,//number	4					설치여부	0:n, 1:y
        demo_needs:$('#demo_needs').val(),//varchar2	3000					실증배경, 필요성, 목표
        demo_main_point:$('#demo_main_point').val(),//varchar2	3000					실증관리 핵심요소
        demo_use_plan:$('#demo_use_plan').val(),//varchar2	3000					실증결과 활용계획
        demo_facil_mat:$('#demo_facil_mat').val(),//varchar2	200					실증대상 기자재 시설자재
        demo_facil_ict:$('#demo_facil_ict').val(),//varchar2	200					실증대상 ict 기자재
        demo_facil_fer:$('#demo_facil_fer').val(),//varchar2	200					실증대상 작물보호제 및 비료
        demo_facil_sw:$('#demo_facil_sw').val(),//varchar2	200					실증대상 sw
        demo_facil_robot:$('#demo_facil_robot').val(),//varchar2	200					실증대상 로봇
        demo_facil_model:$('#demo_facil_model').val(),//varchar2	200					실증대상 생육모델
        demo_paln_gh:$('#demo_paln_gh').val(),//varchar2	3000					실증설계 온실설치
        demo_paln_facil:$('#demo_paln_facil').val(),//varchar2	3000					실증설계 기자재 설치
        demo_paln_exper:$('#demo_paln_exper').val(),//varchar2	3000					실증설계 실험분석
        demo_paln_mng:$('#demo_paln_mng').val(),//varchar2	3000					실증관리
        demo_plan_ip:$('#demo_plan_ip').val(),//varchar2	3000					사업계획 지자재, 인증
        demo_plan_target:$('#demo_plan_target').val(),//varchar2	3000					사업계획 국내외 시장
        demo_plan_sales:$('#demo_plan_sales').val(),//varchar2	3000					사업계획 판매계획
        demo_plan_post:$('#demo_plan_post').val(),//varchar2	3000					사업계획 향후
        in_facil_mat:$('#in_facil_mat').val(),//varchar2	40					반입기자재 시설자재명칭
        in_facil_mat_type:$('#in_facil_mat_type').val(),//varchar2	10					반입기자재 용도
        in_facil_mat_stnrd:$('#in_facil_mat_stnrd').val(),//varchar2	10					반입기자재 단위,규격
        in_facil_mat_amount:$('#in_facil_mat_amount').val()*1,//number	4					 반입기자재 수량
        in_facil_mat_val:$('#in_facil_mat_val').val()*1,//number	4					반입기자재 단가
        in_facil_mat_price:$('#in_facil_mat_price').val()*1,//number	10					반입기자재 가격
        in_facil_ict:$('#in_facil_ict').val(),//varchar2	40					ict 반입기자재 시설자재명칭
        in_facil_ict_type:$('#in_facil_ict_type').val(),//varchar2	10					반입기자재 용도
        in_facil_ict_stnrd:$('#in_facil_ict_stnrd').val(),//varchar2	10					반입기자재 단위,규격
        in_facil_ict_amount:$('#in_facil_ict_amount').val()*1,//number	4					 반입기자재 수량
        in_facil_ict_val:$('#in_facil_ict_val').val()*1,//number	4					반입기자재 단가
        in_facil_ict_price:$('#in_facil_ict_price').val()*1,//number	10					반입기자재 가격
        in_facil_fer:$('#in_facil_fer').val(),//varchar2	40					fer 반입기자재 시설자재명칭
        in_facil_fer_type:$('#in_facil_fer_type').val(),//varchar2	10					반입기자재 용도
        in_facil_fer_stnrd:$('#in_facil_fer_stnrd').val(),//varchar2	10					반입기자재 단위,규격
        in_facil_fer_amount:$('#in_facil_fer_amount').val()*1,//number	4					 반입기자재 수량
        in_facil_fer_val:$('#in_facil_fer_val').val()*1,//number	4					반입기자재 단가
        in_facil_fer_price:$('#in_facil_fer_price').val()*1,//number	10					반입기자재 가격
        in_facil_sw:$('#in_facil_sw').val(),//varchar2	40					sw 반입기자재 시설자재명칭
        in_facil_sw_type:$('#in_facil_sw_type').val(),//varchar2	10					반입기자재 용도
        in_facil_sw_stnrd:$('#in_facil_sw_stnrd').val(),//varchar2	10					반입기자재 단위,규격
        in_facil_sw_amount:$('#in_facil_sw_amount').val()*1,//number	4					 반입기자재 수량
        in_facil_sw_val:$('#in_facil_sw_val').val()*1,//number	4					반입기자재 단가
        in_facil_sw_price:$('#in_facil_sw_price').val()*1,//number	10					반입기자재 가격
        in_facil_seeding:$('#in_facil_seeding').val(),//varchar2	40					seed 반입기자재 시설자재명칭
        in_facil_seedingtype:$('#in_facil_seedingtype').val(),//varchar2	10					반입기자재 용도
        in_facil_seeding_stnrd:$('#in_facil_seeding_stnrd').val(),//varchar2	10					반입기자재 단위,규격
        in_facil_seeding_amount:$('#in_facil_seeding_amount').val()*1,//number	4					 반입기자재 수량
        in_facil_seeding_val:$('#in_facil_seeding_val').val()*1,//number	4					반입기자재 단가
        in_facil_seeding_price:$('#in_facil_seeding_price').val()*1,//number	10					반입기자재 가격
        in_facil_robot:$('#in_facil_robot').val(),//varchar2	40					robot 반입기자재 시설자재명칭
        in_facil_robot_type:$('#in_facil_robot_type').val(),//varchar2	10					반입기자재 용도
        in_facil_robot_stnrd:$('#in_facil_robot_stnrd').val(),//varchar2	10					반입기자재 단위,규격
        in_facil_robot_amount:$('#in_facil_robot_amount').val()*1,//number	4					 반입기자재 수량
        in_facil_robot_val:$('#in_facil_robot_val').val()*1,//number	4					반입기자재 단가
        in_facil_robot_price:$('#in_facil_robot_price').val()*1,//number	10					반입기자재 가격
        in_hazd_chemical1:$('#in_hazd_chemical1').val()*1,//varchar2	40					반입 유해화학물질 명
        in_hazd_chemical1_form:$('#in_hazd_chemical1_form').val(),//varchar2	20					반입 유해화학물질 화학식
        in_hazd_chemical1_amount:$('#in_hazd_chemical1_amount').val(),//varchar2	20					반입 유해화학물질 예상사용량
        in_hazd_chemical1_case:$('#in_hazd_chemical1_case').val(),//varchar2	20					반입 유해화학물질 보관함
        in_hazd_chemical1_loc:$('#in_hazd_chemical1_loc').val(),//varchar2	20					반입 유해화학물질 보관장소
        in_hazd_chemical1_etc:$('#in_hazd_chemical1_etc').val(),//varchar2	40					반입 유해화학물질 특이사항
        in_hazd_chemical2:$('#in_hazd_chemical2').val(),//varchar2	40					반입 유해화학물질 명
        in_hazd_chemical2_form:$('#in_hazd_chemical2_form').val(),//varchar2	20					반입 유해화학물질 화학식
        in_hazd_chemical2_amount:$('#in_hazd_chemical2_amount').val(),//varchar2	20					반입 유해화학물질 예상사용량
        in_hazd_chemical2_case:$('#in_hazd_chemical2_case').val(),//varchar2	20					반입 유해화학물질 보관함
        in_hazd_chemical2_loc:$('#in_hazd_chemical2_loc').val(),//varchar2	20					반입 유해화학물질 보관장소
        in_hazd_chemical2_etc:$('#in_hazd_chemical2_etc').val(),//varchar2	40					반입 유해화학물질 특이사항
        in_hazd_chemical3:$('#in_hazd_chemical3').val(),//varchar2	40					반입 유해화학물질 명
        in_hazd_chemical3_form:$('#in_hazd_chemical3_form').val(),//varchar2	20					반입 유해화학물질 화학식
        in_hazd_chemical3_amount:$('#in_hazd_chemical3_amount').val(),//varchar2	20					반입 유해화학물질 예상사용량
        in_hazd_chemical3_case:$('#in_hazd_chemical3_case').val(),//varchar2	20					반입 유해화학물질 보관함
        in_hazd_chemical3_loc:$('#in_hazd_chemical3_loc').val(),//varchar2	20					반입 유해화학물질 보관장소
        in_hazd_chemical3_etc:$('#in_hazd_chemical3_etc').val(),//varchar2	40					반입 유해화학물질 특이사항
        waste_water_amount:$('#waste_water_amount').val(),//varchar2	20					폐기물 오염수 발생량
        waste_water_case:$('#waste_water_case').val(),//varchar2	20					폐기물 오염수보관장소
        waste_water_ext_plan:$('#waste_water_ext_plan').val(),//varchar2	100					폐기물 오염수 방출계획
        waste_soil_amount:$('#waste_soil_amount').val(),//varchar2	20					폐기물 토양 발생량
        waste_soil_case:$('#waste_soil_case').val(),//varchar2	20					폐기물 토양 보관장소
        waste_soil_ext_plan:$('#waste_soil_ext_plan').val(),//varchar2	100					폐기물 토양 방출계획
        facil_pw1:$('#facil_pw1').val(),//varchar2	100					소요전력 장비명
        facil_pw1_type:$('#facil_pw1_type').val(),//varchar2	20					소요전력 장비 용도
        facil_pw1_v:$('#facil_pw1_v').val(),//varchar2	10					소요전력 장비 사용전원
        facil_pw1_w:$('#facil_pw1_w').val(),//varchar2	10					소요전력 장비 소비전력
        facil_pw2:$('#facil_pw2').val(),//varchar2	100					소요전력 장비명
        facil_pw2_type:$('#facil_pw2_type').val(),//varchar2	20					소요전력 장비 용도
        facil_pw2_v:$('#facil_pw2_v').val(),//varchar2	10					소요전력 장비 사용전원
        facil_pw2_w:$('#facil_pw2_w').val(),//varchar2	10					소요전력 장비 소비전력
        facil_pw3:$('#facil_pw3').val(),//varchar2	100					소요전력 장비명
        facil_pw3_type:$('#facil_pw3_type').val(),//varchar2	20					소요전력 장비 용도
        facil_pw3_v:$('#facil_pw3_v').val(),//varchar2	10					소요전력 장비 사용전원
        facil_pw3_w:$('#facil_pw3_w').val(),//varchar2	10					소요전력 장비 소비전력
        userBsHumanResourceVOList:userBsHumanResourceVOList
    }

    //console.log(JSON.stringify(param_detail));

    $.ajax({
        type: 'post',
        url :'app_step3_detail_save_temp', //데이터를 주고받을 파일 주소 입력
        data: JSON.stringify(param_detail),//보내는 데이터
        contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
        dataType:'json',//받는 데이터 타입
        success: function(result){
            //작업이 성공적으로 발생했을 경우
            if(result.result_code=="SUCCESS"){
                // alert(result.result_str);

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

    if(document.querySelector('#user_demobs_file').files[0]){
        var formData = new FormData();
        formData.append("file1", document.querySelector('#user_demobs_file').files[0]);
        formData.append("sender", "${userDemoBs.idx_user}");
        formData.append("bs_idx", "${userDemoBs.idx_user_demo_bs}");
        $.ajax({
            type: 'post',
            url :'app_step3_save_docs', //데이터를 주고받을 파일 주소 입력
            data: formData,//보내는 데이터
            contentType: false,//보내는 데이터 타입
            processData: false,//Jquery 내부에서 파일을 queryString 형태로 전달하는 것을 방지
            dataType:'json',//받는 데이터 타입
            enctype: 'multipart/form-data',
            success: function(result){
                if(result.result_code=="SUCCESS"){
                    alert(result.result_str);

                }
                else {
                    alert(result.result_str);
                }
            },
            error:function(err){
                console.log(err);
            }
        });
    }

}
</script>



</body>
</html>
