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
                <div class="col-md-2 ">
                    <label class="form-label text-muted">홍보 구분</label>
                    <div class="form-inline">
                        <div class="btn-group btn-group-sm btn-group-toggle srch_filtp1" data-toggle="buttons">
                            <label class="btn btn-secondary active">
                                <input type="radio" name="filtp1" value="" checked="">전체
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="filtp1" value="1"> 신규
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="filtp1" value="0"> 신규아님
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 ">
                    <label class="form-label text-muted">홍보 등록일</label>
                    <div class="form-inline">
                        <div class="btn-group btn-group-sm btn-group-toggle srch_filtp2" data-toggle="buttons">
                            <label class="btn btn-secondary">
                                <input type="radio" name="filtp2" value="1">오늘
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="filtp2" value="2"> 1주일
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="filtp2" value="3"> 1개월
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="filtp2" value="4"> 3개월
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="filtp2" value="5"> 6개월
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="filtp2" value="6"> 1년이상
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 text-right">
                    <label class="form-label d-none d-md-block">&nbsp;</label>
                    <button type="button" class="btn btn-outline-default btn_reset">초기화</button>
                    <button type="button" class="btn btn-success btn_search">조회</button>
                </div>
            </div>
        </div>

        <div class="card">
            <h6 class="card-header with-elements">
                <div class="card-header-title">홍보자료 목록</div>
                <div class="card-header-elements ml-auto">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modals-business" data-what="mode-new">신규 홍보자료작성</button>
                </div>
            </h6>
            <c:if test="${total_count eq 0}">
                <div class="table__blank" style="
                                    padding: 0 0 390px 0;
    text-align: center;
