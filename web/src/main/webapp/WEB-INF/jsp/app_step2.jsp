<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/12/14
  Time: 11:18 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                            <th class="th__left">실증단지이용자</th>
                            <td class="td__left" colspan="5">
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type1" name="user_type" value="0">
                                    <label for="user_type1">개인(기업설립예정 포함)</label>
                                </div>
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type2" name="user_type" value="1" checked>
                                    <label for="user_type2">일반기업</label>
                                </div>
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type3" name="user_type" value="3">
                                    <label for="user_type3">농업진흥기관</label>
                                </div>
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type4" name="user_type" value="4">
                                    <label for="user_type4">선도기관</label>
                                </div>
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type5" name="user_type" value="6">
                                    <label for="user_type5">연구기관</label>
                                </div>
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type6" name="user_type" value="9">
                                    <label for="user_type6">대학교</label>
                                </div>
                                <div class="radio checkbox--inline">
                                    <input type="radio" id="user_type7" name="user_type" value="99">
                                    <label for="user_type7">기타단체</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">기업명</th>
                            <td class="td__left" colspan="2"><input id = "corp_name" type="text"></td>
                            <th class="th__left">설립일</th>
                            <td class="td__left" colspan="2"><input id = "corp_birth" type="text"></td>
                        </tr>
                        <tr>
                            <th class="th__left">사업자등록번호</th>
                            <td class="td__left" colspan="2"><input id = "corp_num" type="text"></td>
                            <th class="th__left">법인등록번호</th>
                            <td class="td__left" colspan="2"><input id = "corp_reg_num" type="text"></td>
                        </tr>
                        <tr>
                            <th class="th__left">소재지 본사</th>
                            <td class="td__left" colspan="5">
                                <a href="#" class="btn modify btn-lg">찾기</a>
                                <input id = "corp_addr" type="text" style="width: calc(100% - 70px);">
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">소재지 연구소</th>
                            <td class="td__left" colspan="5">
                                <a href="#" class="btn modify btn-lg">찾기</a>
                                <input id = "corp_rnd_addr" type="text" style="width: calc(100% - 70px);">
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">전년도매출액</th>
                            <td class="td__left"><div class="input--group"><input id = "corp_sales_amount" type="text" placeholder="" style="width:180px; padding-right:60px;" class="user__input"><span class="user__text">백만원</span></div></td>
                            <th class="th__left">자기자본비율</th>
                            <td class="td__left"><div class="input--group"><input id = "corp_er" type="text" placeholder="" style="width:130px;" class="user__input"><span class="user__text">%</span></div></td>
                            <th class="th__left">상근인원</th>
                            <td class="td__left"><div class="input--group"><input id = "employees_count" type="text" placeholder="" style="width:130px;" class="user__input"><span class="user__text">명</span></div></td>
                        </tr>
                        <tr>
                            <th class="th__left" rowspan="2">업태, 종목</th>
                            <td class="th__left"><input id = "bs_type1" type="text"></td>
                            <th class="th__left" rowspan="2">주 생산 품목</th>
                            <td class="th__left" rowspan="2" colspan="3">
                                <textarea name="main_product" id="main_product" cols="10" rows="4"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td class="th__left"><input id = "bs_type2" type="text"></td>
                        </tr>
                        <tr>
                            <th class="th__left">개발예정품목(기술)</th>
                            <td class="th__left" colspan="5"><input id = "demobs_tech_plan" type="text"></td>
                        </tr>
                        <tr>
                            <th class="th__left">이용신청시설</th>
                            <td class="td__left" colspan="5">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="req_facility1" name="req_facility">
                                    <label for="req_facility1">온실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="req_facility2" name="req_facility">
                                    <label for="req_facility2">R&amp;D연구실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="req_facility3" name="req_facility">
                                    <label for="req_facility3">스타트업사무실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="req_facility4" name="req_facility">
                                    <label for="req_facility4">기타</label> <input id="resident_etc" type="text" style="width:300px" placeholder="">
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
                                    <input type="checkbox" id="user_demo_type1" name="user_demo_type">
                                    <label for="user_demo_type1">자율</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_type2" name="user_demo_type">
                                    <label for="user_demo_type2">위탁</label>
                                </div>
                            </td>
                            <th class="th__left">실증시설</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_facility1" name="user_demo_facility">
                                    <label for="user_demo_facility1">단동비닐</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_facility2" name="user_demo_facility">
                                    <label for="user_demo_facility2">연동비닐</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_facility3" name="user_demo_facility">
                                    <label for="user_demo_facility3">육묘장</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_facility4" name="user_demo_facility">
                                    <label for="user_demo_facility4">노지</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_facility5" name="user_demo_facility">
                                    <label for="user_demo_facility5">단동유리</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_facility6" name="user_demo_facility">
                                    <label for="user_demo_facility6">연동비닐 연동유리</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_facility7" name="user_demo_facility">
                                    <label for="user_demo_facility7">식물공장</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">실증방법</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_way1" name="user_demo_way">
                                    <label for="user_demo_way1">비교실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_way2" name="user_demo_way">
                                    <label for="user_demo_way2">단순실증</label>
                                </div>
                            </td>
                            <th class="th__left">실증목적</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_goal1" name="user_demo_goal">
                                    <label for="user_demo_goal1">성능확인</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_goal2" name="user_demo_goal">
                                    <label for="user_demo_goal2">자체평가</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">실증횟수</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_repeat1" name="user_demo_repeat">
                                    <label for="user_demo_repeat1">1회성실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_repeat2" name="user_demo_repeat">
                                    <label for="user_demo_repeat2">반복실증</label>
                                </div>
                            </td>
                            <th class="th__left">실증작물</th>
                            <td class="td__left">
                                <input id="user_demo_crops" type="text" value="작물명:">
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">실증조건</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_option1" name="user_demo_option">
                                    <label for="user_demo_option1">일반환경</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="user_demo_option2" name="user_demo_option">
                                    <label for="user_demo_option2">특수환경</label>
                                </div>
                            </td>
                            <th class="th__left">생육토양</th>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="culture_soil1" name="culture_soil">
                                    <label for="culture_soil1">토경재배</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="culture_soil2" name="culture_soil">
                                    <label for="culture_soil2">수경재배</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="culture_soil3" name="culture_soil">
                                    <label for="culture_soil3">고형배지배</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">실증대상</th>
                            <td class="td__left" colspan="3">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="demo_type1" name="demo_type">
                                    <label for="demo_type1">시설자재</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="demo_type2" name="demo_type">
                                    <label for="demo_type2">ICT기자재</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="demo_type3" name="demo_type">
                                    <label for="demo_type3">작물보호제/비료</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="demo_type4" name="demo_type">
                                    <label for="demo_type4">스마트팜SW</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="demo_type5" name="demo_type">
                                    <label for="demo_type5">생육모델</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="demo_type6" name="demo_type">
                                    <label for="demo_type6">로봇</label>
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
                                    <input type="checkbox" id="resident_type1" name="resident_type">
                                    <label for="resident_type1">R&amp;D연구실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="resident_type2" name="resident_type">
                                    <label for="resident_type2">스타트업사무실</label>
                                </div>
                                <br>
                                2.상주인력:
                                <input id="staff_num" type="text" style="width:calc(100% - 80px)">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <%--                        corp_name:,//		varchar2	100					회사이름
                                            String ;//		varchar2	20					회사 설립일
                                            String ;//		varchar2	20					사업자등록번호
                                            String ;//		varchar2	20					법인등록번호
                                            String ;//		varchar2	200					본사 소재지
                                            String ;//		varchar2	200					본사 소재지
                                            int ;//		number	10					매출액
                                            int ;//	number	10					자기자본비율
                                            int ;//	number	10					직원수
                                            String ;//	varchar2	20					업태 종목
                                            String bs_type2;//	varchar2	20					업태 종목
                                            String ;//	varchar2	200					주생산품목
                                            String ;//	varchar2	100					개발예정품목
                                            String ;//	varchar2	100					대표자 이름
                                            String ceo_mnumber;//	varchar2	20					대표자 모바일번호
                                            String ceo_pnumber;//	varchar2	20					대표자 사무실 번호
                                            String ceo_email;//	varchar2	400					대표자 이메일
                                            String ;//	varchar2	1000					대표자 주소
                                            String man_name;//	varchar2	100					담당자 이름
                                            String man_mnumber;//	varchar2	20					담당자 모바일 번호
                                            String man_pnumber;//	varchar2	20					담당자 사무실 번호
                                            String man_email;//	varchar2	400					담당자 이메일--%>
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
                                    <input id="ceo_name" type="text">
                                </td>
                                <th class="th__left" rowspan="2">전화번호</th>
                                <td class="td__left">
                                    사무실 <input type="text" style="width: calc(100% - 47px);">
                                </td>


