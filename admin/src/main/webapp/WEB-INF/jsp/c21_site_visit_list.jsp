<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>견학신청 목록</div>
        </h4>

        <div class="card px-4 pt-4 mb-4">
            <div class="form-row mb-4">


                <div class="col-md-5 ">
                    <label class="form-label text-muted">견학접수</label>
                    <div class="form-inline">
                        <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons" id="category_change">
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio" class="category_change" id="all" onclick="javascript:pageLoad('c21_site_visit_listpage=1&filter1=9999&filter2=9998','견학신청 목록');" checked="">전체
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio" class="category_change" id="new" value="0"  onclick="javascript:pageLoad('c21_site_visit_list',{page_num:1,filter1:0,filter2:9998},'견학신청 목록');"> 신규
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio" class="category_change" id="register" value="1" onclick="javascript:pageLoad('c21_site_visit_list',{page_num:1,filter1:1,filter2:9998},'견학신청 목록');" > 접수
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio" class="category_change" id="approval" value="2" onclick="javascript:pageLoad('c21_site_visit_list',{page_num:1,filter1:2,filter2:9998},'견학신청 목록');"> 승인
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio" class="category_change" id="visit" value="3" onclick="javascript:pageLoad('c21_site_visit_list',{page_num:1,filter1:3,filter2:9998},'견학신청 목록');"> 방문
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio" class="category_change" id="visited" value="4" onclick="javascript:pageLoad('c21_site_visit_list',{page_num:1,filter1:4,filter2:9998},'견학신청 목록');"> 방문완료
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio" class="category_change" id="cancle" value="5" onclick="javascript:pageLoad('c21_site_visit_list',{page_num:1,filter1:5,filter2:9998},'견학신청 목록');"> 방문취소
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio" class="category_change" id="refuse" value="6" onclick="javascript:pageLoad('c21_site_visit_list',{page_num:1,filter1:6,filter2:9998},'견학신청 목록');"> 승인거절
                            </label>
                        </div>
                    </div>
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
                            <label class="mr-3  mb-0">총 : <strong>${total_count}</strong>건</label><label class="mr-3  mb-0">신규 : <strong>70</strong>건</label><label class="mr-3  mb-0">추가 : <strong>70</strong>건</label><label class="mr-3  mb-0">해결 : <strong>70</strong>건</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-success text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center px-2" style="width:60px">No</th>
                                    <th class="text-center sorting" style="width:80px">회신</th>
                                    <th class="text-center sorting" style="width:80px">신청자</th>
                                    <th class="text-center sorting" style="width:60px">ID</th>
                                    <th class="text-center sorting" style="width:100px">신청일</th>
                                    <th class="text-center sorting" style="width:150px">단체명</th>
                                    <th class="text-center px-2" style="width:80px">견학 희망일</th>
                                    <th class="text-center px-2" style="width:120px">인원</th>
                                    <th class="text-center px-2" style="width:120px">연락처</th>
                                    <th class="text-center px-2" style="width:120px">이메일</th>
                                    <th class="text-center px-2" style="width:100px">주소</th>
                                    <th class="text-center px-2" style="width:150px">목적</th>
                                    <th class="text-center px-2" style="width:150px">질문</th>

                                </tr>
                                </thead>
                                <tbody>
