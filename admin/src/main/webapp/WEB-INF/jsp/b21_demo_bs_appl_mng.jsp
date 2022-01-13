<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>신규신청 접수</div>
        </h4>

        <div class="card">
            <h6 class="card-header with-elements">
                <div class="card-header-title">사업 공고 등록 (총 450 건)</div>
            </h6>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">

                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead>
                                <tr role="row">
                                    <th class="text-center px-2" style="width:60px">No</th>
                                    <th class="text-center px-2" style="width:100px">심사 종료 예정일</th>
                                    <th class="text-center sorting" style="width:100px">공고문 번호</th>
                                    <th class="text-center sorting" style="width:300px">제목</th>
                                    <th class="text-center px-2" style="width:110px">지원 수/ 모집 수</th>
                                    <th class="text-center px-2" style="width:110px">경쟁률</th>
                                    <th class="text-center px-2" style="width:110px">심의중</th>
                                    <th class="text-center px-2" style="width:110px">보완요청 건</th>
                                    <th class="text-center px-2" style="width:110px">공고문 보기</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="">
                                    <td class="text-center">1</td>
                                    <td class="text-center">2021.04.26</td>
                                    <td class="">12345678901</td>
                                    <td class="">도레미파솔라시도도시라솔파미라도</td>
                                    <td class="text-right">540 / 60</td>
                                    <td class="text-right">2 : 1</td>
                                    <td class="text-right">2,510</td>
                                    <td class="text-right">241</td>
                                    <td class="text-center"><a href="#none" class="btn btn-underline" data-toggle="modal" data-target="#modals-result-view">보기</a></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">2</td>
                                    <td class="text-center">오늘까지</td>
                                    <td class="">12345678901</td>
                                    <td class="">도레미파솔라시도도시라솔파미라도</td>
                                    <td class="text-right">540 / 60</td>
                                    <td class="text-right">2 : 1</td>
                                    <td class="text-right">2,510</td>
                                    <td class="text-right">241</td>
                                    <td class="text-center"><a href="#none" class="btn btn-underline" data-toggle="modal" data-target="#modals-result-view">보기</a></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">3</td>
                                    <td class="text-center">2021.04.26</td>
                                    <td class="">12345678901</td>
                                    <td class="">도레미파솔라시도도시라솔파미라도</td>
                                    <td class="text-right">540 / 60</td>
                                    <td class="text-right">2 : 1</td>
                                    <td class="text-right">2,510</td>
                                    <td class="text-right">241</td>
                                    <td class="text-center"><a href="#none" class="btn btn-underline" data-toggle="modal" data-target="#modals-result-view">보기</a></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">4</td>
                                    <td class="text-center">2021.04.26</td>
                                    <td class="">12345678901</td>
                                    <td class="">도레미파솔라시도도시라솔파미라도</td>
                                    <td class="text-right">540 / 60</td>
                                    <td class="text-right">2 : 1</td>
                                    <td class="text-right">2,510</td>
                                    <td class="text-right">241</td>
                                    <td class="text-center"><a href="#none" class="btn btn-underline" data-toggle="modal" data-target="#modals-result-view">보기</a></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">5</td>
                                    <td class="text-center">2021.04.26</td>
                                    <td class="">12345678901</td>
                                    <td class="">도레미파솔라시도도시라솔파미라도</td>
                                    <td class="text-right">540 / 60</td>
                                    <td class="text-right">2 : 1</td>
                                    <td class="text-right">2,510</td>
                                    <td class="text-right">241</td>
                                    <td class="text-center"><a href="#none" class="btn btn-underline" data-toggle="modal" data-target="#modals-result-view">보기</a></td>
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

        <hr>

        <div class="row">
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">전체</div>
                            <div class="text-large">520</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">경쟁률</div>
                            <div class="text-large">85:1</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">검토 보류</div>
                            <div class="text-large">25</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">사용 승인</div>
                            <div class="text-large">000</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card">
            <h6 class="card-header with-elements">
                <div class="card-header-title">총 XXX개 신청 <span class="normal">접수 완료 : <strong>70</strong>개</span><span>보완 : <strong>70</strong>개</span><span>미 검토 : <strong>70</strong>개</span></div>
                <div class="card-header-elements ml-auto">
                    <button type="button" class="btn btn-sm  btn-outline-default"><i class="lnr lnr-download"></i> 신청서 전체 내려받기</button>
                    <div class="btn-group btn-group-sm btn-group-toggle ml-2" data-toggle="buttons">
                        <label class="btn btn-secondary">
                            <input type="radio" name="btn-radio" checked="">전체
                        </label>
                        <label class="btn btn-secondary">
                            <input type="radio" name="btn-radio"> 검토 전
                        </label>
                        <label class="btn btn-secondary ">
                            <input type="radio" name="btn-radio"> 검토 중
                        </label>
                        <label class="btn btn-secondary ">
                            <input type="radio" name="btn-radio"> 검토완료
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
                                    <th class="text-center px-2" style="width:100px">신청서</th>
                                    <th class="text-center px-2" style="width:100px">고객안내</th>
                                    <th class="text-center px-2" style="width:80px">구분</th>
                                    <th class="text-center sorting" style="width:200px">신청자이름</th>
                                    <th class="text-center sorting" style="width:300px">기업정보</th>
                                    <th class="text-center px-2" style="width:100px">사전상담</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="">
                                    <td class="text-center">1</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm" data-toggle="modal" data-target="#modals-application-view">검토 중</a></td>
                                    <td class="text-center">미발송</td>
                                    <td class="text-center">신규</td>
                                    <td class="text-center">행복한 농장(주)</td>
                                    <td class="text-center">대표자 홍길동, 02-0000-0000</td>
                                    <td class="text-center">김상담</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">2</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">검토하기</a></td>
                                    <td class="text-center">미발송</td>
                                    <td class="text-center">신규</td>
                                    <td class="text-center">데이터 중심 농업(주)</td>
                                    <td class="text-center">대표자 홍길동, 02-0000-0000</td>
                                    <td class="text-center">김상담</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">3</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">보완중</a></td>
                                    <td class="text-center">발송</td>
                                    <td class="text-center">추가</td>
                                    <td class="text-center">기관명</td>
                                    <td class="text-center">대표자 홍길동, 02-0000-0000</td>
                                    <td class="text-center">-</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">4</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">완료</a></td>
                                    <td class="text-center">발송</td>
                                    <td class="text-center">추가</td>
                                    <td class="text-center">기관명</td>
                                    <td class="text-center">대표자 홍길동, 02-0000-0000</td>
                                    <td class="text-center">박상담</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">5</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">완료</a></td>
                                    <td class="text-center">발송</td>
                                    <td class="text-center">신규</td>
                                    <td class="text-center">기관명</td>
                                    <td class="text-center">대표자 홍길동, 02-0000-0000</td>
                                    <td class="text-center">정상담</td>
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
        <div class="modal fade" id="modals-application-view">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">신청서 검토 결과 입력</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body">

                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">기업명</label>
                                <span>행복한 농장(주)</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">담당자</label>
                                <span>홍담당</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">계정</label>
                                <span>ghdrlfehd</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">대표자</label>
                                <span>박대표</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">연락처</label>
                                <span>063-1234-5678</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">홈페이지</label>
                                <span>www.abcdefg.com</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <a href="#none" class="btn btn-outline-primary">기업 정보 등록</a>
                            </div>
                        </div>
                        <hr>

                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">접수번호</label>
                                <span>1234567890</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">신청서</label>
                                <span class="text-muted mr-2">1차</span><button type="button" class="btn btn-sm  btn-outline-default"><i class="lnr lnr-download"></i> 내려받기</button>
                                <span class="text-muted ml-3 mr-2">2차</span><span>요청중</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-8">
                                <label class="form-label d-block text-muted">지원분야<span class="text__essential">*</span></label>
                                <select name="" id="" class="custom-select d-inline-block w-md-auto">
                                    <option value="">사업대분류</option>
                                    <option value="">사업대분류</option>
                                    <option value="">사업대분류</option>
                                    <option value="">사업대분류</option>
                                </select>
                                <select name="" id="" class="custom-select d-inline-block w-md-auto">
                                    <option value="">중 분류</option>
                                    <option value="">중 분류</option>
                                    <option value="">중 분류</option>
                                    <option value="">중 분류</option>
                                </select>
                                <select name="" id="" class="custom-select d-inline-block w-md-auto">
                                    <option value="">세분류</option>
                                    <option value="">세분류</option>
                                    <option value="">세분류</option>
                                    <option value="">세분류</option>
                                    <option value="">세분류</option>
                                </select>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">사업 주체<span class="text__essential">*</span></label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-1" type="radio" class="custom-control-input" checked="">
                                    <span class="custom-control-label">위탁</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-1" type="radio" class="custom-control-input" checked="">
                                    <span class="custom-control-label">자율</span>
                                </label>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col col-md-8">
                                <label class="form-label d-block text-muted">검토 결과<span class="text__essential">*</span></label>
                                <span class="mb-2 d-inline-block">신청서 접수 완료 &gt; </span><span class="text-hero"> 보완(신청서 보완 요청)</span>
                                <input type="file" class="custom-file">
                                <small class="form-text mb-2 text-muted">신청서 보완 요청서 등록이 필요합니다.</small>
                            </div>
                            <div class="form-group col col-md-4 text-right">
                                <label class="form-label d-block text-muted">&nbsp;</label>
                                <a href="#none" class="btn btn-underline">보완 요청서 다운로드</a>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <div>
                            <button type="button" class="btn btn-outline-primary">임시저장</button>
                            <button type="button" class="btn btn-primary">고객공유</button>
                            <button type="button" class="btn btn-primary">저장</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div class="d-flex justify-content-end align-items-end w-100 mt-2">
            <button type="button" class="btn btn-primary"><i class="lnr lnr-download"></i> 신청서 전체 내려받기</button>
        </div>

    </div>
<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
<!-- / Layout footer -->
    <!-- / Page content -->