<%--                                <th class="th__left">주소</th>
                                <td class="td__left">
                                    <a href="#" class="btn modify btn-lg">찾기</a>
                                    <input id="ceo_address" type="text" style="width: calc(100% - 70px);">
                                </td>--%>
                            </tr>
                            <tr>
                                <th class="th__left">E-mail</th>
                                <td class="td__left">
                                    <input type="text">
                                </td>
                                <td class="td__left">
                                    휴대폰 <input type="text" style="width: calc(100% - 47px);">
                                </td>

<%--                                <th class="th__left">FAX</th>
                                <td class="td__left">
                                    <input type="text">
                                </td>--%>
                            </tr>
                            <tr>



                                <th class="th__left">주소</th>
                                <td class="td__left">
                                    <a href="#" class="btn modify btn-lg">찾기</a>
                                    <input id="ceo_address" type="text" style="width: calc(100% - 70px);">
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
            <button id="btn_save" class="btn dark btn-lg fl-left">임시저장</button>
            <button id="btn_app_step1" class="btn info btn-lg ">이전</button>
            <button id="btn_app_step3" class="btn submit btn-lg ">다음</button>
        </div>
    </div>
</div>

<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/ui.common.js" type="text/javascript"></script>


<script>
    $("#btn_app_step1").click(function(){
        location.href='app_step1';
    });

    $("#btn_app_step3").click(function(){
        location.href='app_step3';
    });

    $("#select-business").change(function (){
        console.log($(this).val());
        var param  = {
            "idx_demo_business":${userDemoBs.idx_demo_business},//		number	32		0		◯	지원사업
            "user_demobs_status":${userDemoBs.user_demobs_status},//									0:최초저장, 1:등록검토중,
            "idx_user":${userDemoBs.idx_user},//		number	32	n			◯	인덱스	신청서 작성자
            //String user_demo_bs_app_code;//		varchar2	20	n				신청번호	"자동 생성     app+사업번호(000000)+신청번호(000000)     사업번호:idx_demo_bs     신청번호:seq_user_demo_bs"

            "app_step":<c:if test="${userDemoBs.app_step eq 0}">1</c:if> <c:if test="${userDemoBs.app_step ne 0}">${userDemoBs.idx_user}</c:if>,//		number	4		1			신청서 작성 단계	"신청 단계, 최종 저장 단계             1:이용 신청서 작성, 2: 실증계획서 작성, 3:개인수집 동의서 작성, 4: 기타서류 등록, 5: 신청서 확인, 6: 신청함"

            "user_demo_bs_type":$('input[name="user_type"]:checked').val(), //		number	4		1			사업 진행 주체 타입	0:개인, 1:일반기업, 2:미등록기업(설립전), 3: 농업진흥기관, 4:선도기업, 5:외국연구기관, 6:특정연구기관, 7:정부출연연구기관, 8:스마트팜 관련 기업부설연구소 보유기업, 9: 대학교, 99:기타 단체
            //long idx_corp_info;//		number	32		0		◯	지원회사
            corp_name:123,//		varchar2	100					회사이름
            /*String corp_birth;//		varchar2	20					회사 설립일
            String corp_num;//		varchar2	20					사업자등록번호
            String corp_reg_num;//		varchar2	20					법인등록번호
            String corp_addr;//		varchar2	200					본사 소재지
            String corp_rnd_addr;//		varchar2	200					본사 소재지
            int corp_sales_amount;//		number	10					매출액
            int corp_er;//	number	10					자기자본비율
            int employees_count;//	number	10					직원수
            String bs_type1;//	varchar2	20					업태 종목
            String bs_type2;//	varchar2	20					업태 종목
            String main_product;//	varchar2	200					주생산품목
            String demobs_tech_plan;//	varchar2	100					개발예정품목
            String ceo_name;//	varchar2	100					대표자 이름
            String ceo_mnumber;//	varchar2	20					대표자 모바일번호
            String ceo_pnumber;//	varchar2	20					대표자 사무실 번호
            String ceo_email;//	varchar2	400					대표자 이메일
            String ceo_address;//	varchar2	1000					대표자 주소
            String man_name;//	varchar2	100					담당자 이름
            String man_mnumber;//	varchar2	20					담당자 모바일 번호
            String man_pnumber;//	varchar2	20					담당자 사무실 번호
            String man_email;//	varchar2	400					담당자 이메일
            int user_demo_type;//	number	4		0			실증 주체	0:자율, 1:위탁
            int user_demo_facility;//	number	4		1			실증 시설	1:단동, 2:연동, 4:육묘장, 8:노지, 16:단동유리, 32:연동유리, 64:식물공장
            int user_demo_way;//	number	4		0			실증 방법	0: 단순, 1:비교
            int user_demo_repeat;//	number	4		0			실증횟수	0:반복 없음, 1:반복실증
            int user_demo_goal;//	number	4		0			실증 목표	0::성능확인, 1:자체평가
            int user_demo_option;//	number	4		0			실증 조건	0: 일반환경, 1:특수환경
            String user_demo_crops;//	varchar2	100					실증작물
            int culture_soil;//	number	4		0			생육토양	0: 토경재배, 1:수경재배, 2:고형배지재배
            int demo_type;//	number	4		0			실증 대상	0:해당없음, 1:시설자재, 2:ict기자재, 4:작물보호제/비료, 8:스마트팜sw, 16:생육모델, 32:로봇, 512:기타
            Date demo_start_date;//	date						입주 시작 날짜
            Date demo_end_date;//	date						입주 종료 날짜
            int resident_type;//	number	4		0			상주 타입	0:해당없음, 1:r&d연구실, 2:스타트업사무실, 512:기타
            String resident_etc;//	varchar2	100					이용 실증시설 기타	이용 신청시설 기타 내용
            int staff_num;//	number	10					상주인원
            int is_change;//	number	4		0			실증계획 변경	0:최초등록 동일, 1:심사후 협약전 변경, 2:협약 후 진행 시 변경,
            int is_confirm;//	number	4		0			실증계획 승인 여부	0:승인전, 1:승인
            int is_share;//	number	4		0			실증계획 승인 통보 여부	0:통보전, 1:통보
            Date reg_date;//	date						최초 등록 일시
            Date last_upd_date;//	date						최종 수정 일시
            DemoBsMsgVO demoBsMsgVo;*/


            "idx_user":${user.idx_user},
            "idx_user_demo_bs":$(this).val()
        };


        if($(this).val()!=0){
            $.ajax({
                type: 'post',
                url :'user_demo_bs_check', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(param),//보내는 데이터
                contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                dataType:'json',//받는 데이터 타입
                success: function(result){
                    //작업이 성공적으로 발생했을 경우
                    if(result.result_code=="STATUS_001"){
                        //alert("신청할 수 있습니다");
                        $('#btn_app_step2').attr('disabled', false);
                    }
                    else {
                        alert(result.result_str);
                    }
                    //STATUS_001 : 신청한 사업 없음 -> 신규신청 가능
                    //STATUS_002 : 신청을 위해 저장한 사업 있고 신청하지는 않음  -> 변경 가능/신규 생성 가능(기존것 삭제)
                    //STATUS_003 : 신청을 완료한 상태이지만 수정 변경을 요청한 경우 -> 변경 가능/신규 생성 불가
                    //STATUS_004 : 이미 신청완료 되었고 내용 수정 완료됨, 협약 체결 단계-> 변경, 삭제 불가/신규 불가
                },
                error:function(){
                    //에러가 났을 경우 실행시킬 코드
                }
            });
        }
    });

    function save_temp(){
        var param;

        param  = {
            "idx_user":${user.idx_user},
            "idx_user_demo_bs":$(this).val()
        };


        if($(this).val()!=0){
            $.ajax({
                type: 'post',
                url :'user_demo_bs_check', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(param),//보내는 데이터
                contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                dataType:'json',//받는 데이터 타입
                success: function(result){
                    //작업이 성공적으로 발생했을 경우
                    if(result.result_code=="STATUS_001"){
                        //alert("신청할 수 있습니다");
                        $('#btn_app_step2').attr('disabled', false);
                    }
                    else {
                        alert(result.result_str);
                    }
                    //STATUS_001 : 신청한 사업 없음 -> 신규신청 가능
                    //STATUS_002 : 신청을 위해 저장한 사업 있고 신청하지는 않음  -> 변경 가능/신규 생성 가능(기존것 삭제)
                    //STATUS_003 : 신청을 완료한 상태이지만 수정 변경을 요청한 경우 -> 변경 가능/신규 생성 불가
                    //STATUS_004 : 이미 신청완료 되었고 내용 수정 완료됨, 협약 체결 단계-> 변경, 삭제 불가/신규 불가
                },
                error:function(){
                    //에러가 났을 경우 실행시킬 코드
                }
            });
        }
    }

</script>





</body>
</html>
