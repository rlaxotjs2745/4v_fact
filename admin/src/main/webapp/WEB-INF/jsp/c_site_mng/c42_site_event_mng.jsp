<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h5 class="d-flex justify-content-between align-items-center w-100 mt-2">
            <div><i class="pe-7s-star text-success-custom"></i>행사안내 관리</div>
        </h5>

        <div class="card px-4 pt-4 mb-4">
            <div class="form-row mb-4">
                <div class="col-md-2 ">
                    <label class="form-label text-muted">행사</label>
                    <div class="form-inline">
                        <div class="btn-group btn-group-sm btn-group-toggle srch_filtp1" data-toggle="buttons">
                            <label class="btn btn-secondary active">
                                <input type="radio" name="filtp1" value="" checked="checked">전체
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="filtp1" value="1"> 신규
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="filtp1" value="0"> 끝난 이벤트
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 ">
                    <label class="form-label text-muted">행사 등록일</label>
                    <div class="form-inline">
                        <div class="btn-group btn-group-sm btn-group-toggle srch_filtp2" data-toggle="buttons">
                            <label class="btn btn-secondary">
                                <input type="radio" name="filtp2" value="1">오늘
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="filtp2" value="2"> 1주일
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="filtp2" value="3"> 1개월
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="filtp2" value="4"> 3개월
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="filtp2" value="5"> 6개월
                            </label>
                            <label class="btn btn-secondary ">
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
                <div class="card-header-title">행사 목록</div>
                <div class="card-header-elements ml-auto">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modals-business" data-what="mode-new">신규 행사 작성</button>
                </div>
            </h6>
        <c:if test="${total_count eq 0}">
                <div class="table__blank" style="padding: 0 0 390px 0;text-align: center;">
                    <div class="blank__title" style="    padding: 25px 0 5px 0;
    font-size: 18px;
    font-weight: 700;
    line-height: 1.61;
    letter-spacing: -.9px;
    color: #161616;">행사 안내 없음</div>
                    <div class="blank__text" style="    font-size: 14px;
    font-weight: 400;
    line-height: 1.43;
    letter-spacing: -.42px;
    color: #262626;">행사 안내 진행 중인 데이터가 없습니다.</div>
                </div>
        </c:if>
        <c:if test="${total_count ne 0}">
            <div class="card-datatable table-responsive pt-0 pb-3" id="site_event_mng">
                <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row p-3">
                        <div class="col-sm-12 col-md-12">
                            <label class="mr-3  mb-0">총 : <strong>${total_count}</strong>건</label><label class="mr-3  mb-0">신규 : <strong>${count_req}</strong>건</label><label class="mr-3  mb-0">신규아님 : <strong>${count_comp}</strong>건</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-success text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center px-2" style="width:60px">No</th>
                                    <th class="text-center px-2" style="width:80px">행사제목</th>
                                    <th class="text-center px-2" style="width:60px">행사 컨텐츠</th>
                                    <th class="text-center px-2" style="width:100px">파일 포함 여부</th>
                                    <th class="text-center px-2" style="width:100px">신규등록여부</th>
                                    <th class="text-center px-2" style="width:150px">고정 여부</th>
                                    <th class="text-center px-2" style="width:80px">행사안내노출여부</th>
                                    <th class="text-center px-2" style="width:120px">조회수</th>
                                    <th class="text-center px-2" style="width:120px">행사안내 상태</th>
                                    <th class="text-center px-2" style="width:120px">행사 내용</th>
                                    <th class="text-center px-2" style="width:100px">행사시작 일시</th>
                                    <th class="text-center px-2" style="width:150px">행사종료 일시</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${eventcontentlist}" var="eventcontent" varStatus="status">
                                <tr class="eventcontent_entity" id="${eventcontent.idx_event_content}">
                                    <td class="text-center">${eventcontent.idx_row_num}</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default btn-sm btn_content_view" data-toggle="modal" data-target="#modals-counsel-view" data-idx="${eventcontent.idx_row_num}">${eventcontent.subject}</a></td>
                                    <td class="text-center">${eventcontent.event_content_code}</td>
                                    <td class="text-center">${eventcontent.is_file eq 0 ? "포함안함" : eventcontent.is_file eq 1 ? "포함" :""}</td>
                                    <td class="text-center">${eventcontent.is_new eq 0 ? "신규아님" : eventcontent.is_new eq 1 ? "신규" :""}</td>
                                    <td class="text-center">${eventcontent.is_important eq 0 ? "고정안함" : eventcontent.is_important eq 1 ? "고정함" : "" }</td>
                                    <td class="text-center">${eventcontent.is_show eq 0 ? "노출안함" : eventcontent.is_show eq 1 ? "노출함" :""}</td>
                                    <td class="">${eventcontent.view_count}</td>
                                    <td class="text-center">${eventcontent.event_content_status eq 0 ? "임시저장" : eventcontent.event_content_status eq 1 ? "허락" : eventcontent.event_content_status eq 2 ? "수정발행" : eventcontent.event_content_status eq 3 ? "게시종료" : "기타"}</td>
                                    <td class="text-center">${eventcontent.memo}</td>
                                    <td class="text-center"><fmt:formatDate value="${eventcontent.event_start_date}" pattern="yyyy-MM-dd"/></td>
                                    <td class=""><fmt:formatDate value="${eventcontent.event_end_date}" pattern="yyyy-MM-dd"/></td>
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
                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c421_site_event_mng',{page_num:1},'행사 관리','site_event_mng');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c421_site_event_mng',{page_num:${cur_page-1}},'행사 관리','site_event_mng');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>
                                    <c:forEach var="i" begin="1" end="${page_amount}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('c421_site_event_mng',{page_num:${(cur_sector-1)*page_amount+i}},'행사 관리','site_event_mng');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>
                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c421_site_event_mng',{page_num:${cur_page+1}},'행사 관리','site_event_mng');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c421_site_event_mng',{page_num:${tot_page}},'행사 관리','site_event_mng');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
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
                        <h5 class="modal-title">행사 안내</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12 text-right">
                                <a href="#none" class="btn btn-underline" onclick="open_modify()">행사 내용 수정</a>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="subject">
                                <label class="form-label d-block text-muted">행사제목</label>
                                <span>김홍삼</span>
                            </div>
                            <div class="form-group col col-md-4" id="eventContent">
                                <label class="form-label d-block text-muted">행사 컨텐츠</label>
                                <span>맛있는 농부</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="is_file">
                                <label class="form-label d-block text-muted">파일포함여부</label>
                                <span>000-00-00000</span>
                            </div>
                            <div class="form-group col col-md-4" id="event_content_code">
                                <label class="form-label d-block text-muted">행사안내 컨텐츠 </label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="event_start_date">
                                <label class="form-label d-block text-muted">행사 시작일시</label>
                                <span>사전 상담</span>
                            </div>
                            <div class="form-group col col-md-4" id="event_end_date">
                                <label class="form-label d-block text-muted">행사 종료일시</label>
                                <span>추가</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">행사안내 상태</label>
                                <span>이용 신청서 작성</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="last_upd_date">
                                <label class="form-label d-block text-muted">마지막 수정일</label>
                                <span>2021.00.00</span>
                            </div>
                            <div class="form-group col col-md-4" id="event_content_status">
                                <label class="form-label d-block text-muted">행사 게시상태</label>
                                <span>2021.00.00 HH:MM</span>
                            </div>
                            <div class="form-group col col-md-4" id="veiw_count">
                                <label class="form-label d-block text-muted">조회수</label>
                                <span>방문 상담</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12" id="memo">
                                <label class="form-label d-block text-muted">내용</label>
                                <span></span>
                            </div>
                        </div>
                        <hr class="mt-0">
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <div>
                            <button type="button" class="btn btn-outline-danger" data-dismiss="modal" id="delete_event">삭제</button>
                            <button type="button" class="btn btn-primary">확인</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Modal template modify -->
        <div class="modal fade" id="modals-counsel-modify">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">행사 안내</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12 text-right">
                                <a href="#none" class="btn btn-underline" data-toggle="modal" data-target="#modals-counsel-history"></a>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="subject_modify">
                                <label class="form-label d-block text-muted">행사제목</label>
                                <span>김홍삼</span>
                            </div>
                            <div class="form-group col col-md-4" id="eventContent_modify">
                                <label class="form-label d-block text-muted">행사 컨텐츠</label>
                                <span>맛있는 농부</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="is_file_modify">
                                <label class="form-label d-block text-muted">파일포함여부</label>
                                <span>000-00-00000</span>
                            </div>
                            <div class="form-group col col-md-4" id="event_content_code_modify">
                                <label class="form-label d-block text-muted">행사안내 컨텐츠 </label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="event_start_date_modify">
                                <label class="form-label d-block text-muted">행사 시작일시</label>
                                <span>사전 상담</span>
                            </div>
                            <div class="form-group col col-md-4" id="event_end_date_modify">
                                <label class="form-label d-block text-muted">행사 종료일시</label>
                                <span>추가</span>
                            </div>
                            <div class="form-group col col-md-4" >
                                <label class="form-label d-block text-muted">행사안내 상태</label>
                                <span>이용 신청서 작성</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4" id="last_upd_date_modify">
                                <label class="form-label d-block text-muted">마지막 수정일</label>
                                <span>2021.00.00</span>
                            </div>
                            <div class="form-group col col-md-4" id="event_content_status_modify">
                                <label class="form-label d-block text-muted">행사 게시상태</label>
                                <span>2021.00.00 HH:MM</span>
                            </div>
                            <div class="form-group col col-md-4" id="veiw_count_modify">
                                <label class="form-label d-block text-muted">조회수</label>
                                <span>방문 상담</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12" id="memo_modify">
                                <label class="form-label d-block text-muted">내용</label>
                                <span></span>
                            </div>
                        </div>
                        <hr class="mt-0">
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-outline-danger" data-dismiss="modal">삭제</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <div>
                            <button type="button" class="btn btn-primary">확인</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

