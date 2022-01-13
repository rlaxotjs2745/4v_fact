<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 10:41 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Page content -->
<%--<div class="layout-content">--%>
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>고객 관리</div>
        </h4>
        <div class="row">
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">관리 고객수</div>
                            <div class="text-large">5200</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">웹 회원수</div>
                            <div class="text-large">2590</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">정회원(실증 사업중)</div>
                            <div class="text-large">000</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">부회원(실증 참여한 이력)</div>
                            <div class="text-large">000</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card px-4 pt-4 ">
            <div class="form-row mb-4">
                <div class="col-lg-10 col-md-6 ">
                    <label class="form-label text-muted">고객 분류</label>
                    <div class="form-inline mt-2">
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">전체</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">웹일반</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">정회원</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">부회원</span>
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
                <div class="card-header-title">고객 명단</div>
                <div class="card-header-elements ml-auto">
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-person-write">+ 등록</button>
                </div>
            </h6>

            <div class="card-datatable table-responsive py-2">
                <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12 col-md-6">
                            <label class="mr-3">총 : <strong>150</strong>명</label><label class="mr-3">위탁 : <strong>70</strong>명</label><label class="mr-3">자율 : <strong>80</strong>명</label>
                        </div>
                        <div class="col-sm-12 col-md-6">
                            <div id="" class="dataTables_filter"><label>찾기:<input type="search" class="form-control form-control-sm" placeholder="기업/기관명, 기업 대표자, 이름, 전화번호" aria-controls="article-list"></label></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead>
                                <tr role="row">
                                    <th class="text-center px-2" style="width:40px">No</th>
                                    <th class="text-center px-2" style="width:80px">고객명</th>
                                    <th class="text-center px-2" style="width:80px">구분</th>
                                    <th class="text-center px-2" style="width:100px">시스템 권한</th>
                                    <th class="text-center px-2" style="width:120px">소속</th>
                                    <th class="text-center px-2" style="width:80px">직급</th>
                                    <th class="text-center px-2" style="width:100px">회사 전화번호</th>
                                    <th class="text-center px-2" style="width:100px">휴대폰 번호</th>
                                    <th class="text-center px-2" style="width:100px">팩스번호</th>
                                    <th class="text-center px-2" style="width:150px">이메일</th>
                                    <th class="text-center px-2" style="width:200px">메모</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="">
                                    <td class="text-center">1</td>
                                    <td class="text-center"><a href="#none" class="btn btn-underline"  data-toggle="modal" data-target="#modal-person-view">가나다</a></td>
                                    <td class="text-center">정회원</td>
                                    <td class="text-center">C마스터</td>
                                    <td class="text-center">XXXXXXX</td>
                                    <td class="text-center">사장</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">xxxx@xxxxx.xxx</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:200px;">Lorem ipsum dolor</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">2</td>
                                    <td class="text-center">가나다</td>
                                    <td class="text-center">정회원</td>
                                    <td class="text-center">C마스터</td>
                                    <td class="text-center">XXXXXXX</td>
                                    <td class="text-center">사장</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">xxxx@xxxxx.xxx</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:200px;">Lorem ipsum dolor</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">3</td>
                                    <td class="text-center">가나다</td>
                                    <td class="text-center">정회원</td>
                                    <td class="text-center">C마스터</td>
                                    <td class="text-center">XXXXXXX</td>
                                    <td class="text-center">사장</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">xxxx@xxxxx.xxx</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:200px;">Lorem ipsum dolor</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">4</td>
                                    <td class="text-center">가나다</td>
                                    <td class="text-center">정회원</td>
                                    <td class="text-center">C마스터</td>
                                    <td class="text-center">XXXXXXX</td>
                                    <td class="text-center">사장</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">xxxx@xxxxx.xxx</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:200px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">5</td>
                                    <td class="text-center">가나다</td>
                                    <td class="text-center">정회원</td>
                                    <td class="text-center">C마스터</td>
                                    <td class="text-center">XXXXXXX</td>
                                    <td class="text-center">사장</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">xxxx@xxxxx.xxx</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:200px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">6</td>
                                    <td class="text-center">가나다</td>
                                    <td class="text-center">정회원</td>
                                    <td class="text-center">C마스터</td>
                                    <td class="text-center">XXXXXXX</td>
                                    <td class="text-center">사장</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">xxxx@xxxxx.xxx</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:200px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">7</td>
                                    <td class="text-center">가나다</td>
                                    <td class="text-center">정회원</td>
                                    <td class="text-center">C마스터</td>
                                    <td class="text-center">XXXXXXX</td>
                                    <td class="text-center">사장</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">xxxx@xxxxx.xxx</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:200px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">8</td>
                                    <td class="text-center">가나다</td>
                                    <td class="text-center">정회원</td>
                                    <td class="text-center">C마스터</td>
                                    <td class="text-center">XXXXXXX</td>
                                    <td class="text-center">사장</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">xxxx@xxxxx.xxx</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:200px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">9</td>
                                    <td class="text-center">가나다</td>
                                    <td class="text-center">정회원</td>
                                    <td class="text-center">C마스터</td>
                                    <td class="text-center">XXXXXXX</td>
                                    <td class="text-center">사장</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">xxxx@xxxxx.xxx</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:200px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">10</td>
                                    <td class="text-center">가나다</td>
                                    <td class="text-center">정회원</td>
                                    <td class="text-center">C마스터</td>
                                    <td class="text-center">XXXXXXX</td>
                                    <td class="text-center">사장</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">000-0000-0000</td>
                                    <td class="text-center">xxxx@xxxxx.xxx</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:200px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
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
        <div class="modal fade" id="modal-person-view">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">고객 정보 확인</h5>
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
                                        <td class="" colspan="3">맛있는 농부(주)</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">직위</th>
                                        <td class="text-center">부장</td>
                                        <th class="text-center bg-light">전화번호</th>
                                        <td class="text-center">000-0000-0000</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">팩스</th>
                                        <td class="text-center">000-0000-0000</td>
                                        <th class="text-center bg-light">홈페이지</th>
                                        <td class="text-center">www.asdfasdfasdf.com</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <table id="" class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                    <tbody>
                                    <tr>
                                        <th class="text-center align-middle bg-light" style="width:14%">센터 정보</th>
                                        <th class="text-center bg-light" style="width:13%">입주여부</th>
                                        <td class="text-center" style="width:15%">Y</td>
                                        <th class="text-center bg-light" style="width:15%">건물</th>
                                        <td class="text-center" style="width:15%">XXXXXXXX</td>
                                        <th class="text-center bg-light" style="width:15%">관리번호</th>
                                        <td class="text-center" style="width:13%">XXXXXXXX</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center align-middle bg-light" rowspan="2">시스템 정보</th>
                                        <th class="text-center bg-light">웹ID</th>
                                        <td class="text-center">dongdong</td>
                                        <th class="text-center bg-light">비밀번호</th>
                                        <td class="text-center"><a href="#none" class="btn btn-sm btn-default">초기화</a></td>
                                        <th class="text-center bg-light">정보변경이력</th>
                                        <td class="text-center"><a href="#none" class="btn btn-sm btn-default" data-toggle="popover" data-html="true"  data-placement="top" data-content="-YYYY.MM.DD. HH:MM 비밀번호 초기화 (변경자 이름) <br>-YYYY.MM.DD. HH:MM 전화번호 변경 (변경자 이름) <br> -YYYY.MM.DD. HH:MM 주소변경 (변경자 이름)" >이력보기</a></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">시스템권한</th>
                                        <td class="" colspan="5">C운영자</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer justify-content-end">
                        <div>
                            <button type="button" class="btn btn-default" data-dismiss="modal"  data-toggle="modal" data-target="#modal-person-modify">수정</button>
                            <button type="button" class="btn btn-primary">확인</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div class="modal fade" id="modal-person-modify">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">고객 정보 수정</h5>
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
                                        <td class="" colspan="3"><input type="text" class="form-control form-control-sm" value="제주도 서귀포시 XXXXXXX XXXXXXX"></td>
                                    </tr>
                                    <tr class="">
                                        <th class="text-center align-middle bg-light" rowspan="3">소속 정보</th>
                                        <th class="text-center bg-light">단체명</th>
                                        <td class="" colspan="3"><input type="text" class="form-control form-control-sm" value="맛있는 농부(주)"></td>
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
                                    </tbody>
                                </table>
                                <table id="" class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                    <tbody>
                                    <tr>
                                        <th class="text-center align-middle bg-light" style="width:14%">센터 정보</th>
                                        <th class="text-center bg-light" style="width:13%">입주여부</th>
                                        <td class="text-center" style="width:15%">
                                            <select name="" id="" class="custom-select custom-select-sm">
                                                <option value="">Y</option>
                                                <option value="">N</option>
                                            </select>
                                        </td>
                                        <th class="text-center bg-light" style="width:15%">건물</th>
                                        <td class="text-center" style="width:15%"><input type="text" class="form-control form-control-sm" value="XXXXXXXX"></td>
                                        <th class="text-center bg-light" style="width:15%">관리번호</th>
                                        <td class="text-center" style="width:13%"><input type="text" class="form-control form-control-sm" value="XXXXXXXX"></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center align-middle bg-light" rowspan="2">시스템 정보</th>
                                        <th class="text-center bg-light">웹ID</th>
                                        <td class="text-center">dongdong</td>
                                        <th class="text-center bg-light">비밀번호</th>
                                        <td class="text-center"><a href="#none" class="btn btn-sm btn-default">초기화</a></td>
                                        <th class="text-center bg-light">정보변경이력</th>
                                        <td class="text-center"><a href="#none" class="btn btn-sm btn-default" data-toggle="popover" data-html="true"  data-placement="top" data-content="-YYYY.MM.DD. HH:MM 비밀번호 초기화 (변경자 이름) <br>-YYYY.MM.DD. HH:MM 전화번호 변경 (변경자 이름) <br> -YYYY.MM.DD. HH:MM 주소변경 (변경자 이름)" >이력보기</a></td>
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

        <div class="modal fade" id="modal-person-write">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">고객 정보 등록</h5>
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
                                        <td class="" colspan="3"><input type="text" class="form-control form-control-sm" value="제주도 서귀포시 XXXXXXX XXXXXXX"></td>
                                    </tr>
                                    <tr class="">
                                        <th class="text-center align-middle bg-light" rowspan="3">소속 정보</th>
                                        <th class="text-center bg-light">단체명</th>
                                        <td class="" colspan="3"><input type="text" class="form-control form-control-sm" value="맛있는 농부(주)"></td>
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
                                    </tbody>
                                </table>
                                <table id="" class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                    <tbody>
                                    <tr>
                                        <th class="text-center align-middle bg-light" style="width:14%">센터 정보</th>
                                        <th class="text-center bg-light" style="width:13%">입주여부</th>
                                        <td class="text-center" style="width:13%">
                                            <select name="" id="" class="custom-select custom-select-sm">
                                                <option value="">Y</option>
                                                <option value="">N</option>
                                            </select>
                                        </td>
                                        <th class="text-center bg-light" style="width:11%">건물</th>
                                        <td class="text-center" style="width:15%"><input type="text" class="form-control form-control-sm" value="XXXXXXXX"></td>
                                        <th class="text-center bg-light" style="width:15%">관리번호</th>
                                        <td class="text-center" style="width:19%"><input type="text" class="form-control form-control-sm" value="XXXXXXXX"></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center align-middle bg-light" rowspan="2">시스템 정보</th>
                                        <th class="text-center bg-light">웹ID</th>
                                        <td class="text-center" colspan="2"><input type="text" class="form-control form-control-sm d-inline-block align-middle mr-1" value="" style="width:calc(100% - 80px)"><a href="#none" class="btn btn-sm btn-default">중복확인</a></td>
                                        <th class="text-center bg-light">비밀번호</th>
                                        <td class="" colspan="2"><small>등록한 이메일로 초기 비밀번호가 발송됩니다.</small></td>
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
