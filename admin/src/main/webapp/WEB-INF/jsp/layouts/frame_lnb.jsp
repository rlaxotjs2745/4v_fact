<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Layout wrapper -->
        <!-- Layout sidenav -->
        <div id="layout-sidenav" class="layout-sidenav sidenav sidenav-vertical bg-dark">

            <!-- Brand demo (see assets/css/demo/demo.css) -->
            <div class="app-brand demo">
    <c:if test="${profile == 'sangju-prod'}">
                <a href="javascript:pageLoad('a10_dashboard',{cur_page:1},'대시보드');" class="app-brand-text demo sidenav-text font-weight-normal ml-2 default"><img src="resources/assets/img/logo_sj.png" alt="스마트팜"></a>
                <a href="javascript:pageLoad('a10_dashboard',{cur_page:1},'대시보드');" class="app-brand-text demo sidenav-text font-weight-normal ml-2 mini"><img src="resources/assets/img/logo_2.png" alt="상주"></a>
    </c:if>
    <c:if test="${profile == 'gimje-prod'}">
                <a href="javascript:pageLoad('a10_dashboard',{cur_page:1},'대시보드');" class="app-brand-text demo sidenav-text font-weight-normal ml-2 default"><img src="resources/assets/img/h1-logo.png" alt="스마트팜"></a>
                <a href="javascript:pageLoad('a10_dashboard',{cur_page:1},'대시보드');" class="app-brand-text demo sidenav-text font-weight-normal ml-2 mini"><img src="resources/assets/img/logo.png" alt="김제"></a>
    </c:if>
                <a href="javascript:void(0)" class="layout-sidenav-toggle sidenav-link text-large ml-auto">
                    <i class="ion ion-md-menu align-middle"></i>
                </a>
            </div>

            <div class="sidenav-divider mt-0"></div>
            <%--pageLoad(url,param,title)--%>
            <!-- Links -->
            <ul class="sidenav-inner">
                <li class="sidenav-item active<c:if test="${path == '/dashboard'}"> active</c:if>--%>">
                    <a href="javascript:pageLoad('dashboard',{cur_page:1},'대시보드');" class="sidenav-link"><i class="sidenav-icon oi oi-grid-two-up"></i>
                        <div>대시보드</div>
                    </a>
                </li>
                <!--//-->
                <!-- 실증사업관리 -->
                <li class="sidenav-item<%--<c:if test="${path == '/b00_demo_bs_mng' || path == '/b10_demo_bs_announce_doc_mng'
                || path == '/b21_demo_bs_appl_mng' || path == '/b22_demo_bs_doc_eval_result_mng' || path == '/b23_demo_bs_pre_contract_mng'}"> active open</c:if>--%>">
                    <a href="javascript:void(0);" class="sidenav-link sidenav-toggle"><i class="sidenav-icon lnr lnr-briefcase"></i>
                        <div>실증사업관리</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item<%--<c:if test="${path == '/b00_demo_bs_mng'}"> active</c:if>--%>">
                            <a href="javascript:pageLoad('demobs_mng',{cur_page:1,list_amount:10,filter1:9999,filter2:9998},'실증사업 관리');" class="sidenav-link">
                                <div>실증사업등록 및 관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item<%--<c:if test="${path == '/b10_demo_bs_announce_doc_mng'}"> active</c:if>--%>">
                            <a href="javascript:pageLoad('announce_mng',{cur_page:1,list_amount:10,filter1:9999,filter2:9998},'사업공고문 관리');" class="sidenav-link">
                                <div>사업공고문 관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item" style="">
                            <a href="javascript:void(0);" class="sidenav-link sidenav-toggle">
                                <div>선정업무 관리</div>
                            </a>

                            <ul class="sidenav-menu">
                                <li class="sidenav-item<%--<c:if test="${path == '/b21_demo_bs_appl_mng'}"> active</c:if>--%>">
                                    <a href="javascript:pageLoad('demobs_appl',{cur_page:1},'실증사업 선정관리');" class="sidenav-link">
                                        <div>실증사업 선정관리</div>
                                    </a>
                                </li>
                                <%--<li class="sidenav-item&lt;%&ndash;<c:if test="${path == '/b21_demo_bs_appl_mng'}"> active</c:if>&ndash;%&gt;">
                                    <a href="javascript:pageLoad('b21_demo_bs_appl_mng',{cur_page:1},'신규신청 접수');" class="sidenav-link">
                                        <div>신청접수 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item&lt;%&ndash;<c:if test="${path == '/b22_demo_bs_doc_eval_result_mng'}"> active</c:if>&ndash;%&gt;">
                                    <a href="javascript:pageload('b22_demo_bs_doc_eval_result_mng',{cur_page:1},'심사결과 관리');" class="sidenav-link">
                                        <div>심사업무 관리</div>
                                    </a>
                                </li>

                                <li class="sidenav-item&lt;%&ndash;<c:if test="${path == '/b23_demo_bs_pre_contract_mng'}"> active</c:if>&ndash;%&gt;">
                                    <a href="javascript:pageLoad('b23_demo_bs_pre_contract_mng',{cur_page:1},'협약 전 업무관리');" class="sidenav-link">
                                        <div>이용계획 확정</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('b40_demo_bs_contract_mng',{cur_page:1},'협약관리');" class="sidenav-link">
                                        <div>협약관리</div>
                                    </a>
                                </li>--%>
                            </ul>
                        </li>

                        <li class="sidenav-item" style="">
                            <a href="javascript:void(0);" class="sidenav-link sidenav-toggle">
                                <div>실증수행 업무관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item<%--<c:if test="${path == '/b21_demo_bs_appl_mng'}"> active</c:if>--%>">
                                    <a href="javascript:pageLoad('demobs_commitment',{cur_page:1},'실증사업 수행관리');" class="sidenav-link">
                                        <div>실증사업 수행관리</div>
                                    </a>
                                </li>
                                <%--<li class="sidenav-item">
                                    <a href="javascript:pageLoad('b70_demo_bs_usage_pee_mng',{cur_page:1},'현황보고서 작성');" class="sidenav-link">
                                        <div>이용료 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('b60_demo_bs_consign_corp_list',{cur_page:1},'위탁기업목록');" class="sidenav-link">
                                        <div>위탁기업목록</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('b80_demo_bs_corp_cur_report_write','현황보고서 작성');" class="sidenav-link">
                                        <div>현황보고서 작성</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('b30_demo_bs_usage_ext_mng','연장 신청 접수');" class="sidenav-link">
                                        <div>연장 신청 접수</div>
                                    </a>
                                </li>--%>
                            </ul>

                        </li>
                        <li class="sidenav-item" style="">
                            <a href="javascript:void(0);" class="sidenav-link sidenav-toggle">
                                <div>실증사업 사후관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item<%--<c:if test="${path == '/b21_demo_bs_appl_mng'}"> active</c:if>--%>">
                                    <a href="javascript:pageLoad('demobs_maintenance',{cur_page:1},'실증사업 사후관리');" class="sidenav-link">
                                        <div>실증사업 사후관리</div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <%--<li class="sidenav-item active">
                            <a href="javascript:pageLoad('b50_demo_bs_corp_cur_list',{cur_page:1},'분야별 기업현황');" class="sidenav-link">
                                <div>사업별 기업현황</div>
                            </a>
                        </li>

                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('b90_demo_bs_cert_mng',{cur_page:1},'실증성적서');" class="sidenav-link">
                                <div>실증성적서</div>
                            </a>
                        </li>--%>

                    </ul>
                </li>
                <!--//-->
                <li class="sidenav-item<%--<c:if test="${
                    path == '/c10_site_mng_consult_mng' || path == '/c21_site_visit_list' || path == '/c22_site_visit_mng'
                 || path == '/c41_site_notice_mng' || path == '/c42_site_event_mng' || path == '/c43_site_adver_mng'
                 || path == '/c60_site_popup_mng' || path == '/c80_site_mng'
                 || path == '/c71_site_form_doc_mng' || path == '/c72_site_rule_doc_mng'
                 }"> active open</c:if>--%>">
                    <a href="javascript:void(0)" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-calculator"></i>
                        <div>사이트 관리</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item<c:if test="${path == '/consult_mng'}"> active</c:if>">
                            <a href="javascript:pageLoad('consult_mng',{cur_page:1,list_amount:10,filter1:9999},'상담신청 관리');" class="sidenav-link">
                                <div>상담신청 관리</div>
                            </a>
                        </li>

                        <li class="sidenav-item<c:if test="${path == '/visit_req' || path == '/visit_mng'}"> active open</c:if>">
                            <a href="javascript:void(0);" class="sidenav-link sidenav-toggle">
                                <div>견학신청 관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item<c:if test="${path == '/visit_req'}"> active</c:if>">
                                    <a href="javascript:pageLoad('visit_req',{cur_page:1,list_amount:10,filter1:9999},'견학신청 접수');" class="sidenav-link">
                                        <div>견학신청 접수</div>
                                    </a>
                                </li>
                                <li class="sidenav-item<c:if test="${path == '/visit_mng'}"> active</c:if>">
                                    <a href="javascript:pageLoad('visit_mng',{cur_page:1},'견학일정 관리');" class="sidenav-link">
                                        <div>견학일정 관리</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
