<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
        <div>직원 관리</div>
    </h4>
    <div class="row">
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">관리 직원수</div>
                        <div class="text-large">5200</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">재단소속</div>
                        <div class="text-large">2590</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">지자체</div>
                        <div class="text-large">000</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">기타 유관기관</div>
                        <div class="text-large">000</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="card px-4 pt-4 ">
        <div class="form-row mb-4">
            <div class="col-lg-10 col-md-6 ">
                <label class="form-label text-muted">직원 분류</label>
                <div class="form-inline mt-2">
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="checkbox" class="custom-control-input">
                        <span class="custom-control-label">전체</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="checkbox" class="custom-control-input">
                        <span class="custom-control-label">재단 소속</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="checkbox" class="custom-control-input">
                        <span class="custom-control-label">센터 소속</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="checkbox" class="custom-control-input">
                        <span class="custom-control-label">지자체 소속</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="checkbox" class="custom-control-input">
                        <span class="custom-control-label">기타</span>
                    </label>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 text-right">
                <label class="form-label d-none d-md-block">&nbsp;</label>
                <button type="button" class="btn btn-success">조회</button>
            </div>
        </div>
    </div>

    <hr>

    <div class="card">
        <h6 class="card-header with-elements">
            <div class="card-header-title">직원 명단</div>
            <div class="card-header-elements ml-auto">
                <button type="button" class="btn btn-success"  data-toggle="modal" data-target="#modal-staff-write">+ 등록</button>
                <button type="button" class="btn btn-success"  data-toggle="modal" data-target="#modal-staff-upload">+ 일괄등록</button>
            </div>
        </h6>

        <div class="card-datatable table-responsive py-2">
            <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12 col-md-6">
                        <label class="mr-3">총 : <strong>150</strong>명</label>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div id="" class="dataTables_filter"><label>찾기:<input type="search" class="form-control form-control-sm" placeholder="소속, 이름, 전화번호" aria-controls="article-list"></label></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                            <thead>
                            <tr role="row">
                                <th class="text-center px-2" style="width:40px">No</th>
                                <th class="text-center px-2" style="width:80px">직원명</th>
                                <th class="text-center px-2" style="width:80px">구분</th>
                                <th class="text-center px-2" style="width:80px">시스템 권한</th>
                                <th class="text-center px-2" style="width:150px">소속</th>
                                <th class="text-center px-2" style="width:70px">부서</th>
                                <th class="text-center px-2" style="width:70px">직급</th>
                                <th class="text-center px-2" style="width:70px">직무</th>
                                <th class="text-center px-2" style="width:130px">사무실 전화번호</th>
                                <th class="text-center px-2" style="width:130px">휴대폰 번호</th>
                                <th class="text-center px-2" style="width:130px">팩스번호</th>
                                <th class="text-center px-2" style="width:150px">이메일</th>
                                <th class="text-center px-2" style="width:200px">메모</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="">
                                <td class="text-center">1</td>
                                <td class="text-center"><a href="#none" class="btn btn-underline"  data-toggle="modal" data-target="#modals-staff-view">가나다</a></td>
                                <td class="text-center">재단</td>
                                <td class="text-center">SA</td>
                                <td class="text-center">농업기술실용화재단</td>
                                <td class="text-center">-</td>
                                <td class="text-center">본부장</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">xxxx@xxxxx.xxx</td>
                                <td class=""><span class="text-truncate d-inline-block" style="width:150px;">Lorem ipsum dolor</span></td>
                            </tr>
                            <tr class="">
                                <td class="text-center">2</td>
                                <td class="text-center">가나다</td>
                                <td class="text-center">재단</td>
                                <td class="text-center">BM</td>
                                <td class="text-center">농업기술실용화재단</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">xxxx@xxxxx.xxx</td>
                                <td class=""><span class="text-truncate d-inline-block" style="width:150px;">Lorem ipsum dolor</span></td>
                            </tr>
                            <tr class="">
                                <td class="text-center">3</td>
                                <td class="text-center">가나다</td>
                                <td class="text-center">재단</td>
                                <td class="text-center">BM</td>
                                <td class="text-center">김제</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">xxxx@xxxxx.xxx</td>
                                <td class=""><span class="text-truncate d-inline-block" style="width:150px;">Lorem ipsum dolor</span></td>
                            </tr>
                            <tr class="">
                                <td class="text-center">4</td>
                                <td class="text-center">가나다</td>
                                <td class="text-center">재단</td>
                                <td class="text-center">BM</td>
                                <td class="text-center">김제</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">xxxx@xxxxx.xxx</td>
                                <td class=""><span class="text-truncate d-inline-block" style="width:150px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                            </tr>
                            <tr class="">
                                <td class="text-center">5</td>
                                <td class="text-center">가나다</td>
                                <td class="text-center">재단</td>
                                <td class="text-center">BM</td>
                                <td class="text-center">김제</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">xxxx@xxxxx.xxx</td>
                                <td class=""><span class="text-truncate d-inline-block" style="width:150px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                            </tr>
                            <tr class="">
                                <td class="text-center">6</td>
                                <td class="text-center">가나다</td>
                                <td class="text-center">재단</td>
                                <td class="text-center">BM</td>
                                <td class="text-center">전라북도/XXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">xxxx@xxxxx.xxx</td>
                                <td class=""><span class="text-truncate d-inline-block" style="width:150px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                            </tr>
                            <tr class="">
                                <td class="text-center">7</td>
                                <td class="text-center">XXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">xxxx@xxxxx.xxx</td>
                                <td class=""><span class="text-truncate d-inline-block" style="width:150px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                            </tr>
                            <tr class="">
                                <td class="text-center">8</td>
                                <td class="text-center">XXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">xxxx@xxxxx.xxx</td>
                                <td class=""><span class="text-truncate d-inline-block" style="width:150px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                            </tr>
                            <tr class="">
                                <td class="text-center">9</td>
                                <td class="text-center">XXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">xxxx@xxxxx.xxx</td>
                                <td class=""><span class="text-truncate d-inline-block" style="width:150px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                            </tr>
                            <tr class="">
                                <td class="text-center">10</td>
                                <td class="text-center">XXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">XXXXXX</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">000-0000-0000</td>
                                <td class="text-center">xxxx@xxxxx.xxx</td>
                                <td class=""><span class="text-truncate d-inline-block" style="width:150px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
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

    <div class="d-flex justify-content-end align-items-end demo-inline-spacing w-100 mt-3">
        <a href="#none" class="btn btn-success" data-toggle="modal" data-target="#modal-staff-write">+ 등록</a>
        <button type="button" class="btn btn-success mr-0" data-toggle="modal" data-target="#modal-staff-upload">+ 일괄등록</button>
    </div>

    <!-- Modal template -->
    <div class="modal fade" id="modals-staff-view">
        <div class="modal-dialog modal-lg">
            <form class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">직원 정보 확인</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body pb-2">

                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <table id="" class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                <tbody>
                                <tr class="">
                                    <th class="text-center align-middle bg-light" rowspan="3" style="width:12%">개인정보</th>
                                    <th class="text-center bg-light" style="width:12%">이름</th>
                                    <td class="text-center" style="width:27%">홍길동</td>
                                    <th class="text-center bg-light" style="width:13%">일반전화번호</th>
                                    <td class="text-center" style="width:26%">000-0000-0000</td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">휴대폰 번호</th>
                                    <td class="text-center">000-0000-0000</td>
                                    <th class="text-center bg-light">이메일</th>
                                    <td class="text-center">abc@aaaaaa.com</td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">주소</th>
                                    <td class="" colspan="3">제주도 서귀포시 XXXXXXX XXXXXXX</td>
                                </tr>
                                <tr class="">
                                    <th class="text-center align-middle bg-light" rowspan="3">소속 정보</th>
                                    <th class="text-center bg-light">단체명</th>
                                    <td class="text-center">맛있는 농부(주)</td>
                                    <th class="text-center bg-light">부서</th>
                                    <td class="text-center">디지털농업본부/XXX팀</td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">직위</th>
                                    <td class="text-center">계장</td>
                                    <th class="text-center bg-light">전화번호</th>
                                    <td class="text-center">000-0000-0000</td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">팩스</th>
                                    <td class="text-center">000-0000-0000</td>
                                    <th class="text-center bg-light">홈페이지</th>
                                    <td class="text-center">www.asdfasdfasdf.com</td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">센터 정보</th>
                                    <th class="text-center bg-light">담당 업무</th>
                                    <td class="text-center">XXXXXXXX</td>
                                    <th class="text-center bg-light">관리번호</th>
                                    <td class="text-center"></td>
                                </tr>
                                </tbody>
                            </table>
                            <table id="" class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                <tbody>
                                <tr>
                                    <th class="text-center align-middle bg-light" style="width:14%" rowspan="2">시스템 정보</th>
                                    <th class="text-center bg-light" style="width:13%">웹ID</th>
                                    <td class="text-center" style="width:15%">dongdong</td>
                                    <th class="text-center bg-light" style="width:15%">비밀번호</th>
                                    <td class="text-center" style="width:15%"><a href="#none" class="btn btn-sm btn-default">초기화</a></td>
                                    <th class="text-center bg-light" style="width:15%">정보변경이력</th>
                                    <td class="text-center" style="width:13%"><a href="#none" class="btn btn-sm btn-default" data-toggle="popover" data-html="true"  data-placement="top" data-content="-YYYY.MM.DD. HH:MM 비밀번호 초기화 (변경자 이름) <br>-YYYY.MM.DD. HH:MM 전화번호 변경 (변경자 이름) <br> -YYYY.MM.DD. HH:MM 주소변경 (변경자 이름)" >이력보기</a></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">시스템권한</th>
                                    <td class="" colspan="5">단지책임자</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
                <div class="modal-footer justify-content-end">
                    <div>
                        <button type="button" class="btn btn-default" data-dismiss="modal"  data-toggle="modal" data-target="#modal-staff-modify">수정</button>
                        <button type="button" class="btn btn-primary">확인</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="modal fade" id="modal-staff-modify">
        <div class="modal-dialog modal-lg">
            <form class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">직원 정보 확인</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body pb-2">

                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <table id="" class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                <tbody>
                                <tr class="">
                                    <th class="text-center align-middle bg-light" rowspan="3" style="width:12%">개인정보</th>
                                    <th class="text-center bg-light" style="width:12%">이름</th>
                                    <td class="text-center" style="width:27%"><input type="text" class="form-control form-control-sm" value="홍길동"></td>
                                    <th class="text-center bg-light" style="width:13%">일반전화번호</th>
                                    <td class="text-center" style="width:26%"><input type="text" class="form-control form-control-sm" value="000-0000-0000"></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">휴대폰 번호</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="000-0000-0000"></td>
                                    <th class="text-center bg-light">이메일</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="abc@aaaaaa.com"></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">주소</th>
                                    <td class=""><input type="text" class="form-control form-control-sm" value="제주도 서귀포시 XXXXXXX XXXXXXX"></td>
                                </tr>
                                <tr class="">
                                    <th class="text-center align-middle bg-light" rowspan="3">소속 정보</th>
                                    <th class="text-center bg-light">단체명</th>
                                    <td class=""><input type="text" class="form-control form-control-sm" value="맛있는 농부(주)"></td>
                                    <th class="text-center bg-light">부서</th>
                                    <td class=""><input type="text" class="form-control form-control-sm" value="디지털농업본부/XXXX팀"></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">직위</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="부장"></td>
                                    <th class="text-center bg-light">전화번호</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="000-0000-0000"></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">팩스</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="000-0000-0000"></td>
                                    <th class="text-center bg-light">홈페이지</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="www.asdfasdfasdf.com"></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">센터정보</th>
                                    <th class="text-center bg-light">담당업무</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="XXXXXXXX"></td>
                                    <th class="text-center bg-light">관리번호</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="XXXXXXXX"></td>
                                </tr>
                                </tbody>
                            </table>
                            <table id="" class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                <tbody>
                                <tr>
                                    <th class="text-center align-middle bg-light"  style="width:14%" rowspan="2">시스템 정보</th>
                                    <th class="text-center bg-light" style="width:13%">웹ID</th>
                                    <td class="text-center" style="width:15%">dongdong</td>
                                    <th class="text-center bg-light" style="width:15%">비밀번호</th>
                                    <td class="text-center" style="width:15%"><a href="#none" class="btn btn-sm btn-default">초기화</a></td>
                                    <th class="text-center bg-light" style="width:15%">정보변경이력</th>
                                    <td class="text-center" style="width:13%"><a href="#none" class="btn btn-sm btn-default" data-toggle="popover" data-html="true"  data-placement="top" data-content="-YYYY.MM.DD. HH:MM 비밀번호 초기화 (변경자 이름) <br>-YYYY.MM.DD. HH:MM 전화번호 변경 (변경자 이름) <br> -YYYY.MM.DD. HH:MM 주소변경 (변경자 이름)" >이력보기</a></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">시스템권한</th>
                                    <td class="" colspan="5">
                                        <select name="" id="" class="custom-select custom-select-sm w-auto">
                                            <option value="">C운영자</option>
                                            <option value="">C마스터</option>
                                        </select>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
                <div class="modal-footer justify-content-between">
                    <div>
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-outline-danger">제거</button>
                    </div>
                    <button type="button" class="btn btn-primary">저장</button>
                </div>
            </form>
        </div>
    </div>

    <div class="modal fade" id="modal-staff-write">
        <div class="modal-dialog modal-lg">
            <form class="modal-content" action="admin_join" method="post">
                <div class="modal-header">
                    <h5 class="modal-title">직원 정보 등록</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body pb-2">

                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <table class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info">
                                <tbody>
                                <tr class="">
                                    <th class="text-center align-middle bg-light" rowspan="3" style="width:12%">개인정보</th>
                                    <th class="text-center bg-light" style="width:12%">이름</th>
                                    <td class="text-center" style="width:24%"><input type="text" class="form-control form-control-sm" value="" id="admin_name"></td>
                                    <th class="text-center bg-light" style="width:13%">일반전화번호</th>
                                    <td class="text-center" style="width:29%"><input type="text" class="form-control form-control-sm" value="" id="tel_num"></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">휴대폰 번호</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="" id="mphone_num"></td>
                                    <th class="text-center bg-light">이메일</th>
                                    <td class="text-center"><input type="email" class="form-control form-control-sm" value=""></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">주소</th>
                                    <td class="" colspan="3">
                                        <%--                                            <input type="text" class="form-control form-control-sm" placeholder="주소">--%>
                                        <%--                                            <input type="text" class="form-control form-control-sm" placeholder="상세 주소">--%>
                                        <input type="text" id="addr_main" class="form-control form-control-sm d-inline-block align-middle mr-1" value="" placeholder="주소" style="width:calc(100% - 80px)">
                                        <input type="text" class="form-control form-control-sm d-inline-block align-middle mr-1" value="" placeholder="상세주소" style="width:calc(100% - 80px)">
                                        <a href="#none" id="addr_search" class="btn btn-sm btn-default">주소 찾기</a>
                                    </td>
                                    <%--                                        <th class="text-center bg-light">상세 주소</th>--%>
                                    <%--                                        <td class=""></td>--%>
                                </tr>
                                <tr class="">
                                    <th class="text-center align-middle bg-light" rowspan="3">소속 정보</th>
                                    <th class="text-center bg-light">단체명</th>
                                    <td class="" colspan="3">
                                        <select id="corp_select" class="form-control form-control-sm" name="corporate_name">
                                            <option class="corps_option form-control form-control-sm" value="" disabled selected>단체 선택</option>
                                            <c:forEach items="${corps}" var="corp" varStatus="status">
                                                <option class="corps_option form-control form-control-sm" value="${corp.idx_corp_info}">${corp.corp_name_kor}</option>
                                            </c:forEach>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">직위</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="" id="job_title"></td>
                                    <th class="text-center bg-light">전화번호</th>
                                    <td class="text-center"><input type="text" id="corp_telnum" class="form-control form-control-sm" value=""></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">팩스</th>
                                    <td class="text-center"><input type="text" id="corp_fax" class="form-control form-control-sm" value=""></td>
                                    <th class="text-center bg-light">홈페이지</th>
                                    <td class="text-center"><input type="text" id="corp_homepage" class="form-control form-control-sm" value=""></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">센터정보</th>
                                    <th class="text-center bg-light">담당업무</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value=""></td>
                                    <th class="text-center bg-light">관리번호</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value=""></td>
                                </tr>
                                </tbody>
                            </table>
                            <table class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                <tbody>
                                <tr>
                                    <th class="text-center align-middle bg-light" style="width: 4.5%" rowspan="2">시스템 정보</th>
                                    <th class="text-center bg-light" style="width: 4.5%; vertical-align: middle;" >웹ID</th>
                                    <td class="" style="width: 25%" colspan="3">
                                        <input type="text" id="web_id" class="form-control form-control-sm d-inline-block align-middle mr-1" value="" style="width: 100px" name="admin_id">
                                        @
                                        <input type="text" id="web_id2" class="form-control form-control-sm d-inline-block align-middle mr-1" value="" style="width: 100px" name="">
                                        <select id="admin_id_select_box" class="form-control form-control-sm d-inline-block align-middle mr-1" style="width: 100px">
                                            <option value="0">직접입력</option>
                                            <option value="naver.com">naver.com</option>
                                            <option value="gmail.com">gmail.com</option>
                                            <option value="hanmail.net">hanmail.net</option>
                                            <option value="daum.net">daum.net</option>
                                            <option value="nate.com">nate.com</option>
                                        </select>
                                        <a href="#none" id="web_id_check" class="btn btn-sm btn-default">중복확인</a>
                                        <br>
                                        <small id="web_id_guide"></small>
                                    </td>
