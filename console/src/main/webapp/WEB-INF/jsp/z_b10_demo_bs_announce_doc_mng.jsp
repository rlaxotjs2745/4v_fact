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
            <div>사업공고문 관리</div>
        </h4>

        <div class="row">
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="resources/assets/img/img_business_all.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">전체</div>
                                <div class="text-large">123</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="resources/assets/img/img_business_on.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">전시중</div>
                                <div class="text-large">456</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="resources/assets/img/img_business_week.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">1주일 이내 완료</div>
                                <div class="text-large">78</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="resources/assets/img/img_business_off.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">전시 종료</div>
                                <div class="text-large">910</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <hr class="mt-0">

        <div class="card">
            <h6 class="card-header with-elements">
                <div class="card-header-title">전시중 / 중요공고</div>
            </h6>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div id="article-list_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">

                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead>
                                <tr role="row">
                                    <th class="text-center sorting" style="width:60px">상태</th>
                                    <th class="text-center px-2" style="width:50px">수정</th>
                                    <th class="text-center px-2" style="width:50px">복사</th>
                                    <th class="text-center sorting" style="width:100px">공고문 번호</th>
                                    <th class="text-center sorting" style="width:300px">공고문 제목</th>
                                    <th class="text-center sorting" style="width:80px">열람 수(회)</th>
                                    <th class="text-center sorting" style="width:80px">지원 현황</th>
                                    <th class="text-center sorting" style="width:110px">전시 시작일, 시간</th>
                                    <th class="text-center sorting" style="width:110px">전시 종료일, 시간</th>
                                    <th class="text-center sorting" style="width:80px">작성자</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="">
                                    <td class="text-center">전시중 / 중요</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">수정</a></td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">복사</a></td>
                                    <td class="">12345678901</td>
                                    <td class=""><a href="#none" data-toggle="modal" data-target="#modals-business-view">공고문제목 제목 공고문 공고문제목 제목 공고문</a></td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">수정</a></td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">복사</a></td>
                                    <td class="">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">수정</a></td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">복사</a></td>
                                    <td class="">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">수정</a></td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">복사</a></td>
                                    <td class="">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">수정</a></td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">복사</a></td>
                                    <td class="">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
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
        <div class="d-flex justify-content-end align-items-end w-100 mt-2">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modals-business-write">신규 공고문 작성</button>
        </div>


        <div class="card mt-4">
            <h6 class="card-header with-elements">
                <div class="card-header-title">사업 공고문 관리</div>
            </h6>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">

                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead>
                                <tr role="row">
                                    <th class="text-center sorting" style="width:60px">상태</th>
                                    <th class="text-center px-2" style="width:50px">수정</th>
                                    <th class="text-center px-2" style="width:50px">복사</th>
                                    <th class="text-center sorting" style="width:100px">공고문 번호</th>
                                    <th class="text-center sorting" style="width:300px">공고문 제목</th>
                                    <th class="text-center sorting" style="width:80px">열람 수(회)</th>
                                    <th class="text-center sorting" style="width:80px">지원 현황</th>
                                    <th class="text-center sorting" style="width:110px">전시 시작일, 시간</th>
                                    <th class="text-center sorting" style="width:110px">전시 종료일, 시간</th>
                                    <th class="text-center sorting" style="width:80px">작성자</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="">
                                    <td class="text-center">전시전</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">수정</a></td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">복사</a></td>
                                    <td class="">12345678901</td>
                                    <td class=""><a href="#none" data-toggle="modal" data-target="#modals-business-view">공고문제목 제목 공고문 공고문제목 제목 공고문</a></td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">임시저장</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">수정</a></td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">복사</a></td>
                                    <td class="">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중단</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">수정</a></td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">복사</a></td>
                                    <td class="">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">수정</a></td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">복사</a></td>
                                    <td class="">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">수정</a></td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">복사</a></td>
                                    <td class="">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">수정</a></td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">복사</a></td>
                                    <td class="">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">수정</a></td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">복사</a></td>
                                    <td class="">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">수정</a></td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">복사</a></td>
                                    <td class="">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">수정</a></td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">복사</a></td>
                                    <td class="">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">수정</a></td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">복사</a></td>
                                    <td class="">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">수정</a></td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">복사</a></td>
                                    <td class="">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div class="dataTables_info" id="article-list_info" role="status" aria-live="polite">Showing 1 to 10 of 50 entries</div>
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
        <div class="d-flex justify-content-end align-items-end w-100 mt-2">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modals-business-write">신규 공고문 작성</button>
        </div>
    </div>


    <!-- Modal template -->
    <div class="modal fade" id="modals-business-write">
        <div class="modal-dialog modal-lg">
            <form class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">사업 공고문 작성</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body pb-2">
                    <div class="form-row">
                        <div class="form-group col-6">
                            <label class="form-label"><span class="text-muted">기업명</span> 맛있는 농부(주)</label>
                            <label class="custom-control custom-checkbox ml-4 d-inline-block">
                                <input type="checkbox" class="custom-control-input" name="check-0">
                                <span class="custom-control-label">중요</span>
                            </label>
                        </div>
                        <div class="form-group col-6">
                            <label class="form-label d-block "><span class="text-muted">문서버전 </span>1</label>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">문서번호</label>
                            <input type="text" class="form-control d-inline-block align-middle" style="width:calc(100% - 130px);" placeholder="문서번호를 입력해 주세요.">
                            <a href="#none" class="btn btn-outline-dark align-middle" >번호 중복체크</a>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">제목</label>
                            <input type="text" class="form-control d-block align-middle" placeholder="제목을 입력해 주세요." >
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">게시 기간</label>
                            <small class="form-text mb-2 text-muted">게시는 시작일의 오전 9시에 게시가 됩니다. 즉시, 게시를 원하면 ‘즉시 게시’를 체크하세요. 게시 시작일은 오늘로 변경이 됩니다.</small>
                            <span class="text-muted mr-1">게시 시작</span>
                            <input type="text" class="form-control d-inline-block datepickers" id="" style="width:120px;">
                            <input type="text" id="timepicker-1" class="form-control d-inline-block ui-timepicker-input" autocomplete="off" style="width:90px;" placeholder="00:00 AM">
                            <span class="text-muted mr-1 ml-2">게시 종료</span>
                            <input type="text" class="form-control d-inline-block datepickers" id="" style="width:120px;">
                            <input type="text" id="timepicker-2" class="form-control d-inline-block ui-timepicker-input" autocomplete="off" style="width:90px;" placeholder="00:00 AM">
                            <span class="ml-2">총 120일</span>
                            <div class="mt-1" style="margin-left:40px;">
                                <label class="custom-control custom-checkbox ml-4 d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="check-2">
                                    <span class="custom-control-label">즉시시작</span>
                                </label>
                                <label class="custom-control custom-checkbox ml-4 d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="check-2">
                                    <span class="custom-control-label">종료없음</span>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">모집 기간 및 모집 수</label>
                            <span class="text-muted mr-1">모집 시작</span>
                            <input type="text" class="form-control d-inline-block datepickers" id="" style="width:120px;">
                            <span class="text-muted mr-1 ml-2">모집 종료</span>
                            <input type="text" class="form-control d-inline-block datepickers" id="" style="width:120px;">
                            <span class="ml-2">총 120일</span>
                            <span class="text-muted mr-1 ml-4">모집 수</span>
                            <input type="text" class="form-control d-inline-block form-man" id="" style="width:120px;"><span class="input-man">명(기업)</span>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">본문</label>
                            <!--에디터 : S-->
                            <div style="width:100%; padding:130px 0;background:#ccc;">에디터영역</div>
                            <!--에디터 : E-->
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">파일 첨부</label>
                            <input type="file" class="form-control-file d-block py-1">
                            <input type="file" class="form-control-file d-block py-1">
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">키워드</label>
                            <input type="text" value="키워드1,키워드22,스마트팜,김제실증단지,사업공고" data-role="tagsinput" class="form-control">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">메모</label>
                            <textarea class="form-control" rows="3" placeholder="메모는 고객에게 노출이 되지 않으며 관리자만 볼 수 있습니다."></textarea>
                        </div>
                    </div>
                </div>

                <div class="modal-footer justify-content-between">
                    <div>
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-default" >미리보기</button>
                    </div>
                    <div>
                        <button type="button" class="btn btn-outline-primary">임시저장</button>
                        <button type="button" class="btn btn-primary">게시&저장</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="modal fade" id="modals-business-view">
        <div class="modal-dialog modal-lg">
            <form class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">사업 공고 현황</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body">

                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">문서번호</label>
                            <span>XX-0000-00000</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">공고 제목</label>
                            <span>도레미파솔라시도 도레미 도미솔도 솔솔라라솔솔미 솔솔미미레 솔솔라라솔솔미 솔미레미도</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">게시기간</label>
                            <span>2021.00. ~ 2021.00.00. (총 00일)</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">모집기간</label>
                            <span>2021.00. ~ 2021.00.00. (총 00일)</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">지원 현황</label>
                            <span class="d-inline-block mb-2">경쟁률 000:1</span>
                            <div class="progress">
                                <div class="text-muted align-middle d-inline-block mr-2">모집 수</div>
                                <div class="progress-bar" style="width: 35%;"></div>
                                <div class="text-primary align-middle d-inline-block ml-2">600</div>
                            </div>
                            <div class="progress">
                                <div class="text-muted align-middle d-inline-block mr-2">지원 수</div>
                                <div class="progress-bar" style="width: 45%;"></div>
                                <div class="text-primary align-middle d-inline-block ml-2">900</div>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">공고 내용</label>
                            <a href="#none" class="btn btn-underline">자세히 보기</a>
                        </div>
                    </div>

                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                </div>
            </form>
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