<c:if test="${profile == 'testtest'}">
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('c30_site_faq_mng','자원예약');" class="sidenav-link">
                                <div>포털 FAQ 관리</div>
                            </a>
                        </li>
</c:if>
                        <li class="sidenav-item<c:if test="${path == '/notice_mng' || path == '/event_mng' || path == '/adver_mng'}"> active open</c:if>">
                            <a href="javascript:void(0);" class="sidenav-link sidenav-toggle">
                                <div>포털 게시판 관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item<c:if test="${path == '/notice_mng'}"> active</c:if>">
                                    <a href="javascript:pageLoad('notice_mng',{cur_page:1,list_amount:10,filter1:9999,filter2:9998},'공지사항 관리');" class="sidenav-link">
                                        <div>공지사항 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item<c:if test="${path == '/event_mng'}"> active</c:if>">
                                    <a href="javascript:pageLoad('event_mng',{cur_page:1},'행사 관리');" class="sidenav-link">
                                        <div>행사 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item<c:if test="${path == '/adver_mng'}"> active</c:if>">
                                    <a href="javascript:pageLoad('adver_mng',{cur_page:1},'홍보자료 관리');" class="sidenav-link">
                                        <div>홍보자료 관리</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
<c:if test="${profile == 'testtest'}">
<%--                       <li class="sidenav-item">--%>
<%--                            <a href="javascript:pageLoad('c50_site_banner_mng','자원예약관리');" class="sidenav-link">--%>
<%--                                <div>포털 배너관리</div>--%>
<%--                            </a>--%>
<%--                        </li>--%>
</c:if>
                        <li class="sidenav-item<c:if test="${path == '/c60_site_popup_mng'}"> active</c:if>">
                            <a href="javascript:pageLoad('popup_mng',{cur_page:1},'포털 팝업 관리');" class="sidenav-link">
                                <div>포털 팝업 관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item<c:if test="${path == '/c71_site_form_doc_mng' || path == '/c72_site_rule_doc_mng'}"> active open</c:if>">
                            <a href="javascript:void(0);" class="sidenav-link sidenav-toggle">
                                <div>포털 자료실 관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item<c:if test="${path == '/c71_site_form_doc_mng'}"> active</c:if>">
                                    <a href="javascript:pageLoad('c71_site_form_doc_mng',{cur_page:1},'관련양식 관리');" class="sidenav-link">
                                        <div>관련양식 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item<c:if test="${path == '/c72_site_rule_doc_mng'}"> active</c:if>">
                                    <a href="javascript:pageLoad('c72_site_rule_doc_mng',{cur_page:1},'관련규정 관리');" class="sidenav-link">
                                        <div>관련규정 관리</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="sidenav-item<c:if test="${path == '/site_mng'}"> active</c:if>">
                            <a href="javascript:pageLoad('site_mng',{cur_page:1},'사이트 정보관리');" class="sidenav-link">
                                <div>사이트 정보 관리</div>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="sidenav-item">
                    <a href="javascript:pageLoad('schedule_mng',{idx:${admin.idx_admin}},'일정관리');" class="sidenav-link"><i class="sidenav-icon fas fa-calendar-alt"></i>
                        <div>일정관리</div>
                    </a>
                </li>

                <%--<li class="sidenav-item">
                    <a href="javascript:void(0)" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-calculator"></i>
                        <div>문서발급 관리</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('e10_document_issued_req_list',{cur_page:1},'문서발급요청 관리');" class="sidenav-link">
                                <div>문서발급요청 관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('e20_document_issued',{cur_page:1},'문서발급');" class="sidenav-link">
                                <div>문서발급</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('e30_document_issued_history',{cur_page:1},'문서발급 이력');" class="sidenav-link">
                                <div>문서발급이력</div>
                            </a>
                        </li>
                    </ul>
                </li>--%>
                <li class="sidenav-item">
                    <a href="javascript:void(0)" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-calculator"></i>
                        <div>실증 데이터 관리</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('ghdata_mng',{cur_page:1,filter1:9999},'시설관련 데이터');" class="sidenav-link">
                                <div>시설관련 데이터</div>
                            </a>
                        </li>
