<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/08/30
  Time: 6:02 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
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
    <link rel="stylesheet" type="text/css" href="resources/assets/css/pace-theme-center-simple.css" />
    <link rel="stylesheet" type="text/css" href="resources/assets/css/evo-calendar.css">
</head>
<body>
<div class="wrapper" id="wrapper">
    <header class="header">

        <c:if test="${profile == 'sangju-prod'}">
            <h1><a href="index"><img src="resources/assets/image/img-logo-s.png" alt="스마트팜 실증센터"></a></h1>
        </c:if>
        <c:if test="${profile == 'gimje-prod'}">
            <h1><a href="index"><img src="resources/assets/image/h1_logo_gimje.png" alt="스마트팜 실증센터"></a></h1>
        </c:if>
        <c:if test="${profile == 'local'}">
            <h1><a href="index"><img src="resources/assets/image/h1_logo_gimje.png" alt="스마트팜 실증센터"></a></h1>
        </c:if>

        <nav class="nav"><!--is-expanded-->
            <ul class="nav--depth1">
                <li><a href="#" class="">실증 안내/신청</a>
                    <ul class="nav--depth2">
                        <li><a href="prv_part">실증 분야</a></li>
                        <li><a href="prv_step">실증 절차</a></li>
                        <li><a href="prv_use">이용가능시설</a></li>
                        <li><a href="prv_fee">실증서비스 이용료</a></li>
                        <li><a href="prv_application">신청서 작성</a></li>
                    </ul>
                </li>
                <li><a href="#" class="">실증단지 소개</a><!--is-selected-->
                    <ul class="nav--depth2">
                        <%--<li><a href="cnt_history">실증센터 연혁</a></li>--%>
                        <li><a href="cnt_goal">비전과 미션</a></li>
                        <li><a href="cnt_organize">조직도</a></li>
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
                        <!--<li><a href="arc_center">실증단지소개</a></li>
                        <li><a href="arc_pee">서비스 이용료</a></li>-->
                        <li><a href="arc_form">관련 양식</a></li>
                        <li><a href="arc_rule">관련 규정</a></li>
                    </ul>
                </li>
                <li><a href="#" class="">고객 지원</a>
                    <ul class="nav--depth2">
                        <li><a href="spt_faq">FAQ</a></li>
                        <li><a href="spt_consulting">상담 신청</a></li>
                        <li><a href="spt_visit">견학 신청</a></li>
                    </ul>
                </li>
                <c:if test="${sessionScope.userid ne null}">
                <li><a href="#" class="">마이 페이지</a>
                    <ul class="nav--depth2">
                        <li><a href="my_info">나의 정보</a></li>
                        <c:if test="${sessionScope.isApplicant eq 1}">
                            <li><a href="my_business">나의 사업</a></li>
                        </c:if>
                        <%--<li><a href="my_group">나의 소속 정보</a></li>--%>
                    </ul>
                </li>
                </c:if>
            </ul>
        </nav>
        <div class="common__control">
            <div class="search__box"><a href="#search__box" class="js-search-box"><img src="resources/assets/image/ico_search.svg" alt="검색"></a></div>
            <div class="menu__anchor"><a href="#"><img src="resources/assets/image/ico_menu.svg" alt="전체메뉴열기"></a></div>
        </div>
        <div class="common__login">
            <div class="login__info">
                <c:if test="${sessionScope.userid ne null}">
                    ${sessionScope.name}
                </c:if>
                <c:if test="${sessionScope.isCorpMember eq 1}">
                    :${sessionScope.corpName}
                </c:if>
                <c:if test="${sessionScope.isApplicant eq 1}">
                    <button id="login_console" class="login__console">콘솔 가기</button>
                </c:if>
            </div>
            <div class="login__anchor">
                <c:choose>
                    <c:when test="${sessionScope.userid ne null}">
                <a href="login"><img src="resources/assets/image/ico_exit.svg" alt="">로그아웃</a>
                    </c:when>
                    <c:when test="${sessionScope.userid eq null}">
                <a href="login"><img src="resources/assets/image/ico_login_n.svg" alt="">로그인</a>
                <a href="join"><img src="resources/assets/image/ico_user.svg" alt="">회원가입</a>
                    </c:when>
                </c:choose>
            </div>
        </div>

        <div class="search__box--full " id="search__box">
            <div class="search__box--inner">
                <input type="text" placeholder="검색어를 입력하세요" class="search__common">
                <a href="#none" class="btn-close-search"><img src="resources/assets/image/ico_close.png" alt="레이어닫기"></a>
                <div class="search__word--lists">
                    <span class="search__word--title">빠른링크</span>
                    <a href="#none" class="search__word">실증 신청 방법</a>
                    <a href="#none" class="search__word">실증 신청서 샘플</a>
                    <a href="#none" class="search__word">실증 센터란?</a>
                    <a href="#none" class="search__word">이용료</a>
                </div>
            </div>
        </div>

        <div class="nav__full--box ">
            <div class="nav_full--inner">
                <a href="#none" class="btn-close-menu"><img src="resources/assets/image/ico_close.svg" alt="레이어닫기"></a>
                <h2><img src="resources/assets/image/h1_logo@3x.png" alt="스마트팜 실증센터"></h2>
                <nav class="nav__full">
                    <ul class="nav__full--depth1">
                        <li><a href="#">실증 안내/신청</a>
                            <ul class="nav__full--depth2">
                                <li><a href="prv_part">실증 분야</a></li>
                                <li><a href="prv_step">실증 절차</a></li>
                                <li><a href="prv_use">이용가능시설</a></li>
                                <li><a href="prv_fee">실증서비스 이용료</a></li>
                                <li><a href="prv_application">신청서 작성</a></li>
                            </ul>
                        </li>
                        <li><a href="#" class="is-selected">실증단지 소개</a>
                            <ul class="nav__full--depth2">
                                <li><a href="cnt_goal">비전과 미션</a></li>
                                <%--<li><a href="cnt_history">실증센터 연혁</a></li>--%>
                                <li><a href="cnt_organize">조직도</a></li>
                                <li><a href="cnt_map">찾아오시는 길</a></li>
                            </ul>
                        </li>
                        <li><a href="#">열린마당</a>
                            <ul class="nav__full--depth2">
                                <li><a href="brd_notice?page=1">공지사항</a></li>
                                <li><a href="brd_announce?page=1">사업공고</a></li>
                                <li><a href="brd_event?page=1">행사안내</a></li>
                                <li><a href="brd_promotion?page=1">홍보자료</a></li>
                            </ul>
                        </li>
                        <li><a href="#">자료실</a>
                            <ul class="nav__full--depth2">
                                <!--<li><a href="arc_center">실증단지소개</a></li>
                                <li><a href="arc_pee">서비스 이용료</a></li>
                                <li><a href="#">실증기업 확인 데이터</a></li>-->
                                <li><a href="arc_form">관련양식</a></li>
                                <li><a href="arc_rule">관련규정</a></li>
                            </ul>
                        </li>
                        <li><a href="#">고객 지원</a>
                            <ul class="nav__full--depth2">
                                <li><a href="spt_faq">FAQ</a></li>
                                <li><a href="spt_consulting">상담 신청</a></li>
                                <li><a href="spt_visit">견학 신청</a></li>
                            </ul>
                        </li>
                    <c:if test="${sessionScope.userid ne null}">
                        <li><a href="#">마이 페이지</a>
                            <ul class="nav__full--depth2">
<%--                                <li><a href="my_info">나의 정보</a></li>
                                <li><a href="my_agreement">기업 정보 관리</a></li>
                                <li><a href="my_prove">실증 신청 현황</a></li>
                                <li><a href="spt_consulting">사전 상담</a></li>
                                <li><a href="my_inquiry">1:1 문의</a></li>--%>



                                <li><a href="my_info">나의 정보</a></li>
                            <c:if test="${sessionScope.isApplicant eq 1}">
                                <li><a href="my_business">나의 사업</a></li>
                            </c:if>
                                <%--<li><a href="my_group">나의 소속 정보</a></li>--%>
                            </ul>
                        </li>
                    </c:if>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