<!-- Modal template insert -->
<div class="modal fade" id="modals-business">
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
                        <div class="col-md-10">
                            <input type="text" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요" id="subject_insert">
                            <div class="form-control-plaintext mode-view"></div>
                        </div>
                    </div>

                    <hr>
                    <div class="form-row" >
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">내용</label>
                        <div class="form-group col col-md-10">
                            <textarea class="form-control mode-edit mode-new" rows="3" id="memo_insert"></textarea>
                        </div>
                    </div>
                    <hr>
                    <div class="form-row" >
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">컨텐츠</label>
                        <div class="form-group col col-md-10">
                            <textarea class="summernote" rows="3" id="event_content_insert"></textarea>
                        </div>
                    </div>
                    <div class="form-group row" id="time">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">게시 기간</label>
                        <div class="col-md-10">
                            <div id="datepicker-open" class="input-daterange input-group mode-edit mode-new">
                                <input type="text" class="form-control date_picker" name="posting_start_date" id="event_start_date_insert">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">~</span>
                                </div>
                                <input type="text" class="form-control date_picker" name="posting_end_date" id="event_end_date_insert">
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
                        <div class="form-group col col-md-12" id="event_content_status_insert">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">행사안내 프로세스 상태</label>
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
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold" for="file_upload1_insert">파일 첨부</label>
                        <div class="form-group col col-md-10 mode-edit mode-new">
                            <input type="file" class="form-control-file d-block py-1" id="file_upload1_insert" name="file_upload1">
                        </div>
                        <div class="form-group col col-md-10 col-form-label mode-view">
                            <a href="file.doc"></a>
                        </div>
                    </div>

                    <div class="form-row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold" for="file_upload2_insert">썸네일 파일 첨부</label>
                        <div class="form-group col col-md-10 mode-edit mode-new">
                            <input type="file" class="form-control-file d-block py-1" id="file_upload2_insert" name="file_upload2">
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
                            <button id="btn_save_new" type="button" class="btn btn-primary" onclick="saveForm('insert_event');">작성완료</button>
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


