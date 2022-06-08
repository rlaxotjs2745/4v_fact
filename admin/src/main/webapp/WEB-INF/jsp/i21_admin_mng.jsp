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
                        <div class="text-large">${adminCount}</div>
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
                        <label class="mr-3">총 : <strong>${adminCount}</strong>명</label>
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
                                <th class="text-center px-2" style="width:70px">담당업무</th>
                                <th class="text-center px-2" style="width:70px">직급</th>
                                <th class="text-center px-2" style="width:130px">사무실 전화번호</th>
                                <th class="text-center px-2" style="width:130px">휴대폰 번호</th>
                                <th class="text-center px-2" style="width:150px">이메일</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${adminList}" var="admin" varStatus="status">
                                <tr class="admin-entity" id="${admin.idx_admin}">
                                    <td class="text-center" class="page-count">${admin.page * 10 - 10 + status.count}</td>
                                    <td class="text-center"><a href="#none" class="btn btn-underline"  data-toggle="modal" data-target="#modals-staff-view" class="admin-name">${admin.admin_name}</a></td>
                                    <td class="text-center" class="admin-corp-type">${admin.corporate eq 0 ? "진흥원" : admin.corporate eq 1 ? "센터" : admin.corporate eq 2 ? "지자체" : "기타"}</td>
                                    <td class="text-center" class="admin-type">${admin.sign_in_type eq 1 ? "SA" : "BM"}</td>
                                    <td class="text-center" class="admin-corp">${admin.corporate_name}</td>
                                    <td class="text-center" class="admin-depart">${admin.main_part != null ? admin.main_part : "-"}</td>
                                    <td class="text-center" class="admin-jobTitle">${admin.job_title}</td>
                                    <td class="text-center" class="admin-telnum">${admin.corporate_num}</td>
                                    <td class="text-center" class="admin-mphonenum">${admin.mphone_num}</td>
                                    <td class="text-center" class="admin-emailid">${admin.admin_id}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-5">
                        <div class="dataTables_info" id="" role="status" aria-live="polite">Showing ${adminList[0].page * 10 - 9} to ${adminList[0].page * 10 > adminCount ? adminCount : adminList[0].page * 10} of ${adminList[0].maxvalue} entries</div>
                    </div>
                    <div class="col-sm-12 col-md-7">
                        <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                            <ul class="pagination">
                                <li class="paginate_button page-item previous disabled" id="article-list_previous"><a href="javascript:pageLoad('i21_admin_mng',{page_num:1},'대시보드');"aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li>
                                <li class="paginate_button page-item previous disabled" id="article-list_previous-one"><a href="javascript:pageLoad('i21_admin_mng',{page_num:'${adminList[0].page + pageBool - 5}'},'대시보드');"aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li>
                                <li class="paginate_button page-item " id="page1-button"><a href="javascript:pageLoad('i21_admin_mng',{page_num:'${adminList[0].page + pageBool - 4}'},'대시보드');" aria-controls="article-list" data-dt-idx="1" tabindex="0" class="page-link">${adminList[0].page + pageBool - 4}</a></li>
                                <li class="paginate_button page-item " id="page2-button"><a href="javascript:pageLoad('i21_admin_mng',{page_num:'${adminList[0].page + pageBool - 3}'},'대시보드');" aria-controls="article-list" data-dt-idx="2" tabindex="0" class="page-link">${adminList[0].page + pageBool - 3}</a></li>
                                <li class="paginate_button page-item " id="page3-button"><a href="javascript:pageLoad('i21_admin_mng',{page_num:'${adminList[0].page + pageBool - 2}'},'대시보드');" aria-controls="article-list" data-dt-idx="3" tabindex="0" class="page-link">${adminList[0].page + pageBool - 2}</a></li>
                                <li class="paginate_button page-item " id="page4-button"><a href="javascript:pageLoad('i21_admin_mng',{page_num:'${adminList[0].page + pageBool - 1}'},'대시보드');" aria-controls="article-list" data-dt-idx="4" tabindex="0" class="page-link">${adminList[0].page + pageBool - 1}</a></li>
                                <li class="paginate_button page-item " id="page5-button"><a href="javascript:pageLoad('i21_admin_mng',{page_num:'${adminList[0].page + pageBool}'},'대시보드');" aria-controls="article-list" data-dt-idx="5" tabindex="0" class="page-link">${adminList[0].page + pageBool}</a></li>
                                <li class="paginate_button page-item next" id="article-list_next-one"><a href="javascript:pageLoad('i21_admin_mng',{page_num: '${adminList[0].page + pageBool - 3}'},'대시보드');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li>
                                <li class="paginate_button page-item next" id="article-list_next"><a href="javascript:pageLoad('i21_admin_mng',{page_num: '${adminList[0].maxvalue}'},'대시보드');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li>
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
                                    <td class="text-center" style="width:27%" id="admin-detail-name">홍길동</td>
                                    <th class="text-center bg-light" style="width:13%">일반전화번호</th>
                                    <td class="text-center" style="width:26%" id="admin-detail-telnum">000-0000-0000</td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">휴대폰 번호</th>
                                    <td class="text-center" id="admin-detail-mphonenum">000-0000-0000</td>
