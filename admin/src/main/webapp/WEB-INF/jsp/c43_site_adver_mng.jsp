<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>홍보자료 관리</div>
            ${dd}
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
                <div class="card-header-elements ml-auto">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modals-business" data-what="mode-new">신규 홍보자료작성</button>
                </div>
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
                                    <th class="text-center sorting" style="width:80px">홍보자료 제목</th>
                                    <th class="text-center sorting" style="width:60px">홍보자료 내용</th>
                                    <th class="text-center sorting" style="width:100px">파일포함여부</th>
                                    <th class="text-center sorting" style="width:100px">신규등록여부</th>
                                    <th class="text-center sorting" style="width:150px">메인페이지 노출여부</th>
                                    <th class="text-center px-2" style="width:80px">조회수</th>
                                    <th class="text-center px-2" style="width:120px">홍보게시 프로세스상태</th>
                                    <th class="text-center px-2" style="width:120px">시작일시</th>
                                    <th class="text-center px-2" style="width:120px">종료일시</th>
                                    <th class="text-center px-2" style="width:100px">홍보자료 관련 메모</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:if test="${total_count ne 0}">
                               <c:forEach items="${prlist}" var="pr" varStatus="status">
                                <tr class="pr_entity" id="${pr.idx_pr_content}">
                                    <td class="text-center">${pr.pr_content_num}</td>
                                    <td class="text-center"><a href="#none" id="data" class="btn btn-outline-default  btn-sm"  data-toggle="modal" data-target="#modals-counsel-view" >${pr.subject}</a></td>
                                    <td class="text-center"><a href="#none" id="${pr.idx_pr_content}" class="btn btn-outline-default  btn-sm btn_content_modal"  data-toggle="modal" data-target="#modals-content" >컨텐츠 보기</a></td>
                                    <td class="text-center">${pr.is_file eq 0 ? "포함안함" : pr.is_file eq 1 ? "포함" :""}</td>
                                    <td class="text-center">${pr.is_new eq 0 ? "신규아님" : pr.is_new eq 1 ? "신규" :""}</td>
                                    <td class="text-center">${pr.is_show eq 0 ? "노출안함" : pr.is_show eq 1 ? "노출함" :""}</td>
                                    <td class="text-center">${pr.view_count}</td>
                                    <td class="text-center">${pr.pr_content_status eq 0 ? "임시저장" :pr.pr_content_status eq 1 ? "허락" :pr.pr_content_status eq 2 ? "수정발행": pr.pr_content_status eq 3 ? "게시종료" :"기타"}</td>
                                    <td class="text-center"><fmt:formatDate value="${pr.show_start_date}" pattern="yyyy-MM-dd HH:MM"/></td>
                                    <td class="text-center"><fmt:formatDate value="${pr.show_end_date}" pattern="yyyy-MM-dd HH:MM"/></td>
                                    <td class="text-center">${pr.memo}</td>
                                </tr>
                               </c:forEach>
                                </c:if>
                                </tbody>
                            </table>
                        </div>
                    </div>