<%--                                    <th class="text-center bg-light" style="width:13%">비밀번호</th>--%>
<%--                                    <td class="" colspan="2" style="width:34%"><small>등록한 이메일로 초기 비밀번호가 발송됩니다.</small></td>--%>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">시스템권한</th>
                                    <td class="" colspan="5">
                                        <select id="sign_in_type" class="custom-select custom-select-sm w-auto">
                                            <option value="1">C운영자</option>
                                            <option value="0">C마스터</option>
                                        </select>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                    <button type="button" id="btn-admin-join" class="btn btn-primary">저장</button>
                </div>
            </form>
        </div>
    </div>

    <div class="modal fade" id="modal-staff-upload">
        <div class="modal-dialog ">
            <form class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">직원정보 일괄등록</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body pb-2">

                    <div class="form-row">
                        <div class="form-group col col-md-12 text-right">
                            <a href="#none" class="btn btn-underline">일괄등록 양식 템플릿 다운로드</a>
                        </div>
                    </div>
                    <hr class="mt-0">
                    <div class="form-row">
                        <div class="form-group col col-md-12 ">
                            <label class="form-label d-block text-muted">파일등록</label>
                            <input type="file" class="custom-file">
                            <small class="text-muted">정보를 입력한 템플릿 XLS 파일을 등록하세요.</small>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                    <button type="button" class="btn btn-primary">저장</button>
                </div>
            </form>
        </div>
    </div>