<%--                                    <th class="text-center bg-light">이메일</th>--%>
<%--                                    <td class="text-center" id="admin-detail-email">abc@aaaaaa.com</td>--%>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">주소</th>
                                    <td class="" colspan="3" id="admin-detail-addr">제주도 서귀포시 XXXXXXX XXXXXXX</td>
                                </tr>
                                <tr class="">
                                    <th class="text-center align-middle bg-light" rowspan="3">소속 정보</th>
                                    <th class="text-center bg-light">단체명</th>
                                    <td class="text-center" id="admin-detail-corp">맛있는 농부(주)</td>
<%--                                    <th class="text-center bg-light">부서</th>--%>
<%--                                    <td class="text-center" id="admin-detail-depart">디지털농업본부/XXX팀</td>--%>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">직위</th>
                                    <td class="text-center" id="admin-detail-jobTitle">계장</td>
                                    <th class="text-center bg-light">전화번호</th>
                                    <td class="text-center" id="admin-detail-corpnum">000-0000-0000</td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">팩스</th>
                                    <td class="text-center" id="admin-detail-fax">000-0000-0000</td>
                                    <th class="text-center bg-light">홈페이지</th>
                                    <td class="text-center" id="admin-detail-homepage">www.asdfasdfasdf.com</td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">센터 정보</th>
                                    <th class="text-center bg-light">담당 업무</th>
                                    <td class="text-center" >XXXXXXXX</td>
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
<%--                                    <th class="text-center bg-light">이메일</th>--%>
<%--                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="abc@aaaaaa.com"></td>--%>
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
                                    <th class="text-center bg-light">관리 유형</th>
                                    <td class="text-center">
                                        <select id="admin_type" class="form-control form-control-sm">
                                            <option class="form-control form-control-sm" value="" disabled selected>유형 선택</option>