<%--                    <div class="row">--%>
<%--                        <div class="col-sm-12 col-md-5">--%>
<%--                            <div class="dataTables_info" id="" role="status" aria-live="polite">Showing 1 to 10 of 50 entries</div>--%>
<%--                        </div>--%>
<%--                        <div class="col-sm-12 col-md-7">--%>
<%--                            <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">--%>
<%--                                <ul class="pagination">--%>


                                    <c:if test="${total_count ne 0}">
                                    <div class="row">
                                        <div class="col-sm-12 col-md-5">
                                            <div class="dataTables_info" id="" role="status" aria-live="polite">총 ${total_count}개 중 ${list_amount*(cur_page-1)+1}에서 ${total_count}까지</div>
                                        </div>
                                        <div class="col-sm-12 col-md-7">
                                            <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                                                <ul class="pagination">
                                                    <c:set var="name" value="${total_count/amount}" />
                                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c43_site_adver_mng',{page_num:1},'홍보자료 목록');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c43_site_adver_mng',{page_num:${cur_page-1}},'홍보자료 목록');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>
                                                    <c:forEach var="i" begin="1" end="${page_amount}">
                                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('c43_site_adver_mng',{page_num:${(cur_sector-1)*page_amount+i}},'홍보자료 목록');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                                    </c:forEach>
                                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c43_site_adver_mng',{page_num:${cur_page+1}},'홍보자료 목록');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c43_site_adver_mng',{page_num:${tot_page}},'홍보자료 목록');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
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
                        <h5 class="modal-title">홍보자료 안내</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12 text-right">
                                <a href="#none" class="btn btn-underline"  data-toggle="modal" data-target="#modals-counsel-history"></a>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="subject">
                                <label class="form-label d-block text-muted">홍보자료 제목</label>
                                <span>김홍삼</span>
                            </div>
                            <div class="form-group col col-md-4" id="is_new">
                                <label class="form-label d-block text-muted">신규등록여부</label>
                                <span>맛있는 농부</span>
                            </div>
                            <div class="form-group col col-md-4" id="pr_content_code">
                                <label class="form-label d-block text-muted">부제목</label>
                                <span>맛있는 농부</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="is_file">
                                <label class="form-label d-block text-muted">파일포함여부</label>
                                <span>000-00-00000</span>
                            </div>
                            <div class="form-group col col-md-4" id="pr_contents">
                                <label class="form-label d-block text-muted">홍보자료 컨텐츠</label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="show_start_date">
                                <label class="form-label d-block text-muted">홍보 시작일시</label>
                                <span>사전 상담</span>
                            </div>
                            <div class="form-group col col-md-4" id="show_end_date">
                                <label class="form-label d-block text-muted">홍보 종료일시</label>
                                <span>추가</span>
                            </div>
                            <div class="form-group col col-md-4" id="pr_content_status">
                                <label class="form-label d-block text-muted">홍보프로세스 상태</label>
                                <span>이용 신청서 작성</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="last_upd_date">
                                <label class="form-label d-block text-muted">마지막 수정일</label>
                                <span>2021.00.00</span>
                            </div>

                            <div class="form-group col col-md-4" id="view_count">
                                <label class="form-label d-block text-muted">조회수</label>
                                <span>방문 상담</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12" id="memo">
                                <label class="form-label d-block text-muted">홍보자료 관련 메모</label>
                                <span>
                          Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                          Aliquam amet animi consequatur dicta dignissimos eius est odit recusandae?
                          Accusantium consequuntur dignissimos iusto magnam provident, ratione reiciendis
                          repellat. Aut, doloribus, enim.
                        </span>
                            </div>
                        </div>
                        <hr class="mt-0">
                    </div>
                    <div class="modal-footer justify-content-between">

                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>

                        <div>
                            <button type="button" class="btn btn-outline-danger" data-dismiss="modal" id="delete_pr">삭제</button>
                            <button type="button" class="btn btn-primary">확인</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- Modal template -->
        <div class="modal fade" id="modals-counsel-view_modify">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">홍보자료 안내</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12 text-right">
                                <a href="#none" class="btn btn-underline"  data-toggle="modal" data-target="#modals-counsel-history"></a>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="subject_modify">
                                <label class="form-label d-block text-muted">홍보자료 제목</label>
                                <span>김홍삼</span>
                            </div>
                            <div class="form-group col col-md-4" id="is_new_modify">
                                <label class="form-label d-block text-muted">신규등록여부</label>
                                <span>맛있는 농부</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="is_file_modify">
                                <label class="form-label d-block text-muted">파일포함여부</label>
                                <span>000-00-00000</span>
                            </div>



                                <div class="form-group col col-md-4" id="pr_content_code_modify">
                                    <label class="form-label d-block text-muted">부제목</label>
                                    <span>맛있는 농부</span>
                                </div>



                            <div class="form-group col col-md-4" id="pr_content_contents_modify">
                                <label class="form-label d-block text-muted">홍보자료 컨텐츠</label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="show_start_date_modify">
                                <label class="form-label d-block text-muted">홍보 시작일시</label>
                                <span>사전 상담</span>
                            </div>
                            <div class="form-group col col-md-4" id="show_end_date_modify">
                                <label class="form-label d-block text-muted">홍보 종료일시</label>
                                <span>추가</span>
                            </div>
                            <div class="form-group col col-md-4" id="pr_content_status_modify">
                                <label class="form-label d-block text-muted">홍보프로세스 상태</label>
                                <span>이용 신청서 작성</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="last_upd_date_modify">
                                <label class="form-label d-block text-muted">마지막 수정일</label>
                                <span>2021.00.00</span>
                            </div>

                            <div class="form-group col col-md-4" id="view_count_modify">
                                <label class="form-label d-block text-muted">조회수</label>
                                <span>방문 상담</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12" id="memo_modify">
                                <label class="form-label d-block text-muted">홍보자료 관련 메모</label>
                                <span>
                          Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                          Aliquam amet animi consequatur dicta dignissimos eius est odit recusandae?
                          Accusantium consequuntur dignissimos iusto magnam provident, ratione reiciendis
                          repellat. Aut, doloribus, enim.
                        </span>
                            </div>
                        </div>
                        <hr class="mt-0">
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <div>
                            <button type="button" class="btn btn-primary">확인</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div class="modal fade" id="modals-business">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header bg-success">
                        <h5 class="modal-title text-white font-weight-bold mode-new">신규 홍보자료 작성</h5>
                        <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body" id="dggdgg">
                        <form>
                            <!-- 사업번호 / 사업 상태-->

                            <!-- 사업 제목-->
                            <div class="form-group row" id="pr_subject_insert">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">홍보자료 제목</label>
                                <div class="col-md-10">
                                    <input type="text" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요" >
                                    <div class="form-control-plaintext mode-view"></div>
                                </div>
                            </div>

                            <hr>
                            <div class="form-row" >
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">컨텐츠 코드</label>
                                <div class="form-group col col-md-10" id="pr_content_code_insert">
                                    <textarea class="form-control mode-edit mode-new" rows="3"></textarea>
                                </div>
                            </div>
                            <div class="form-row" >
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">컨텐츠</label>
                                <div class="form-group col col-md-10" id="pr_contents_insert">
                                    <textarea class="summernote" rows="3"></textarea>
                                </div>
                            </div>
                            <hr>
                            <div class="form-row" >
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">내용</label>
                                <div class="form-group col col-md-10" id="memo_insert">
                                    <textarea class="form-control mode-edit mode-new" rows="3"></textarea>
                                </div>
                            </div>
                            <div class="form-group row" id="time">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">게시 기간</label>
                                <div class="col-md-10">
                                    <div id="datepicker-open" class="input-daterange input-group mode-edit mode-new">
                                        <input type="text" class="form-control" name="show_start_date" id="show_start_date_insert">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">~</span>
                                        </div>
                                        <input type="text" class="form-control" name="show_end_date" id="show_end_date_insert">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row" id="admin_name">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit mode-new">등록자</label>
                                <div class="col-md-4 mode-edit mode-new">
                                    <span class="px-1 mr-lg-2 ml-2 ml-lg-0">${admin.admin_name}</span>

                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col col-md-12" id="is_file_insert">
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">파일여부</label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-6" type="radio" class="custom-control-input"  value="0">
                                        <span class="custom-control-label">포함안함</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-6" type="radio" class="custom-control-input" value="1">
                                        <span class="custom-control-label">포함</span>
                                    </label>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col col-md-12" id="is_new_insert">
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">신규 등록여부</label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-7" type="radio" class="custom-control-input"  value="0">
                                        <span class="custom-control-label">신규아님</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-7" type="radio" class="custom-control-input" value="1">
                                        <span class="custom-control-label">신규</span>
                                    </label>
                                </div>
                            </div>


                            <div class="form-row">
                                <div class="form-group col col-md-12" id="is_main_page_insert">
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">메인페이지 노출여부</label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-8" type="radio" class="custom-control-input"  value="0">
                                        <span class="custom-control-label">노출안함</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-8" type="radio" class="custom-control-input" value="1">
                                        <span class="custom-control-label">노출</span>
                                    </label>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col col-md-12" id="pr_content_status_insert">
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">홍보자료 프로세스 상태</label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-9" type="radio" class="custom-control-input"  value="0">
                                        <span class="custom-control-label">임시저장</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-9" type="radio" class="custom-control-input" value="1">
                                        <span class="custom-control-label">허락</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-9" type="radio" class="custom-control-input" value="2">
                                        <span class="custom-control-label">수정발행</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-9" type="radio" class="custom-control-input" value="3">
                                        <span class="custom-control-label">게시종료</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-9" type="radio" class="custom-control-input" value="99">
                                        <span class="custom-control-label">기타</span>
                                    </label>
                                </div>
                            </div>
                            <div class="form-row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold" for="file_upload">파일 첨부</label>
                                <div class="form-group col col-md-10 mode-edit mode-new">
                                    <input type="file" class="form-control-file d-block py-1" id="file_upload" name="file_upload" multiple>
                                </div>
                                <div class="form-group col col-md-10 col-form-label mode-view">
                                    <a href="file.doc"></a>
                                </div>
                            </div>

                            <div class="modal-footer justify-content-between mode-new">
                                <div>
                                    <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-outline-primary mr-2">임시저장</button>
                                    <button id="btn_save_new" type="button" class="btn btn-primary" onclick="saveForm();">작성완료</button>
                                </div>
                            </div>

                            <div class="modal-footer justify-content-between mode-edit d-none">
                                <div>
                                    <button type="button" class="btn btn-outline-danger" data-dismiss="modal" >삭제</button>
                                    <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-primary">저장</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