<%--                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('assetdata_mng',{cur_page:1},'장비관련 데이터');" class="sidenav-link">
                                <div>장비관련 데이터</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('datareq_history',{cur_page:1},'데이터 전송 이력');" class="sidenav-link">
                                <div>데이터 전송 이력</div>
                            </a>
                        </li>--%>
                    </ul>
                </li>

                <%--<li class="sidenav-item<c:if test="${ path == '/g10_cur_asset_mng'}"> active open</c:if>">
                    <a href="javascript:void(0)" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-calculator"></i>
                        <div>자산 관리</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item<c:if test="${path == '/g10_cur_asset_mng'}"> active</c:if>">
                            <a href="javascript:pageLoad('g10_cur_asset_mng',{cur_page:1},'자산현황');" class="sidenav-link">
                                <div>자산 현황</div>
                            </a>
                        </li>

                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('g20_asset_booking',{cur_page:1},'자원예약관리');" class="sidenav-link">
                                <div>자원예약 목록</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('g30_asset_book_mng',{cur_page:1},'자원예약');" class="sidenav-link">
                                <div>자원예약</div>
                            </a>
                        </li>

                    </ul>
                </li>--%>
                <!--//-->
                <li class="sidenav-item<c:if test="${
                path == '/h11_write_sms' || path == '/h21_write_mail'
                }"> active open</c:if>">
                    <a href="javascript:void(0);" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-tablet-alt"></i>
                        <div>SMS/이메일</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item<%--<c:if test="${path == '/h11_write_sms'}"> active open</c:if>--%>">
                            <a href="#none" class="sidenav-link sidenav-toggle">
                                <div>SMS 관리</div>
                            </a>
                            <ul class="sidenav-menu">