<c:if test="${total_count ne 0}">
<c:forEach items="${visitReqList}" var="visit">
                            <tr class="visit-entity" id="${visit.idx_visit_req}" >

                                    <td class="text-center" id="visit_req_num">${visit.idx_row_num}</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm"  data-toggle="modal" data-target="#modals-counsel-view" class="visit-status">${visit.visit_req_status eq 0 ? "신청" : visit.visit_req_status eq 1 ? "접수" : visit.visit_req_status eq 3 ? "방문" : visit.visit_req_status eq 4 ? "방문 완료" : visit.visit_req_status eq 5 ? "방문취소": visit.visit_req_status eq 6 ? "승인거절" : "기타"}</a></td>
                                    <td class="text-center" id="visit_visitor">${visit.visitor}</td>
                                    <td class="text-center" id="visit_idx_user">${visit.idx_user}</td>
                                    <td class=""><fmt:formatDate value="${visit.reg_date}" pattern="yyyy-MM-dd HH:MM"/></td>
                                    <td class="text-center">${visit.group_name}</td>
                                    <td class=""><fmt:formatDate value="${visit.resulvation_date}" pattern="yyyy-MM-dd HH:MM"/></td>
                                    <td class="text-center">${visit.visitor_count}</td>
                                    <td class="text-center">${visit.visitor_mphone_num}</td>
                                    <td class="text-center">${visit.visitor_email}</td>
                                    <td class="text-center">${visit.visitor_adress}</td>
                                    <td class="text-center">${visit.visit_goal}</td>
                                    <td class="text-center">${visit.question}</td>
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
                            <div class="dataTables_info" id="" role="status" aria-live="polite">총 ${total_count}개 중 ${list_amount*(cur_page-1)+1}에서 ${total_count}까지</div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                                <ul class="pagination">
                                    <c:set var="name" value="${total_count/amount}" />
                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c21_site_visit_list',{page_num:1},'견학신청 목록');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c21_site_visit_list',{page_num:${cur_page-1}},'견학신청 목록');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>
                                    <c:forEach var="i" begin="1" end="${page_amount}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('c21_site_visit_list',{page_num:${(cur_sector-1)*page_amount+i}},'견학신청 목록');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>
                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c21_site_visit_list',{page_num:${cur_page+1}},'견학신청 목록');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c21_site_visit_list',{page_num:${tot_page}},'견학신청 목록');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                    </c:if>
                                    <%--                                    <li class="paginate_button page-item previous disabled" id="article-list_previous"><a href="#" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li>--%>