<div class="modal fade" id="modals-content">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header bg-success">
                <h5 class="modal-title text-white font-weight-bold mode-new">신규 행사 작성</h5>
                <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
            </div>
            <div class="modal-body">
                <form>
                    <!-- 사업번호 / 사업 상태-->

                    <!-- 사업 제목-->
                    <div class="form-group row" id="event_content_code_insert">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">행사 제목</label>
                    </div>
                    <hr>
                    <div class="form-row" >
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">컨텐츠</label>
                        <div class="form-group col col-md-10" id="pr_contents_show">

                            <span>방문 상담</span>
                        </div>
                    </div>

                    <div class="modal-footer justify-content-between mode-new">
                        <div>
                            <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                        </div>
                        <div>
                            <button type="button" class="btn btn-outline-primary mr-2">임시저장</button>
                            <button type="button" class="btn btn-primary" onclick="event_pass();">작성완료</button>
                        </div>
                    </div>

                    <div class="modal-footer justify-content-between mode-edit d-none">
                        <div>
                            <button type="button" class="btn btn-outline-danger" data-dismiss="modal" >삭제</button>
                            <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                        </div>
                        <div>
                            <button type="button" class="btn btn-primary">저장</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

        <div class="modal fade" id="modals-content_modify">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header bg-success">
                        <h5 class="modal-title text-white font-weight-bold mode-new">신규 행사 작성</h5>
                        <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <!-- 사업번호 / 사업 상태-->

                            <!-- 사업 제목-->
                            <div class="form-group row" >
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">행사 제목</label>
                            </div>
                            <hr>
                            <div class="form-row" >
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">컨텐츠</label>
                                <div class="form-group col col-md-10" id="pr_contents_show_modify">
                                    <span>방문 상담</span>
                                </div>
                            </div>

                            <div class="modal-footer justify-content-between mode-new">
                                <div>
                                    <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-outline-primary mr-2">임시저장</button>
                                    <button type="button" class="btn btn-primary" onclick="event_pass();">작성완료</button>
                                </div>
                            </div>

                            <div class="modal-footer justify-content-between mode-edit d-none">
                                <div>
                                    <button type="button" class="btn btn-outline-danger" data-dismiss="modal" >삭제</button>
                                    <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-primary">저장</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>

        <script>

            var curPRdata;
            var prList=[];
            <c:forEach items="${prlist}" var="pr" varStatus="status">
            prList.push({
                idx_pr_content :"${pr.idx_pr_content}",
                subject:"${pr.subject}",
                is_new:"${pr.is_new eq 0 ? "신규아님" : pr.is_new eq 1 ? "신규" :""}",
                is_file:"${pr.is_file eq 0 ? "포함안함" : pr.is_file eq 1 ? "포함" :""}",
                pr_content_code:"${pr.pr_content_code}",
                show_start_date:"<fmt:formatDate value="${pr.show_start_date}" pattern="yyyy-MM-dd HH:MM"/>",
                show_end_date:"<fmt:formatDate value="${pr.show_end_date}" pattern="yyyy-MM-dd HH:MM"/>",
                pr_content_status:"${pr.pr_content_status eq 0 ? "임시저장" :pr.pr_content_status eq 1 ? "허락" :pr.pr_content_status eq 2 ? "수정발행": pr.pr_content_status eq 3 ? "게시종료" :"기타"}",
                last_upd_date:"<fmt:formatDate value="${pr.last_upd_date}" pattern="yyyy-MM-dd HH:MM"/>",
                veiw_count:"${pr.view_count}",
                memo:"${pr.memo}"

            })
            </c:forEach>


            $(".pr_entity").click(function(){
                console.log(prList)
                var selectId = $(this).attr('id');
                curPRdata = selectId;
                for(var pr of prList){
                    if(selectId === pr.idx_pr_content){
                        $(".idx_pr_content").attr("id", selectId);
                        $("#subject span").text(pr.subject);
                        $("#is_new span").text(pr.is_new);
                        $("#is_file span").text(pr.is_file);
                        $("#pr_content_code span").text(pr.pr_content_code);
                        $("#show_start_date span").text(pr.show_start_date);
                        $("#show_end_date span").text(pr.show_end_date);
                        $("#pr_content_status span").text(pr.pr_content_status);
                        $("#last_upd_date span").text(pr.last_upd_date);
                        $("#veiw_count span").text(pr.veiw_count);
                        $("#memo span").text(pr.memo);


                        $("#subject_modify span").val(pr.subject);
                        $("#is_new_modify span").val(pr.is_new);
                        $("#is_file_modify span").val(pr.is_file);
                        $("#pr_content_code_modify span").val(pr.pr_content_code);
                        $("#show_start_date_modify span").val(pr.show_start_date);
                        $("#show_end_date_modify span").val(pr.show_end_date);
                        $("#pr_content_status_modify span").val(pr.pr_content_status);
                        $("#last_upd_date_modify span").val(pr.last_upd_date);
                        $("#veiw_count_modify span").val(pr.veiw_count);
                        $("#memo_modify span").val(pr.memo);
                        break;
                    }
                }
            });
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

            $(".btn_content_modal").click(function (){
                var idx = $(this).attr("id");
                pageLoad("pr_contents", {idx: parseInt(idx)}, "홍보자료 모달컨텐츠", "pr_contents");
            })


