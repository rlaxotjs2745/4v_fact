<%@ page import="org.springframework.security.core.context.SecurityContext" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ page import="java.security.Principal" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h5 class="d-flex justify-content-between align-items-center w-100 mt-2">
            <div><i class="pe-7s-comment text-success-custom"></i>&nbsp;&nbsp;공지사항 관리</div>
        </h5>

        <div class="card px-4 pt-2 mb-2 bg-">
            <div class="form-row mb-4">

                <div class="col-md-5 ">
                    <label class="form-label text-body">공지사항 상태별 보기</label>

                    <div class="form-inline">
                        <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons" id="category_change">
                            <label class="btn btn-secondary <c:if test="${filter1 eq 9999}">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value='9999' checked onclick="javascript:pageLoad('notice_mng',{cur_page:1,list_amount:10,filter1:9999,filter2:9998},'상담신청 관리');">전체
                            </label>
                            <label class="btn btn-secondary <c:if test="${filter1 eq 0}">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value='0' onclick="javascript:pageLoad('notice_mng',{cur_page:1,list_amount:10,filter1:0,filter2:9998},'상담신청 관리');">임시저장
                            </label>
                            <label class="btn btn-secondary <c:if test="${filter1 eq 1}">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value='1' onclick="javascript:pageLoad('notice_mng',{cur_page:1,list_amount:10,filter1:1,filter2:9998},'상담신청 관리');">게시승인
                            </label>
                            <label class="btn btn-secondary <c:if test="${filter1 eq 2}">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value='2' onclick="javascript:pageLoad('notice_mng',{cur_page:1,list_amount:10,filter1:2,filter2:9998},'상담신청 관리');">수정 후 게시
                            </label>
                            <label class="btn btn-secondary <c:if test="${filter1 eq 3}">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value='3' onclick="javascript:pageLoad('notice_mng',{cur_page:1,list_amount:10,filter1:3,filter2:9998},'상담신청 관리');">게시 종료
                            </label>
                            <label class="btn btn-secondary <c:if test="${filter1 eq 4}">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value='4' onclick="javascript:pageLoad('notice_mng',{cur_page:1,list_amount:10,filter1:4,filter2:9998},'상담신청 관리');">기타
                            </label>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="card">
            <div class="card-header font-weight-bold with-elements text-white bg-success">
                <div>공지사항 목록</div>
                <div class="card-header-elements ml-auto">
                    <button type="button" id="btn_new_domo_bs" class="btn btn-sm btn-outline-white font-weight-bold" data-toggle="modal" data-target="#modals-business" data-what="mode-new">+ 신규 등록</button>
                </div>
            </div>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="table_demo_bs" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-light-dark text-white font-weight-bold">
                                    <tr role="row">
                                        <th class="text-center" style="width:8%">No</th>
                                        <th class="text-center" style="width:12%">소제목</th>
                                        <th class="text-center" style="width:32%">제목</th>
                                        <th class="text-center" style="width:8%">첨부파일</th>
                                        <th class="text-center" style="width:8%">게시자</th>
                                        <th class="text-center" style="width:16%">게시일</th>
                                        <th class="text-center" style="width:10%">조회수</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:choose>
                                <c:when test="${noticeList eq null or noticeList.size() eq 0}">

                                <c:forEach var = "i" begin = "1" end = "4">
                                    <tr><td class="text-center empty-list" colspan="11"></td></tr>
                                </c:forEach>
                                    <tr class=""><td class="text-center empty" colspan="11">내용이 없습니다</td></tr>
                                <c:forEach var = "i" begin = "1" end = "5">
                                    <tr><td class="text-center empty-list" colspan="11"></td></tr>
                                </c:forEach>

                                </c:when>
                                <c:otherwise>
                                <c:forEach items="${noticeList}" var="notice" varStatus="status">
                                    <tr class="notice-entity" id="${notice.idx_notice}">
                                        <td class="text-center">${notice.idx_notice}</td>
                                        <td class="text-center">${notice.notice_code} </td>
                                        <td class="text-left"><a href="#none" data-toggle="modal" data-target="#modals-counsel-view" data-what="mode-view">${notice.subject}</a></td>
                                        <td class="text-center"><c:if test="${notice.is_file eq 1}"><span class="fas fa-paperclip"></span></c:if> </td>
                                        <td class="text-center">${notice.author}</td>
                                        <td class="text-center"><fmt:formatDate value="${notice.posting_start_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                        <td class="text-center">${notice.view_count}</td>
                                    </tr>
                                </c:forEach>
                                </c:otherwise>
                                </c:choose>
                                </tbody>
                            </table>
                        </div>
                    </div>
                <c:if test="${total_count ne 0}">
                    <div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div class="dataTables_info" role="status" aria-live="polite">총 ${total_count}개
                                중 ${list_amount*(cur_page-1)+1}에서 <c:choose><c:when
                                        test="${(list_amount*(cur_page-1)+page_amount)>total_count}">${total_count}</c:when><c:otherwise>${list_amount*(cur_page-1)+page_amount}</c:otherwise></c:choose>까지
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                                <ul class="pagination">

                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('notice_mng',{cur_page:1,filter1:'${filter1}', filter2:'${filter2}'},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('notice_mng',{cur_page:'${cur_page-1}',filter1:'${filter1}',filter2:'${filter2}'},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>

                                    <c:forEach var="i" begin="1" end="${remain_page}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('notice_mng',{cur_page:'${(cur_sector-1)*page_amount+i}',filter1:'${filter1}',filter2:'${filter2}'},'사업공고문 관리');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>

                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('notice_mng',{cur_page:'${cur_page+1}',filter1:'${filter1}',filter2:'${filter2}'},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('notice_mng',{cur_page:'${tot_page}',filter1:'${filter1}',filter2:'${filter2}'},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </c:if>
                </div>
            </div>
        </div>

        <!-- Modal template -->
        <div class="modal fade" id="modals-counsel-view">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">공지사항</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12 text-right" id="admin_name_view">
                                <a href="#none" class="btn btn-underline"  data-toggle="modal" data-target="#modals-counsel-history">공지사항 수정</a>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="subject_view">
                                <label class="form-label d-block text-muted">제목</label>
                                <span></span>
                            </div>
                            <div class="form-group col col-md-4" id="is_file_view">
                                <label class="form-label d-block text-muted">파일 포함 여부</label>
                                <span>맛있는 농부</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="is_new_view">
                                <label class="form-label d-block text-muted">신규등록여부</label>
                                <span>000-00-00000</span>
                            </div>
                            <div class="form-group col col-md-4" id="is_main_page_view">
                                <label class="form-label d-block text-muted">메인페이지 노출여부</label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="posting_start_date_view">
                                <label class="form-label d-block text-muted">게시시작일</label>
                                <span>사전 상담</span>
                            </div>
                            <div class="form-group col col-md-4" id="posting_end_date_view">
                                <label class="form-label d-block text-muted">게시종료일</label>
                                <span>추가</span>
                            </div>
                            <div class="form-group col col-md-4" id="view_count_view">
                                <label class="form-label d-block text-muted">조회수</label>
                                <span>이용 신청서 작성</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12" id="notice_contents_view">
                                <label class="form-label d-block text-muted">내용</label>
                                <span>
                        </span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12" id="notice_code_view">
                                <label class="form-label d-block text-muted">소제목</label>
                                <span>김홍삼</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12" id="memo_view">
                                <label class="form-label d-block text-muted">메모</label>
                                <span>김홍삼</span>
                            </div>
                        </div>
                        <hr class="mt-0">
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>

                        <div>
                            <button type="button" class="btn btn-outline-danger" data-dismiss="modal" id="delete_notice">삭제</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>


        <div class="modal fade" id="modals-counsel-history">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header bg-success">
                        <h5 class="modal-title text-white font-weight-bold mode-new">공지사항 수정</h5>
                        <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <!-- 사업번호 / 사업 상태-->

                            <!-- 사업 제목-->
                            <div class="form-group row" >
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">제목</label>
                                <div class="col-md-10" >
                                    <input type="text" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요" id="subject_update">
                                    <div class="form-control-plaintext mode-view"></div>
                                </div>
                            </div>

                            <%--                        <div class="form-group row">
                                                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업내용</label>
                                                        <div class="col-md-10">
                                                            <input type="text" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요" value="${demobs.demo_subject}">
                                                            <div class="form-control-plaintext mode-view">${demobs.demo_subject}</div>
                                                        </div>
                                                    </div>--%>

                            <hr>
                            <div class="form-row" >
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">내용</label>
                                <div class="form-group col col-md-10">
<%--                                    <div id="summernote"></div>--%>
<%--                                    <textarea class="summernote" rows="3" id="summernote"></textarea>--%>
                                    <textarea class="summernote" rows="3" id="notice_contents_update"></textarea>
                                </div>
                            </div>
                            <hr>
                            <div class="form-row" >
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소제목</label>
                                <div class="form-group col col-md-10" >
                                    <textarea class="form-control mode-edit mode-new" rows="3" id="notice_code_update"></textarea>
                                </div>
                            </div>
                            <hr>
                            <div class="form-row" >
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">메모</label>
                                <div class="form-group col col-md-10" >
                                    <textarea class="form-control mode-edit mode-new" rows="3"  id="memo_update"></textarea>
                                </div>
                            </div>
                            <div class="form-group row" id="time">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">게시 기간</label>
                                <div class="col-md-10">
                                    <div id="datepicker-open_update" class="input-daterange input-group mode-edit mode-new">
                                        <input type="text" class="form-control" name="posting_start_date" id="posting_start_date_update">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">~</span>
                                        </div>
                                        <input type="text" class="form-control" name="posting_end_date" id="posting_end_date_update">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row" id="admin_name">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit mode-new">등록자</label>
                                <div class="col-md-4 mode-edit mode-new">
                                    <sec:authentication property="principal.name" var="name" />
                                    <span id="author" class="px-1 mr-lg-2 ml-2 ml-lg-0">${name}</span>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col col-md-12" id="is_file_update">
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">파일여부</label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-6" type="radio" class="custom-control-input" value="0" checked="checked">
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
                                        <input name="custom-7" type="radio" class="custom-control-input" value="1" checked="checked">
                                        <span class="custom-control-label">신규</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-7" type="radio" class="custom-control-input"  value="0">
                                        <span class="custom-control-label">신규아님</span>
                                    </label>
                                </div>
                            </div>


                            <div class="form-row">
                                <div class="form-group col col-md-12" id="is_main_page_update">
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">메인페이지 노출여부</label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-8" type="radio" class="custom-control-input" value="1" checked="checked">
                                        <span class="custom-control-label">노출</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-8" type="radio" class="custom-control-input"  value="0">
                                        <span class="custom-control-label">노출안함</span>
                                    </label>
                                </div>
                            </div>
                            <div class="form-row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold" for="file_upload">파일 첨부</label>
                                <div class="form-group col col-md-10 mode-edit mode-new">
                                    <input type="file" class="form-control-file d-block py-1" id="file_upload_update" name="file_upload" multiple>
                                    <div id="uploaded-file-list" class="uploaded-file-list"></div>
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
                                    <button id="btn_save_new_update" type="button" class="btn btn-primary">작성완료</button>
                                </div>
                            </div>

                            <div class="modal-footer justify-content-between mode-edit d-none">
                                <div>
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
    </div>
    <!-- new demo bs-->
    <div class="modal fade" id="modals-business">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header bg-success">
                    <h5 class="modal-title text-white font-weight-bold mode-new">신규 공지사항 작성</h5>
                    <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body">
                    <form>
                        <!-- 사업번호 / 사업 상태-->

                        <!-- 사업 제목-->
                        <div class="form-group row" >
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">제목</label>
                            <div class="col-md-10" >
                                <input type="text" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요" id="subject">
                                <div class="form-control-plaintext mode-view"></div>
                            </div>
                        </div>

                        <hr>
                        <div class="form-row" >
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">내용</label>
                            <div class="form-group col col-md-10">
                                <textarea class="summernote" rows="3" id="notice_contents"></textarea>
                            </div>
                        </div>
                        <hr>
                        <div class="form-row" >
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소제목</label>
                            <div class="form-group col col-md-10" >
                                <textarea class="form-control mode-edit mode-new" rows="3" id="notice_code"></textarea>
                            </div>
                        </div>
                        <hr>
                        <div class="form-row" >
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">메모</label>
                            <div class="form-group col col-md-10" >
                                <textarea class="form-control mode-edit mode-new" rows="3"  id="memo"></textarea>
                            </div>
                        </div>
                        <div class="form-group row" id="time">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">게시 기간</label>
                            <div class="col-md-10">
                                <div id="datepicker-open" class="input-daterange input-group mode-edit mode-new">
                                    <input type="text" class="form-control" name="posting_start_date" id="posting_start_date">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">~</span>
                                    </div>
                                    <input type="text" class="form-control" name="posting_end_date" id="posting_end_date">
                                </div>
                            </div>
                        </div>
                        <div class="form-group row" id="admin_name">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit mode-new">등록자</label>
                            <div class="col-md-4 mode-edit mode-new">
                                <sec:authentication property="principal.name" var="name" />
                                <span id="author" class="px-1 mr-lg-2 ml-2 ml-lg-0">${name}</span>
                            </div>
                        </div>
                            <div class="form-row">
                                <div class="form-group col col-md-12" id="is_file">
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">파일여부</label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-6" type="radio" class="custom-control-input"  value="0" checked="checked">
                                        <span class="custom-control-label">포함안함</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-6" type="radio" class="custom-control-input" value="1">
                                        <span class="custom-control-label">포함</span>
                                    </label>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col col-md-12" id="is_new">
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">신규 등록여부</label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-7" type="radio" class="custom-control-input" value="1" checked="checked">
                                        <span class="custom-control-label">신규</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-7" type="radio" class="custom-control-input"  value="0">
                                        <span class="custom-control-label">신규아님</span>
                                    </label>
                                </div>
                            </div>


                            <div class="form-row">
                                <div class="form-group col col-md-12" id="is_main_page">
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">메인페이지 노출여부</label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-8" type="radio" class="custom-control-input" value="1" checked="checked">
                                        <span class="custom-control-label">노출</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="custom-8" type="radio" class="custom-control-input"  value="0">
                                        <span class="custom-control-label">노출안함</span>
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
                                <button id="btn_save_new" type="button" class="btn btn-primary">작성완료</button>
                            </div>
                        </div>

                        <div class="modal-footer justify-content-between mode-edit d-none">
                            <div>
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
<script>

    $( document ).ajaxStart(function() {
        $('html').css("cursor", "wait");
    });
    $( document ).ajaxStop(function() {
        $('html').css("cursor", "auto");
    });

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

    $(function() {
        var isRtl = $('html').attr('dir') === 'rtl';

        $('#datepicker-show,#datepicker-open,#datepicker-open_update').datepicker({
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

    var isSave = false;
    $('#btn_save_new').click(function(event) {
        if (isSave) {
            return;
        }
        isSave = true;
        event.preventDefault();
        saveForm();
    });

    var isUpdate = false;
    $('#btn_save_new_update').click(function(event) {
        if (isUpdate) {
            return;
        }
        isUpdate = true;
        event.preventDefault();
        updateForm();
    });

    $('#modals-business input:radio[name=custom-6]').change(function () {
        if ($('#modals-business input:radio[name=custom-6]:checked').val() === '0') {
            $('#file_upload').val('');
            $('#file_upload').attr('disabled', true)
        } else {
            $('#file_upload').attr('disabled', false)
        }
    });

    $('#modals-business input:radio[name=custom-6]:checked').trigger('change')

    var curNoticedata;
    var noticeList=[];
    <c:forEach items="${noticeList}" var="notice" varStatus="status">
    noticeList.push({
        idx_notice :"${notice.idx_notice}",
        notice_code :"${notice.notice_code}",
        notice_num :"${notice.notice_num}",
        subject :"${notice.subject}",
        notice_contents :`${notice.notice_contents}`,
        is_file_ord : ${notice.is_file},
        is_file :"${notice.is_file eq 0 ?"포함안함": notice.is_file eq 1 ?"포함함":""}",
        is_new_ord : ${notice.is_new},
        is_new :"${notice.is_new eq 0 ?"신규아님": notice.is_new eq 1 ?"신규":""}",
        is_main_page_ord : ${notice.is_main_page},
        is_main_page :"${notice.is_main_page eq 0 ?"노출안함": notice.is_main_page eq 1 ?"노출함":""}",
        is_important :"${notice.is_important eq 0 ?"고정안함": notice.is_important eq 1 ?"고정안함":""}",
        is_show :"${notice.is_show}",
        view_count :"${notice.view_count}",
        notice_status :"${notice.notice_status}",
        posting_start_date :"<fmt:formatDate value="${notice.posting_start_date}" pattern="yyyy-MM-dd HH:mm:ss"/>",
        posting_end_date :"<fmt:formatDate value="${notice.posting_end_date}" pattern="yyyy-MM-dd HH:mm:ss"/>",
        doc_version :"${notice.doc_version}",
        memo :"${notice.memo}",
        search_tag :"${notice.search_tag}",
        author :"${notice.author}",
        idx_admin :"${notice.idx_admin}",
        confirm_admin_idx :"${notice.confirm_admin_idx}",
        reg_date :"${notice.reg_date}",
        last_upd_date :"${notice.last_upd_date}"

    })
    </c:forEach>

    var selectedNotice = null;
    $(".notice-entity").click(function(){

        var selectId = $(this).attr('id');
        curNoticedata = selectId;
        for(var notice of noticeList){
            if(selectId === notice.idx_notice){
                selectedNotice = notice;
                $(".idx_notice").attr("id",selectId);
                $("#notice_code_view span").text(notice.notice_code);
                $("#notice_num_view span").text(notice.notice_num);
                $("#subject_view span").text(notice.subject);
                $("#notice_contents_view span").html(notice.notice_contents);
                $("#is_file_view span").text(notice.is_file);
                $("#is_new_view span").text(notice.is_new);
                $("#is_main_page_view span").text(notice.is_main_page);
                $("#is_important_view span").text(notice.is_important);
                $("#is_show_view span").text(notice.is_show);
                $("#view_count_view span").text(notice.view_count);
                $("#notice_status_view span").text(notice.notice_status);
                $("#posting_start_date_view span").text(notice.posting_start_date);
                $("#posting_end_date_view span").text(notice.posting_end_date);
                $("#doc_version_view span").text(notice.doc_version);
                $("#memo_view span").text(notice.memo);
                $("#search_tag_view span").text(notice.search_tag);
                $("#author_view span").text(notice.author);
                $("#idx_admin_view span").text(notice.idx_admin);
                $("#confirm_admin_idx_view span").text(notice.confirm_admin_idx);
                $("#reg_date_view span").text(notice.reg_date);
                $("#last_upd_date_view span").text(notice.last_upd_date);

                break;
            }
        }
    });

    $('#admin_name_view').click(function() {
        if (selectedNotice === null) {
            return;
        }

        $.ajax({
            type: "GET",
            url: '/files/notice/' + curNoticedata,
            success: function (result) {

                $('#modals-counsel-history').modal('show')

                $("#notice_code_update").val(selectedNotice.notice_code);
                $("#subject_update").val(selectedNotice.subject);
                $('#notice_contents_update').summernote('code', selectedNotice.notice_contents)
                $('#modals-counsel-history input:radio[name=custom-6]:input:radio[value=' + selectedNotice.is_file_ord + ']').prop('checked', true)
                $('#modals-counsel-history input:radio[name=custom-7]:input:radio[value=' + selectedNotice.is_new_ord + ']').prop('checked', true)
                $('#modals-counsel-history input:radio[name=custom-8]:input:radio[value=' + selectedNotice.is_main_page_ord + ']').prop('checked', true)
                $('#posting_start_date_update').val(selectedNotice.posting_start_date);
                $('#posting_end_date_update').val(selectedNotice.posting_end_date);
                $("#doc_version_update").val(selectedNotice.doc_version);
                $("#memo_update").val(selectedNotice.memo);

                selectedNotice.uploadedFiles = result;
                selectedNotice.removedFileList = [];

                for (var i = 0; i < result.length; ++i) {
                    const idxFileInfo = result[i].idx_file_info;
                    const fileName = result[i].file_name;
                    var uploadedFileTag =
                        '<div id="file_' + idxFileInfo + '">' +
                        '   <div id="idx_file_info" hidden></div>' +
                        '   <span>' + fileName + '</span>' +
                        '   <button onClick="removeFile(' + idxFileInfo + ')">삭제하기</button>' +
                        '</div>';

                    $('#uploaded-file-list').append(uploadedFileTag);
                }
            },
            error: function (res) {

            }
        });
    });

    function removeFile(idxFileInfo) {
        $('#file_' + idxFileInfo).remove();
        selectedNotice.removedFileList.push(idxFileInfo);
    }

    $('#initialize-modals-business').click(function() {

        $('#notice_code').val('');
        $('#subject').val('');
        $('#notice_contents').summernote('code', '');
        $('#modals-business #memo').val('');
        $("#posting_start_date").val('');
        $("#posting_end_date").val('');
        $('#modals-business input:radio[name=custom-6]:input:radio[value="0"]').prop('checked', true)
        $('#modals-business input:radio[name=custom-7]:input:radio[value="1"]').prop('checked', true)
        $('#modals-business input:radio[name=custom-8]:input:radio[value="1"]').prop('checked', true)
        $('#file_upload').val('');
    });

    function updateForm() {

        // let result = document.getElementsByName('custom-6');

        const formData = new FormData();

        formData.append('idx_notice', parseInt(curNoticedata));
        formData.append('notice_code', $("#notice_code_update").val());
        formData.append('subject', $("#subject_update").val());
        formData.append('notice_contents', $("#notice_contents_update").val());
        formData.append('is_file', $("#modals-counsel-history input:radio[name=custom-6]:checked").val());
        formData.append('is_new', $("#modals-counsel-history input:radio[name=custom-7]:checked").val());
        formData.append('is_main_page', $("input:radio[name=custom-8]:checked").val());
        formData.append('posting_start_date', new Date($('#posting_start_date_update').val()));
        formData.append('posting_end_date', new Date($('#posting_end_date_update').val()));
        formData.append('memo', $("#memo_update").val());
        $.each($('#file_upload_update')[0].files, function(i, file) {
            formData.append('files[' + i + ']', file);
        });
        $.each(selectedNotice.removedFileList, function(i, idxFile) {
            formData.append('removedFiles[' + i + ']', idxFile);
        });

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: 'update_notice', //데이터를 주고받을 파일 주소 입력
            data: formData,
            contentType: false,
            processData: false,
            success: function (result) {

                isUpdate = false;
                $("#modals-counsel-view").modal("hide");
                $("#modals-counsel-history").modal("hide");
                alert("상태 변경에 성공하였습니다")
                setTimeout(function() {
                    pageLoad('c41_site_notice_mng');
                }, 100);

            },
            error: function (res) {
                isUpdate = false;
                alert("상태 변경에 실패하였습니다")
                console.log(res)
            }
        });
    }

    $("#delete_notice").click(function () {
        if(confirm("이 공지를 삭제하시겟습까?")){
            $.ajax({
                type: 'post',
                url :'delete_notice', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(parseInt(curNoticedata)),//보내는 데이터
                contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                dataType:'json',//받는 데이터 타입
                success: function(result){
                    //작업이 성공적으로 발생했을 경우
                    $("#modals-counsel-view").modal("hide");
                    alert(result.result_str);
                    setTimeout(function() {
                        pageLoad('c41_site_notice_mng');
                    }, 100);
                },
                error:function(){
                    //에러가 났을 경우 실행시킬 코드
                }
            });
        }
    })



    // var saveNewBtn = document.querySelectorAll('.btn_save_new');
    // saveNewBtn.forEach(btn=>btn.addEventListener('click', saveForm));

    // GOTO
    function saveForm(){

        if($("#subject").val() === ''){
            isSave = false;
            return alert('제목을 입력해 주세요.')
        }

        if($("#notice_code").val() === ''){
            isSave = false;
            return alert('소제목을 입력해주세요.')
        }

        if($("#memo").val() === ''){
            isSave = false;
            return alert('메모를 입력해 주세요.')
        }

        if($("#posting_start_date").val() === '' || $("#posting_end_date").val() === ''){
            isSave = false;
            return alert('게시기간을 입력해주세요.')
        }

        var fileForm = new FormData();
        fileForm.append('notice_code', $('#notice_code').val());
        fileForm.append('subject', $('#subject').val());
        fileForm.append('notice_contents', $('#notice_contents').summernote('code'));
        fileForm.append('memo', $('#modals-business #memo').val());
        fileForm.append('posting_start_date',new Date($("#posting_start_date").val()));
        fileForm.append('posting_end_date',new Date($("#posting_end_date").val()));
        fileForm.append('author', $('#modals-business #author').text());
        fileForm.append('is_file', $('#modals-business input:radio[name=custom-6]:checked').val());
        fileForm.append('is_new', $('#modals-business input:radio[name=custom-7]:checked').val());
        fileForm.append('is_main_page', $('#modals-business input[name=custom-8]:checked').val());
        $.each($('#file_upload')[0].files, function(i, file) {
            fileForm.append('files[' + i + ']', file);
        });

        $.ajax({
            type: 'post',
            url :'insert_notice', //데이터를 주고받을 파일 주소 입력
            data: fileForm,//보내는 데이터
            contentType: false,//보내는 데이터 타입
            processData: false,//Jquery 내부에서 파일을 queryString 형태로 전달하는 것을 방지
            dataType:'json',//받는 데이터 타입
            enctype: 'multipart/form-data',
            success: function(result){
                isSave = false;
                $('#modals-business').modal('hide')
                alert("업로드에 성공했습니다");
                setTimeout(function() {
                    pageLoad('c41_site_notice_mng',{cur_page:1,list_amount:10,filter1:9999,filter2:9998},'공지사항 관리');
                }, 100);
            },
            error: function (res) {
                isSave = false;
                console.log(res)

            }
        });
    }





    //
    //
    // function update(message){
    //     event.preventDefault();
    //     var fileForm = new FormData();
    //     fileForm.append("notice_code_update",document.querySelector('#notice_code').value);
    //     fileForm.append("subject_update",document.querySelector('#subject').value);
    //     fileForm.append("notice_contents_update",document.querySelector('#notice_contents').value);
    //     fileForm.append("is_file_update",document.querySelector('input[name=custom-6]:checked').value);
    //     fileForm.append("is_new_update",document.querySelector('input[name=custom-7]:checked').value);
    //     fileForm.append("is_main_page_update",document.querySelector('input[name=custom-8]:checked').value);
    //     fileForm.append("posting_start_date_update",new Date(document.querySelector("#posting_start_date").value));
    //     fileForm.append("posting_end_date_update",new Date(document.querySelector("#posting_end_date").value));
    //
    //
    //     var files = document.querySelector('#file_upload').files;
    //
    //
    //     for(var i = 0; i < files.length; i++){
    //         var num = i + 1;
    //         fileForm.append("files" + num, files[i]);
    //     }
    //     fileForm.append("fileLength", files.length);
    //
    //     $.ajax({
    //         type: 'post',
    //         url :'update_notice', //데이터를 주고받을 파일 주소 입력
    //         data: fileForm,//보내는 데이터
    //         contentType: false,//보내는 데이터 타입
    //         processData: false,//Jquery 내부에서 파일을 queryString 형태로 전달하는 것을 방지
    //         dataType:'json',//받는 데이터 타입
    //         enctype: 'multipart/form-data',
    //         success: function(result){
    //             console.log(result);
    //             console.log(fileForm)
    //             alert("업로드에 성공했습니다", () => window.redirect("/"))
    //         },
    //         error: function (res) {
    //             console.log(res)
    //             console.log(files)
    //         }
    //     });
    // }

</script>
<!-- Layout footer -->
<%@include file ="../layouts/frame_footer.jsp" %>
<!-- / Layout footer -->

<!-- / Page content -->