<div class="modal fade" id="modals-counsel-history">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header bg-success">
                <h5 class="modal-title text-white font-weight-bold mode-new">행사 내용 수정</h5>
                <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
            </div>
            <div class="modal-body">
                <form>
                    <!-- 사업번호 / 사업 상태-->

                    <!-- 사업 제목-->
                    <div class="form-group row" >
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">행사 제목</label>
                        <div class="col-md-10">
                            <input type="text" id="subject_update" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요">
                            <div class="form-control-plaintext mode-view"></div>
                        </div>
                    </div>

                    <hr>
                    <div class="form-row" >
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">내용</label>
                        <div class="form-group col col-md-10">
                            <textarea class="form-control mode-edit mode-new" rows="3"  id="memo_update"></textarea>
                        </div>
                    </div>
                    <hr>
                    <div class="form-row" >
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">컨텐츠</label>
                        <div class="form-group col col-md-10" >
                            <textarea class="summernote" rows="3" id="event_content_update"></textarea>
                        </div>
                    </div>
                    <div class="form-group row" id="time_update">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">게시 기간</label>
                        <div class="col-md-10">
                            <div id="datepicker-open_update" class="input-daterange input-group mode-edit mode-new">
                                <input type="text" class="form-control date_picker" name="posting_start_date" id="event_start_date_update">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">~</span>
                                </div>
                                <input type="text" class="form-control date_picker" name="posting_end_date" id="event_end_date_update">
                            </div>
                        </div>
                    </div>
                    <div class="form-group row" id="admin_name_update">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit mode-new">등록자</label>
                        <div class="col-md-4 mode-edit mode-new">
                            <span class="px-1 mr-lg-2 ml-2 ml-lg-0">${admin.admin_name}</span>

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
                                <input name="custom-7" type="radio" class="custom-control-input" value="0">
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
                        <div class="form-group col col-md-12" id="event_content_status_update">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">행사안내 프로세스 상태</label>
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
                        <div class="form-group col col-md-10 col-form-label mode-view filelist1"></div>
                    </div>
                    <div class="form-row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold" for="file_upload2_update">썸네일 파일 첨부</label>
                        <div class="form-group col col-md-10 mode-edit mode-new">
                            <input type="file" class="form-control-file d-block py-1" id="file_upload2_update" name="file_upload">
                        </div>
                        <div class="form-group col col-md-10 col-form-label mode-view filelist2"></div>
                    </div>

                    <div class="modal-footer justify-content-between mode-new">
                        <div>
                            <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                        </div>
                        <div>
                            <button type="button" class="btn btn-outline-primary mr-2">임시저장</button>
                            <button id="btn_save_new_update" type="button" class="btn btn-primary" onclick="saveForm('update_event')">작성완료</button>
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
<%@include file ="../layouts/frame_footer.jsp" %>

