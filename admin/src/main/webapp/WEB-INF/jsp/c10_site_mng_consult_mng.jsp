<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>상담신청 관리</div>
        </h4>

        <div class="card px-4 pt-4 mb-4">
            <div class="form-row mb-4">
                <div class="col-md-3 ">
                    <label class="form-label text-muted">상담 구분</label>
                    <div class="form-inline mt-2">
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">전체</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">사전상담</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">사용승인 후 상담</span>
                        </label>
                    </div>
                </div>
                <div class="col-md-2 ">
                    <label class="form-label text-muted">상담 접수</label>
                    <div class="form-inline">
                        <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio" checked="">전체
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio"> 신규
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio"> 해결
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 ">
                    <label class="form-label text-muted">상담 접수일</label>
                    <div class="form-inline">
                        <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio" checked="">오늘
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio"> 1주일
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio"> 1개월
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio"> 3개월
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio"> 6개월
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio"> 1년이상
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 text-right">
                    <label class="form-label d-none d-md-block">&nbsp;</label>
                    <button type="button" class="btn btn-outline-default">초기화</button>
                    <button type="button" class="btn btn-success">조회</button>
                </div>
            </div>
        </div>

        <div class="card">
            <h6 class="card-header with-elements">
                <div class="card-header-title">접수 목록</div>
            </h6>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row p-3">
                        <div class="col-sm-12 col-md-12">
                            <label class="mr-3  mb-0">총 : <strong>999</strong>건</label><label class="mr-3  mb-0">신규 : <strong>70</strong>건</label><label class="mr-3  mb-0">추가 : <strong>70</strong>건</label><label class="mr-3  mb-0">해결 : <strong>70</strong>건</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-success text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center px-2" style="width:60px">No</th>
                                    <th class="text-center sorting" style="width:80px">상담일지</th>
                                    <th class="text-center px-2" style="width:100px">상담 형식</th>
                                    <th class="text-center sorting" style="width:60px">상담 상황</th>
                                    <th class="text-center sorting" style="width:100px">신청자</th>
                                    <th class="text-center sorting" style="width:100px">상담목표</th>
                                    <th class="text-center sorting" style="width:150px">상담파일 여부</th>
                                    <th class="text-center px-2" style="width:80px">메모</th>
                                    <th class="text-center px-2" style="width:120px">최초등록일시</th>
                                    <th class="text-center px-2" style="width:120px">상담예정일</th>
                                    <th class="text-center px-2" style="width:120px">상담 종류</th>
                                    <th class="text-center px-2" style="width:150px">요청등록일</th>
                                    <th class="text-center px-2" style="width:150px">주소</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${consultingList}" var="consulting" varStatus="status">
                                    <tr class="consulting-entity" id="${consulting.idx_demo_bs_consulting}">
                                    <td class="text-center">${consulting.consulting_num}</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm"  data-toggle="modal" data-target="#modals-counsel-view" >상담일지</a></td>
                                        <td class="text-center">${consulting.consult_answer_type eq 0 ? "전화" : consulting.consult_answer_type eq 1 ? "이메일" :consulting.consult_answer_type eq 2 ? "대면상담" : "기타"}</td>
                                    <td class="text-center">${consulting.consulting_status eq 0 ? "상담 요청 등록" : consulting.consulting_status eq 1 ? "상담자 지정" : consulting.consulting_status eq 2 ? "상담 계획 전송완료" :consulting.consulting_status eq 3 ? "상담 계획보냄" : consulting.consulting_status eq 4 ? "상담완료": consulting.consulting_status eq 99 ? "상담 불가" : "기타"}</td>
                                    <td class="text-center">${consulting.user_name}</td>
                                    <td class="text-center">${consulting.consulting_goal}</td>
                                    <td class="text-center">${consulting.is_consulting_file eq 0 ? "파일없음" : consulting.is_consulting_file eq 1 ? "파일있음": ""}</td>
                                    <td class="text-center">${consulting.memo}</td>
                                    <td class="text-center"><fmt:formatDate value="${consulting.reg_date}" pattern="yyyy-MM-dd HH:MM"/></td>
                                    <td class="text-center"><fmt:formatDate value="${consulting.resulvation_date}" pattern="yyyy-MM-dd HH:MM"/></td>
                                    <td class="text-center">${consulting.consulting_type eq 0 ? "지원상담": consulting.consulting_type eq 1 ? "평가상담": consulting.consulting_type eq 2 ? "사업계획상담":consulting.consulting_type eq 3 ? "협약상담":consulting.consulting_type eq 4 ? "실증수행상담":consulting.consulting_type eq 5 ? "정산상담": "기타"}</td>
                                    <td class=""><fmt:formatDate value="${consulting.req_date}" pattern="yyyy-MM-dd HH:MM"/></td>
                                        <td class="text-center">${consulting.addr}</td>
                                </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div class="dataTables_info" id="" role="status" aria-live="polite">Showing 1 to 10 of 50 entries</div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                                <ul class="pagination">
                                    <li class="paginate_button page-item previous disabled" id="article-list_previous"><a href="#" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li>
                                    <li class="paginate_button page-item active"><a href="#" aria-controls="article-list" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
                                    <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                    <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
                                    <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                                    <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                                    <li class="paginate_button page-item next" id="article-list_next"><a href="#" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal template -->
        <div class="modal fade" id="modals-counsel-view">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">상담일지</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12 text-right">
                                <a href="#none" class="btn btn-underline"  data-toggle="modal" data-target="#modals-counsel-history">상담 이력</a>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="user_name">
                                <label class="form-label d-block text-muted" >신청자</label>
                                <span>김홍삼</span>
                            </div>
                            <div class="form-group col col-md-4" id="addr">
                                <label class="form-label d-block text-muted" >주소</label>
                                <span>맛있는 농부</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="email">
                                <label class="form-label d-block text-muted" >email</label>
                                <span>000-00-00000</span>
                            </div>
                            <div class="form-group col col-md-4" id="mphone_num">
                                <label class="form-label d-block text-muted" >연락처</label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="consulting_status">
                                <label class="form-label d-block text-muted" >상담 종류</label>
                                <span>사전 상담</span>
                            </div>
                            <div class="form-group col col-md-4" id="consulting_anser_type">
                                <label class="form-label d-block text-muted" >상담 접수</label>
                                <span>추가</span>
                            </div>
                            <div class="form-group col col-md-4" id="consulting_goal">
                                <label class="form-label d-block text-muted" >신청 목적</label>
                                <span>이용 신청서 작성</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="reg_date">
                                <label class="form-label d-block text-muted"  >최초등록일</label>
                                <span>2021.00.00</span>
                            </div>
                            <div class="form-group col col-md-4" id="req_date">
                                <label class="form-label d-block text-muted" >요청일/변경일</label>
                                <span>2021.00.00 HH:MM</span>
                            </div>
                            <div class="form-group col col-md-4" id="consulting_answer_type">
                                <label class="form-label d-block text-muted" >상담 방법</label>
                                <span>방문 상담</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12" id="memo">
                                <label class="form-label d-block text-muted" >내용</label>
                                <span>
                          Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                          Aliquam amet animi consequatur dicta dignissimos eius est odit recusandae?
                          Accusantium consequuntur dignissimos iusto magnam provident, ratione reiciendis
                          repellat. Aut, doloribus, enim.
                        </span>
                            </div>
                        </div>



                        <div class="form-row">
                            <div class="form-group col col-md-12 mb-0">
                                <label class="form-label d-block text-muted">상담일 변경</label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-7" type="radio" class="custom-control-input">
                                    <span class="custom-control-label">변경 없음</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-7" type="radio" class="custom-control-input">
                                    <span class="custom-control-label">변경</span>
                                </label>
                            </div>

                            <div class="col-md-10">
                                <div class="form-control-plaintext mode-view" id="req_date2">2021.00 00 HH:MM 에서</div>

                                <div id="datepicker-show" class="input-daterange input-group mode-edit mode-new">
                                    <input type="text"  class="form-control d-inline-block datepickers" name="start" style="width:120px;">
                                    <input type="text" class="form-control" placeholder="9:00 AM" id="flatpickr-time-start">
                                </div>
                            </div>
                        </div>
                        <hr class="mt-0">

                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <div>
                            <button type="button" class="btn btn-outline-danger" data-dismiss="modal" id="delete_consult">삭제</button>
                            <button type="button" class="btn btn-primary">저장</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>



        <div class="modal fade" id="modals-counsel_modify">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">상담일지</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12 text-right">
                                <a href="#none" class="btn btn-underline"  data-toggle="modal" data-target="#modals-counsel-history">상담 이력</a>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="user_name_modify">
                                <label class="form-label d-block text-muted" >신청자</label>
                                <span>김홍삼</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted" id="addr_modify">주소</label>
                                <span>맛있는 농부</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="email_modify">
                                <label class="form-label d-block text-muted" >email</label>
                                <span>000-00-00000</span>
                            </div>
                            <div class="form-group col col-md-4" id="mphone_num_modify">
                                <label class="form-label d-block text-muted" >연락처</label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="consulting_status_modify">
                                <label class="form-label d-block text-muted" >상담 종류</label>
                                <span>사전 상담</span>
                            </div>
                            <div class="form-group col col-md-4" id="consulting_anser_type_modify">
                                <label class="form-label d-block text-muted" >상담 접수</label>
                                <span>추가</span>
                            </div>
                            <div class="form-group col col-md-4" id="consulting_goal_modify">
                                <label class="form-label d-block text-muted" >신청 목적</label>
                                <span>이용 신청서 작성</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="reg_date_modify">
                                <label class="form-label d-block text-muted"  >최초등록일</label>
                                <span>2021.00.00</span>
                            </div>
                            <div class="form-group col col-md-4" id="req_date_modify">
                                <label class="form-label d-block text-muted" >요청일/변경일</label>
                                <span>2021.00.00 HH:MM</span>
                            </div>
                            <div class="form-group col col-md-4" id="consulting_answer_type_modify">
                                <label class="form-label d-block text-muted" >상담 방법</label>
                                <span>방문 상담</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12" id="memo_get_modify">
                                <label class="form-label d-block text-muted" >내용</label>
                                <span>
                          Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                          Aliquam amet animi consequatur dicta dignissimos eius est odit recusandae?
                          Accusantium consequuntur dignissimos iusto magnam provident, ratione reiciendis
                          repellat. Aut, doloribus, enim.
                        </span>
                            </div>
                        </div>
                        <div class="form-row" id="memo_modify">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold" >메모</label>
                            <div class="form-group col col-md-10">
                                <textarea class="form-control mode-edit mode-new" rows="3"></textarea>
                            </div>
                        </div>


                        <div class="form-row">
                            <div class="form-group col col-md-12 mb-0">
                                <label class="form-label d-block text-muted">상담일 변경</label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-7" type="radio" class="custom-control-input">
                                    <span class="custom-control-label">변경 없음</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-7" type="radio" class="custom-control-input">
                                    <span class="custom-control-label">변경</span>
                                </label>
                            </div>
                            <div class="form-group col col-md-12 mb-1" id="reqdate2_modify">
                                <span class="text-muted">2021.00 00 HH:MM 에서</span> <input type="text" class="form-control d-inline-block datepickers"  style="width:120px;"> <input type="text"  class="form-control d-inline-block ui-timepicker-input" autocomplete="off" style="width:90px;" placeholder="00:00 AM">
                            </div>

                        </div>
                        <hr class="mt-0">

                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <div>
                            <button type="button" class="btn btn-primary">저장</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>



    </div>


