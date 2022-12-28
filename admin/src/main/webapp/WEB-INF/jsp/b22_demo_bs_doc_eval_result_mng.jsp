<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>심사결과 관리</div>
        </h4>

        <div class="card">
            <h6 class="card-header with-elements">
                <div class="card-header-title">사업 공고 등록 (총 ${total_count} 건)</div>
            </h6>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">

                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-success text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center px-2" style="width:60px">No</th>
                                    <th class="text-center px-2" style="width:100px">심사 종료 예정일</th>
                                    <th class="text-center sorting" style="width:100px">공고문 번호</th>
                                    <th class="text-center sorting" style="width:300px">제목</th>
                                    <th class="text-center px-2" style="width:110px">지원 수/ 모집 수</th>
                                    <th class="text-center px-2" style="width:110px">경쟁률</th>
                                    <th class="text-center px-2" style="width:110px">심의중</th>
                                    <th class="text-center px-2" style="width:110px">보완요청 건</th>
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

                                        <tr class="" onClick="getUserApplList(${item.idx_demo_business},1,9999)">
                                            <td class="text-center">${item.idx_demo_business}</td>
                                            <td class="text-center">${item.exam_end}</td>
                                            <td class="">${item.demo_bs_code}</td>
                                            <td class="">${item.demo_subject}</td>
                                            <td class="text-right">${item.applicant_count} / ${item.recruit_count_limit}</td>
                                            <td class="text-right"><fmt:formatNumber value="${item.applicant_count / item.recruit_count_limit}" pattern="#.##"/>  : 1</td>
                                            <td class="text-right">${item.appl_recomm}</td>
                                            <td class="text-right">${item.appl_review_done}</td>
                                            <td class="text-center"><a href="#none" class="btn btn-underline" data-toggle="modal" data-target="#modals-result-view">보기</a></td>
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
                                <div class="dataTables_info" id="" role="status" aria-live="polite">총 ${total_count}개 중 ${list_amount*(cur_page-1)+1}에서 ${list_amount*page_amount}까지</div>
                            </div>
                            <div class="col-sm-12 col-md-7">
                                <div class="dataTables_paginate paging_simple_numbers" id="">
                                    <ul class="pagination">

                                        <c:set var="name" value="${total_count/amount}" />


                                        <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('b21_demo_bs_appl_mng',{page_num:1},'신청접수 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                        <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('b21_demo_bs_appl_mng',{page_num:${cur_page-1}'},'신청접수 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>



                                        <c:forEach var="i" begin="1" end="${page_amount}">
                                            <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('b21_demo_bs_appl_mng',{page_num:${(cur_sector-1)*page_amount+i}},'신청접수 관리');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                        </c:forEach>

                                        <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('b21_demo_bs_appl_mng',{page_num:${cur_page+1}},'신청접수 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                        <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('b21_demo_bs_appl_mng',{page_num:${tot_page}},'신청접수 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </c:if>

                </div>
            </div>
        </div>
        <hr>

        <div class="row">
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">전체</div>
                            <div class="text-large">0</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">경쟁률</div>
                            <div class="text-large">0:0</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">검토 보류</div>
                            <div class="text-large">0</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">사용 승인</div>
                            <div class="text-large">0</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="eval_list" class="card">

        </div>

        <!-- Modal template -->
        <div class="modal fade" id="modals-source-write">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">자산 등록</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">일련번호</label>
                                <input type="text" class="form-control w-lg-auto" id="asset_code">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">자산 분류</label>
                                <div class="form-inline" id="code_select">
                                    <select class="custom-select mr-sm-2 mb-2 mb-sm-0 code_select" id="main_code">
                                        <option selected="" disabled>대분류 전체</option>
                                        <c:forEach items="${main_cate}" var="cate" varStatus="status">
                                            <option value="${cate.code_value}">${cate.code_name} ${cate.detail != null ?  cate.detail : ""}</option>
                                        </c:forEach>
                                    </select>
                                    <select class="custom-select mr-sm-2 mb-2 mb-sm-0 code_select" id="sub_code" style="display: none">

                                    </select>
                                    <select class="custom-select mr-sm-2 mb-2 mb-sm-0 code_select" id="detail_code" style="display: none">

                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">자산이름</label>
                                <input type="text" class="form-control" id="asset_name">
                            </div>
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">관리 담당</label>
                                <select class="custom-select mr-sm-2 mb-2 mb-sm-0" id="asset_manager">
                                    <option selected="" disabled>관리자 선택</option>
                                    <c:forEach items="${adminList}" var="admin" varStatus="status">
                                        <option value="${admin.admin_name}">${admin.corporate_name == null ? "" : admin.corporate_name} ${admin.admin_name}</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12 mb-0">
                                <label class="form-label d-block text-muted">자산 사진</label>

                                <div class="media align-items-center">
                                    <img src="../..resources/assets/img/bg/1.jpg" alt="" class="d-block ui-w-140">
                                    <div class="media-body ml-4">
                                        <div class="text-light small mt-1">- 신청서 보완 요청서 등록이 필요 합니다.<br>
                                            - 파일 형식 : JPG, PNG</div>
                                    </div>
                                </div>
                                <div class="d-block mt-1">
                                    <input type="file" class="custom-file">
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">예약 가능</label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="reservation" type="radio" class="custom-control-input" value="0">
                                    <span class="custom-control-label">예약 가능</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="reservation" type="radio" class="custom-control-input" value="2">
                                    <span class="custom-control-label">사용 중</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="reservation" type="radio" class="custom-control-input" value="3">
                                    <span class="custom-control-label">파손 수리 중</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="reservation" type="radio" class="custom-control-input" value="4">
                                    <span class="custom-control-label">폐기</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="reservation" type="radio" class="custom-control-input" value="99">
                                    <span class="custom-control-label">분실</span>
                                </label>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">제조사</label>
                                <input type="text" class="form-control" id="asset_manufacture">
                            </div>
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">브랜드</label>
                                <input type="text" class="form-control" id="asset_brand">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">모델명</label>
                                <input type="text" class="form-control" id="asset_model_name">
                            </div>
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">보관 위치</label>
                                <input type="text" class="form-control" id="asset_loc">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">대표 사용처</label>
                                <input type="text" class="form-control" id="representative_use">
                            </div>
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">일련 번호</label>
                                <input type="text" class="form-control" id="asset_pid">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">메모</label>
                                <textarea class="form-control" id="memo" rows="3" placeholder="메모는 고객에게 노출이 되지 않으며 관리자만 볼 수 있습니다."></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="asset_submit">저장</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="modal fade" id="modals-source-upload">
            <div class="modal-dialog ">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">자산 일괄등록</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12 text-right">
                                <a href="#none" class="btn btn-underline">일괄등록 양식 템플릿 다운로드</a>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-12 ">
                                <label class="form-label d-block text-muted">파일등록</label>
                                <input type="file" class="custom-file">
                                <small class="text-muted">정보를 입력한 템플릿 XLS 파일을 등록하세요.</small>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12 ">
                                <label class="form-label d-block text-muted">사진 등록</label>
                                <input type="file" class="custom-file">
                                <small class="text-muted">템플릿에 기입한 사진 파일명과 같은 사진 파일을 선택하세요. </small>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary">저장</button>
                    </div>
                </form>
            </div>
        </div>

    </div>

<script>
    $("#btn_corp_save").on('click', function() {
        let confirm_t ="저장하시겠습니까";
        if($("#is_saved").val()!=0)
        {
            confirm_t ="기존 정보를 수정하시겠습니까";
        }
        if (!confirm(confirm_t)) {
            // 취소(아니오) 버튼 클릭 시 이벤트
            return;
        }

        let param = {
            idx_corp_info:$("#idx_corp_info").val()*0.0,//	number	32			◯		인덱스	auto increase
            corp_name_kor:$("#corp_name").val(),//	varchar2	40					법인 이름
            company_num:$("#corp_num").val(),//	varchar2	20					사업자등록번호
            corp_reg_num:$("#corp_reg_num").val(),//	varchar2	20					법인등록번호
            tel_num:$("#corp_phone").val(),//	varchar2	20					본사 전화번호
            fax_num:$("#corp_phone").val(),//	varchar2	20					fax 번호
            email:$("#email").val(),//	varchar2	320					대표 이메일
            homepage:$("#homepage").val(),//	varchar2	255					회사 홈페이지
            corp_addr:$("#corp_addr").val(),//	varchar2	200					본사 소재지
            corp_addr2:$("#corp_addr2").val(),//	VARCHAR2	200					본사 소재지 상세
            is_other_addr:$("#is_lab_ower").val()*0,//	number	4		0			공장 혹은 농장 소유 여부	0:없음, 1:자가, 2:임차, 99:기타
            other_addr:$("#corp_rnd_addr").val(),//	varchar2	200					공장 혹은 농장 주소
            sales_in_prev:$("#idx_corp_info").val()*0,//	number	38					전년도 매출액
            ca_ratio:$("#corp_er").val()*0,//	number	4					자기자본비율(capital adequacy ratio)
            emploee_num:$("#employees_count").val()*0,//	number						직원수
            bs_sector:$("#bs_type1").val(),//	varchar2	100					업태, 종목(businness sectors)
            product:$("#main_product").val(),//	varchar2	100					주생산품목
            corp_type:$("#user_demo_bs_type").val()*0,//	number	4		1			법인 종류	0:미등록기업(설립전), 1:일반기업, 2: 농업진흥기관, 3:선도기업, 4:외국연구기관, 5:특정연구기관, 6:정부출연연구기관, 7:스마트팜 관련 기업부설연구소 보유기업, 8: 대학교, 99:기타 단체
            is_benture:$("#is_benture").val(),//	NUMBER	4		0			벤처 여부	0:해당없음, 1:창업한지 7년 이하의 창업벤처기업
            bs_plan:$("#demobs_tech_plan").val(),//	varchar2	100					개발예정품목(기술)
            is_applicant:1,//	number	4					콘솔 사용 여부	0:콘솔사용 안함, 1:콘솔사용
            demo_facility_type:$("#req_facility").val()*0,//	number	4		0			이용신청 시설	0:해당없음, 1:온실, 2:r&d연구실, 4:스타트업 사무실, 512: 기타
            demo_facility_etc:$("#demo_facility_etc").val(),//	varchar2	20					이용신청 시설 기타 내용
            founding_date:new Date($("#corp_birth").val()),//	date						설립일
            ceo_name_kor:$("#ceo_name").val(),
            ceo_addr:$("#ceo_address").val(),
            ceo_tel_num:$("#ceo_pnumber").val(),
            ceo_mphone_num:$("#ceo_mnumber").val(),
            ceo_email:$("#ceo_email").val()
        }
        $.ajax({
            type: 'post',
            url: 'save_corp_info', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
            dataType: 'text',//받는 데이터 타입
            success: function (result) {
                //작업이 성공적으로 발생했을 경우

                console.log(result);
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


    function getUserApplList(idx,page_num,filter){

        let param = {
            page_num: page_num,
            amount: 5,
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
        });
        //});
    }
</script>

<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
<!-- / Layout footer -->

<!-- / Page content -->
