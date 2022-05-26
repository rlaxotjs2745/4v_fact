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
                                    <td class="text-center" style="width:24%"><input type="text" class="form-control form-control-sm" value="" name="admin_name"></td>
                                    <th class="text-center bg-light" style="width:13%">일반전화번호</th>
                                    <td class="text-center" style="width:29%"><input type="text" class="form-control form-control-sm" value="" name="tel_num"></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">휴대폰 번호</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="" name="mphone_num"></td>
                                    <th class="text-center bg-light">이메일</th>
                                    <td class="text-center"><input type="email" class="form-control form-control-sm" value="" name="email"></td>
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
                                            <c:forEach items="${corps}" var="corp" varStatus="status">
                                                <option class="corps_option form-control form-control-sm" value="${corps.idx_corp_info}">${corp.corp_name_kor}</option>
                                            </c:forEach>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">직위</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="부장" name="job_title"></td>
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
                                    <%--                                        String admin_id;//	varchar2	255					어드민 아이디	이메일 기본, 변경 가능--%>
                                    <%--                                        String admin_pw;//	varchar2	255					어드민 패스워드	최소 8자리, 단방향 암호화--%>
                                    <%--                                        String admin_name;//	varchar2	40					어드민  이름--%>
                                    <%--                                        int corporate;//	number	4		0			소속	0:진흥원(관리기관), 1:센터, 2:지자체, 99:기타--%>
                                    <%--                                        String corporate_name;//	varchar2	40					 소속기관 이름--%>
                                    <%--                                        String department;//	varchar2	40					부서--%>
                                    <%--                                        String job_title;//	varchar2	40					직위--%>
                                    <%--                                        int auth_status;//	number	4		0			인증 여부	0:인증안함, 1:이메일 인증, 2:휴대폰 점유인증, 3:실명인증, 4:아이핀인증--%>
                                    <%--                                        String tel_num;//	varchar2	20					일반전화번호--%>
                                    <%--                                        String mphone_num;//	varchar2	20					휴대폰번호--%>
                                    <%--                                        String email;//	varchar2	255					이메일--%>
                                    <%--                                        int admin_type;//	number	4		0			어드민  형태	0:일반관리자, 1:실증책임자, 2:재배사, 4:관계기관, 512:슈퍼관리자--%>
                                    <%--                                        long auth_admin_idx;//	number	32				◯	최초 등록 어드민--%>
                                    <%--                                        int sign_in_type;//	number	4					가입 형태	0:슈퍼 관리자, 1:일반관리자--%>
                                    <%--                                        Date reg_date;//	date						최초 등록 일시--%>
                                    <%--                                        Date last_upd_date;//	date						최종 수정 일시--%>
                                    <th class="text-center align-middle bg-light" style="width:13%" rowspan="2">시스템 정보</th>
                                    <th class="text-center bg-light" style="width:14%" >웹ID</th>
                                    <td class="text-center" style="width:25%" colspan="3">
                                        <input type="text" id="web_id" class="form-control form-control-sm d-inline-block align-middle mr-1" value="" style="width:calc(100% - 80px)" name="admin_id">
                                        <small id="web_id_guide"></small>
                                        <a href="#none" id="web_id_check" class="btn btn-sm btn-default">중복확인</a>
                                    </td>
                                    <th class="text-center bg-light" style="width:13%">비밀번호</th>
                                    <td class="" colspan="2" style="width:34%"><small>등록한 이메일로 초기 비밀번호가 발송됩니다.</small></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">시스템권한</th>
                                    <td class="" colspan="5">
                                        <select name="sign_in_type" id="" class="custom-select custom-select-sm w-auto">
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
                    <button type="submit" class="btn btn-primary">저장</button>
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
    <c:forEach items="${corps}" var="corp">
    modelArr.push({
        idx_corp_info: ${corp.idx_corp_info},
        corp_name_kor: ${corp.corp_name_kor},
        company_num: ${corp.company_num},
        tel_num: ${corp.tel_num},
        fax_num: ${corp.fax_num},
        homepage: ${corp.homepage},
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
                $("#corp_telnum").val(corp.tel_num);
                $("#corp_homepage").val(corp.homepage);
                $("#corp_fax").val(corp.fax_num);
            }
        }
    })

    $("#web_id_check").click(function(){
        var user_id = $("#web_id").val();
        if(user_id.length == 0){
            alert("아이디가 입력되지 않았습니다");
            return;
        }
        var param = {"user_id":user_id};

        if(!CheckEmail(user_id)){
            alert("아이디는 이메일형식입니다");
            return;
        }

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
</script>
<!-- / Layout footer -->

<!-- / Page content -->
