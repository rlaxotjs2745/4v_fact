<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/08/30
  Time: 6:02 오후
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
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/assets/image/favicon_16.ico">
    <link rel="icon" href="<%=request.getContextPath()%>/static/assets/image/favicon_16.png">
    <link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/static/assets/image/favicon_152.png">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/assets/css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/assets/css/style.css">
</head>
<body>
    <div class="wrapper" id="wrapper">
        <header class="header">
            <h1><a href="index"><img src="<%=request.getContextPath()%>/static/assets/image/area_logo@3x.png" alt="전북김제"><img src="<%=request.getContextPath()%>/static/assets/image/h1_logo@3x.png" alt="스마트팜 실증센터"></a></h1>
            <div class="menu__anchor"><a href="#"><img src="<%=request.getContextPath()%>/static/assets/image/ico_menu.svg" alt="전체메뉴열기"></a></div>

            <nav class="nav "><!--is-expanded-->
                <a href="#none" class="btn-close-menu"><img src="<%=request.getContextPath()%>/static/assets/image/ico_close.png" alt="레이어닫기"></a>
                <div class="common__search">
                    <div class="common__search--input">
                        <input type="text" value="" placeholder="검색어를 입력하세요.">
                        <a href="#none" class="btn btn-cancel d-none">취소</a>
                    </div>
                    <div class="search__word--lists">
                        <span class="search__word--title">빠른링크</span>
                        <a href="util_search" class="search__word">실증 신청 방법</a>
                        <a href="util_search" class="search__word">실증 신청서 샘플</a>
                        <a href="util_search" class="search__word">실증 센터란?</a>
                        <a href="util_search" class="search__word">이용료</a>
                    </div>
                </div>
                <c:choose>
                    <c:when test="${sessionScope.userid eq null}">
                        <!--로그인전-->
                        <div class="common__login">
                            <div class="login__message">로그인을 해주세요. <a href="login" class="btn dark btn-lg"><img src="<%=request.getContextPath()%>/static/assets/image/ico_login_n.svg" alt="">로그인</a>
                            </div>
                        </div>
                    </c:when>
                    <c:when test="${sessionScope.userid ne null}">
                        <!--로그인후-->
                        <div class="common__login--in">
                            <div class="info__message"><em>안녕하세요.</em><strong>홍길동님</strong> <a href="index" class="btn btn-login">로그아웃</a></div>
                        </div>
                    </c:when>
                </c:choose>
                <ul class="nav--depth1">
                    <li class="link--home"><a href="index">홈</a></li>
                    <li><a href="#" class="">실증 안내/신청</a>
                        <ul class="nav--depth2">
                            <li><a href="prv_part">실증 분야</a></li>
                            <li><a href="prv_step">실증 절차</a></li>
                            <li><a href="prv_use">이용가능시설</a></li>
                            <li><a href="prv_fee">실증서비스 이용료</a></li>
                            <li><a href="prv_application">신청서 작성</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="">센터소개</a><!--is-selected-->
                        <ul class="nav--depth2">
                            <li><a href="cnt_goal">비전과 미션</a></li>
                            <li><a href="cnt_history">연혁</a></li>
                            <li><a href="cnt_organize">조직과 직원</a></li>
                            <li><a href="cnt_map">찾아오시는 길</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="">열린마당</a>
                        <ul class="nav--depth2">
                            <li><a href="brd_notice?page=1">공지사항</a></li>
                            <li><a href="brd_announce?page=1">사업공고</a></li>
                            <li><a href="brd_event?page=1">행사안내</a></li>
                            <li><a href="brd_promotion?page=1">홍보자료</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="">자료실</a>
                        <ul class="nav--depth2">
                            <li><a href="arc_form">관련 양식</a></li>
                            <li><a href="arc_rule">관련 규정</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="">고객 지원</a>
                        <ul class="nav--depth2">
                            <li><a href="spt_faq">FAQ</a></li>
                            <li><a href="spt_prevent?page=1">대면상담 신청</a></li>
                            <li><a href="spt_email?page=1">온라인 문의</a></li>
                            <li><a href="spt_visit?page=1">견학 신청</a></li>
                        </ul>
                    </li>
                    <c:if test="${sessionScope.userid ne null}">
                    <li><a href="#" class="">마이 페이지</a>
                        <ul class="nav--depth2">
                            <li><a href="my_info">나의 정보</a></li>
                            <c:if test="${sessionScope.isApplicant eq 1}">
                            <li><a href="my_business">나의 사업</a></li>
                            </c:if>
                            <li><a href="my_group">나의 소속 정보</a></li>
                        </ul>
                    </li>
                    </c:if>
                </ul>
            </nav>
