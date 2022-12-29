<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:05 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
                    <a href="javascript:pageLoad('dashboard',{page_num:1},'대시보드');" class="sidenav-link"><i class="sidenav-icon oi oi-grid-two-up"></i>
                        <div>대시보드</div>
                    </a>
                </li>
                <!--//-->
                <li class="sidenav-item">
                    <a href="javascript:void(0);" class="sidenav-link sidenav-toggle"><i class="sidenav-icon far fa-address-card"></i>
                        <div>실증사업 관리</div>
                    </a>
                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('notice',{page_num:1},'공지사항');" class="sidenav-link">
                                <div>공지사항</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('bm_demo_corp_cur',{page_num:1},'실증사업 현황');" class="sidenav-link">
                                <div>실증사업 현황</div>
                            </a>
                        </li>
                    </ul>
                </li>



                <!-- 실증사업관리 -->
                <li class="sidenav-item">
                    <a href="javascript:void(0);" class="sidenav-link sidenav-toggle"><i class="sidenav-icon lnr lnr-briefcase"></i>
                        <div>실증센터</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('gh_total_monitor',{page_num:1},'온실 전체현황');" class="sidenav-link">
                                <div>온실 전체현황</div>
                            </a>
                        </li>
<%--
                        <li class="sidenav-item">
                            <a href="javascript:void(0);" class="sidenav-link sidenav-toggle">
                                <div>온실별 현황</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('gh_glass',{page_num:1},'유리온실 현황');" class="sidenav-link">
                                        <div>유리온실</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('gh_vinyl',{page_num:1},'비닐온실 현황');" class="sidenav-link">
                                        <div>비닐온실</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('gh_silgle',{page_num:1},'단동온실 현황');" class="sidenav-link">
                                        <div>단동온실</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('gh_complex',{page_num:1},'복합온실 현황');" class="sidenav-link">
                                        <div>복합온실</div>
                                    </a>
                                </li>
                            </ul>
                        </li>--%>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('gh_sensor',{page_num:1},'센서별 정보');" class="sidenav-link">
                                <div>센서별 정보</div>
                            </a>
                        </li>
                        <%--<li class="sidenav-item">
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
                        </li>--%>
                        <li class="sidenav-item">
                            <a href="javascript:void(0)" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-calculator"></i>
                                <div>실증 기자재</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('facility_monitor',{page_num:1},'실증장비 현황');" class="sidenav-link">
                                        <div>실증장비 현황</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('facility_history',{page_num:1},'실증장비 사용이력');" class="sidenav-link">
                                        <div>실증장비별 상세이력</div>
                                    </a>
                                </li>
                            </ul>
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
                            <a href="javascript:pageLoad('event_alert',{page_num:1},'장애 이벤트');" class="sidenav-link">
                                <div>장애 이벤트</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('event_facility',{page_num:1},'시설 및 장비 이벤트');" class="sidenav-link">
                                <div>시설 및 장비 이벤트</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('event_bs',{page_num:1},'운영 이벤트');" class="sidenav-link">
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
                                    <a href="javascript:pageLoad('gh_data',{page_num:1},'온실 생성 데이터');" class="sidenav-link">
                                        <div>온실 데이터</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('facility_data',{page_num:1},'장비 생성 데이터');" class="sidenav-link">
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
                                    <a href="javascript:pageLoad('consign_data',{page_num:1},'위탁사업 데이터');" class="sidenav-link">
                                        <div>위탁사업 데이터</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('self_data',{page_num:1},'자율사업 데이터');" class="sidenav-link">
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
                                    <a href="javascript:pageLoad('big_data_log',{page_num:1},'빅데이터센터 데이터 전송현황');" class="sidenav-link">
                                        <div>전송 기록</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('big_data_manage',{page_num:1},'빅데이터센터 데이터 전송관리');" class="sidenav-link">
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
                            <a href="javascript:pageLoad('cur_asset_mng',{page_num:1},'자산 현황');" class="sidenav-link">
                                <div>자산 현황</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('asset_book_mng',{page_num:1},'자원 예약관리');" class="sidenav-link">
                                <div>자원 예약관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('asset_booking',{page_num:1},'자원 예약');" class="sidenav-link">
                                <div>자원 예약</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="sidenav-item">
                    <a href="javascript:pageLoad('schedule_mng',{page_num:1},'일정관리');" class="sidenav-link"><i class="sidenav-icon far fa-address-card"></i>
                        <div>일정관리</div>
                    </a>
                </li>
                <%--<li class="sidenav-item">
                    <a href="javascript:void(0);" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-tablet-alt"></i>
                        <div>SMS 관리</div>
                    </a>
                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('write_sms',{page_num:1},'SMS 작성');" class="sidenav-link">
                                <div>SMS 작성</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('auto_sms_mng',{page_num:1},'자동 SMS 관리');" class="sidenav-link">
                                <div>자동 SMS 관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('reserved_sms_list',{page_num:1},'예약된 SMS');" class="sidenav-link">
                                <div>예약된 SMS</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('sent_sms_list',{page_num:1},'보낸 SMS');" class="sidenav-link">
                                <div>보낸 SMS</div>
                            </a>
                        </li>
                    </ul>
                </li>--%>
                <!--//-->
                <li class="sidenav-item">
                    <a href="javascript:void(0);" class="sidenav-link sidenav-toggle"><i class="sidenav-icon ion ion-md-desktop"></i>
                        <div>시스템관리</div>
                    </a>

                    <ul class="sidenav-menu">
<%--                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('system_mng',{page_num:1},'시스템 관리');" class="sidenav-link">
                                <div>시스템 관리</div>
                            </a>
                        </li>--%>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('admin_mng',{page_num:1},'관리자 관리');" class="sidenav-link">
                                <div>관리자 관리</div>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- / Layout sidenav -->