<%--                                <li class="sidenav-item<c:if test="${path == '/h11_write_sms'}"> active</c:if>">
                                    <a href="javascript:pageLoad('h11_write_sms',{cur_page:1},'SMS 작성');" class="sidenav-link">
                                        <div>SMS 작성</div>
                                    </a>
                                </li>--%>

                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('sms_mng',{cur_page:1},'자동 SMS 관리');" class="sidenav-link">
                                        <div>자동 SMS 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('reserved_sms',{cur_page:1},'SMS 예약목록 및 발송');" class="sidenav-link">
                                        <div>SMS 예약목록 및 발송</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('sent_sms',{cur_page:1},'발송된 SMS');" class="sidenav-link">
                                        <div>발송된 SMS</div>
                                    </a>
                                </li>

                            </ul>
                        </li>
                    </ul>
                    <ul class="sidenav-menu">
                        <li class="sidenav-item<c:if test="${path == '/h21_write_mail'}"> active open</c:if>">
                            <a href="#none" class="sidenav-link sidenav-toggle">
                                <div>이메일 관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item<c:if test="${path == '/h21_write_mail'}"> active</c:if>">
                                    <a href="javascript:pageLoad('h21_write_mail',{cur_page:1},'이메일 발송');" class="sidenav-link">
                                        <div>이메일 발송</div>
                                    </a>
                                </li>

                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('email_mng',{cur_page:1},'자동 이메일 관리');" class="sidenav-link">
                                        <div>자동 이메일 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('email_list',{cur_page:1},'이메일 목록');" class="sidenav-link">
                                        <div>이메일 목록</div>
                                    </a>
                                </li>
