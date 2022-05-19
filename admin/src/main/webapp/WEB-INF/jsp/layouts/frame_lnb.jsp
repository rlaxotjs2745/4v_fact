<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Layout wrapper -->
        <!-- Layout sidenav -->
        <div id="layout-sidenav" class="layout-sidenav sidenav sidenav-vertical bg-dark">

            <!-- Brand demo (see assets/css/demo/demo.css) -->
            <div class="app-brand demo">
                <a href="home" class="app-brand-text demo sidenav-text font-weight-normal ml-2 default"><img src="resources/assets/img/h1-logo.png" alt="스마트팜"></a>
                <a href="home" class="app-brand-text demo sidenav-text font-weight-normal ml-2 mini"><img src="resources/assets/img/logo.png" alt="김제"></a>
                <a href="javascript:void(0)" class="layout-sidenav-toggle sidenav-link text-large ml-auto">
                    <i class="ion ion-md-menu align-middle"></i>
                </a>
            </div>

            <div class="sidenav-divider mt-0"></div>

            <!-- Links -->
            <ul class="sidenav-inner">

                <li class="sidenav-item active">
                    <a href="javascript:load('a10_dashboard','대시보드');" class="sidenav-link"><i class="sidenav-icon oi oi-grid-two-up"></i>
                        <div>대시보드</div>
                    </a>
                </li>
                <!--//-->
                <!-- 실증사업관리 -->
                <li class="sidenav-item">
                    <a href="javascript:void(0);" class="sidenav-link sidenav-toggle"><i class="sidenav-icon lnr lnr-briefcase"></i>
                        <div>실증사업관리</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:load('b00_demo_bs_mng?page=1&filter1=9999&filter2=9998','실증사업 관리');" class="sidenav-link">
                                <div>실증사업 관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:load('b10_demo_bs_announce_doc_mng?page=1&filter1=9999&filter2=9998','사업공고문 관리');" class="sidenav-link">
                                <div>사업공고문 관리</div>
                            </a>
                        </li>

                        <li class="sidenav-item" style="">
                            <a href="javascript:void(0);" class="sidenav-link sidenav-toggle">
                                <div>선정업무 관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:load('b21_demo_bs_appl_mng?page=1','신규신청 접수');" class="sidenav-link">
                                        <div>신청접수 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('b22_demo_bs_doc_eval_result_mng','심사결과 관리');" class="sidenav-link">
                                        <div>심사업무 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('b23_demo_bs_pre_contract_mng','협약 전 업무관리');" class="sidenav-link">
                                        <div>이용계획 확정</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
<%--                        <li class="sidenav-item">
                            <a href="javascript:load('b30_demo_bs_usage_ext_mng','연장 신청 접수');" class="sidenav-link">
                                <div>연장 신청 접수</div>
                            </a>
                        </li>--%>
                        <li class="sidenav-item">
                            <a href="javascript:load('b40_demo_bs_contract_mng','협약관리');" class="sidenav-link">
                                <div>협약관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item active">
                            <a href="javascript:load('b50_demo_bs_corp_cur_list','분야별 기업현황');" class="sidenav-link">
                                <div>분야별 기업현황</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:load('b60_demo_bs_consign_corp_list','위탁기업목록');" class="sidenav-link">
                                <div>위탁기업목록</div>
                            </a>
                        </li>

                        <li class="sidenav-item">
                            <a href="javascript:load('b70_demo_bs_usage_pee_mng','현황보고서 작성');" class="sidenav-link">
                                <div>이용료 관리</div>
                            </a>
                        </li>
