<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 10:36 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Page content -->
<%--<div class="layout-content">--%>
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>신규 신청자 심사결과 관리</div>
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
                <div class="card-header-title">총 XXX개 신청 <span class="normal">사용승인 : <strong>70</strong>건</span><span>사용불가 : <strong>70</strong>건</span><span>미 심사 : <strong>70</strong>건</span></div>
                <div class="card-header-elements ml-auto">
                    <div class="btn-group btn-group-sm btn-group-toggle ml-2" data-toggle="buttons">
                        <label class="btn btn-secondary">
                            <input type="radio" name="btn-radio" checked="">전체
                        </label>
                        <label class="btn btn-secondary">
                            <input type="radio" name="btn-radio"> 미 심사
                        </label>
                        <label class="btn btn-secondary ">
                            <input type="radio" name="btn-radio"> 심사 완료
                        </label>
                    </div>
                </div>
            </h6>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">

                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover  no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead>
                                <tr role="row">
                                    <th class="text-center " style="width:60px">No</th>
                                    <th class="text-center " style="width:80px">신청서</th>
                                    <th class="text-center " style="width:80px">신청서 검토</th>
                                    <th class="text-center " style="width:60px">구분</th>
                                    <th class="text-center " style="width:200px">신청자이름</th>
                                    <th class="text-center " style="width:300px">기업정보</th>
                                    <th class="text-center " style="width:100px">심의종류</th>
                                    <th class="text-center " style="width:100px">사전상담</th>
                                    <th class="text-center " style="width:100px">실증책임자</th>
                                    <th class="text-center " style="width:100px">선정평가서</th>
                                    <th class="text-center " style="width:100px">종합의견서</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="">
                                    <td class="text-center">1</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm" data-toggle="modal" data-target="#modals-application-write">입력하기</a></td>
                                    <td class="text-center">미발송</td>
                                    <td class="text-center">신규</td>
                                    <td class="text-center">행복한 농장(주)</td>
                                    <td class="text-center">대표자 홍길동, 02-0000-0000</td>
                                    <td class="text-center">서면심사</td>
                                    <td class="text-center">김상담</td>
                                    <td class="text-center">미지정</td>
                                    <td class="text-center">미등록</td>
                                    <td class="text-center">미등록</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">2</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">사용하기</a></td>
                                    <td class="text-center">미발송</td>
                                    <td class="text-center">신규</td>
                                    <td class="text-center">데이터 중심 농업(주)</td>
                                    <td class="text-center">대표자 홍길동, 02-0000-0000</td>
                                    <td class="text-center">서면심사</td>
                                    <td class="text-center">김상담</td>
                                    <td class="text-center">미지정</td>
                                    <td class="text-center">등록완료</td>
                                    <td class="text-center">등록완료</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">3</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">내려받기</a></td>
                                    <td class="text-center">발송</td>
                                    <td class="text-center">추가</td>
                                    <td class="text-center">기관명</td>
                                    <td class="text-center">대표자 홍길동, 02-0000-0000</td>
                                    <td class="text-center">서면심사</td>
                                    <td class="text-center">-</td>
                                    <td class="text-center">-</td>
                                    <td class="text-center">등록완료</td>
                                    <td class="text-center">등록완료</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">4</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">내려받기</a></td>
                                    <td class="text-center">발송</td>
                                    <td class="text-center">추가</td>
                                    <td class="text-center">기관명</td>
                                    <td class="text-center">대표자 홍길동, 02-0000-0000</td>
                                    <td class="text-center">서면심사</td>
                                    <td class="text-center">김상담</td>
                                    <td class="text-center">미지정</td>
                                    <td class="text-center">등록완료</td>
                                    <td class="text-center">등록완료</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">5</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">내려받기</a></td>
                                    <td class="text-center">발송</td>
                                    <td class="text-center">신규</td>
                                    <td class="text-center">기관명</td>
                                    <td class="text-center">대표자 홍길동, 02-0000-0000</td>
                                    <td class="text-center">서면심사</td>
                                    <td class="text-center">김상담</td>
                                    <td class="text-center">미지정</td>
                                    <td class="text-center">등록완료</td>
                                    <td class="text-center">등록완료</td>
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
        <div class="modal fade" id="modals-application-write">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">심사결과 입력</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">신청자</label>
                                <span>행복한 농장(주)</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">실증책임자</label>
                                <span>지정 필요</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">공고명</label>
                                <span>공고명 텍스트 공고명 텍스트 공고명 텍스트 공고명 텍스트 공고명 텍스트 공고명 텍스트 </span>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">접수번호</label>
                                <span>ㄷ-1234567890</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">선정평가서</label>
                                <input type="file" class="custom-file">
                                <input type="file" class="custom-file">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">선정평가 종합의견서</label>
                                <input type="file" class="custom-file">
                                <input type="file" class="custom-file">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">사용승인</label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-2" type="radio" class="custom-control-input">
                                    <span class="custom-control-label">검토 보류</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-2" type="radio" class="custom-control-input">
                                    <span class="custom-control-label">사용 승인</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-2" type="radio" class="custom-control-input">
                                    <span class="custom-control-label">사용 불가</span>
                                </label>
                            </div>
                        </div>

                        <hr>

                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">실증 책임자 지정</label>
                                <table class="table table-bordered mt-3 mb-0 ">
                                    <thead>
                                    <tr>
                                        <th class="text-center">이름</th>
                                        <th class="text-center">직무</th>
                                        <th class="text-center">지정 건</th>
                                        <th class="text-center">책임자 지정</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td class="text-center">김상담</td>
                                        <td class="text-center">직무 직무 직무 직무</td>
                                        <td class="text-center">5</td>
                                        <td class="text-center">
                                            <label class="custom-control custom-checkbox d-inline-block">
                                                <input type="checkbox" class="custom-control-input" name="check-2">
                                                <span class="custom-control-label">책임자 지정</span>
                                            </label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">박상담</td>
                                        <td class="text-center">직무 직무 직무 직무</td>
                                        <td class="text-center">4</td>
                                        <td class="text-center">
                                            <label class="custom-control custom-checkbox d-inline-block">
                                                <input type="checkbox" class="custom-control-input" name="check-2">
                                                <span class="custom-control-label">책임자 지정</span>
                                            </label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">최상담</td>
                                        <td class="text-center">직무 직무 직무 직무</td>
                                        <td class="text-center">4</td>
                                        <td class="text-center">
                                            <label class="custom-control custom-checkbox d-inline-block">
                                                <input type="checkbox" class="custom-control-input" name="check-2">
                                                <span class="custom-control-label">책임자 지정</span>
                                            </label>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <div>
                            <button type="button" class="btn btn-primary">고객공유</button>
                            <button type="button" class="btn btn-primary">저장</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>

    <!-- Layout footer -->
    <nav class="layout-footer footer bg-footer-theme">
        <div class="container-fluid d-flex flex-wrap justify-content-between text-center container-p-x pb-3">
            <div class="pt-3">
                <span class="footer-text font-weight-bolder">스마트팜 실증단지</span> ©
            </div>
            <div>
                <a href="javascript:void(0)" class="footer-link pt-3">About Us</a>
                <a href="javascript:void(0)" class="footer-link pt-3 ml-4">Help</a>
                <a href="javascript:void(0)" class="footer-link pt-3 ml-4">Contact</a>
                <a href="javascript:void(0)" class="footer-link pt-3 ml-4">Terms &amp; Conditions</a>
            </div>
        </div>
    </nav>
    <!-- / Layout footer -->

<!-- / Page content -->
