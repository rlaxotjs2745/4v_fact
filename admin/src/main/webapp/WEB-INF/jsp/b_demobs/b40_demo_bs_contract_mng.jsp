<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>협약 관리</div>
        </h4>

        <div class="card px-4 pt-4 mb-4">
            <div class="form-row mb-4">
                <div class="col-md-3 ">
                    <label class="form-label text-muted">협약상태</label>
                    <div class="form-inline mt-2">
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">전체</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">협약 필요</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">협약 완료</span>
                        </label>
                    </div>
                </div>
                <div class="col-md-2 ">
                    <label class="form-label text-muted">계약 체결 기한</label>
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
                                <input type="radio" name="btn-radio"> 초과
                            </label>
                        </div>
                    </div>
                </div>
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
                <div class="col-md-3 ">
                    <label class="form-label text-muted">구분</label>
                    <div class="form-inline">
                        <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio" checked="">전체
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio"> 신규
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio"> 연장
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio"> 변경
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
                <div class="card-header-title">사업 공고문 관리</div>
            </h6>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row p-3">
                        <div class="col-sm-12 col-md-12">
                            <label class="mr-3  mb-0">총 : <strong>999</strong>개</label><label class="mr-3  mb-0">협약 필요 : <strong>70</strong>개</label><label class="mr-3  mb-0">협약 완료 : <strong>70</strong>개</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead>
                                <tr role="row">
                                    <th class="text-center px-2" style="width:60px">No</th>
                                    <th class="text-center sorting" style="width:80px">협약</th>
                                    <th class="text-center sorting" style="width:60px">구분</th>
                                    <th class="text-center sorting" style="width:300px">기업명</th>
                                    <th class="text-center sorting" style="width:100px">사업주체</th>
                                    <th class="text-center px-2" style="width:100px">분야</th>
                                    <th class="text-center sorting" style="width:100px">체결 기한</th>
                                    <th class="text-center sorting" style="width:100px">이용료 납부</th>
                                    <th class="text-center sorting" style="width:100px">계약 여부</th>
                                    <th class="text-center px-2" style="width:300px">메모</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="">
                                    <td class="text-center">1</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm"  data-toggle="modal" data-target="#modals-treaty-write">입력하기</a></td>
                                    <td class="text-center">신규</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">스마트팜</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">납부</td>
                                    <td class="text-center">미체결</td>
                                    <td class=""></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">2</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">완료</a></td>
                                    <td class="text-center">연장</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">자율</td>
                                    <td class="text-center">XXXXXXXX</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">미납</td>
                                    <td class="text-center">체결</td>
                                    <td class="">연장 승인</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">3</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">완료</a></td>
                                    <td class="text-center">연장</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">자율</td>
                                    <td class="text-center">XXXXXXXX</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">미납</td>
                                    <td class="text-center">체결</td>
                                    <td class="">연장 승인</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">4</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">완료</a></td>
                                    <td class="text-center">연장</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">XXXXXXXX</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">미납</td>
                                    <td class="text-center">미체결</td>
                                    <td class=""></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">5</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">완료</a></td>
                                    <td class="text-center">연장</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">XXXXXXXX</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">미납</td>
                                    <td class="text-center">미체결</td>
                                    <td class=""></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">6</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">완료</a></td>
                                    <td class="text-center">연장</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">XXXXXXXX</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">미납</td>
                                    <td class="text-center">미체결</td>
                                    <td class=""></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">7</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">완료</a></td>
                                    <td class="text-center">연장</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">XXXXXXXX</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">미납</td>
                                    <td class="text-center">미체결</td>
                                    <td class=""></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">8</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">완료</a></td>
                                    <td class="text-center">연장</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">XXXXXXXX</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">미납</td>
                                    <td class="text-center">미체결</td>
                                    <td class=""></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">9</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">완료</a></td>
                                    <td class="text-center">연장</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">XXXXXXXX</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">미납</td>
                                    <td class="text-center">미체결</td>
                                    <td class=""></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">10</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">완료</a></td>
                                    <td class="text-center">연장</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">위탁</td>
                                    <td class="text-center">XXXXXXXX</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">미납</td>
                                    <td class="text-center">미체결</td>
                                    <td class=""></td>
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
        <div class="modal fade" id="modals-treaty-write">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">협약 현황 입력</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">기업명</label>
                                <span>행복한 농장(주)</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">사업자 등록 번호</label>
                                <span>000-00-00000</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">담당자</label>
                                <span>김홍길</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">연락처</label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row mb-3">
                            <select name="" id="" class="custom-select">
                                <option value="">기업정보 상세</option>
                                <option value="">기업정보 상세</option>
                                <option value="">기업정보 상세</option>
                                <option value="">기업정보 상세</option>
                                <option value="">기업정보 상세</option>
                                <option value="">기업정보 상세</option>
                            </select>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">구분</label>
                                <span>신규</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">분야</label>
                                <span>스마트팜</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">체결기한</label>
                                <span>2021.00.00. 18:00</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">이용료 납부</label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-4" type="radio" class="custom-control-input">
                                    <span class="custom-control-label">미납</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-4" type="radio" class="custom-control-input">
                                    <span class="custom-control-label">납부</span>
                                </label>
                                <span class="font-weight-semibold">납부액 : 90,000,000원</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">계약</label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-5" type="radio" class="custom-control-input">
                                    <span class="custom-control-label">체결 전</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="custom-5" type="radio" class="custom-control-input">
                                    <span class="custom-control-label">체결</span>
                                </label>
                                <input type="file" class="custom-file">
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
<%@include file ="../layouts/frame_footer.jsp" %>
<!-- / Layout footer -->

<!-- / Page content -->