<%--                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('h24_sent_email_list',{cur_page:1},'보낸 이메일');" class="sidenav-link">
                                        <div>보낸 이메일</div>
                                    </a>
                                </li>--%>

                            </ul>
                        </li>
                    </ul>
                </li>
               <!--//-->
                <li class="sidenav-item<c:if test="${
                path == '/i11_user_mng' || path == '/i12_dormant_user_mng'
                }"> active open</c:if>">
                    <a href="javascript:void(0);" class="sidenav-link sidenav-toggle"><i class="sidenav-icon far fa-address-card"></i>
                        <div>고객 및 직원관리</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item<c:if test="${path == '/i11_user_mng'}"> active</c:if>">
                            <a href="javascript:pageLoad('user_mng',{cur_page:1},'고객관리');" class="sidenav-link">
                                <div>고객관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item<c:if test="${path == '/i21_admin_mng'}"> active</c:if>">
                            <a href="javascript:pageLoad('admin_mng',{cur_page:1},'직원 관리');" class="sidenav-link">
                                <div>직원 관리</div>
                            </a>
                        </li>

                        <%--<li class="sidenav-item<c:if test="${ path == '/user_mng' || path == '/admin_mng' }"> active open</c:if>">
                            <a href="#none" class="sidenav-link sidenav-toggle">
                                <div>고객관리</div>
                            </a>
                            <ul class="sidenav-menu">

                                <li class="sidenav-item<c:if test="${path == '/i12_dormant_user_mng'}"> active</c:if>">
                                    <a href="javascript:pageLoad('i12_dormant_user_mng',{cur_page:1},'휴면/제거 회원');" class="sidenav-link">
                                        <div>휴면/제거 회원</div>
                                    </a>
                                </li>

                            </ul>
                        </li>
                        <li class="sidenav-item<c:if test="${path == '/i21_admin_mng'}"> active open</c:if>">
                            <a href="javascript:void(0);" class="sidenav-link sidenav-toggle">
                                <div>직원관리</div>
                            </a>
                            <ul class="sidenav-menu">

                            </ul>
                        </li>--%>
                    </ul>
                </li>
                <!--//-->
                <%--<li class="sidenav-item">
                    <a href="javascript:void(0)" class="sidenav-link sidenav-toggle"><i class="sidenav-icon fas fa-calculator"></i>
                        <div>기초자료 관리</div>
                    </a>

                    <ul class="sidenav-menu">
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('j10_file_mng','자산현황');" class="sidenav-link">
                                <div>서식관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('j20_sms_mng','자원예약관리');" class="sidenav-link">
                                <div>자동 SMS 관리</div>
                            </a>
                        </li>
                        <li class="sidenav-item">
                            <a href="javascript:pageLoad('j30_email_mng','자원예약');" class="sidenav-link">
                                <div>자동 이메일 관리</div>
                            </a>
                        </li>
                    </ul>
                </li>--%>
                <!--//-->
<%--

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
                                    <a href="javascript:pageLoad('admin_auth',{cur_page:1},'이드민 권한 관리');" class="sidenav-link">
                                        <div>어드민 권한 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item">
                                    <a href="javascript:pageLoad('console_auth',{cur_page:1},'콘솔 권한 관리');" class="sidenav-link">
                                        <div>콘솔 권한 관리</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
--%>

                <!--//-->
                <li class="sidenav-item<c:if test="${
                path == '/l11_document_form_mng' || path == '/l12_document_rule_mng' || path == '/l20_code_mng'
                }"> active open</c:if>">
                    <a href="javascript:void(0)" class="sidenav-link sidenav-toggle"><i class="sidenav-icon lnr lnr-database"></i>
                        <div>기초자료관리</div>
                    </a>
                    <ul class="sidenav-menu">
                        <li class="sidenav-item<c:if test="${path == '/form_mng' || path == '/rule_mng'}"> active open</c:if>">
                            <a href="#none" class="sidenav-link sidenav-toggle">
                                <div>서식 관리</div>
                            </a>
                            <ul class="sidenav-menu">
                                <li class="sidenav-item<c:if test="${path == '/doc_form_mng'}"> active</c:if>">
                                    <a href="javascript:pageLoad('form_mng',{cur_page:1},'양식문서관리');" class="sidenav-link">
                                        <div>양식문서 관리</div>
                                    </a>
                                </li>
                                <li class="sidenav-item<c:if test="${path == '/doc_rule_mng'}"> active</c:if>">
                                    <a href="javascript:pageLoad('rule_mng',{cur_page:1},'규정문서관리');" class="sidenav-link">
                                        <div>규정문서 관리</div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="sidenav-item<c:if test="${path == '/code_mng'}"> active</c:if>">
                            <a href="javascript:pageLoad('code_mng',{cur_page:1},'시스템코드 관리')" class="sidenav-link">
                                <div>시스템코드 관리</div>
                            </a>
                        </li>

                    </ul>
                </li>
                <!--//-->
            </ul>
        </div>
        <!-- / Layout sidenav -->