">
                    <div class="blank__title" style="    padding: 25px 0 5px 0;
    font-size: 18px;
    font-weight: 700;
    line-height: 1.61;
    letter-spacing: -.9px;
    color: #161616;">홍보 안내 없음</div>
                    <div class="blank__text" style="    font-size: 14px;
    font-weight: 400;
    line-height: 1.43;
    letter-spacing: -.42px;
    color: #262626;">홍보 안내 진행 중인 데이터가 없습니다.</div>
                </div>
            </c:if>
            <c:if test="${total_count ne 0}">
            <div class="card-datatable table-responsive pt-0 pb-3" id="site_adver_mng">
                <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row p-3">
                        <div class="col-sm-12 col-md-12">
                            <label class="mr-3  mb-0">총 : <strong>${total_count}</strong>건</label><label class="mr-3  mb-0">신규 : <strong>${count_req}</strong>건</label><label class="mr-3  mb-0">신규아님 : <strong>${count_comp}</strong>건</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <table class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-success text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center px-2" style="width:60px">No</th>
                                    <th class="text-center px-2" style="width:80px">홍보자료 제목</th>
                                    <th class="text-center px-2" style="width:60px">홍보자료 내용</th>
                                    <th class="text-center px-2" style="width:100px">파일포함여부</th>
                                    <th class="text-center px-2" style="width:100px">신규등록여부</th>
                                    <th class="text-center px-2" style="width:150px">메인페이지 노출여부</th>
                                    <th class="text-center px-2" style="width:80px">조회수</th>
                                    <th class="text-center px-2" style="width:120px">홍보게시 프로세스상태</th>
                                    <th class="text-center px-2" style="width:120px">시작일시</th>
                                    <th class="text-center px-2" style="width:120px">종료일시</th>
                                    <th class="text-center px-2" style="width:100px">홍보자료 관련 메모</th>
                                </tr>
                                </thead>
                                <tbody>
                               <c:forEach items="${prlist}" var="pr" varStatus="status">
                                <tr class="pr_entity" id="${pr.idx_pr_content}">
                                    <td class="text-center">${pr.idx_row_num}</td>
                                    <td class="text-center"><a href="#none" id="data" class="btn btn-outline-default btn-sm btn_content_view" data-toggle="modal" data-target="#modals-counsel-view" data-idx="${pr.idx_row_num}">${pr.subject}</a></td>
                                    <td class="text-center"><a href="#none" id="${pr.idx_pr_content}" class="btn btn-outline-default btn-sm btn_content_modal"  data-toggle="modal" data-target="#modals-content" data-idx="${pr.idx_row_num}">컨텐츠 보기</a></td>
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
                                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c431_site_adver_mng',{page_num:1},'홍보자료 목록','site_adver_mng');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c431_site_adver_mng',{page_num:${cur_page-1}},'홍보자료 목록','site_adver_mng');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>
                                                    <c:forEach var="i" begin="1" end="${page_amount}">
                                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('c431_site_adver_mng',{page_num:${(cur_sector-1)*page_amount+i}},'홍보자료 목록','site_adver_mng');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                                    </c:forEach>
                                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c431_site_adver_mng',{page_num:${cur_page+1}},'홍보자료 목록','site_adver_mng');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c431_site_adver_mng',{page_num:${tot_page}},'홍보자료 목록','site_adver_mng');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
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
            </c:if>
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
                                <a href="#none" class="btn btn-underline" onclick="open_modify()">홍보자료 수정</a>
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
                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">홍보자료 제목</label>
                                <div class="col-md-10">
                                    <input type="text" id="pr_subject_insert" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요" >
                                    <div class="form-control-plaintext mode-view"></div>
                                </div>
                            </div>

                            <hr>
                            <div class="form-row" >
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">컨텐츠 코드</label>
                                <div class="form-group col col-md-10">
                                    <textarea class="form-control mode-edit mode-new" rows="3" id="pr_content_code_insert"></textarea>
                                </div>
                            </div>
                            <div class="form-row" >
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">컨텐츠</label>
                                <div class="form-group col col-md-10">
                                    <textarea class="summernote" rows="3" id="pr_contents_insert"></textarea>
                                </div>
                            </div>
                            <hr>
                            <div class="form-row" >
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">내용</label>
                                <div class="form-group col col-md-10">
                                    <textarea class="form-control mode-edit mode-new" rows="3" id="memo_insert"></textarea>
                                </div>
                            </div>
                            <div class="form-group row" id="time">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">게시 기간</label>
                                <div class="col-md-10">
                                    <div id="datepicker-open" class="input-daterange input-group mode-edit mode-new">
                                        <input type="text" class="form-control date_picker" name="show_start_date" id="show_start_date_insert">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">~</span>
                                        </div>
                                        <input type="text" class="form-control date_picker" name="show_end_date" id="show_end_date_insert">
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
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold" for="file_upload1_insert">파일 첨부</label>
                                <div class="form-group col col-md-10 mode-edit mode-new">
                                    <input type="file" class="form-control-file d-block py-1" id="file_upload1_insert" name="file_upload">
                                </div>
                                <div class="form-group col col-md-10 col-form-label mode-view">
                                    <a href="file.doc"></a>
                                </div>
                            </div>
                            <div class="form-row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold" for="file_upload2_insert">썸네일 파일 첨부</label>
                                <div class="form-group col col-md-10 mode-edit mode-new">
                                    <input type="file" class="form-control-file d-block py-1" id="file_upload2_insert" name="file_upload">
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
                                    <button id="btn_save_new" type="button" class="btn btn-primary" onclick="saveForm('insert_pr')">작성완료</button>
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



        <div class="modal fade" id="modals-counsel-history">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header bg-success">
                    <h5 class="modal-title text-white font-weight-bold mode-new">홍보자료 수정</h5>
                    <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body" id="de">
                    <form>
                        <!-- 사업번호 / 사업 상태-->

                        <!-- 사업 제목-->
                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">홍보자료 제목</label>
                            <div class="col-md-10">
                                <input type="text" id="pr_subject_update" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요" >
                                <div class="form-control-plaintext mode-view"></div>
                            </div>
                        </div>

                        <hr>
                        <div class="form-row" >
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">컨텐츠 코드</label>
                            <div class="form-group col col-md-10">
                                <textarea class="form-control mode-edit mode-new" rows="3" id="pr_content_code_update"></textarea>
                            </div>
                        </div>
                        <div class="form-row" >
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">컨텐츠</label>
                            <div class="form-group col col-md-10" >
                                <textarea class="summernote" rows="3" id="pr_contents_update"></textarea>
                            </div>
                        </div>
                        <hr>
                        <div class="form-row" >
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">내용</label>
                            <div class="form-group col col-md-10">
                                <textarea class="form-control mode-edit mode-new" rows="3" id="memo_update"></textarea>
                            </div>
                        </div>
                        <div class="form-group row" id="time_update">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">게시 기간</label>
                            <div class="col-md-10">
                                <div id="datepicker-open_update" class="input-daterange input-group mode-edit mode-new">
                                    <input type="text" class="form-control date_picker" name="show_start_date" id="show_start_date_update">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">~</span>
                                    </div>
                                    <input type="text" class="form-control date_picker" name="show_end_date" id="show_end_date_update">
                                </div>
                            </div>
                        </div>
                        <div class="form-group row" id="admin_name_update">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit mode-new">등록자</label>
                            <div class="col-md-4 mode-edit mode-new">
                                <span class="px-1 mr-lg-2 ml-2 ml-lg-0"></span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12" id="is_file_update">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">파일여부</label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-6" type="radio" class="custom-control-input" value="0">
                                    <span class="custom-control-label">포함안함</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-6" type="radio" class="custom-control-input" value="1">
                                    <span class="custom-control-label">포함</span>
                                </label>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12" id="is_new_update">
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
                            <div class="form-group col col-md-12" id="is_main_page_update">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">메인페이지 노출여부</label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-8" type="radio" class="custom-control-input" value="0">
                                    <span class="custom-control-label">노출안함</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-8" type="radio" class="custom-control-input" value="1">
                                    <span class="custom-control-label">노출</span>
                                </label>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col col-md-12" id="pr_content_status_update">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">홍보자료 프로세스 상태</label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-9" type="radio" class="custom-control-input" value="0">
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
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold" for="file_upload1_update">파일 첨부</label>
                            <div class="form-group col col-md-10 mode-edit mode-new">
                                <input type="file" class="form-control-file d-block py-1" id="file_upload1_update" name="file_upload">
                            </div>
                            <div class="form-group col col-md-10 col-form-label mode-view filelist1">
                                <a href="file.doc">123132</a>
                            </div>
                        </div>
                        <div class="form-row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold" for="file_upload2_update">썸네일 파일 첨부</label>
                            <div class="form-group col col-md-10 mode-edit mode-new">
                                <input type="file" class="form-control-file d-block py-1" id="file_upload2_update" name="file_upload">
                            </div>
                            <div class="form-group col col-md-10 col-form-label mode-view filelist2">
                                <a href="file.doc"></a>
                            </div>
                        </div>

                        <div class="modal-footer justify-content-between mode-new">
                            <div>
                                <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                            </div>
                            <div>
                                <button type="button" class="btn btn-outline-primary mr-2">임시저장</button>
                                <button id="btn_save_update" type="button" class="btn btn-primary" onclick="saveForm('update_pr')">작성완료</button>
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