<%--                                            어드민  형태	0:일반관리자, 1:실증책임자, 2:재배사, 4:관계기관, 512:슈퍼관리자--%>
                                            <option class="form-control form-control-sm" value="0">일반 관리자</option>
                                            <option class="form-control form-control-sm" value="1">실증 책임자</option>
                                            <option class="form-control form-control-sm" value="2">재배사</option>
                                            <option class="form-control form-control-sm" value="4">관계 기관</option>
                                            <option class="form-control form-control-sm" value="512">슈퍼 관리자</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">주소</th>
                                    <td class="" colspan="3">
                                        <%--                                            <input type="text" class="form-control form-control-sm" placeholder="주소">--%>
                                        <%--                                            <input type="text" class="form-control form-control-sm" placeholder="상세 주소">--%>
                                        <input type="text" id="addr_main" class="form-control form-control-sm d-inline-block align-middle mr-1" value="" placeholder="주소" style="width:calc(100% - 80px)">
                                        <input type="text" id="addr_detail" class="form-control form-control-sm d-inline-block align-middle mr-1" value="" placeholder="상세주소" style="width:calc(100% - 80px)">
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
                                    <td class="text-center"><input type="text" id="corp_telnum" class="form-control form-control-sm" id="corporate_num" value=""></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">팩스</th>
                                    <td class="text-center"><input type="text" id="corp_fax" class="form-control form-control-sm" id="corporate_fax" value=""></td>
                                    <th class="text-center bg-light">홈페이지</th>
                                    <td class="text-center"><input type="text" id="corp_homepage" class="form-control form-control-sm" id="corporate_homepage" value=""></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">센터정보</th>
                                    <th class="text-center bg-light">담당업무</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="" id="main_part"></td>
                                    <th class="text-center bg-light">관리번호</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="" id="manage_num"></td>
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
    var curPage = "${adminList[0].page}";

    if(curPage != "1"){
        $("#article-list_previous").removeClass("disabled");
        $("#article-list_previous-one").removeClass("disabled");
    }
    if("${pageBool}" == "0"){
        $("#article-list_next").addClass("disabled");
        $("#article-list_next-one").addClass("disabled");
    }


    $.each($(".page-item a"), function(idx,obj){
        if($(obj).text() == "${adminList[0].page}"){
            $(obj).parent().addClass("active");
        }
    })

    var adminList = [];
    <c:forEach items="${adminList}" var="admin">
        adminList.push({
            idx_admin: "${admin.idx_admin}",
            admin_id: "${admin.admin_id}",
            admin_pw: "${admin.admin_pw}",
            admin_name: "${admin.admin_name}",
            corporate: "${admin.corporate}",
            corporate_name: "${admin.corporate_name}",
            corporate_num: "${admin.corporate_num}",
            corporate_fax: "${admin.corporate_fax}",
            corporate_homepage: "${admin.corporate_homepage}",
            job_title: "${admin.job_title}",
            auth_status: "${admin.auth_status}",
            tel_num: "${admin.tel_num}",
            mphone_num: "${admin.mphone_num}",
            admin_type: "${admin.admin_type}",
            main_part: "${admin.main_part}",
            manage_num: "${admin.manage_num}",
            sign_in_type: "${admin.sign_in_type}",
            page: "${admin.page}",
            maxvalue: "${admin.maxvalue}",
        })
    </c:forEach>


    if(adminList[0].maxvalue <= 10){
        $("#page1-button, #page2-button, #page3-button, #page4-button").css("display", "none");
    } else if(adminList[0].maxvalue <= 20){
        $("#page1-button, #page2-button, #page3-button").css("display", "none");
    } else if(adminList[0].maxvalue <= 30){
        $("#page1-button, #page2-button").css("display", "none");
    } else if(adminList[0].maxvalue <= 40){
        $("#page1-button").css("display", "none");
    }



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
            sign_in_type: $("#sign_in_type").val(),
            corporate_num: $("#corporate_num").val(),
            corporate_fax: $("#corporate_fax").val(),
            corporate_homepage: $("#corporate_homepage").val(),
            admin_type: $("#admin_type").val(),
            main_part: $("#main_part").val(),
            manage_num: $("#manage_num").val(),
            admin_addr: $("#addr_main").val() + " " + $("#addr_detail").val()
        }

        $.ajax({
            type: 'post',
            url: 'admin_join',
            data: JSON.stringify(param),
            contentType:"application/json; charset=utf-8;",
            dataType:'json',
            success: function(res){
                if(res.result_code == "SUCCESS"){
                    alert("관리자 등록이 완료되었습니다.\n생성한 계정의 비밀번호는 아이디로 지정한 메일로 전송되었습니다.");
                    $("#modal-staff-write").removeClass("show");
                    $(".modal-backdrop").removeClass("show");
                    $("#admin_name").val("");
                    $("#tel_num").val("");
                    $("#mphone_num").val("");
                    $("#email_admin").val("");
                    $("#addr_main").val("");
                    $("#addr_detail").val("");
                    $("#corp_select").val("");
                    $("#job_title").val("");
                    $("#corp_telnum").val("");
                    $("#corp_fax").val("");
                    $("#corp_homepage").val("");
                    $("#admin_rolenum").val("");
                    $("#admin_role").val("");
                    $("#web_id").val("");
                    $("#web_id2").val("");
                    $("#web_id2").val("");
                    $("#admin_id_select_box").val("0");
                    $("#web_id_guide").html("");
                }
            },
            error:function(res){
                alert(res.result_str);
                //에러가 났을 경우 실행시킬 코드
            }
        })

    })

    // admin-corp-type
    // admin-type">
    // admin-corp">
    // admin-depart">
    // admin-jobTitle">
    // admin-telnum">
    // admin-mphonenum">
    // admin-emailid">

    $(".admin-entity").click(() => {
        console.log($(this).children(""));
    })
</script>
<!-- / Layout footer -->

<!-- / Page content -->
