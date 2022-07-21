<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>공지사항 관리</div>
        </h4>

        <div class="card">
            <h6 class="card-header with-elements">
                <div class="card-header-title">포털 공지사항 목록</div>
                <div class="card-header-elements ml-auto">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modals-business" data-what="mode-new">+ 신규 공지사  작성</button>
                </div>
            </h6>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">

                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-striped dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-success text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center" style="width:8%">No</th>
                                    <th class="text-center" style="width:6%">중요</th>
                                    <th class="text-center" style="width:12%">공지번호</th>
                                    <th class="text-center" style="width:32%">제목</th>
                                    <th class="text-center" style="width:8%">첨부파일</th>
                                    <th class="text-center" style="width:8%">게시자</th>
                                    <th class="text-center" style="width:16%">게시일</th>
                                    <th class="text-center" style="width:10%">조회수</th>
                                </tr>
                                </thead>
                                <tbody>
<c:forEach items="${noticeList}" var="notice" varStatus="status">
    <tr class="notice-entity" id="${notice.idx_notice}">

                                    <td class="text-center">${notice.notice_num}</td>
                                    <td class="text-center"><c:if test="${notice.is_important eq 1}">중요</c:if> </td>
                                    <td class="text-center">${notice.notice_code} </td>
                                    <td class="text-left"><a href="#none" data-toggle="modal" data-target="#modals-counsel-view" data-what="mode-view">${notice.subject}</a></td>
                                    <td class="text-center"><c:if test="${notice.is_file eq 1}"><span class="fas fa-paperclip"></span></c:if> </td>
                                    <td class="text-center">${notice.author}</td>
                                    <td class="text-center"><fmt:formatDate value="${notice.posting_start_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                    <td class="text-center">${notice.view_count}</td>

                                </tr>
</c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div class="dataTables_info" role="status" aria-live="polite">총 ${total_count}개 중 ${(cur_page-1)*list_amount+1}에서 ${cur_page*list_amount}까지</div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                                <ul class="pagination">

                                    <c:set var="name" value="${total_count/amount}" />


<c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c41_site_notice_mng',{page_num:1},'공지사항 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
<c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c41_site_notice_mng',{page_num:${cur_page-1}},'공지사항 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>



                                    <c:forEach var="i" begin="1" end="${page_amount}">
                                    <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('c41_site_notice_mng',{page_num:${(cur_sector-1)*page_amount+i}},'공지사항 관리');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>