<%--        <div class="modal fade" id="modals-content_modify">--%>
<%--            <div class="modal-dialog modal-xl">--%>
<%--                <div class="modal-content">--%>
<%--                    <div class="modal-header bg-success">--%>
<%--                        <h5 class="modal-title text-white font-weight-bold mode-new">신규 행사 작성</h5>--%>
<%--                        <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>--%>
<%--                    </div>--%>
<%--                    <div class="modal-body">--%>
<%--                        <form>--%>
<%--                            <!-- 사업번호 / 사업 상태-->--%>

<%--                            <!-- 사업 제목-->--%>
<%--                            <div class="form-group row" >--%>
<%--                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">행사 제목</label>--%>
<%--                            </div>--%>
<%--                            <hr>--%>
<%--                            <div class="form-row" >--%>
<%--                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">컨텐츠</label>--%>
<%--                                <div class="form-group col col-md-10" id="pr_contents_show_modify">--%>
<%--                                    <span>방문 상담</span>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <div class="modal-footer justify-content-between mode-new">--%>
<%--                                <div>--%>
<%--                                    <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>--%>
<%--                                </div>--%>
<%--                                <div>--%>
<%--                                    <button type="button" class="btn btn-outline-primary mr-2">임시저장</button>--%>
<%--                                    <button type="button" class="btn btn-primary" onclick="event_pass();">작성완료</button>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <div class="modal-footer justify-content-between mode-edit d-none">--%>
<%--                                <div>--%>
<%--                                    <button type="button" class="btn btn-outline-danger" data-dismiss="modal" >삭제</button>--%>
<%--                                    <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>--%>
<%--                                </div>--%>
<%--                                <div>--%>
<%--                                    <button type="button" class="btn btn-primary">저장</button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </form>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
        <!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
        <script>
            var curPRdata;
            var prList=[];
            var _page = 1;
            <c:forEach items="${prlist}" var="pr" varStatus="status">
            prList[${pr.idx_row_num}] = {
                idx_pr_content :"${pr.idx_pr_content}",
                subject:"${pr.subject}",
                is_new:"${pr.is_new eq 0 ? "신규아님" : pr.is_new eq 1 ? "신규" :""}",
                is_file:"${pr.is_file eq 0 ? "포함안함" : pr.is_file eq 1 ? "포함" :""}",
                is_main_page:${pr.is_main_page},
                pr_content_code:"${pr.pr_content_code}",
                show_start_date:"<fmt:formatDate value="${pr.show_start_date}" pattern="yyyy-MM-dd"/>",
                show_end_date:"<fmt:formatDate value="${pr.show_end_date}" pattern="yyyy-MM-dd"/>",
                pr_content_status:"${pr.pr_content_status eq 0 ? "임시저장" :pr.pr_content_status eq 1 ? "허락" :pr.pr_content_status eq 2 ? "수정발행": pr.pr_content_status eq 3 ? "게시종료" :"기타"}",
                pr_content_status_no:${pr.pr_content_status},
                last_upd_date:"<fmt:formatDate value="${pr.last_upd_date}" pattern="yyyy-MM-dd HH:MM"/>",
                veiw_count:"${pr.view_count}",
                memo:"${pr.memo}"
            }
            </c:forEach>

            $('#modals-counsel-view').on('show.bs.modal', function (event) {
                _saveCont($(event.relatedTarget).data('idx'))
            })
            function open_modify(){
                $('#modals-counsel-history').modal('show');
                _getCont(curPRdata);
            }

            function _getCont(_idx) {
                $.ajax({
                    type: 'post',
                    url: 'get_prcontents', //데이터를 주고받을 파일 주소 입력
                    data: {idx_pr_content:_idx},//보내는 데이터
                    dataType: 'json',//받는 데이터 타입
                    success: function (result) {
                        let _data = result.data.rs;
                        // 수정 모달용
                        $("#pr_subject_update").val(_data.subject);
                        $("#pr_content_code_update").val(_data.pr_content_code);
                        $("#show_start_date_update").val(_data.show_start_date_str);
                        $("#show_end_date_update").val(_data.show_end_date_str);

                        $("#pr_content_status_update input[name=custom-9]").each(function (){
                            if($(this).val() == _data.pr_content_status){
                                $(this).attr('checked',true)
                            }
                        });
                        $("#memo_update").val(_data.memo);
                        $("#pr_contents_update").summernote('code', _data.pr_contents);
                        $('#is_file_update input[name=custom-6]').eq(_data.is_file).attr('checked',true)
                        $('#is_new_update input[name=custom-7]').eq(_data.is_new).attr('checked',true)
                        $('#is_main_page_update input[name=custom-8]').eq(_data.is_main_page).attr('checked',true)
                        $('#admin_name_update span').text(_data.author);

                        let file1 = _data.attachments;
                        let file2 = result.data.thumb;
                        $('.filelist1').empty();
                        $('.filelist2').empty();
                        for(let i=0;i<file1.length;i++){
                            $('.filelist1').append('<a href="'+ file1[i].file_path +'">'+file1[i].file_name+'</a>')
                        }
                        if(file2!=null){
                            $('.filelist2').append('<a href="'+ file2.file_path +'">'+file2.file_name+'</a>')
                        }
                    }
                });
            }

            function _saveCont(_i) {
                curPRdata = prList[_i].idx_pr_content;
                // $('#modals-counsel-view a.this_idx').attr('data-idx',curPRdata)
                $("#subject span").text(prList[_i].subject);
                $("#is_new span").text(prList[_i].is_new);
                $("#is_file span").text(prList[_i].is_file);
                $("#pr_content_code span").text(prList[_i].pr_content_code);
                $("#show_start_date span").text(prList[_i].show_start_date);
                $("#show_end_date span").text(prList[_i].show_end_date);
                $("#pr_content_status span").text(prList[_i].pr_content_status);
                $("#last_upd_date span").text(prList[_i].last_upd_date);
                $("#veiw_count span").text(prList[_i].veiw_count);
                $("#memo span").text(prList[_i].memo);

                $("#subject_modify span").val(prList[_i].subject);
                $("#is_new_modify span").val(prList[_i].is_new);
                $("#is_file_modify span").val(prList[_i].is_file);
                $("#pr_content_code_modify span").val(prList[_i].pr_content_code);
                $("#show_start_date_modify span").val(prList[_i].show_start_date);
                $("#show_end_date_modify span").val(prList[_i].show_end_date);
                $("#pr_content_status_modify span").val(prList[_i].pr_content_status);
                $("#last_upd_date_modify span").val(prList[_i].last_upd_date);
                $("#veiw_count_modify span").val(prList[_i].veiw_count);
                $("#memo_modify span").val(prList[_i].memo);
            }

            function _contents() {
                $(".btn_content_modal").off().click(function (){
                    var idx = $(this).attr("id");
                    pageLoad("pr_contents", {idx: parseInt(idx)}, "홍보자료 모달컨텐츠", "pr_contents");
                })
                $("#delete_pr").off().click(function () {
                    if (confirm("이 홍보자료를 삭제하시겠습니까?")) {
                        $.ajax({
                            type: 'post',
                            url: 'delete_pr', //데이터를 주고받을 파일 주소 입력
                            data: JSON.stringify(parseInt(curPRdata)),//보내는 데이터
                            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                            dataType: 'json',//받는 데이터 타입
                            success: function (result) {
                                //작업이 성공적으로 발생했을 경우
                                alert(result.result_str);
                                $("#modals-counsel-view").modal("hide");
                                _search()
                            },
                            error: function () {
                                //에러가 났을 경우 실행시킬 코드
                            }
                        });
                    }
                })
            }

            $(function() {
                var isRtl = $('html').attr('dir') === 'rtl';
                $('.date_picker').datepicker({
                    orientation: isRtl ? 'auto right' : 'auto left',
                    format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
                    startDate: '-10d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
                    language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
                });
            });

            $(function () {
                $('#flatpickr-time-start,#flatpickr-time-end').flatpickr({
                    enableTime: true,
                    noCalendar: true,
                    altInput: true,
                    static:true
                });
            });

            function event_pass1() {
// let result = document.getElementsByName('custom-6');
                var selectId = $(this).attr('id');
                param ={
                    idx_pr_content:parseInt(curPRdata),
                    subject:$("#pr_subject_update input").val(),
                    pr_content_code:$("#pr_content_code_update textarea").val(),
                    pr_contents:$("#pr_contents_update").val(),
                    show_start_date:$('#show_start_date_update').val(),
                    show_end_date:$("#show_end_date_update").val(),
                    is_file:$("input:radio[name=custom-6]:checked").val(),
                    is_new:$("input:radio[name=custom-7]:checked").val(),
                    is_main_page:$("input:radio[name=custom-8]:checked").val(),
                    pr_content_status:$("input:radio[name=custom-9]:checked").val()
                }

                $.ajax({
                    type: 'post',
                    url: 'update_pr', //데이터를 주고받을 파일 주소 입력
                    data: JSON.stringify(param),//보내는 데이터
                    contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                    dataType: 'json',//받는 데이터 타입
                    success: function (result) {
                        if (result.result_code === "SUCCESS") {
                            alert("상태 변경에 성공하였습니다")
                            $("#modals-counsel-history").modal("hide");
                            $("#modals-counsel-view").modal("hide");
                            _search(_page)
                        } else {
                            alert("상태 변경에 실패하였습니다")
                        }

                    },
                    error: function (res) {
                        console.log(res)
                    }
                });
            }

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
            saveNewBtn.forEach(btn=>btn.addEventListener('click', saveForm('insert_pr')));

            function saveForm(_url){
                let _u = '_update';
                if(_url=='insert_pr'){
                    _u = '_insert';
                }
                if($("#pr_subject"+_u).val() === ''){
                    return alert('제목을 입력해 주세요.')
                }

                if($("#pr_content_code"+_u).val() === ''){
                    return alert('컨텐츠 코드를 입력해주세요.')
                }

                if($("#memo"+_u).val() === ''){
                    return alert('내용을 입력해 주세요.')
                }

                if($("#show_start_date"+_u).val() === '' || $("#show_end_date"+_u).val() === ''){
                    return alert('게시기간을 입력해주세요.')
                }

                event.preventDefault();
                var fileForm = new FormData();
                fileForm.append("pr_content_code",document.querySelector('#pr_content_code'+_u).value);
                fileForm.append("subject",document.querySelector('#pr_subject'+_u).value);
                fileForm.append("pr_contents",document.querySelector('#pr_contents'+_u).value);
                fileForm.append("is_file",document.querySelector('#is_file'+_u+' input[name=custom-6]:checked').value);
                fileForm.append("is_new",document.querySelector('#is_new'+_u+' input[name=custom-7]:checked').value);
                fileForm.append("is_main_page",document.querySelector('#is_main_page'+_u+' input[name=custom-8]:checked').value);
                fileForm.append("pr_content_status",document.querySelector('#pr_content_status'+_u+' input[name=custom-9]:checked').value);
                fileForm.append("show_start_date",new Date(document.querySelector("#show_start_date"+_u).value));
                fileForm.append("show_end_date",new Date(document.querySelector("#show_end_date"+_u).value));
                fileForm.append("memo",document.querySelector('#memo'+_u).value);

                // var files = document.querySelector('#file_upload').files;
                // for(var i = 0; i < files.length; i++){
                //     var num = i + 1;
                //     fileForm.append("files" + num, files[i]);
                // }
                // fileForm.append("fileLength", files.length);
                if(document.querySelector('#file_upload1'+_u).files[0]){
                    fileForm.append("files1", document.querySelector('#file_upload1'+_u).files[0]);
                }
                if(document.querySelector('#file_upload2'+_u).files[0]){
                    fileForm.append("files2", document.querySelector('#file_upload2'+_u).files[0]);
                }
                if (_url == 'update_pr') {
                    fileForm.append("idx_pr_content",curPRdata);
                }
                fileForm.append("is_show",1);
                $.ajax({
                    type: 'post',
                    url :_url, //데이터를 주고받을 파일 주소 입력
                    data: fileForm,//보내는 데이터
                    contentType: false,//보내는 데이터 타입
                    processData: false,//Jquery 내부에서 파일을 queryString 형태로 전달하는 것을 방지
                    dataType:'json',//받는 데이터 타입
                    enctype: 'multipart/form-data',
                    success: function(result){
                        if(result.result_code=='ERROR_1000'){
                            alert(result.result_str);
                        }else {
                            if (_url == 'insert_pr') {
                                alert(result.result_str)
                                $("#modals-business").modal("hide");
                                _search(1)
                            } else {
                                alert(result.result_str)
                                $("#modals-counsel-history").modal("hide");
                                $("#modals-counsel-view").modal("hide");
                                _search(_page)
                            }
                        }
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

            $('.btn_reset').off().on('click',function(){
                $('.srch_filtp1 label').removeClass('active');
                $('.srch_filtp1 input').each(function(){
                    $(this).attr('checked',false);
                    $(this).removeAttr('checked')
                });
                $('.srch_filtp1 label').eq(0).addClass('active');
                $('.srch_filtp1 input').eq(0).attr('checked',true);
                $('.srch_filtp2 label').removeClass('active');
                $('.srch_filtp2 input').each(function(){
                    $(this).attr('checked', false);
                    $(this).removeAttr('checked');
                });
                _search(1)
            });
            $('.btn_search').off().on('click',function(){
                _search(1)
            });

            function _search(_p){
                _page = _p;
                let _fil1 = $('.srch_filtp1 label.active input:checked').val()
                let _fil2 = $('.srch_filtp2 label.active input:checked').val()
                if(_fil1 === undefined){
                    _fil1 = '';
                }
                if(_fil2 === undefined){
                    _fil2 = '';
                }
                pageLoad("c431_site_adver_mng", {page_num:_page,fil1:_fil1,fil2:_fil2}, "홍보자료 관리",'site_adver_mng');
            }

            _contents()
        </script>
<!-- / Layout footer -->
<!-- / Page content -->