<%--            function event_pass() {--%>
<%--// let result = document.getElementsByName('custom-6');--%>
<%--                var selectId = $(this).attr('id');--%>
<%--                param ={--%>
<%--                    subject:$("#pr_subject_insert input").val(),--%>
<%--                    pr_content_code:$("#pr_content_code_insert textarea").val(),--%>
<%--                    pr_contents:`${ '${$("#pr_contents_insert textarea").val()}'}`,--%>
<%--                    show_start_date:$('#show_start_date_insert').val(),--%>
<%--                    show_end_date:$("#show_end_date_insert").val(),--%>
<%--                    is_file:$("input:radio[name=custom-6]:checked").val(),--%>
<%--                    is_new:$("input:radio[name=custom-7]:checked").val(),--%>
<%--                    is_main_page:$("input:radio[name=custom-8]:checked").val(),--%>
<%--                    pr_content_status:$("input:radio[name=custom-9]:checked").val()--%>
<%--                }--%>

<%--                $.ajax({--%>
<%--                    type: 'post',--%>
<%--                    url: '/insert_pr', //데이터를 주고받을 파일 주소 입력--%>
<%--                    data: JSON.stringify(param),//보내는 데이터--%>
<%--                    contentType: "application/json; charset=utf-8;",//보내는 데이터 타입--%>
<%--                    dataType: 'json',//받는 데이터 타입--%>
<%--                    success: function (result) {--%>
<%--                        if (result.result_code === "SUCCESS") {--%>
<%--                            alert("상태 변경에 성공하였습니다")--%>
<%--                        } else {--%>
<%--                            alert("상태 변경에 실패하였습니다")--%>
<%--                        }--%>

<%--                    },--%>
<%--                    error: function (res) {--%>
<%--                        console.log(res)--%>
<%--                    }--%>
<%--                });--%>
<%--            }--%>


            $("#delete_pr").click(function () {
                if(confirm("이 홍보자료를 삭제하시겟습까?")){
                    $.ajax({
                        type: 'post',
                        url :'delete_pr', //데이터를 주고받을 파일 주소 입력
                        data: JSON.stringify(parseInt(curPRdata)),//보내는 데이터
                        contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                        dataType:'json',//받는 데이터 타입
                        success: function(result){
                            //작업이 성공적으로 발생했을 경우
                            alert(result.result_str);
                            $("#modals-counsel-view").modal("hide");
                            pageLoad('c43_site_adver_mng');
                        },
                        error:function(){
                            //에러가 났을 경우 실행시킬 코드
                        }
                    });
                }
            })
            var prContent=[];