<c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c41_site_notice_mng',{page_num:${cur_page+1}},'공지사항 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c41_site_notice_mng',{page_num:${tot_page}},'공지사항 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
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
                        <h5 class="modal-title">공지사항</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12 text-right" id="admin_name_view">
                                <a href="#none" class="btn btn-underline"  data-toggle="modal" data-target="#modals-counsel-history">게시자</a>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="notice_code_view">
                                <label class="form-label d-block text-muted">공지제목</label>
                                <span>김홍삼</span>
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
                                <label class="form-label d-block text-muted">컨텐츠</label>
                                <span>
                        </span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12" id="subject_view">
                                <label class="form-label d-block text-muted">내용</label>
                                <span></span>
                            </div>
                        </div>
                        <hr class="mt-0">
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>

                        <div>
                            <button type="button" class="btn btn-outline-danger" data-dismiss="modal" id="delete_notice">삭제</button>
                            <button type="button" class="btn btn-primary">저장</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Modal template -->
        <div class="modal fade" id="modals-counsel-view-modify">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">공지사항</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12 text-right" id="admin_name_modify">
                                <a href="#none" class="btn btn-underline"  data-toggle="modal" data-target="#modals-counsel-history">게시자</a>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="notice_code_modify">
                                <label class="form-label d-block text-muted">공지제목</label>
                                <span>김홍삼</span>
                            </div>
                            <div class="form-group col col-md-4" id="is_file_modify">
                                <label class="form-label d-block text-muted">파일 포함 여부</label>
                                <span>맛있는 농부</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="is_new_modify">
                                <label class="form-label d-block text-muted">신규등록여부</label>
                                <span>000-00-00000</span>
                            </div>
                            <div class="form-group col col-md-4" id="is_main_page_view_modify">
                                <label class="form-label d-block text-muted">메인페이지 노출여부</label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="posting_start_date_modify">
                                <label class="form-label d-block text-muted">게시시작일</label>
                                <span>사전 상담</span>
                            </div>
                            <div class="form-group col col-md-4" id="posting_end_date_modify">
                                <label class="form-label d-block text-muted">게시종료일</label>
                                <span>추가</span>
                            </div>
                            <div class="form-group col col-md-4" id="view_count_modify">
                                <label class="form-label d-block text-muted">조회수</label>
                                <span>이용 신청서 작성</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12" id="notice_contents_modify">
                                <label class="form-label d-block text-muted">내용</label>
                                <span>
                        </span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12" id="subject_modify">
                                <label class="form-label d-block text-muted">내용</label>
                                <span>
                        </span>
                            </div>
                        </div>
                        <hr class="mt-0">
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-outline-danger" data-dismiss="modal" >삭제</button>
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
<!-- new demo bs-->
<div class="modal fade" id="modals-business">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header bg-success">
                <h5 class="modal-title text-white font-weight-bold mode-new">신규 공지사 작성</h5>
                <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
            </div>
            <div class="modal-body">
                <form>
                    <!-- 사업번호 / 사업 상태-->

                    <!-- 사업 제목-->
                    <div class="form-group row" >
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">공지 제목</label>
                        <div class="col-md-10" >
                            <input type="text" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요" id="subject">
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
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">컨텐츠</label>
                        <div class="form-group col col-md-10">
                            <textarea class="summernote" rows="3" id="notice_contents"></textarea>
                        </div>
                    </div>
                    <hr>
                    <div class="form-row" >
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">서브제목</label>
                        <div class="form-group col col-md-10" >
                            <textarea class="form-control mode-edit mode-new" rows="3" id="notice_code"></textarea>
                        </div>
                    </div>
                    <hr>
                    <div class="form-row" >
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">공지사 내용</label>
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
                            <span class="px-1 mr-lg-2 ml-2 ml-lg-0">${admin.admin_name}</span>
