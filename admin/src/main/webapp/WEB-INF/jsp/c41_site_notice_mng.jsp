<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                                <tr class="">

                                    <td class="text-center">${notice.notice_num}</td>
                                    <td class="text-center"><c:if test="${notice.is_important eq 1}">중요</c:if> </td>
                                    <td class="text-center">${notice.notice_code eq 1} </td>
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
                        <h5 class="modal-title">상담내용 입력</h5>
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
                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">상담 구분</label>
                                <span>사전 상담</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">상담 접수</label>
                                <span>추가</span>
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
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">요청일/변경일</label>
                                <span>2021.00.00 HH:MM</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">상담 방법</label>
                                <span>방문 상담</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">내용</label>
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
                            <div class="form-group col col-md-12 mb-1">
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
                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">공지 제목</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요" value="${demobs.demo_subject}">
                            <div class="form-control-plaintext mode-view">${demobs.demo_subject}</div>
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
                    <div class="form-row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">내용</label>

                        <div class="col-md-10 mode-edit mode-new">
                            <div class="summernote"></div>
                        </div>
                    </div>
                    <hr>
                    <div class="form-row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">메모</label>
                        <div class="form-group col col-md-10">
                            <textarea class="form-control mode-edit mode-new" rows="3"></textarea>
                            <textarea class="form-control mode-view" readonly rows="5"></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">게시 기간</label>
                        <div class="col-md-10">
                            <div class="form-control-plaintext mode-view">2022-01-01 - 2022-02-01</div>

                            <div id="datepicker-open" class="input-daterange input-group mode-edit mode-new">
                                <input type="text" class="form-control" name="start">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">~</span>
                                </div>
                                <input type="text" class="form-control" name="end">
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">파일 첨부</label>
                        <div class="form-group col col-md-10 mode-edit mode-new">
                            <input type="file" class="form-control-file d-block py-1">
                            <input type="file" class="form-control-file d-block py-1">
                        </div>
                        <div class="form-group col col-md-10 col-form-label mode-view">
                            <a href="file.doc"></a>
                            <a href="file.doc"></a>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-between mode-new">
                        <div>
                            <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                        </div>
                        <div>
                            <button type="button" class="btn btn-outline-primary mr-2">임시저장</button>
                            <button type="button" class="btn btn-primary">작성완료</button>
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

                    <div class="modal-footer justify-content-between mode-view">
                        <div>
                            <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">닫기</button>
                        </div>

                        <div>
                            <button id="btn_edit_mode" type="button" class="btn btn-primary">수정</button>
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
        height: 300                 // 에디터 높이
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
</script>
<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
<!-- / Layout footer -->

<!-- / Page content -->