<%--                        <li class="sidenav-item">
                            <a href="javascript:load('b80_demo_bs_corp_cur_report_write','현황보고서 작성');" class="sidenav-link">
                                <div>현황보고서 작성</div>
                            </a>
                        </li>--%>
                        <li class="sidenav-item">
                            <a href="javascript:load('b90_demo_bs_cert_mng','실증성적서');" class="sidenav-link">
                                <div>실증성적서</div>
                            </a>
                        </li>

                        <%--<li class="sidenav-item">
                            <a href="javascript:void(0);" class="sidenav-link sidenav-toggle">
                                <div>사이트 관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:load('b91_demo_bs_consult_mng','상담');" class="sidenav-link">
                                        <div>상담</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('b92_demo_bs_qna_mng','1:1문의');" class="sidenav-link">
                                        <div>지원사업 문의</div>
                                    </a>
                                </li>
                            </ul>
                        </li>--%>

                    </ul>
                </li>
                <!--//-->
                <li class="sidenav-item">
                    <a href="javascript:void(0)" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-calculator"></i>
                        <div>사이트 관리</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:load('c10_site_mng_consult_mng','자산현황');" class="sidenav-link">
                                <div>상담신청 관리</div>
                            </a>
                        </li>

                        <li class="sidenav-item">
                            <a href="javascript:void(0);" class="sidenav-link sidenav-toggle">
                                <div>견학신청 관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:load('c21_site_visit_list','상담');" class="sidenav-link">
                                        <div>견학신청 접수</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('c22_site_visit_mng','1:1문의');" class="sidenav-link">
                                        <div>견학일정 관리</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
<%--                        <li class="sidenav-item">
                            <a href="javascript:load('c30_site_faq_mng.jsp','자원예약');" class="sidenav-link">
                                <div>포털 FAQ 관리</div>
                            </a>
                        </li>--%>
                        <li class="sidenav-item">
                            <a href="javascript:void(0);" class="sidenav-link sidenav-toggle">
                                <div>포털 게시판 관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:load('c41_site_notice_mng?page=1&filter1=9999&filter2=9998','공지사항 관리');" class="sidenav-link">
                                        <div>공지사항 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('c42_site_event_mng','행사 관리');" class="sidenav-link">
                                        <div>행사 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('c43_site_adver_mng.jsp','홍보자료 관리');" class="sidenav-link">
                                        <div>홍보자료 관리</div>
                                    </a>
                                </li>
                            </ul>
                        </li>

