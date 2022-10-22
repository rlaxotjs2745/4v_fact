<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:05 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko" class="light-style">
<head>
    <title>SMART FARM | CONSOLE</title>

    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <link rel="icon" type="image/x-icon" href="favicon.ico">

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&family=Roboto&display=swap" rel="stylesheet">

    <!-- Icon fonts -->
    <link rel="stylesheet" href="resources/assets/vendor/fonts/fontawesome.css">
    <link rel="stylesheet" href="resources/assets/vendor/fonts/ionicons.css">
    <link rel="stylesheet" href="resources/assets/vendor/fonts/linearicons.css">
    <link rel="stylesheet" href="resources/assets/vendor/fonts/open-iconic.css">
    <link rel="stylesheet" href="resources/assets/vendor/fonts/pe-icon-7-stroke.css">

    <!-- Core stylesheets -->
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/bootstrap-dark.css" class="theme-settings-bootstrap-css">
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/appwork-dark.css" class="theme-settings-appwork-css">
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/theme-corporate-dark.css" class="theme-settings-theme-css">
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/colors-dark.css" class="theme-settings-colors-css">
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/uikit.css">
    <link rel="stylesheet" href="resources/assets/css/demo.css">

    <!-- Load polyfills -->
    <script src="resources/assets/vendor/js/polyfills.js"></script>
    <script>document['documentMode']===10&&document.write('<script src="https://polyfill.io/v3/polyfill.min.js?features=Intl.~locale.en"><\/script>')</script>

    <script src="resources/assets/vendor/js/material-ripple.js"></script>
    <script src="resources/assets/vendor/js/layout-helpers.js"></script>
    <!-- Core scripts -->
    <script src="resources/assets/vendor/js/pace.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Libs -->
    <link rel="stylesheet" href="resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css">
    <!-- 동적 로딩시 사용-->
    <link rel="stylesheet" href="resources/assets/vendor/libs/datatables/datatables.css">
    <link rel="stylesheet" href="resources/assets/vendor/libs/bootstrap-datepicker/bootstrap-datepicker.css">
    <link rel="stylesheet" href="resources/assets/vendor/libs/bootstrap-daterangepicker/bootstrap-daterangepicker.css">
    <link rel="stylesheet" href="resources/assets/vendor/libs/fullcalendar/fullcalendar.css">
    <link rel="stylesheet" href="resources/assets/vendor/libs/flot/flot.css">

</head>

<body>
<div class="page-loader">
    <div class="bg-primary"></div>
</div>

