<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
        <div>문서발급이력</div>
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
                                <th class="text-center sorting" style="width:80px">발급상태</th>
                                <th class="text-center px-2" style="width:100px">기업명</th>
                                <th class="text-center sorting" style="width:60px">신청자</th>
                                <th class="text-center sorting" style="width:100px">신청일</th>
                                <th class="text-center sorting" style="width:100px">발급 요청 문서</th>
                                <th class="text-center sorting" style="width:150px">수량</th>
                                <th class="text-center px-2" style="width:80px">용도</th>
                                <th class="text-center px-2" style="width:120px">발급일시</th>
                                <th class="text-center px-2" style="width:120px">일련번호</th>

                            </tr>
                            </thead>
                            <tbody>
                            <c:if test="${total_count ne 0}">
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
                                <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c10_site_mng_consult_mng',{cur_page:1},'상담신청 목록');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c10_site_mng_consult_mng',{cur_page:${cur_page-1}},'상담신청 목록');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>
                                <c:forEach var="i" begin="1" end="${page_amount}">
                                    <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('c10_site_mng_consult_mng',{cur_page:${(cur_sector-1)*page_amount+i}},'상담신청 목록');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                </c:forEach>
                                <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c10_site_mng_consult_mng',{cur_page:${cur_page+1}},'상담신청 목록');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c10_site_mng_consult_mng',{cur_page:${tot_page}},'상담신청 목록');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                </c:if>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- Layout footer -->
<%@include file ="../layouts/frame_footer.jsp" %>
<!-- / Layout footer -->
<!-- / Page content -->
<script>



</script>