</div>

<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
    var modelArr = [];
    var corpName = ""
    <c:forEach items="${corps}" var="corp">
    modelArr.push({
        idx_corp_info: "${corp.idx_corp_info}",
        corp_name_kor: "${corp.corp_name_kor}",
        company_num: "${corp.company_num}" ? "${corp.company_num}" : "-",
        tel_num: "${corp.tel_num}" ? "${corp.tel_num}" : "-",
        fax_num: "${corp.fax_num}" ? "${corp.fax_num}" : "-",
        homepage: "${corp.homepage}" ? "${corp.homepage}" : "-",
    })
    </c:forEach>

    $("#addr_search, #addr_main").click(function() {
        new daum.Postcode({
            oncomplete: function (data) {
                $("#addr_main").val(data.roadAddress + " " + data.buildingName);
                // console.log(data);
            }
        }).open();
    })


    $("#corp_select").change(function(){
        for(var corp of modelArr){
            if(corp.idx_corp_info == $("#corp_select").val()){
                corpName = corp.corp_name_kor;
                $("#corp_telnum").val(corp.tel_num);
                $("#corp_homepage").val(corp.homepage);
                $("#corp_fax").val(corp.fax_num);
            }
        }
    })

    $("#admin_id_select_box").change(function(){
        if($("#admin_id_select_box").val() == "0"){
            $("#web_id2").attr("readonly", false);
            $("#web_id2").val("");
        } else {
            $("#web_id2").attr("readonly", true);
            $("#web_id2").val($("#admin_id_select_box").val());
        }
    })

    $("#web_id_check").click(function(){
        var user_id = $("#web_id").val();
        var user_id2 = $("#web_id2").val();
        if(user_id.length == 0 || user_id2.length == 0){
            alert("아이디가 입력되지 않았습니다");
            return;
        }
        var param = {"admin_id":user_id + "@" + user_id2};

        // if(!CheckEmail(user_id)){
        //     alert("아이디는 이메일형식입니다");
        //     return;
        // }

        console.log(param);
        $.ajax({
            type: 'post',
            url :'admin_id_check', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                console.log(result);
                if(result.result_code=="SUCCESS"){
                    $("#web_id_guide").html("사용 가능한 아이디입니다.");
                }
                else {
                    $("#web_id_guide").html("사용 불가능한 아이디입니다.");
                    // $("#").addClass("is-alert");
                }
            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
            }
        });
    });

    $("#btn-admin-join").click(function(){
        if(
            $("#web_id").val() == "" ||
            $("#web_id2").val() == "" ||
            $("#admin_name").val() == "" ||
            corpName == "" ||
            $("#job_title").val() == "" ||
            $("#mphone_num").val() == "" ||
            $("#sign_in_type").val() == ""
        ){
            alert("회원가입에 필요한 데이터가 모두 입력되지 않았습니다.");
            return;
        }

        var param = {
            admin_id: $("#web_id").val() + "@" + $("#web_id2").val(),
            admin_name: $("#admin_name").val(),
            corporate_name: corpName,
            job_title: $("#job_title").val(),
            auth_status: 0,
            tel_num: $("#tel_num").val(),
            mphone_num: $("#mphone_num").val(),
            email: $("#web_id").val() + "@" + $("#web_id2").val(),
            sign_in_type: $("#sign_in_type").val()
        }
        console.log(param);

        $.ajax({
            type: 'post',
            url: 'admin_join',
            data: JSON.stringify(param),
            contentType:"application/json; charset=utf-8;",
            dataType:'json',
            success: function(res){
                if(res.result_code == "SUCCESS"){
                    alert("관리자 등록이 완료되었습니다.\n생성한 계정의 비밀번호는 아이디로 지정한 메일로 전송되었습니다.");
                    $("#modal-staff-write").addClass("fade")
                }
            }
        })

    })
</script>
<!-- / Layout footer -->

<!-- / Page content -->