<!-- Layout wrapper -->
<div class="layout-wrapper layout-2">
    <div class="layout-inner">

        <!-- Layout sidenav -->
        <div id="layout-sidenav" class="layout-sidenav sidenav sidenav-vertical bg-sidenav-theme">

            <!-- Brand demo (see assets/css/demo/demo.css) -->
            <div class="app-brand demo">
                <a href="index" class="app-brand-text demo sidenav-text font-weight-normal ml-2 default"><img src="resources/assets/img/h1-logo.png" alt="스마트팜"></a>
                <a href="index" class="app-brand-text demo sidenav-text font-weight-normal ml-2 mini"><img src="resources/assets/img/logo.png" alt="김제"></a>
                <a href="javascript:void(0)" class="layout-sidenav-toggle sidenav-link text-large ml-auto">
                    <i class="ion ion-md-menu align-middle"></i>
                </a>
            </div>

            <div class="sidenav-divider mt-0"></div>

            <!-- Links -->
            <ul class="sidenav-inner">

                <li class="sidenav-item active">
                    <a href="javascript:pageLoad('a10_dashboard','대시보드');" class="sidenav-link"><i class="sidenav-icon oi oi-grid-two-up"></i>
                        <div>대시보드</div>
                    </a>
                </li>
                <!--//-->
                <!-- 실증사업관리 -->
                <li class="sidenav-item">
                    <a href="javascript:void(0);" class="sidenav-link sidenav-toggle"><i class="sidenav-icon lnr lnr-briefcase"></i>
                        <div>실증센터</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('b10_gh_total_monitor','온실 전체현황');" class="sidenav-link">
                                <div>온실 전체현황</div>
                            </a>
                        </li>

                        <li class="sidenav-item">
                            <a href="javascript:void(0);" class="sidenav-link sidenav-toggle">
                                <div>온실별 현황</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('b21_gh_glass','유리온실 현황');" class="sidenav-link">
                                        <div>유리온실</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('b22_gh_vinyl','비닐온실 현황');" class="sidenav-link">
                                        <div>비닐온실</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('b23_gh_silgle','단동온실 현황');" class="sidenav-link">
                                        <div>단동온실</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('b24_gh_complex','복합온실 현황');" class="sidenav-link">
                                        <div>복합온실</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('b30_gh_sensor','센서별 정보');" class="sidenav-link">
                                <div>센서별 정보</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:void(0);" class="sidenav-link sidenav-toggle">
                                <div>온실 CCTV</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('b41_cctv_01','CCTV 모니터 1');" class="sidenav-link">
                                        <div>온실별 CCTV 1</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('b42_cctv_02','CCTV 모니터 2');" class="sidenav-link">
                                        <div>온실별 CCTV 2</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:void(0)" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-calculator"></i>
                                <div>실증 기자재</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('b51_facility_monitor','실증장비 현황');" class="sidenav-link">
                                        <div>실증 기자재 현황</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('b52_facility_history','실증장비 사용이력');" class="sidenav-link">
                                        <div>기자재별 상세이력</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('b60_gh_guest','체험형 온실 현황');" class="sidenav-link">
                                <div>체험형 온실</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--//-->
                <li class="sidenav-item">
                    <a href="javascript:void(0);" class="sidenav-link sidenav-toggle"><i class="sidenav-icon far fa-address-card"></i>
                        <div>이벤트 관리</div>
                    </a>
                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('c10_event_alert','장애 이벤트');" class="sidenav-link">
                                <div>장애 이벤트</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('c20_event_facility','시설 및 장비 이벤트');" class="sidenav-link">
                                <div>시설 및 장비 이벤트</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('c30_event_bs','운영 이벤트');" class="sidenav-link">
                                <div>운영 이벤트</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--//-->
                <li class="sidenav-item">
                    <a href="javascript:void(0);" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-tablet-alt"></i>
                        <div>데이터 관리</div>
                    </a>
                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="#none" class="sidenav-link sidenav-toggle">
                                <div>온실 및 장비데이터</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('d11_gh_data','온실 생성 데이터');" class="sidenav-link">
                                        <div>온실 데이터</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('d12_facility_data','장비 생성 데이터');" class="sidenav-link">
                                        <div>장비 데이터</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="sidenav-item">
                            <a href="#none" class="sidenav-link sidenav-toggle">
                                <div>사업별 데이터</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('d21_consign_data','위탁사업 데이터');" class="sidenav-link">
                                        <div>위탁사업 데이터</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('d22_self_data','자율사업 데이터');" class="sidenav-link">
                                        <div>자율사업 데이터</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="sidenav-item">
                            <a href="#none" class="sidenav-link sidenav-toggle">
                                <div>데이터 전송관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('d31_big_data_log','빅데이터센터 데이터 전송현황');" class="sidenav-link">
                                        <div>전송 기록</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('d32_big_data_manage','빅데이터센터 데이터 전송관리');" class="sidenav-link">
                                        <div>전송 관리</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <!--//-->
                <li class="sidenav-item">
                    <a href="javascript:void(0);" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-tablet-alt"></i>
                        <div>자원관리</div>
                    </a>
                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('e10_cur_asset_mng','자산 현황');" class="sidenav-link">
                                <div>자산 현황</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('e20_asset_book_mng','자원 예약관리');" class="sidenav-link">
                                <div>자원 예약관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('e30_asset_booking','자원 예약');" class="sidenav-link">
                                <div>자원 예약</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="sidenav-item">
                    <a href="javascript:pageLoad('f10_schedule_mng','일정관리');" class="sidenav-link"><i class="sidenav-icon far fa-address-card"></i>
                        <div>일정관리</div>
                    </a>
                </li>
                <li class="sidenav-item">
                    <a href="javascript:void(0);" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-tablet-alt"></i>
                        <div>SMS</div>
                    </a>
                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('g10_write_sms','SMS 작성');" class="sidenav-link">
                                <div>SMS 작성</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('g20_auto_sms_mng','자동 SMS 관리');" class="sidenav-link">
                                <div>자동 SMS 관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:load('g30_reserved_sms_list','예약된 SMS');" class="sidenav-link">
                                <div>예약된 SMS</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:load('g40_sent_sms_list','보낸 SMS');" class="sidenav-link">
                                <div>보낸 SMS</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--//-->
                <li class="sidenav-item">
                    <a href="javascript:void(0);" class="sidenav-link sidenav-toggle"><i class="sidenav-icon ion ion-md-desktop"></i>
                        <div>시스템관리</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="#none" class="sidenav-link sidenav-toggle">
                                <div>콘솔 관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="#none" class="sidenav-link sidenav-toggle">
                                <div>관리자 관리</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--//-->
               <%-- <li class="sidenav-item">
                    <a href="javascript:void(0)" class="sidenav-link sidenav-toggle"><i class="sidenav-icon lnr lnr-database"></i>
                        <div>기초자료관리</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:load('h10_document_mng','서식관리');" class="sidenav-link">
                                <div>서식관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:load('h20_code_mng','시스템코드 관리')" class="sidenav-link">
                                <div>시스템코드 관리</div>
                            </a>
                        </li>

                    </ul>
                </li>--%>
                <!--//-->
            </ul>
        </div>
        <!-- / Layout sidenav -->