<%--                            <div class="form-control-plaintext mode-view">${admin.admin_name}</div>--%>
                        </div>
                    </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12" id="is_file">
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
                            <div class="form-group col col-md-12" id="is_new">
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
                            <div class="form-group col col-md-12" id="is_main_page">
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
    var curNoticedata;
    var noticeList=[];
    <c:forEach items="${noticeList}" var="notice" varStatus="status">
    noticeList.push({
        idx_notice :"${notice.idx_notice}",
        notice_code :"${notice.notice_code}",
        notice_num :"${notice.notice_num}",
        subject :"${notice.subject}",
       <%--notice_contents :"${notice.notice_contents}",--%>
        is_file :"${notice.is_file eq 0 ?"포함안함": notice.is_file eq 1 ?"포함함":""}",
        is_new :"${notice.is_new eq 0 ?"신규아님": notice.is_new eq 1 ?"신규":""}",
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

    $(".notice-entity").click(function(){

        var selectId = $(this).attr('id');
        curNoticedata = selectId;
        for(var notice of noticeList){
            if(selectId === notice.idx_notice){
                $(".idx_notice").attr("id",selectId);
                $("#notice_code_view span").text(notice.notice_code);
                $("#notice_num_view span").text(notice.notice_num);
                $("#subject_view span").text(notice.subject);
                $("#notice_contents_view span").text(notice.notice_contents);
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

                $("#notice_code_modify span").val(notice.notice_code);
                $("#notice_num_modify span").val(notice.notice_num);
                $("#subject_modify span").val(notice.subject);
                $("#notice_contents_modify span").val(notice.notice_contents);
                $("#is_file_modify span").val(notice.is_file);
                $("#is_new_modify span").val(notice.is_new);
                $("#is_main_page_modify span").val(notice.is_main_page);
                $("#is_important_modify span").val(notice.is_important);
                $("#is_show_modify span").val(notice.is_show);
                $("#view_count_modify span").val(notice.view_count);
                $("#notice_status_modify span").val(notice.notice_status);
                $("#posting_start_date_modify span").val(notice.posting_start_date);
                $("#posting_end_date_modify span").val(notice.posting_end_date);
                $("#doc_version_modify span").val(notice.doc_version);
                $("#memo_modify span").val(notice.memo);
                $("#search_tag_modify span").val(notice.search_tag);
                $("#author_modify span").val(notice.author);
                $("#idx_admin_modify span").val(notice.idx_admin);
                $("#confirm_admin_idx_modify span").val(notice.confirm_admin_idx);
                $("#reg_date_modify span").val(notice.reg_date);
                $("#last_upd_date_modify span").val(notice.last_upd_date);
                break;
            }
        }
    });


//     function event_pass() {
//         console.log("버튼은 되니")
// // let result = document.getElementsByName('custom-6');
//         var selectId = $(this).attr('id');
//         param ={
//             idx_notice: parseInt(curNoticedata),
//             notice_code:$("#notice_code input").val(),
//             notice_num:$("#notice_num").val(),
//             subject:$("#subject").val(),
//             notice_contents:$("#notice_contents textarea").val(),
//             is_file:$("input:radio[name=custom-6]:checked").val(),
//             is_new:$("input:radio[name=custom-7]:checked").val(),
//             is_main_page:$("input:radio[name=custom-8]:checked").val(),
//             is_important:$("#is_important").val(),
//             is_show:$("#is_show").val(),
//             view_count:$("#view_count").val(),
//             notice_status:$("#notice_status").val(),
//             posting_start_date:$('#posting_start_date').val(),
//             posting_end_date:$('#posting_end_date').val(),
//             doc_version:$("#doc_version").val(),
//             memo:$("#memo label").val(),
//             search_tag:$("#search_tag").val(),
//             author:$("#author").val(),
//             idx_admin:$("#idx_admin").val(),
//             confirm_admin_idx:$("#confirm_admin").val(),
//             reg_date:$("#reg_date").val(),
//             last_upd_date:$("#last_upd_date").val()
//         }
//         $.ajax({
//             type: 'post',
//             url: '/insert_notice', //데이터를 주고받을 파일 주소 입력
//             data: JSON.stringify(param),//보내는 데이터
//             contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
//             dataType: 'json',//받는 데이터 타입
//             success: function (result) {
//
//                 if (result.result_code == "SUCCESS") {
//                     alert("상태 변경에 성공하였습니다")
//                 } else {
//                     alert("상태 변경에 실패하였습니다")
//                 }
//
//             },
//             error: function (res) {
//                 console.log(res)
//             }
//         });
//     }
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
                    alert(result.result_str);
                    $("#modals-counsel-view").modal("hide");
                    pageLoad('c41_site_notice_mng');
                },
                error:function(){
                    //에러가 났을 경우 실행시킬 코드
                }
            });
        }
    })



    var saveNewBtn = document.querySelectorAll('.btn_save_new');
    saveNewBtn.forEach(btn=>btn.addEventListener('click', saveForm));

    function saveForm(message){
        event.preventDefault();
        var fileForm = new FormData();
            fileForm.append("notice_code",document.querySelector('#notice_code').value);
             fileForm.append("subject",document.querySelector('#subject').value);
            fileForm.append("notice_contents",document.querySelector('#notice_contents').value);
            fileForm.append("is_file",document.querySelector('input[name=custom-6]:checked').value);
            fileForm.append("is_new",document.querySelector('input[name=custom-7]:checked').value);
            fileForm.append("is_main_page",document.querySelector('input[name=custom-8]:checked').value);
             fileForm.append("posting_start_date",new Date(document.querySelector("#posting_start_date").value));
             fileForm.append("posting_end_date",new Date(document.querySelector("#posting_end_date").value));


        var files = document.querySelector('#file_upload').files;


        for(var i = 0; i < files.length; i++){
            var num = i + 1;
            fileForm.append("files" + num, files[i]);
        }
        fileForm.append("fileLength", files.length);

        $.ajax({
            type: 'post',
            url :'insert_notice', //데이터를 주고받을 파일 주소 입력
            data: fileForm,//보내는 데이터
            contentType: false,//보내는 데이터 타입
            processData: false,//Jquery 내부에서 파일을 queryString 형태로 전달하는 것을 방지
            dataType:'json',//받는 데이터 타입
            enctype: 'multipart/form-data',
            success: function(result){
                console.log(result);
                console.log(fileForm)
                alert("업로드에 성공했습니다", () => window.redirect("/"))
            },
            error: function (res) {
                console.log(res)
                console.log(files)
            }
        });
    }


</script>
<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
<!-- / Layout footer -->

<!-- / Page content -->