<%--            <c:forEach items="${prcontent}" var="prcontents" varStatus="contentstatus">--%>
<%--            prContent.push({--%>
<%--                idx_pr_content :"${prcontents.idx_pr_content}",--%>
<%--                pr_contents:"${prcontents.pr_contents}"--%>
<%--            })--%>
<%--            </c:forEach>--%>



            <%--$(".modals-content").click(function(){--%>
            <%--    console.log(prContent)--%>
            <%--    var selectId = $(this).attr('id');--%>
            <%--    curPRdata = selectId;--%>
            <%--    for(var prcontents of prContent){--%>
            <%--        if(selectId === prcontents.idx_pr_content){--%>
            <%--            $(".idx_pr_content").attr("id", selectId);--%>

            <%--            $("#pr_contents_show span").text(prcontents.pr_contents);--%>


            <%--            $("#pr_contents_show_modify span").val(prcontents.pr_contents);--%>

            <%--            break;--%>
            <%--        }--%>
            <%--    }--%>
            <%--});--%>


            var saveNewBtn = document.querySelectorAll('.btn_save_new');
            saveNewBtn.forEach(btn=>btn.addEventListener('click', saveForm));

            function saveForm(message){
                event.preventDefault();
                var fileForm = new FormData();
                fileForm.append("pr_content_code",document.querySelector('#pr_content_code_insert textarea').value);
                fileForm.append("subject",document.querySelector('#pr_subject_insert input').value);
                fileForm.append("pr_contents",document.querySelector('#pr_contents_insert textarea').value);
                fileForm.append("is_file",document.querySelector('input[name=custom-6]:checked').value);
                fileForm.append("is_new",document.querySelector('input[name=custom-7]:checked').value);
                fileForm.append("is_main_page",document.querySelector('input[name=custom-8]:checked').value);
                fileForm.append("pr_content_status",document.querySelector('input[name=custom-9]:checked').value);
                fileForm.append("event_start_date",new Date(document.querySelector("#show_start_date_insert").value));
                fileForm.append("event_end_date",new Date(document.querySelector("#show_end_date_insert").value));


                var files = document.querySelector('#file_upload').files;


                for(var i = 0; i < files.length; i++){
                    var num = i + 1;
                    fileForm.append("files" + num, files[i]);
                }
                fileForm.append("fileLength", files.length);

                $.ajax({
                    type: 'post',
                    url :'/insert_pr', //데이터를 주고받을 파일 주소 입력
                    data: fileForm,//보내는 데이터
                    contentType: false,//보내는 데이터 타입
                    processData: false,//Jquery 내부에서 파일을 queryString 형태로 전달하는 것을 방지
                    dataType:'json',//받는 데이터 타입
                    enctype: 'multipart/form-data',
                    success: function(result){
                        console.log(result);
                        alert("업로드에 성공했습니다", () => window.redirect("/"))
                    },
                    error: function (res) {
                        console.log(res)
                    }
                });
            }




            $('.summernote').summernote({
                toolbar: [
                    // [groupName, [list of button]]
                    ['fontname', ['fontname']],
                    ['fontsize', ['fontsize']],
                    ['style', ['bold', 'italic', 'underline']],
                    ['color', ['color']],
                    ['table', ['table']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['height', ['height']],
                    ['insert',['picture','link']],
                    ['view', ['fullscreen','codeview']],
                ],
                fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
                fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
                height: 300,               // 에디터 높이
                lang: "ko-KR"
            });




        </script>
<!-- / Layout footer -->

<!-- / Page content -->
