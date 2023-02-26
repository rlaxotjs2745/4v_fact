<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h5 class="d-flex justify-content-between align-items-center w-100 mt-2">
        <div><i class="pe-7s-box1 text-success-custom"></i> 실증사업 사후관리</div>
    </h5>

    <div class="card">
        <div class="card-header font-weight-bold with-elements text-white bg-success">
            <div>모집 및 선정사업 목록 (총 ${total_count}사업 중 / 건)</div>
        </div>
        <div class="card-datatable table-responsive pt-0 pb-3">
            <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <table class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                            <thead class="bg-light-dark text-white font-weight-bold">
                            <tr role="row">
                                <th class="text-center px-2" style="width:60px">No</th>
                                <th class="text-center px-2" style="width:100px">심사 종료 예정일</th>
                                <!--
                                   <th class="text-center sorting" style="width:100px">공고문 번호</th>
                                -->
                                <th class="text-center sorting" style="width:100px">지원 사업명</th>
                                <th class="text-center sorting" style="width:300px">제목</th>
                                <th class="text-center px-2" style="width:110px">지원 수/ 모집 수</th>
                                <th class="text-center px-2" style="width:110px">경쟁률</th>
                                <th class="text-center px-2" style="width:110px">보완요청 건</th>
                                <th class="text-center px-2" style="width:110px">검토완료</th>
                                <th class="text-center px-2" style="width:110px">공고문 보기</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:if test="${total_count eq 0}">
                                <tr class="">
                                    <td class="text-center" colspan="7" rowspan="3">내용이 없습니다</td>
                                </tr>
                                <tr class="">
                                </tr>
                                <tr class="">
                                </tr>
                                <tr class="">
                                </tr>
                            </c:if>
                            <c:if test="${total_count ne 0}">
                                <c:forEach items="${adminApplHeaderListVOS}" var="item" varStatus="status">

                                    <tr class="" onclick="getUserApplList(${item.idx_demo_business},1,  9999)">
                                        <td class="text-center">${cur_page > 1 ? 5 * (cur_page - 1) + status.count : status.count}</td>
                                        <fmt:formatDate value="${item.exam_end}" var="pend_date" pattern="yyyy-MM-dd"/>
                                        <td class="text-center">${pend_date}</td>
                                        <td class="">${item.demo_bs_code}</td>
                                        <td class="">${item.demo_subject}</td>
                                        <td class="text-right">${item.applicant_count} / ${item.recruit_count_limit}</td>
                                        <!-- 포맷 수정필요 -->
                                        <!--
                                    <td class="text-right"><fmt:formatNumber value="${item.applicant_count / item.recruit_count_limit}" pattern="#.##"/>  : 1</td>
                                    -->
                                        <c:choose>
                                            <c:when test="${item.recruit_count_limit == 0 }">
                                                <td class="text-right">0 : 1</td>
                                            </c:when>
                                            <c:otherwise>
                                                <td class="text-right"><fmt:formatNumber
                                                        value="${item.applicant_count / item.recruit_count_limit}"
                                                        pattern="#.##"/> : 1
                                                </td>
                                            </c:otherwise>
                                        </c:choose>

                                        <td class="text-right">${item.appl_recomm}</td>
                                        <td class="text-right">${item.appl_review_done}</td>
                                        <td class="text-center"><a target="_blank" href="https://innovalley.smartfarmkorea.net/gimje/Demonstration/brd_announce_detail?idx=${item.idx_demo_business}" class="btn btn-underline">보기</a>
                                        </td>
                                    </tr>

                                </c:forEach>
                            </c:if>
                            </tbody>
                        </table>
                    </div>
                </div>
                <c:if test="${total_count ne 0}">
                    <div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div class="dataTables_info" id="" role="status" aria-live="polite">총 ${total_count}개
                                중 ${list_amount*(cur_page-1)+1}에서 <c:choose><c:when
                                        test="${(list_amount*(cur_page-1)+page_amount)>total_count}">${total_count}</c:when><c:otherwise>${list_amount*(cur_page-1)+page_amount}</c:otherwise></c:choose>까지
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div class="dataTables_paginate paging_simple_numbers">
                                <ul class="pagination">

                                    <c:set var="name" value="${total_count/amount}"/>


                                    <c:if test="${is_past eq true}">
                                        <li class="paginate_button page-item previous"><a
                                                href="javascript:pageLoad('b21_demo_bs_appl_mng',{cur_page:1},'신청접수 관리');"
                                                aria-controls="article-list" data-dt-idx="0" tabindex="0"
                                                class="page-link"><i class="fas fa-angle-double-left d-block"></i></a>
                                        </li>
                                    </c:if>
                                    <c:if test="${is_prev eq true}">
                                        <li class="paginate_button page-item previous"><a
                                                href="javascript:pageLoad('b21_demo_bs_appl_mng',{cur_page:${cur_page-1}},'신청접수 관리');"
                                                aria-controls="article-list" data-dt-idx="0" tabindex="0"
                                                class="page-link"><i class="fas fa-angle-left d-block"></i></a></li>
                                    </c:if>


                                    <c:forEach var="i" begin="1" end="${page_amount}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>">
                                            <a href="javascript:pageLoad('b21_demo_bs_appl_mng',{cur_page:${(cur_sector-1)*page_amount+i}},'신청접수 관리');"
                                               class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>

                                    <c:if test="${is_next eq true}">
                                        <li class="paginate_button page-item next"><a
                                                href="javascript:pageLoad('b21_demo_bs_appl_mng',{cur_page:${cur_page+1}},'신청접수 관리');"
                                                aria-controls="article-list" data-dt-idx="6" tabindex="0"
                                                class="page-link"><i class="fas fa-angle-right d-block"></i></a></li>
                                    </c:if>
                                    <c:if test="${is_last eq true}">
                                        <li class="paginate_button page-item next"><a
                                                href="javascript:pageLoad('b21_demo_bs_appl_mng',{cur_page:${tot_page}},'신청접수 관리');"
                                                aria-controls="article-list" data-dt-idx="6" tabindex="0"
                                                class="page-link"><i class="fas fa-angle-double-right d-block"></i></a>
                                        </li>
                                    </c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </c:if>

            </div>
        </div>
    </div>

    <hr>
    <ul class="nav nav-tabs">
        <li class="nav-item"><a class="nav-link active" href="#">사업 정보</a></li>
        <li class="nav-item"><a class="nav-link" href="#">정산 업무</a></li>
        <li class="nav-item"><a class="nav-link" href="#">실증 결과</a></li>
    </ul>
    <div id="appl_contents" class="nav-plane">