<script>
    $(function() {
        var isRtl = $('html').attr('dir') === 'rtl';

        $('#datepicker-show,#datepicker-open').datepicker({
            orientation: isRtl ? 'auto right' : 'auto left',
            format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
            startDate: '-10d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
            language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
        });


    });
    $(function () {
        // Time
        $('#flatpickr-time-start,#flatpickr-time-end').flatpickr({
            enableTime: true,
            noCalendar: true,
            altInput: true,
            static:true
        });
    });
    var curConsultdata;
    var consultList=[];
    <c:forEach items="${consultingList}" var="consulting" varStatus="status">
    consultList.push({
        idx_demo_bs_consulting :"${consulting.idx_demo_bs_consulting}",
        consulting_num :"${consulting.consulting_num}",
        idx_demo_bs_applicaion :"${consulting.idx_demo_bs_applicaion}",
        idx_demo_business :"${consulting.idx_demo_business}",
        idx_corp_info :"${consulting.idx_corp_info}",
        idx_user :"${consulting.idx_user}",
        consulting_type :"${consulting.consulting_type}",
        consult_type_etc_str :"${consulting.consult_type_etc_str}",
        consulting_status :"${consulting.consulting_status}",
        consulting_goal :"${consulting.consulting_goal}",
        req_date :"<fmt:formatDate value="${consulting.req_date}" pattern="yyyy-MM-dd HH:MM"/>",
        resulvation_date :"<fmt:formatDate value="${consulting.resulvation_date}" pattern="yyyy-MM-dd HH:MM"/>",
        consulting_date :"<fmt:formatDate value="${consulting.consulting_date}" pattern="yyyy-MM-dd HH:MM"/>",
        consultant_idx :"${consulting.consultant_idx}",
        is_consulting_file :"${consulting.is_consulting_file}",
        is_result_file :"${consulting.is_result_file}",
        is_consultant :"${consulting.is_consultant}",
        consult_answer_type :"${consulting.consult_answer_type eq 0 ? "전화" : consulting.consult_answer_type eq 1 ? "이메일" :consulting.consult_answer_type eq 2 ? "대면상담" : "기타"}",
        is_share :"${consulting.is_share}",
        is_privacy_accept :"${consulting.is_privacy_accept}",
        memo :"${consulting.memo}",
        idx_admin :"${consulting.idx_admin}",
        user_name :"${consulting.user_name}",
        reg_date :"<fmt:formatDate value="${consulting.reg_date}" pattern="yyyy-MM-dd HH:MM"/>",
        email :"${consulting.email}",
        addr :"${consulting.addr}",
        mphone_num :"${consulting.mphone_num}"

    })
    </c:forEach>


    $(".consulting-entity").click(function(){
        var selectId = $(this).attr('id');
        curConsultdata = selectId;
        for(var consulting of consultList){
            if(selectId === consulting.idx_demo_bs_consulting){
                $(".idx_demo_bs_consulting").attr("id", selectId);
                // $('#question_mo span').text(visitList.question);
                $("#consulting_num span").text(consulting.consulting_num);
                $("#idx_demo_bs_applicaion span").text(consulting.idx_demo_bs_applicaion);
                $("#idx_demo_business span").text(consulting.idx_demo_business);
                $("#idx_corp_info span").text(consulting.idx_corp_info);
                $("#idx_user span").text(consulting.idx_user);
                $("#consulting_type span").text(consulting.consulting_type);
                $("#consult_type_etc_str span").text(consulting.consult_type_etc_str);
                $("#consulting_status span").text(consulting.consulting_status);
                $("#consulting_goal span").text(consulting.consulting_goal);
                $("#req_date span").text(consulting.req_date);
                $("#resulvation_date span").text(consulting.resulvation_date);
                $("#consulting_date span").text(consulting.consulting_date);
                $("#consultant_idx span").text(consulting.consultant_idx);
                $("#is_consulting_file span").text(consulting.is_consulting_file);
                $("#is_result_file span").text(consulting.is_result_file);
                $("#is_consultant span").text(consulting.is_consultant);
                $("#consult_answer_type span").text(consulting.consult_answer_type);
                $("#is_share span").text(consulting.is_share);
                $("#is_privacy_accept span").text(consulting.is_privacy_accept);
                $("#memo span").text(consulting.memo);
                $("#idx_admin span").text(consulting.idx_admin);
                $("#user_name span").text(consulting.user_name);
                $("#reg_date span").text(consulting.reg_date);
                $("#email span").text(consulting.email);
                $("#addr span").text(consulting.addr);
                $("#mphone_num span").text(consulting.mphone_num);
                $("#req_date2 span").text(consulting.req_date+"에서");


                $("#consulting_num_modify span").val(consulting.consulting_num);
                $("#idx_demo_bs_applicaion_modify span").val(consulting.idx_demo_bs_applicaion);
                $("#idx_demo_business_modify span").val(consulting.idx_demo_business);
                $("#idx_corp_info_modify span").val(consulting.idx_corp_info);
                $("#idx_user_modify span").val(consulting.idx_user);
                $("#consulting_type_modify span").val(consulting.consulting_type);
                $("#consult_type_etc_str_modify span").val(consulting.consult_type_etc_str);
                $("#consulting_status_modify span").val(consulting.consulting_status);
                $("#consulting_goal_modify span").val(consulting.consulting_goal);
                $("#req_date_modify span").val(consulting.req_date);
                $("#resulvation_date_modify span").val(consulting.resulvation_date);
                $("#consulting_date_modify span").val(consulting.consulting_date);
                $("#consultant_idx_modify span").val(consulting.consultant_idx);
                $("#is_consulting_file_modify span").val(consulting.is_consulting_file);
                $("#is_result_file_modify span").val(consulting.is_result_file);
                $("#is_consultant_modify span").val(consulting.is_consultant);
                $("#consult_answer_type_modify span").val(consulting.consult_answer_type);
                $("#is_share_modify span").val(consulting.is_share);
                $("#is_privacy_accept_modify span").val(consulting.is_privacy_accept);
                $("#memo_modify span").val(consulting.memo);
                $("#idx_admin_modify span").val(consulting.idx_admin);
                $("#user_name_modify span").val(consulting.user_name);
                $("#reg_date_modify span").val(consulting.reg_date);
                $("#email_modify span").val(consulting.email);
                $("#addr_modify span").val(consulting.addr);
                $("#mphone_num_modify span").val(consulting.mphone_num);
                $("#req_date2_modify span").val(consulting.req_date+"에서");
                break;
            }
        }
    });


    $("#delete_consult").click(function () {
// let result = document.getElementsByName('custom-6');
        var selectId = $(this).attr('id');

        $.ajax({
            type: 'post',
            url: '/delete_consult', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify( parseInt(curConsultdata)),//보내는 데이터
            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
            dataType: 'json',//받는 데이터 타입
            success: function (result) {
                if (result.result_code == "SUCCESS") {
                    alert("상태 변경에 성공하였습니다")

                } else {
                    alert("상태 변경에 실패하였습니다")
                }
            },
            error: function (res) {
                console.log(res)
            }
        });
    })




</script>
<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
<!-- / Layout footer -->

<!-- / Page content -->
