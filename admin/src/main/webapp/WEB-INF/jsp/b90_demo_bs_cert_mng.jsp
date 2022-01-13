<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">
        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>실증성적서</div>
        </h4>
        <div class="row">
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">신규접수</div>
                            <div class="text-large">5200</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">총 발급수</div>
                            <div class="text-large">2590</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">당월</div>
                            <div class="text-large">25</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">당기</div>
                            <div class="text-large">2580</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card px-4 pt-4 mb-3">
            <div class="form-row mb-4">
                <div class="col-md-2 ">
                    <label class="form-label text-muted">사업주체</label>
                    <div class="form-inline">
                        <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio" checked="">전체
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio"> 위탁
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio"> 자율
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 ">
                    <label class="form-label text-muted">기간</label>
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
                    <button type="button" class="btn btn-success">조회</button>
                </div>
            </div>
        </div>

        <hr>

        <div class="card">
            <h6 class="card-header with-elements">
                <div class="card-header-title">실증성적서 발급 목록</div>
                <div class="card-header-elements ml-auto">
                    <div class="btn-group btn-group-sm btn-group-toggle ml-2" data-toggle="buttons">
                        <label class="btn btn-secondary active">
                            <input type="radio" name="btn-radio" checked="">전체
                        </label>
                        <label class="btn btn-secondary">
                            <input type="radio" name="btn-radio"> 접수
                        </label>
                        <label class="btn btn-secondary">
                            <input type="radio" name="btn-radio"> 발급완료
                        </label>
                        <label class="btn btn-secondary">
                            <input type="radio" name="btn-radio"> 미작성
                        </label>
                    </div>
                </div>
            </h6>

            <div class="card-datatable table-responsive pt-0 pb-3">
                <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">

                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead>
                                <tr role="row">
                                    <th class="text-center px-2" style="width:60px">No</th>
                                    <th class="text-center px-2" style="width:80px">발급상태</th>
                                    <th class="text-center px-2" style="width:60px">구분</th>
                                    <th class="text-center px-2" style="width:180px">일련번호</th>
                                    <th class="text-center px-2" style="width:80px">발급일</th>
                                    <th class="text-center px-2" style="width:60px">발급횟수</th>
                                    <th class="text-center px-2" style="width:200px">신청자</th>
                                    <th class="text-center px-2" style="width:200px">분야</th>
                                    <th class="text-center px-2" style="width:80px">입주일</th>
                                    <th class="text-center px-2" style="width:80px">퇴거일</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="">
                                    <td class="text-center">1</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm"  data-toggle="modal" data-target="#modals-grade-write">작성하기</a></td>
                                    <td class="text-center">자율</td>
                                    <td class="text-center">-</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">1회</td>
                                    <td class="text-center">맛있는 농부(주)</td>
                                    <td class="text-center">스마트팜/센서</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">2021.00.00</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">2</td>
                                    <td class="text-center">발급</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">제20XXX-XXXXXX호</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">신청자명</td>
                                    <td class="text-center">분야분야</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">2021.00.00</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">3</td>
                                    <td class="text-center">발급</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">제20XXX-XXXXXX호</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">신청자명</td>
                                    <td class="text-center">분야분야</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">2021.00.00</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">4</td>
                                    <td class="text-center">발급</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">제20XXX-XXXXXX호</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">신청자명</td>
                                    <td class="text-center">분야분야</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">2021.00.00</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">5</td>
                                    <td class="text-center">발급</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">제20XXX-XXXXXX호</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">신청자명</td>
                                    <td class="text-center">분야분야</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">2021.00.00</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">6</td>
                                    <td class="text-center">발급</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">제20XXX-XXXXXX호</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">신청자명</td>
                                    <td class="text-center">분야분야</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">2021.00.00</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">7</td>
                                    <td class="text-center">발급</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">제20XXX-XXXXXX호</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">신청자명</td>
                                    <td class="text-center">분야분야</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">2021.00.00</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">8</td>
                                    <td class="text-center">발급</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">제20XXX-XXXXXX호</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">신청자명</td>
                                    <td class="text-center">분야분야</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">2021.00.00</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">9</td>
                                    <td class="text-center">발급</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">제20XXX-XXXXXX호</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">신청자명</td>
                                    <td class="text-center">분야분야</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">2021.00.00</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">10</td>
                                    <td class="text-center">발급</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">제20XXX-XXXXXX호</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">신청자명</td>
                                    <td class="text-center">분야분야</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">2021.00.00</td>
                                </tr>
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
        <div class="modal fade" id="modals-grade-write">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">실증성적서 발급</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12 text-right">
                                <a href="#none" class="btn btn-underline"  data-toggle="modal" data-target="#modals-grade-history">발급 이력</a>
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
                        <div class="form-row">
                            <div class="form-group col col-md-12 mb-0">
                                <label class="form-label d-block text-muted">발급 신청서</label>
                                <div class="d-block mb-1">
                                    <span>서류이름.jpg</span><a href="#none" class="btn btn-outline-default ml-2"><i class="lnr lnr-download"></i> 내려받기</a>
                                </div>
                            </div>
                        </div>

                        <hr>

                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">일련번호</label>
                                <input type="text" class="form-control d-inline-block w-lg-auto" value="제20XXX-XXXX호">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">성능확인서</label>
                                <input type="file" class="custom-file">
                                <small class="text-muted">관인이 찍인 “스마트팜 기술·제품 성능확인서”를 첨부해 주십시오.</small>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary">전송</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="modal fade" id="modals-grade-history">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">발급 이력</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12 ">
                                <span class="text-muted">총 발급 수 </span><span class="font-weight-semibold">2회</span>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">No.</label>
                                <span>2</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">발급일</label>
                                <span>YYYY.MM.DD</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">발급자</label>
                                <span>김대리</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">성적서</label>
                                <a href="#none" class="btn btn-outline-default btn-sm"><i class="lnr lnr-download"></i>성적서 다운로드</a>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">신청가</label>
                                <span>홍신청</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">신청서</label>
                                <a href="#none" class="btn btn-outline-default btn-sm"><i class="lnr lnr-download"></i> 신청서 다운로드</a>
                            </div>
                        </div>

                        <hr class="mt-0">

                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">No.</label>
                                <span>1</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">발급일</label>
                                <span>YYYY.MM.DD</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">발급자</label>
                                <span>김대리</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">성적서</label>
                                <a href="#none" class="btn btn-outline-default btn-sm"><i class="lnr lnr-download"></i>성적서 다운로드</a>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">신청가</label>
                                <span>홍신청</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">신청서</label>
                                <a href="#none" class="btn btn-outline-default btn-sm"><i class="lnr lnr-download"></i> 신청서 다운로드</a>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary">전송</button>
                    </div>
                </form>
            </div>
        </div>

    </div>

<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
<!-- / Layout footer -->

<!-- / Page content -->