<%--                                    <li class="paginate_button page-item active"><a href="#" aria-controls="article-list" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>--%>
<%--                                    <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>--%>
<%--                                    <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>--%>
<%--                                    <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>--%>
<%--                                    <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>--%>
<%--                                    <li class="paginate_button page-item next" id="article-list_next"><a href="#" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li>--%>
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
                        <h5 class="modal-title">견학신청 접수</h5>
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

                            <div class="form-group col col-md-4" id="visitor">
                                <label class="form-label d-block text-muted" id="visitor_label">신청자</label>
                                <span></span>
                            </div>
                            <div class="form-group col col-md-4" id="visitor_count">
                                <label class="form-label d-block text-muted">방문자 수</label>
                                <span></span>
                            </div>
                            <div class="form-group col col-md-4" id="group_name">
                                <label class="form-label d-block text-muted" >단체명</label>
                                <span>맛있는 농부</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id ="user_name">
                                <label class="form-label d-block text-muted" >ID</label>
                                <span>000-00-00000</span>
                            </div>
                            <div class="form-group col col-md-4" id ="visitor_mphone_num">
                                <label class="form-label d-block text-muted" >연락처</label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id ="visit_req_status">
                                <label class="form-label d-block text-muted" >방문요청 상태</label>
                                <span>사전 상담</span>
                            </div>
                            <div class="form-group col col-md-4" id =" visitor_email">
                                <label class="form-label d-block text-muted" >방문자 이메일</label>
                                <span>추가</span>
                            </div>
                            <div class="form-group col col-md-4" id ="visitor_adress">
                                <label class="form-label d-block text-muted" >방문자 주소</label>
                                <span>이용 신청서 작성</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="reg_date">
                                <label class="form-label d-block text-muted" >등록일</label>
                                <span>2021.00.00</span>
                            </div>
                            <div class="form-group col col-md-4" id ="resulvation_date">
                                <label class="form-label d-block text-muted" >견학 희망일</label>
                                <span>2021.00.00 HH:MM</span>
                            </div>
                            <div class="form-group col col-md-4" id="visit_goal">
                                <label class="form-label d-block text-muted" >방문 목표</label>
                                <span>방문 상담</span>
                            </div>
                        </div>
                        <div class="form-row" id="question">
                            <div class="form-group col col-md-12" id="question_mo">
                                <label class="form-label d-block text-muted" >방문전 질문 사항</label>
                                <span >
                          Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                          Aliquam amet animi consequatur dicta dignissimos eius est odit recusandae?
                          Accusantium consequuntur dignissimos iusto magnam provident, ratione reiciendis
                          repellat. Aut, doloribus, enim.
                        </span>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col col-md-12" id="status_value">
                                <label class="form-label d-block text-muted">수락여부</label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-6" type="radio" class="custom-control-input"  value="1">
                                    <span class="custom-control-label">접수</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-6" type="radio" class="custom-control-input" value="2">
                                    <span class="custom-control-label">승인</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-6" type="radio" class="custom-control-input" value="3">
                                    <span class="custom-control-label">방문</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-6" type="radio" class="custom-control-input" value="4">
                                    <span class="custom-control-label">방문 완료</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-6" type="radio" class="custom-control-input" value="5">
                                    <span class="custom-control-label">방문 취소</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-6" type="radio" class="custom-control-input" value="6">
                                    <span class="custom-control-label">승인거절</span>
                                </label>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12 mb-0">
                                <label class="form-label d-block text-muted">견학일 변경</label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-7" type="radio" class="custom-control-input">
                                    <span class="custom-control-label">변경 없음</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-7" type="radio" class="custom-control-input">
                                    <span class="custom-control-label">변경</span>
                                </label>
                            </div>
                            <div id="datepicker-show" class="input-daterange input-group mode-edit mode-new">
                                <input type="text"  class="form-control d-inline-block datepickers" name="start" style="width:120px;" id="update_date">
                                <input type="text" class="form-control" placeholder="9:00 AM" id="flatpickr-time-start" >
                            </div>

                        </div>
                        <hr class="mt-0">

                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <div>
                            <button type="button" class="btn btn-primary" onclick="event_pass();">저장</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Modal template -->
        <div class="modal fade" id="modals-counsel-modify">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">견학신청 접수</h5>
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

                            <div class="form-group col col-md-4" id="visitor_modify">
                                <label class="form-label d-block text-muted" id="visitor_modify_label">신청자</label>
                                <span > </span>
                            </div>
                            <div class="form-group col col-md-4" id="visitor_count_modify">
                                <label class="form-label d-block text-muted" >방문자 수</label>
                                <span></span>
                            </div>
                            <div class="form-group col col-md-4" id="group_name_modify">
                                <label class="form-label d-block text-muted" >단체명</label>
                                <span>맛있는 농부</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id ="user_name_modify">
                                <label class="form-label d-block text-muted" >ID</label>
                                <span>000-00-00000</span>
                            </div>
                            <div class="form-group col col-md-4" id ="visitor_mphone_num_modify">
                                <label class="form-label d-block text-muted" >연락처</label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id ="visit_req_status_modify">
                                <label class="form-label d-block text-muted" >방문요청 상태</label>
                                <span>사전 상담</span>
                            </div>
                            <div class="form-group col col-md-4" id =" visitor_email_modify">
                                <label class="form-label d-block text-muted" >방문자 이메일</label>
                                <span>추가</span>
                            </div>
                            <div class="form-group col col-md-4"  id ="visitor_adress_modify">
                                <label class="form-label d-block text-muted">방문자 주소</label>
                                <span>이용 신청서 작성</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="reg_date_modify">
                                <label class="form-label d-block text-muted" >등록일</label>
                                <span>2021.00.00</span>
                            </div>
                            <div class="form-group col col-md-4" id ="resulvation_date_modify">
                                <label class="form-label d-block text-muted" >견학 희망일</label>
                                <span>2021.00.00 HH:MM</span>
                            </div>
                            <div class="form-group col col-md-4"  id="visit_goal_modify">
                                <label class="form-label d-block text-muted">방문 목표</label>
                                <span>방문 상담</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12" id="question_modify">
                                <label class="form-label d-block text-muted" >방문전 질문 사항</label>
                                <span>
                          Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                          Aliquam amet animi consequatur dicta dignissimos eius est odit recusandae?
                          Accusantium consequuntur dignissimos iusto magnam provident, ratione reiciendis
                          repellat. Aut, doloribus, enim.
                        </span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">이용료 납부</label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-6" type="radio" class="custom-control-input">
                                    <span class="custom-control-label">미납</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-6" type="radio" class="custom-control-input">
                                    <span class="custom-control-label">납부</span>
                                </label>
                                <span class="font-weight-semibold">납부액 : 90,000,000원</span>
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
                            <div class="form-group col col-md-12 mb-1" id="visit_date_modify">
                                <span class="text-muted">2021.00 00 HH:MM 에서</span> <input type="text" class="form-control d-inline-block datepickers" style="width:120px;"> <input type="text" id="timepicker-2" class="form-control d-inline-block ui-timepicker-input" autocomplete="off" style="width:90px;" placeholder="00:00 AM">
                            </div>
                            <div class="form-group col col-md-12">
                                <span class="text-muted">신청자에게</span>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="check-3">
                                    <span class="custom-control-label">SMS</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="check-3">
                                    <span class="custom-control-label">이메일</span>
                                </label>
                                <a href="#none" class="btn btn-outline-secondary">안내</a>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">상담일지</label>
                                <input type="file" class="form-control-file d-block">
                                <small class="form-text text-muted">상담 일지 등록, 피 상담자에게는 전달이 안됩니다.</small>
                            </div>
                        </div>
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
        <div class="modal fade" id="modals-counsel-history">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">상담 이력</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12 text-right">
                                <a href="#none" class="btn btn-underline">상담 이력</a>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">신청자</label>
                                <span>김홍삼</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">소속</label>
                                <span>맛있는 농부</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">ID</label>
                                <span>000-00-00000</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">연락처</label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>
                        <hr class="mt-0">

                        <div id="ac2">
                            <div class="card mb-2">

                                <div class="card-header">
                                    <a class="d-flex justify-content-between text-body" data-toggle="collapse" aria-expanded="true" href="#ac2-1">
                                        <span class="pr-2">신규 해결 YYYY.DD.MM</span>
                                        <div class="collapse-icon"></div>
                                    </a>
                                </div>

                                <div id="ac2-1" class="collapse show" data-parent="#ac2" style="">
                                    <div class="card-body">
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 구분</label>
                                                <span>사전 상담</span>
                                            </div>
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 접수</label>
                                                <span>신규</span>
                                            </div>
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">신청 목적</label>
                                                <span>이용 신청서 작성</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">수신일</label>
                                                <span>2021.00.00</span>
                                            </div>
                                            <div class="form-group col col-md-8">
                                                <label class="form-label d-block text-muted">요청일/변경일</label>
                                                <span>2021.00.00 HH:MM / 2021.00.00 HH:MM</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 방법</label>
                                                <span>방문 상담</span>
                                            </div>
                                            <div class="form-group col col-md-8">
                                                <label class="form-label d-block text-muted">상담일</label>
                                                <span>2021.00.00</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-12">
                                                <label class="form-label d-block text-muted">방문상담</label>
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
                                                <label class="form-label d-block text-muted">상담일지</label>
                                                <span>XXXXXXXX.hwp</span><a href="#none" class="btn btn-outline-default ml-2"><i class="lnr lnr-download"></i> 내려받기</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card mb-2">
                                <div class="card-header">
                                    <a class="d-flex justify-content-between text-body collapsed" data-toggle="collapse" href="#ac2-2" aria-expanded="false">
                                        <span class="pr-2">신규 해결 YYYY.DD.MM</span>
                                        <div class="collapse-icon"></div>
                                    </a>
                                </div>
                                <div id="ac2-2" class="collapse" data-parent="#ac2" style="">
                                    <div class="card-body">
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 구분</label>
                                                <span>사전 상담</span>
                                            </div>
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 접수</label>
                                                <span>신규</span>
                                            </div>
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">신청 목적</label>
                                                <span>이용 신청서 작성</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">수신일</label>
                                                <span>2021.00.00</span>
                                            </div>
                                            <div class="form-group col col-md-8">
                                                <label class="form-label d-block text-muted">요청일/변경일</label>
                                                <span>2021.00.00 HH:MM / 2021.00.00 HH:MM</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 방법</label>
                                                <span>방문 상담</span>
                                            </div>
                                            <div class="form-group col col-md-8">
                                                <label class="form-label d-block text-muted">상담일</label>
                                                <span>2021.00.00</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-12">
                                                <label class="form-label d-block text-muted">방문상담</label>
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
                                                <label class="form-label d-block text-muted">상담일지</label>
                                                <span>XXXXXXXX.hwp</span><a href="#none" class="btn btn-outline-default ml-2"><i class="lnr lnr-download"></i> 내려받기</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card mb-2">
                                <div class="card-header">
                                    <a class="collapsed d-flex justify-content-between text-body" data-toggle="collapse" href="#ac2-3">
                                        <span class="pr-2">신규 해결 YYYY.DD.MM</span>
                                        <div class="collapse-icon"></div>
                                    </a>
                                </div>
                                <div id="ac2-3" class="collapse" data-parent="#ac2">
                                    <div class="card-body">
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 구분</label>
                                                <span>사전 상담</span>
                                            </div>
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 접수</label>
                                                <span>신규</span>
                                            </div>
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">신청 목적</label>
                                                <span>이용 신청서 작성</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">수신일</label>
                                                <span>2021.00.00</span>
                                            </div>
                                            <div class="form-group col col-md-8">
                                                <label class="form-label d-block text-muted">요청일/변경일</label>
                                                <span>2021.00.00 HH:MM / 2021.00.00 HH:MM</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 방법</label>
                                                <span>방문 상담</span>
                                            </div>
                                            <div class="form-group col col-md-8">
                                                <label class="form-label d-block text-muted">상담일</label>
                                                <span>2021.00.00</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-12">
                                                <label class="form-label d-block text-muted">방문상담</label>
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
                                                <label class="form-label d-block text-muted">상담일지</label>
                                                <span>XXXXXXXX.hwp</span><a href="#none" class="btn btn-outline-default ml-2"><i class="lnr lnr-download"></i> 내려받기</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                    </div>
                </form>
            </div>
        </div>

    </div>