<%--                        <li class="sidenav-item">
                            <a href="javascript:load('c50_site_banner_mng','자원예약관리');" class="sidenav-link">
                                <div>포털 배너관리</div>
                            </a>
                        </li>--%>
                        <li class="sidenav-item">
                            <a href="javascript:load('c60_site_popup_mng','자원예약관리');" class="sidenav-link">
                                <div>포털 팝업 관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:void(0);" class="sidenav-link sidenav-toggle">
                                <div>포털 자료실 관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:load('c71_site_form_doc_mng','상담');" class="sidenav-link">
                                        <div>관련양식 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('c72_site_rule_doc_mng','1:1문의');" class="sidenav-link">
                                        <div>관련규정 관리</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:load('c80_site_mng','사이트 정보관리');" class="sidenav-link">
                                <div>사이트 정보 관리</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--//-->
                <li class="sidenav-item">
                    <a href="javascript:load('d10_schedule_mng','일정관리');" class="sidenav-link"><i class="sidenav-icon fas fa-calendar-alt"></i>
                        <div>일정관리</div>
                    </a>
                </li>
                <!--//-->
                <li class="sidenav-item">
                    <a href="javascript:void(0)" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-calculator"></i>
                        <div>문서발급 관리</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:load('e10_document_issued_req_list','자산현황');" class="sidenav-link">
                                <div>문서발급요청 접수</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:load('e20_document_issued','자원예약관리');" class="sidenav-link">
                                <div>문서발급</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:load('e30_document_issued_history','자원예약');" class="sidenav-link">
                                <div>문서발급이력</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--//-->
                <li class="sidenav-item">
                    <a href="javascript:void(0)" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-calculator"></i>
                        <div>실증 데이터 관리</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:load('f10_gh_data_event_list','자산현황');" class="sidenav-link">
                                <div>시설과 장비 이벤트</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:load('f20_gh_data_extract','자원예약관리');" class="sidenav-link">
                                <div>온실데이터 내려받기</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:load('f30_gh_data_extract_history','자원예약');" class="sidenav-link">
                                <div>데이터 전송 이력</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--//-->
                <li class="sidenav-item">
                    <a href="javascript:void(0)" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-calculator"></i>
                        <div>자산 관리</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:load('g10_cur_asset_mng','자산현황');" class="sidenav-link">
                                <div>자산 현황</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:load('g20_asset_booking','자원예약관리');" class="sidenav-link">
                                <div>자원예약 목록</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:load('g30_asset_book_mng','자원예약');" class="sidenav-link">
                                <div>자원예약</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--//-->
                <li class="sidenav-item">
                    <a href="javascript:void(0);" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-tablet-alt"></i>
                        <div>SMS/이메일</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="#none" class="sidenav-link sidenav-toggle">
                                <div>SMS 관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:load('h10_write_sms','SMS 작성');" class="sidenav-link">
                                        <div>SMS 작성</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('h20_auto_sms_mng','자동 SMS 관리');" class="sidenav-link">
                                        <div>자동 SMS 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('h30_reserved_sms_list','예약된 SMS');" class="sidenav-link">
                                        <div>예약된 SMS</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('h40_sent_sms_list','보낸 SMS');" class="sidenav-link">
                                        <div>보낸 SMS</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="#none" class="sidenav-link sidenav-toggle">
                                <div>이메일 관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:load('h71_write_mail','이메일 발송');" class="sidenav-link">
                                        <div>이메일 발송</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('h50_auto_email_mng','자동 이메일 관리');" class="sidenav-link">
                                        <div>자동 이메일 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('h60_reserved_email_list','예약된 이메일');" class="sidenav-link">
                                        <div>예약된 이메일</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('h70_sent_email_list','보낸 이메일');" class="sidenav-link">
                                        <div>보낸 이메일</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
               <!--//-->
                <li class="sidenav-item">
                    <a href="javascript:void(0);" class="sidenav-link sidenav-toggle"><i class="sidenav-icon far fa-address-card"></i>
                        <div>고객 및 직원관리</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="#none" class="sidenav-link sidenav-toggle">
                                <div>고객관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:load('i10_user_mng','고객관리');" class="sidenav-link">
                                        <div>고객관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('i30_dormant_user_mng','휴면/제거 회원');" class="sidenav-link">
                                        <div>휴면/제거 회원</div>
                                    </a>
                                </li>

                            </ul>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:void(0);" class="sidenav-link sidenav-toggle">
                                <div>직원관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:load('i20_admin_mng','직원 관리');" class="sidenav-link">
                                        <div>직원 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('i40_admin_mng','실증담당자 관리');" class="sidenav-link">
                                        <div>실증담당자 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('i50_admin_mng','재배사 관리');" class="sidenav-link">
                                        <div>재배사 관리</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <!--//-->
                <li class="sidenav-item">
                    <a href="javascript:void(0)" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-calculator"></i>
                        <div>기초자료 관리</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:load('j10_file_mng','자산현황');" class="sidenav-link">
                                <div>서식관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:load('j20_sms_mng','자원예약관리');" class="sidenav-link">
                                <div>자동 SMS 관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:load('j30_email_mng','자원예약');" class="sidenav-link">
                                <div>자동 이메일 관리</div>
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
                                <div>권한 관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:load('g11_web_front_main_mng','메인페이지 관리');" class="sidenav-link">
                                        <div>권한부여 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('k11_system_authority_mng','메인페이지 관리');" class="sidenav-link">
                                        <div>권한목록 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('k12_system_authority_list','메인페이지 관리');" class="sidenav-link">
                                        <div>롤 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('k13_system_role_mng','메인페이지 관리');" class="sidenav-link">
                                        <div>롤상하관계 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:load('k15_system_role_menu_mng','메인페이지 관리');" class="sidenav-link">
                                        <div>메뉴별 권한과 전시 관리</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="sidenav-item">
                            <a href="#none" class="sidenav-link sidenav-toggle">
                                <div>관리자페이지 관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:load('g21_admin_dashboard_mng','대시보드 관리');" class="sidenav-link">
                                        <div>대시보드 관리</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="sidenav-item">
                            <a href="#none" class="sidenav-link sidenav-toggle">
                                <div>콘솔페이지 관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item">
                                    <a href="javascript:load('g31_console_dashboard_mng','대시보드 관리');" class="sidenav-link">
                                        <div>대시보드 관리</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <!--//-->
                <li class="sidenav-item">
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
                </li>
                <!--//-->
            </ul>
        </div>
        <!-- / Layout sidenav -->