<script>
    var curEventdata;
    var eventContentList = [];
    var _page = 1;
    <c:forEach items="${eventcontentlist}" var="eventcontent" varStatus="status">
    eventContentList[${eventcontent.idx_row_num}] = {
        idx_event_content: "${eventcontent.idx_event_content}",
        subject:"${eventcontent.subject}",
        is_new:"${eventcontent.is_new eq 0 ? "신규아님" : eventcontent.is_new eq 1 ? "신규" :""}",
        is_file:"${eventcontent.is_file eq 0 ? "포함안함" : eventcontent.is_file eq 1 ? "포함" :""}",
        is_main_page:${eventcontent.is_main_page},
        event_start_date:"<fmt:formatDate value="${eventcontent.event_start_date}" pattern="yyyy-MM-dd"/>",
        event_end_date:"<fmt:formatDate value="${eventcontent.event_end_date}" pattern="yyyy-MM-dd"/>",
        last_upd_date:"<fmt:formatDate value="${eventcontent.last_upd_date}" pattern="yyyy-MM-dd HH:MM"/>",
        event_content_status:"${eventcontent.event_content_status eq 0 ? "임시저장" : eventcontent.event_content_status eq 1 ? "허락" : eventcontent.event_content_status eq 2 ? "수정발행" : eventcontent.event_content_status eq 3 ? "게시종료" : "기타"}",
        event_content_status_no:${eventcontent.event_content_status},
        veiw_count:"${eventcontent.view_count}",
        memo:"${eventcontent.memo}"
    }
    </c:forEach>

    $('#is_file_insert input[name=custom-6]').on('change',function(){
        if($(this).index('#is_file_insert input[name=custom-6]') == 1){
            $('#file_upload1_insert').removeAttr('disabled');
            $('#file_upload2_insert').removeAttr('disabled');
        }else{
            $('#file_upload1_insert').attr('disabled',true);
            $('#file_upload2_insert').attr('disabled',true);
        }
    });
    $('#is_file_update input[name=custom-6]').on('change',function(){
        if($(this).index('#is_file_update input[name=custom-6]') == 1){
            $('#file_upload1_update').removeAttr('disabled');
            $('#file_upload2_update').removeAttr('disabled');
        }else{
            $('#file_upload1_update').attr('disabled',true);
            $('#file_upload2_update').attr('disabled',true);
        }
    });
    $('#file_upload1_insert, #file_upload2_insert').on('change',function(){
        if($('#is_file_insert input[name=custom-6]:checked').length==0){
            $('#is_file_insert input[name=custom-6]').eq(0).attr('checked',false);
            $('#is_file_insert input[name=custom-6]').eq(1).attr('checked',true);
        }
    });
    $('#file_upload1_update, #file_upload2_update').on('change',function(){
        if($('#is_file_update input[name=custom-6]:checked').length==0){
            $('#is_file_update input[name=custom-6]').eq(0).attr('checked',false);
            $('#is_file_update input[name=custom-6]').eq(1).attr('checked',true);
        }
    });
    
    $('#modals-counsel-view').on('show.bs.modal', function (event) {
        _saveCont($(event.relatedTarget).data('idx'))
    })

    function _form_reset(){
        $('#file_upload1_insert, #file_upload2_insert, #file_upload1_update, #file_upload2_update').attr('disabled',false);
        $('input[name=custom-6]').attr('checked',false);
        $('input[name=custom-7]').attr('checked',false);
        $('input[name=custom-8]').attr('checked',false);
        $('input[name=custom-9]').attr('checked',false);
        $('#modals-counsel-history input, #modals-business input, #modals-counsel-history textarea, #modals-business textarea').val('');
    }

    function open_modify(){
        $('#modals-counsel-history').modal('show');
        _getCont(curEventdata);
    }

    function _getCont(_idx) {
        $.ajax({
            type: 'post',
            url: 'get_eventcontents', //데이터를 주고받을 파일 주소 입력
            data: {idx_event_content:_idx},//보내는 데이터
            dataType: 'json',//받는 데이터 타입
            success: function (result) {
                // _form_reset();
                $('#file_upload1_update').val('');
                $('#file_upload2_update').val('');
                $('.filelist1').empty();
                $('.filelist2').empty();

                let _data = result.data.rs;
                // 수정 모달용
                $("#subject_update").val(_data.subject);
                $("#event_content_code_update").val(_data.event_content_code);
                $("#event_start_date_update").val(_data.event_start_date_str);
                $("#event_end_date_update").val(_data.event_end_date_str);

                $("#event_content_status_update input[name=custom-9]").each(function (){
                    if($(this).val() == _data.event_content_status){
                        $(this).attr('checked',true)
                    }
                });
                $("#memo_update").val(_data.memo);
                $("#event_content_update").summernote('code', _data.event_contents);
                $('#is_file_update input[name=custom-6]').eq(_data.is_file).attr('checked',true)
                $('#is_new_update input[name=custom-7]').eq(_data.is_new).attr('checked',true)
                $('#is_main_page_update input[name=custom-8]').eq(_data.is_main_page).attr('checked',true)
                $('#admin_name_update span').text(_data.author);

                let file1 = _data.attachments;
                let file2 = result.data.thumb;
                
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
        curEventdata = eventContentList[_i].idx_event_content;
        $("#subject span").text(eventContentList[_i].subject);
        $("#is_file span").text(eventContentList[_i].is_file)
        $("#event_content_code span").text(eventContentList[_i].event_content_code)
        $("#event_start_date span").text(eventContentList[_i].event_start_date)
        $("#event_end_date span").text(eventContentList[_i].event_end_date)
        $("#last_upd_date span").text(eventContentList[_i].last_upd_date)
        $("#event_content_status span").text(eventContentList[_i].event_content_status)
        $("#memo span").text(eventContentList[_i].memo)

        $("#subject_modify span").val(eventContentList[_i].subject);
        $("#is_file_modify span").val(eventContentList[_i].is_file)
        $("#event_content_code_modify span").val(eventContentList[_i].event_content_code)
        $("#event_start_date_modify span").val(eventContentList[_i].event_start_date)
        $("#event_end_date_modify span").val(eventContentList[_i].event_end_date)
        $("#last_upd_date_modify span").val(eventContentList[_i].last_upd_date)
        $("#event_content_status_modify span").val(eventContentList[_i].event_content_status)
        $("#memo_modify span").val(eventContentList[_i].memo)
    }

    function _contents() {
        $(".btn_content_modal").off().click(function (){
            var idx = $(this).attr("id");
            pageLoad("event_contents", {idx: parseInt(idx)}, "행사 모달컨텐츠", "event_contents");
        })
        $("#delete_event").off().click(function () {
            if (confirm("이 행사를 삭제하시겠습니까?")) {
                $.ajax({
                    type: 'post',
                    url: 'delete_event', //데이터를 주고받을 파일 주소 입력
                    data: JSON.stringify(parseInt(curEventdata)),//보내는 데이터
                    contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                    dataType: 'json',//받는 데이터 타입
                    success: function (result) {
                        //작업이 성공적으로 발생했을 경우
                        alert(result.result_str);
                        $("#modals-counsel-view").modal("hide");
                        _search(1)
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
        // Time
        $('#flatpickr-time-start,#flatpickr-time-end').flatpickr({
            enableTime: true,
            noCalendar: true,
            altInput: true,
            static:true
        });
    });

    $("#delete_event").click(function () {
        if(confirm("이 행사를 삭제하시겟습까?")){
            $.ajax({
                type: 'post',
                url :'delete_event', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(parseInt(curEventdata)),//보내는 데이터
                contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                dataType:'json',//받는 데이터 타입
                success: function(result){
                    //작업이 성공적으로 발생했을 경우
                    alert(result.result_str);
                    $("#modals-counsel-view").modal("hide");
                    _search(1)
                },
                error:function(){
                    //에러가 났을 경우 실행시킬 코드
                }
            });
        }
    })

    var saveNewBtn = document.querySelectorAll('.btn_save_new');
    saveNewBtn.forEach(btn=>btn.addEventListener('click', saveForm));

    function saveForm(_url){
        let _u = '_update';
        if(_url=='insert_event'){
            _u = '_insert';
        }
        if($("#subject"+_u).val() === ''){
            return alert('제목을 입력해 주세요.')
        }

        if($("#event_content"+_u).val() === ''){
            return alert('컨텐츠를 입력해주세요.')
        }

        if($("#memo"+_u).val() === ''){
            return alert('내용을 입력해 주세요.')
        }

        if($("#event_start_date"+_u).val() === '' || $("#event_end_date"+_u).val() === ''){
            return alert('게시기간을 입력해주세요.')
        }

        if($('#file_upload1'+_u).val()!=''){
            if($('#is_file'+_u+' input[name=custom-6]:checked').length==0 || !$('#is_file'+_u+' input[name=custom-6]').eq(0).attr('checked')){
                $('#is_file'+_u+' input[name=custom-6]').eq(0).attr('checked',false);
                $('#is_file'+_u+' input[name=custom-6]').eq(1).attr('checked',true);
            }
        }
        if($('#file_upload2'+_u).val()!=''){
            if($('#is_file'+_u+' input[name=custom-6]:checked').length==0 || !$('#is_file'+_u+' input[name=custom-6]').eq(0).attr('checked')){
                $('#is_file'+_u+' input[name=custom-6]').eq(1).attr('checked',false);
                $('#is_file'+_u+' input[name=custom-6]').eq(0).attr('checked',true);
            }
        }

        if($('#is_file'+_u+' input[name=custom-6]:checked').length==0){
            return alert('파일여부를 골라주세요.')
        }
        if($('#is_new'+_u+' input[name=custom-7]:checked').length==0){
            return alert('신규 등록여부를 골라주세요.')
        }
        if($('#is_main_page'+_u+' input[name=custom-8]:checked').length==0){
            return alert('메인페이지 노출여부를 골라주세요.')
        }
        if($('#event_content_status'+_u+' input[name=custom-9]:checked').length==0){
            return alert('행사안내 프로세스 상태를 골라주세요.')
        }

        var fileForm = new FormData();
        fileForm.append("memo",document.querySelector('#memo'+_u).value);
        fileForm.append("subject",document.querySelector('#subject'+_u).value);
        fileForm.append("event_contents",document.querySelector('#event_content'+_u).value);
        fileForm.append("is_file",document.querySelector('#is_file'+_u+' input[name=custom-6]:checked').value);
        fileForm.append("is_new",document.querySelector('#is_new'+_u+' input[name=custom-7]:checked').value);
        fileForm.append("is_main_page",document.querySelector('#is_main_page'+_u+' input[name=custom-8]:checked').value);
        fileForm.append("event_content_status",document.querySelector('#event_content_status'+_u+' input[name=custom-9]:checked').value);
        fileForm.append("event_start_date",new Date(document.querySelector("#event_start_date"+_u).value));
        fileForm.append("event_end_date",new Date(document.querySelector("#event_end_date"+_u).value));

        if(document.querySelector('#file_upload1'+_u).files[0]){
            fileForm.append("files1", document.querySelector('#file_upload1'+_u).files[0]);
        }
        if(document.querySelector('#file_upload2'+_u).files[0]){
            fileForm.append("files2", document.querySelector('#file_upload2'+_u).files[0]);
        }
        // for(var i = 0; i < files.length; i++){
        //     var num = i + 1;
        //     fileForm.append("files" + num, files[i]);
        // }
        // fileForm.append("fileLength", fileForm.length);
        if (_url == 'update_event') {
            fileForm.append("idx_event_content",curEventdata);
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
                    if (_url == 'insert_event') {
                        alert(result.result_str)
                        $("#modals-business").modal("hide");
                        _search(1)
                    } else {
                        alert(result.result_str)
                        $("#modals-counsel-history").modal("hide");
                        $("#modals-counsel-view").modal("hide");
                        _search(_page)
                    }
                    // _form_reset();
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
        height: 300                 // 에디터 높이
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
        pageLoad("c421_site_event_mng", {page_num:_page,fil1:_fil1,fil2:_fil2}, "행사 관리",'site_event_mng');
    }

    _contents()
</script>
<!-- Layout footer -->
<!-- / Layout footer -->
<!-- / Page content -->