<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
<script>

    var curVisitdata;
    var visitList=[];
    <c:forEach items="${visitReqList}" var="visit" varStatus="status">
    visitList.push({
        idx_visit_req :"${visit.idx_visit_req}",
        visit_req_status :"${visit.visit_req_status}",
        visitor :"${visit.visitor}",
        idx_user :"${visit.idx_user}",
        reg_date :"<fmt:formatDate value="${visit.reg_date}" pattern="yyyy-MM-dd HH:MM"/>",
        group_name :"${visit.group_name}",
        resulvation_date :"<fmt:formatDate value="${visit.resulvation_date}" pattern="yyyy-MM-dd HH:MM"/>",
        visitor_count :"${visit.visitor_count}",
        visitor_mphone_num :"${visit.visitor_mphone_num}",
        visitor_email :"${visit.visitor_email}",
        visitor_adress :"${visit.visitor_adress}",
        visit_goal :"${visit.visit_goal}",
        question :"${visit.question}"
    })
    </c:forEach>

    $(".visit-entity").click(function(){
        var selectId = $(this).attr('id');
        curVisitdata = selectId;
        for(var visit of visitList){
            if(selectId === visit.idx_visit_req){
                $(".idx_visit_req").attr("id", selectId);
                // $('#question_mo span').text(visitList.question);
                $("#visitor span").text(visit.visitor);
                $("#visitor_count span").text(visit.visitor_count);
                $("#group_name span").text(visit.group_name);
                $("#user_name span").text(visit.user_name);
                $("#visitor_mphone_num span").text(visit.visitor_mphone_num);
                $("#visit_req_status span").text(visit.visit_req_status);
                $("#visitor_email span").text(visit.visitor_email);
                $("#visitor_adress span").text(visit.visitor_adress);
                $("#reg_date span").text(visit.reg_date);
                $("#resulvation_date span").text(visit.resulvation_date);
                $("#visit_goal span").text(visit.visit_goal);
                $("#question span").text(visit.question);
                $("#visit_date span").text(visit.resulvation_date);

                $("#visitor_modify span").val(visit.visitor);
                $("#visitor_count_modify span").val(visit.visitor_count);
                $("#group_name_modify span").val(visit.group_name);
                $("#user_name_modify span").val(visit.user_name);
                $("#visitor_mphone_num_modify span").val(visit.visitor_mphone_num);
                $("#visit_req_status_modify span").val(visit.visit_req_status);
                $("#visitor_email_modify span").val(visit.visitor_email);
                $("#visitor_adress_modify span").val(visit.visitor_adress);
                $("#reg_date_modify span").val(visit.reg_date);
                $("#resulvation_date_modify span").val(visit.resulvation_date);
                $("#visit_goal_modify span").val(visit.visit_goal);
                $("#question_modify span").val(visit.question);
                $("#visit_date_modify span").val(visit.resulvation_date);
                break;
            }
        }
    });


    function event_pass() {
// let result = document.getElementsByName('custom-6');
        var selectId = $(this).attr('id');
        param ={
            idx_visit_req: parseInt(curVisitdata),
            visit_req_status : $("input:radio[name=custom-6]:checked").val(),
            resulvation_date:$("#update_date").val()+"T"+$("#flatpickr-time-start").val()
        }

        $.ajax({
            type: 'post',
            url: '/visit_update', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
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
    }
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
    // $('input[name="btn-radio"]').change(function(){
    //     var changeStatus = $('input[name="btn-radio"]:checked').val();
    //     pageLoad("c21_site_visit_list", {page_num: 1, corp: parseInt(changeStatus)}, "이건무엇", true);
    //     console.log(visitList.length + "  admin_mng")
    // })
    //

</script>
<!-- / Layout footer -->

<!-- / Page content -->