<%--

        <div class="row">
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-slim-body active">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">전체</div>
                            <!-- 값 세팅필요-->
                            <div class="text-large">34</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-slim-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">검토 필요</div>
                            <!-- 값 세팅필요-->
                            <div class="text-large">7</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-slim-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">검토 보류</div>
                            <!-- 값 세팅필요-->
                            <div class="text-large">0</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-slim-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">검토 완료</div>
                            <!-- 값 세팅필요-->
                            <div class="text-large">27</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
        <div id="appl_list" class="card">

        </div>
    </div>






    <!-- Modal template -->
    <div class="modal fade" id="modals-application-view">
        <div class="modal-dialog modal-xl modal-content modal-dialog-scrollable">

            <div class="modal-header bg-success">
                <h5 class="modal-title text-white font-weight-bold mode-new">신청서 접수 관리</h5>
                <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">
                    ×
                </button>
            </div>
            <div class="modal-body">
                <ul class="nav nav-sm nav-tabs">
                    <li class="nav-item btn-outline-primary"><a class="nav-link font-weight-bold active"
                                                                data-toggle="tab" href="#navs-tap1">이용신청서</a>
                    </li>
                    <li class="nav-item btn-outline-primary"><a class="nav-link font-weight-bold" data-toggle="tab"
                                                                href="#navs-tap2">실증계획서</a>
                    </li>
<%--                    <li class="nav-item btn-outline-primary"><a class="nav-link font-weight-bold" data-toggle="tab"--%>
<%--                                                                href="#navs-tap3">수집동의 및 제출자료</a>--%>
<%--                    </li>--%>

                </ul>
                <input id="idx_corp_info" value="0" hidden>
                <input id="is_saved" value="0" hidden>
                <div class="tab-content" id="b21_modal" >

                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                <div>
                    <span id="plz_option_input">
                        <input type="file" class="custom-file is_empty_sppl" id="req_supple_file">
                        <small class="form-text mb-2 text-muted is_empty_sppl">신청서 보완 요청서 등록이 필요합니다.</small>
                        <a href="#none" class="btn btn-underline" id="sppl_download">보완 요청서 다운로드</a>
                    </span>
                    <div class="btn-group btn-group btn-group-toggle ml-2" data-toggle="buttons">
                        <label class="btn btn-secondary application_confirm" id="confirm_plz">
                            <input type="radio" name="btn-radio" value="9999"  >신청서 보완 요청
                        </label>
                        <label class="btn btn-secondary application_confirm" id="confirm_fin" >
                            <input type="radio" name="btn-radio" value="0" >신청서 접수 완료
                        </label>
                    </div>
                    <button type="button" class="btn btn-primary" onclick="changeConfirmStatus()" style="margin-left: 20px">저장하기</button>
                </div>
            </div>
        </div>
    </div>
</div>


</div>


<script>

    $('.nav-link').on('click', function(e){
        if($(this).hasClass("active"))
            return;
        $('.nav-link').removeClass("active");
        $(this).addClass("active");
    });

    $('#plz_option_input').hide();

    $('.application_confirm').on('change', function(){
        if($('#confirm_plz').hasClass('active')){
            $('#plz_option_input').show();
            isConfirmFromAdmin = 6;
        } else {
            $('#plz_option_input').hide();
            isConfirmFromAdmin = 8;
        }
    })

    var isConfirmFromAdmin = null;
    var curUserDemoBsIdx = null;


    function changeConfirmStatus(){
        var param = {
            idx_user_demo_bs: curUserDemoBsIdx,
            user_demobs_status: isConfirmFromAdmin
        }

        if(isConfirmFromAdmin == 6){
            if(!document.querySelector('#req_supple_file').files[0]){
                return alert('보완요청서를 함께 제출해야합니다.');
            }


            var formdata = new FormData();

            formdata.append('files1', document.querySelector('#req_supple_file').files[0]);
            formdata.append('fileIndex', curUserDemoBsIdx);  // 바뀔 상태, 6 보완요청, 8 검토 완료
            formdata.append('otherwise', isConfirmFromAdmin);// userdemobs idx
            formdata.append('idx_admin', ${admin.idx_admin});

            $.ajax({
                type: 'post',
                url :'modify_user_demo_bs_status_with_file', //데이터를 주고받을 파일 주소 입력
                data: formdata,//보내는 데이터
                contentType: false,//보내는 데이터 타입
                processData: false,//Jquery 내부에서 파일을 queryString 형태로 전달하는 것을 방지
                dataType:'json',//받는 데이터 타입
                enctype: 'multipart/form-data',
                success: function (result) {
                    //작업이 성공적으로 발생했을 경우
                    alert(result.result_str);
                    if(result.result_code == 'SUCCESS'){

                        pageLoad('b21_demo_bs_appl_mng',{cur_page:1},'신규신청 접수');
                    }
                }
            })

        } else {
            $.ajax({
                type: 'post',
                url: 'modify_user_demo_bs_status', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(param),//보내는 데이터
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'json',//받는 데이터 타입
                success: function (result) {
                    //작업이 성공적으로 발생했을 경우
                    console.log(result);
                    alert(result.result_str);
                    if(result.result_code == 'SUCCESS'){
                        console.log(111)
                        pageLoad('b21_demo_bs_appl_mng',{cur_page:1},'신규신청 접수');
                    }
                }
            })
        }

    }

    //기업정보등록부분 B21 MODAL TEMPLATE
    $("#btn_corp_save").on('click', function () {
        let confirm_t = "저장하시겠습니까";
        if ($("#is_saved").val() != 0) {
            confirm_t = "기존 정보를 수정하시겠습니까";
        }
        if (!confirm(confirm_t)) {
            // 취소(아니오) 버튼 클릭 시 이벤트
            return;
        }

        let param = {
            idx_corp_info: $("#idx_corp_info").val() * 0.0,//	number	32			◯		인덱스	auto increase
            corp_name_kor: $("#corp_name").val(),//	varchar2	40					법인 이름
            company_num: $("#corp_num").val(),//	varchar2	20					사업자등록번호
            corp_reg_num: $("#corp_reg_num").val(),//	varchar2	20					법인등록번호
            tel_num: $("#corp_phone").val(),//	varchar2	20					본사 전화번호
            fax_num: $("#corp_phone").val(),//	varchar2	20					fax 번호
            email: $("#email").val(),//	varchar2	320					대표 이메일
            homepage: $("#homepage").val(),//	varchar2	255					회사 홈페이지
            corp_addr: $("#corp_addr").val(),//	varchar2	200					본사 소재지
            corp_addr2: $("#corp_addr2").val(),//	VARCHAR2	200					본사 소재지 상세
            is_other_addr: $("#is_lab_ower").val() * 0,//	number	4		0			공장 혹은 농장 소유 여부	0:없음, 1:자가, 2:임차, 99:기타
            other_addr: $("#corp_rnd_addr").val(),//	varchar2	200					공장 혹은 농장 주소
            sales_in_prev: $("#idx_corp_info").val() * 0,//	number	38					전년도 매출액
            ca_ratio: $("#corp_er").val() * 0,//	number	4					자기자본비율(capital adequacy ratio)
            emploee_num: $("#employees_count").val() * 0,//	number						직원수
            bs_sector: $("#bs_type1").val(),//	varchar2	100					업태, 종목(businness sectors)
            product: $("#main_product").val(),//	varchar2	100					주생산품목
            corp_type: $("#user_demo_bs_type").val() * 0,//	number	4		1			법인 종류	0:미등록기업(설립전), 1:일반기업, 2: 농업진흥기관, 3:선도기업, 4:외국연구기관, 5:특정연구기관, 6:정부출연연구기관, 7:스마트팜 관련 기업부설연구소 보유기업, 8: 대학교, 99:기타 단체
            is_benture: $("#is_benture").val(),//	NUMBER	4		0			벤처 여부	0:해당없음, 1:창업한지 7년 이하의 창업벤처기업
            bs_plan: $("#demobs_tech_plan").val(),//	varchar2	100					개발예정품목(기술)
            is_applicant: 1,//	number	4					콘솔 사용 여부	0:콘솔사용 안함, 1:콘솔사용
            demo_facility_type: $("#req_facility").val() * 0,//	number	4		0			이용신청 시설	0:해당없음, 1:온실, 2:r&d연구실, 4:스타트업 사무실, 512: 기타
            demo_facility_etc: $("#demo_facility_etc").val(),//	varchar2	20					이용신청 시설 기타 내용
            founding_date: new Date($("#corp_birth").val()),//	date						설립일
            ceo_name_kor: $("#ceo_name").val(),
            ceo_addr: $("#ceo_address").val(),
            ceo_tel_num: $("#ceo_pnumber").val(),
            ceo_mphone_num: $("#ceo_mnumber").val(),
            ceo_email: $("#ceo_email").val()
        }
        $.ajax({
            type: 'post',
            url: 'save_corp_info', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
            dataType: 'text',//받는 데이터 타입
            success: function (result) {
                //작업이 성공적으로 발생했을 경우

                alert(result.result_str);
                $("#btn_corp_save").html("기업 정보 수정");
                $("#idx_corp_info").val(result.result_idx);
                $("#is_saved").val(1);

                //STATUS_001 :
            },
            error: function () {
                //에러가 났을 경우 실행시킬 코드

            }
        });
    });


    function getUserApplList(idx, cur_page, filter) {

        let param = {
            cur_page: cur_page,
            list_amount: 5,
            order_field: "IDX_DEMO_BUSINESS",
            filter1: filter,
            filter2: 9998,
            idx: idx
        }

        $.ajax({
            type: 'post',
            url: 'appl_list_by_b21_filtered', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
            dataType: 'text',//받는 데이터 타입
            success: function (result) {
                //작업이 성공적으로 발생했을 경우

                $("#appl_list").html(result);
                //STATUS_001 :
            },
            error: function () {
                //에러가 났을 경우 실행시킬 코드

            }
        }); //ajax 끝
    }



    //서류검토상태변경

    function btn_save_change(idx){
        let optionVal=$("#appl_status_selected option:selected").val();
        console.log("idx : " +  idx);
        console.log("optionVal : "  + optionVal);
        let param={
            idx:idx,
            optionVal:optionVal
        }

        if(confirm("서류검토 상태를 변경하시겠습니까?")){
            $.ajax({
                type: 'post',
                url: 'change_applicant_status', //데이터를 주고받을 파일 주소 입력
                data:  JSON.stringify(param),//보내는 데이터
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'text',//받는 데이터 타입
                success: function (result) {
                    //작업이 성공적으로 발생했을 경우
                    alert('성공');
                }
            });//ajax 끝
        }else{
            return false;
        }




        // alert('hi');
    };







    //
    $("#modify").on('click', function () {
        $('input').prop('readonly', false);
        $("#modify-cancel").show();
        $("#modify-done").show();
        $("#modify").hide();
        $(":radio").prop("disabled", false);
    });

    $("#modify-cancel").on('click', function () {
        $('input').prop('readonly', true);
        $("#modify-cancel").hide();
        $("#modify-done").hide();
        $("#modify").show();
        $(":radio").prop("disabled", true);
    });

    $("#modify-done").on('click', function () {
        $("#modify-done").hide();
        $("#modify-cancel").hide();
        $("#modify").show();
        $('input').prop('readonly', true);
        $(":radio").prop("disabled", true);
        alert('수정완료')
    });

    //모달창 닫힐때 nav tab 초기화.
    $('#modals-application-view').on('hidden.bs.modal', function (e) {
        // reset multi-tab modal to initial state
        $(this).find('.nav-tabs a:first').tab('show');
        // alert('모달창닫힘');
    });


</script>

<!-- Layout footer -->
<%@include file="../layouts/frame_footer.jsp" %>
<!-- / Layout footer -->
<!-- / Page content -->
