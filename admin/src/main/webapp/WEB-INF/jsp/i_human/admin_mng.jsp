<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h5 class="d-flex justify-content-between align-items-center w-100 mt-2">
        <div><i class="pe-7s-user text-success-custom"></i>직원 관리</div>
    </h5>
    <%--<div class="row">
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">재단소속</div>
                        <div class="text-large">${mngAdminCount}</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">센터소속</div>
                        <div class="text-large">${centerAdminCount}</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">지자체</div>
                        <div class="text-large">${localAdminCount}</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">기타 유관기관</div>
                        <div class="text-large">${otherAdminCount}</div>
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
                        <input type="radio" name="corporate" class="custom-control-input" value="100" checked>
                        <span class="custom-control-label">전체</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="radio" name="corporate" class="custom-control-input" value="0">
                        <span class="custom-control-label">재단 소속</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="radio" name="corporate" class="custom-control-input" value="1">
                        <span class="custom-control-label">센터 소속</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="radio" name="corporate" class="custom-control-input" value="2">
                        <span class="custom-control-label">지자체 소속</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="radio" name="corporate" class="custom-control-input" value="99">
                        <span class="custom-control-label">기타</span>
                    </label>
                </div>
            </div>

        </div>
    </div>

    <hr>--%>

    <div class="card px-4 pt-2 mb-2 bg-">
        <div class="form-row mb-4">

            <div class="col-md-5 ">
                <label class="form-label text-body">어드민 유형</label>

                <div class="form-inline">
                    <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons" id="category_change">
                        <label class="btn btn-secondary <c:if test="${filter1 eq 9999}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="9999" checked onclick="javascript:pageLoad('admin_mng',{cur_page:1,list_amount:10,filter1:9999,filter2:9998},'상담신청 관리');">전체
                        </label>
                        <label class="btn btn-secondary <c:if test="${filter1 eq 0}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="0" onclick="javascript:pageLoad('admin_mng',{cur_page:1,list_amount:10,filter1:0,filter2:9998},'상담신청 관리');">유저 콘솔 관리자
                        </label>
                        <label class="btn btn-secondary <c:if test="${filter1 eq 1}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="1" onclick="javascript:pageLoad('admin_mng',{cur_page:1,list_amount:10,filter1:1,filter2:9998},'상담신청 관리');">현장 관리자
                        </label>
                        <label class="btn btn-secondary <c:if test="${filter1 eq 2}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="2" onclick="javascript:pageLoad('admin_mng',{cur_page:1,list_amount:10,filter1:2,filter2:9998},'상담신청 관리');">사이트 관리자
                        </label>
                        <label class="btn btn-secondary <c:if test="${filter1 eq 3}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="2" onclick="javascript:pageLoad('admin_mng',{cur_page:1,list_amount:10,filter1:3,filter2:9998},'상담신청 관리');">슈퍼 관리자
                        </label>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="card mt-2">
        <div class="card-header font-weight-bold with-elements text-white bg-success">
            <div>직원 명단</div>
            <div class="card-header-elements ml-auto">
                <button type="button" class="btn btn-sm btn-outline-white font-weight-bold"  data-toggle="modal" data-target="#modal-staff-write">+ 등록</button>
                <button type="button" class="btn btn-sm btn-outline-white font-weight-bold"  data-toggle="modal" data-target="#modal-staff-upload">+ 일괄등록</button>
            </div>
        </div>

        <div class="card-datatable table-responsive pt-0 pb-3">
            <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <table id="table_admin" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                            <thead class="bg-light-dark text-white font-weight-bold">
                            <tr role="row">
                                <th class="text-center px-2" style="width:40px">No</th>
                                <th class="text-center px-2" style="width:80px">직원명</th>
                                <th class="text-center px-2" style="width:80px">구분</th>
                                <th class="text-center px-2" style="width:80px">시스템 권한</th>
                                <%--                        <th class="text-center px-2" style="width:150px">소속</th>--%>
                                <%--                        <th class="text-center px-2" style="width:70px">담당업무</th>--%>
                                <%--                        <th class="text-center px-2" style="width:70px">직급</th>--%>
                                <%--                        <th class="text-center px-2" style="width:130px">사무실 전화번호</th>--%>
                                <th class="text-center px-2" style="width:130px">휴대폰 번호</th>
                                <th class="text-center px-2" style="width:150px">이메일</th>
                            </tr>
                            </thead>
                            <tbody>
<c:choose>
    <c:when test="${adminVOList eq null or adminVOList.size() eq 0}">

        <c:forEach var = "i" begin = "1" end = "4">
            <tr><td class="text-center empty-list" colspan="6"></td></tr>
        </c:forEach>
        <tr class=""><td class="text-center empty" colspan="6">내용이 없습니다</td></tr>
        <c:forEach var = "i" begin = "1" end = "5">
            <tr><td class="text-center empty-list" colspan="6"></td></tr>
        </c:forEach>

    </c:when>
    <c:otherwise>
                            <c:forEach items="${adminVOList}" var="admin" varStatus="status">
                                <tr class="admin-entity" id="${admin.idx_admin}">
                                    <td class="text-center" class="page-count">${admin.idx_admin}</td>
                                    <td class="text-center"><a href="#none" class="btn btn-underline"  data-toggle="modal" data-target="#modals-staff-view" class="admin-name">${admin.admin_name}</a></td>
                                    <td class="text-center" class="admin-corp-type">${admin.corporate eq 0 ? "진흥원" : admin.corporate eq 1 ? "센터" : admin.corporate eq 2 ? "지자체" : "기타"}</td>
                                    <td class="text-center" class="admin-type">${admin.sign_in_type eq 1 ? "SA" : "BM"}</td>
                                        <%--                            <td class="text-center" class="admin-corp">${admin.corporate_name}</td>--%>
                                        <%--                            <td class="text-center" class="admin-depart">${admin.main_part != null ? admin.main_part : "-"}</td>--%>
                                        <%--                            <td class="text-center" class="admin-jobTitle">${admin.job_title}</td>--%>
                                        <%--                            <td class="text-center" class="admin-telnum">${admin.corporate_num}</td>--%>
                                    <td class="text-center" class="admin-mphonenum">${admin.mphone_num}</td>
                                    <td class="text-center" class="admin-emailid">${admin.admin_id}</td>
                                </tr>
                            </c:forEach>
        <c:forEach var = "i" begin = "${adminVOList.size()}" end = "9">
            <tr><td class="text-center empty-list" colspan="6"></td></tr>
        </c:forEach>
    </c:otherwise>
</c:choose>
                            </tbody>
                        </table>
                    </div>
                </div>
                <c:if test="${total_count ne 0}">
                    <div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div class="dataTables_info" role="status" aria-live="polite">총 ${total_count}개
                                중 ${list_amount*(cur_page-1)+1}에서 <c:choose><c:when
                                        test="${(list_amount*(cur_page-1)+list_amount)>total_count}">${total_count}</c:when><c:otherwise>${(list_amount*(cur_page-1)+list_amount)}</c:otherwise></c:choose>까지
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                                <ul class="pagination">

                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('admin_mng',{cur_page:1,filter1:'${filter1}', filter2:'${filter2}'},'시스템코드 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('admin_mng',{cur_page:'${cur_page-1}',filter1:'${filter1}',filter2:'${filter2}'},'시스템코드 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>

                                    <c:forEach var="i" begin="1" end="${remain_page}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('admin_mng',{cur_page:'${(cur_sector-1)*page_amount+i}',filter1:'${filter1}',filter2:'${filter2}'},'시스템코드 관리');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>

                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('admin_mng',{cur_page:'${cur_page+1}',filter1:'${filter1}',filter2:'${filter2}'},'시스템코드 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('admin_mng',{cur_page:'${tot_page}',filter1:'${filter1}',filter2:'${filter2}'},'시스템코드 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
    <!-- Modal template -->
    <div class="modal fade" id="modals-staff-view">
        <div class="modal-dialog modal-lg">
            <form class="modal-content">
                <div class="modal-header bg-success">
                    <h5 class="modal-title text-white font-weight-bold">직원 정보 확인</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body pb-2">

                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <table class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                <tbody>
                                <tr class="">
                                    <th class="text-center align-middle bg-light" rowspan="3" style="width:12%">개인정보</th>
                                    <th class="text-center bg-light" style="width:12%">이름</th>
                                    <td class="text-center" style="width:27%" id="admin_name_detail">홍길동</td>
                                    <th class="text-center bg-light" style="width:13%">일반전화번호</th>
                                    <td class="text-center" style="width:26%" id="tel_num_detail">000-0000-0000</td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">휴대폰 번호</th>
                                    <td class="text-center" id="mphone_num_detail">000-0000-0000</td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">주소</th>
                                    <td class="" colspan="3" id="addr_main_detail">제주도 서귀포시 XXXXXXX XXXXXXX</td>
                                </tr>

                                </tbody>
                            </table>
                            <table class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info">
                                <tbody>
                                <tr>
                                    <th class="text-center align-middle bg-light" style="width:14%" rowspan="2">시스템 정보</th>
                                    <th class="text-center bg-light" style="width:13%">웹ID</th>
                                    <td class="text-center" style="width:15%" id="web_id_detail">dongdong</td>
                                    <th class="text-center bg-light" style="width:15%">비밀번호</th>
                                    <td class="text-center store-idx" style="width:15%"><a href="#none" class="btn btn-sm btn-default" id="initializtion_pw">초기화</a></td>
                                    <th class="text-center bg-light" style="width:15%">정보변경이력</th>
                                    <td class="text-center" style="width:13%"><a href="#none" class="btn btn-sm btn-default" data-toggle="popover" data-html="true"  data-placement="top" data-content="-YYYY.MM.DD. HH:MM 비밀번호 초기화 (변경자 이름) <br>-YYYY.MM.DD. HH:MM 전화번호 변경 (변경자 이름) <br> -YYYY.MM.DD. HH:MM 주소변경 (변경자 이름)" >이력보기</a></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">시스템권한</th>
                                    <td class="" colspan="4" id="admin_type_detail">단지책임자</td>
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
                            <table class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info">
                                <tbody>
                                <tr class="">
                                    <th class="text-center align-middle bg-light" rowspan="3" style="width:12%">개인정보</th>
                                    <th class="text-center bg-light" style="width:12%">이름</th>
                                    <td class="text-center" style="width:24%"><input type="text" class="form-control form-control-sm" value="" id="admin_name_modify" readonly></td>
                                    <th class="text-center bg-light" style="width:13%">일반전화번호</th>
                                    <td class="text-center" style="width:29%"><input type="text" class="form-control form-control-sm" value="" id="tel_num_modify"  maxlength="13" oninput="autoHyphen(this)"></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">휴대폰 번호</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="" id="mphone_num_modify" maxlength="13" oninput="autoHyphen2(this)"></td>
                                    <th class="text-center bg-light">관리 유형</th>
                                    <td class="text-center">
                                        <select id="admin_type_modify" class="form-control form-control-sm">
                                            <option class="form-control form-control-sm" value="" disabled>유형 선택</option>
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
                                        <input type="text" id="addr_main_modify" class="form-control form-control-sm d-inline-block align-middle mr-1" value="" placeholder="주소" style="width:calc(100% - 80px)">
                                        <input type="text" id="addr_detail_modify" class="form-control form-control-sm d-inline-block align-middle mr-1" value="" placeholder="상세주소" style="width:calc(100% - 80px)">
                                        <a href="#none" id="addr_search_modify" class="btn btn-sm btn-default">주소 찾기</a>
                                    </td>
                                    <%--                                        <th class="text-center bg-light">상세 주소</th>--%>
                                    <%--                                        <td class=""></td>--%>
                                </tr>

                            </table>
                            <table class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                <tbody>
                                <tr>
                                    <th class="text-center align-middle bg-light" style="width: 4.5%" rowspan="2">시스템 정보</th>
                                    <th class="text-center bg-light" style="width: 4.5%; vertical-align: middle;" >웹ID</th>
                                    <td class="" style="width: 25%" colspan="3">
                                        <input type="text" id="web_id_modify" class="form-control form-control-sm d-inline-block align-middle mr-1" value="" style="width:calc(100% - 80px)" readonly>
                                    </td>
                                    <%--                                    <th class="text-center bg-light" style="width:13%">비밀번호</th>--%>
                                    <%--                                    <td class="" colspan="2" style="width:34%"><small>등록한 이메일로 초기 비밀번호가 발송됩니다.</small></td>--%>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">시스템권한</th>
                                    <td class="" colspan="5">
                                        <select id="sign_in_type_modify" class="custom-select custom-select-sm w-auto">
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
                    <div>
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-outline-danger" id="btn-admin-delete">제거</button>
                    </div>
                    <button type="button" class="btn btn-primary" id="btn-admin-modify">저장</button>
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
                                    <td class="text-center" style="width:24%"><input type="text" class="form-control form-control-sm" value="" id="admin_name" oninput="chkOnlyName(event)"></td>
                                    <th class="text-center bg-light" style="width:13%"  >일반전화번호</th>
                                    <td class="text-center" style="width:29%"><input type="text" class="form-control form-control-sm" value="" oninput="autoHyphen(this)" maxlength="13" id="tel_num"></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">휴대폰 번호</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="" oninput="autoHyphen2(this)" maxlength="13"  id="mphone_num"></td>
                                    <th class="text-center bg-light">관리 유형</th>
                                    <td class="text-center">
                                        <select id="admin_type" class="form-control form-control-sm">
                                            <option class="form-control form-control-sm" value="" disabled selected>유형 선택</option>
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

                                </tbody>
                            </table>
                            <table class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                <tbody>
                                <tr>
                                    <th class="text-center align-middle bg-light" style="width: 4.5%" rowspan="2">시스템 정보</th>
                                    <th class="text-center bg-light" style="width: 4.5%; vertical-align: middle;" >웹ID</th>
                                    <td class="" style="width: 25%" colspan="3">
                                        <input type="text" id="web_id" class="form-control form-control-sm d-inline-block align-middle mr-1" oninput="chkOnlyNum(event)" value="" style="width: 100px" name="admin_id">
                                        @
                                        <input type="text" id="web_id2" class="form-control form-control-sm d-inline-block align-middle mr-1"  oninput="chkOnlyNum(event)" value="" style="width: 100px" name="">
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
<%@include file ="../layouts/frame_footer.jsp" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

    var curUser;


    var adminVOList = [];
    <c:forEach items="${adminVOList}" var="admin">
        adminVOList.push({
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
            admin_addr: "${admin.admin_addr}",
            page: "${admin.page}",
            maxvalue: "${admin.maxvalue}"
        })
    </c:forEach>



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

    $("#addr_search, #addr_main, #addr_main_modify, #addr_search_modify").click(function() {
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
                $("#corporate_num").val(corp.tel_num);
                $("#corporate_homepage").val(corp.homepage);
                $("#corporate_fax").val(corp.fax_num);
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

    function chkOnlyNum(event) {
        let regExp = /[^0-9]/g;
        let ele = event.target;
        if (regExp.test(ele.value)) {
            ele.value = ele.value.replace(regExp, '');
        }
    };

    function chkEmail(event) {
        let phoneRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/g;
        let ele = event.target;
        if (!phoneRegex.test(ele.value)) {
            console.log(ele.value)
            ele.value = ele.value.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/gi, '');
        }
    };

    function chkOnlyName(event) {
        let regExp = /[0-9]/g;
        let ele = event.target;
        if (regExp.test(ele.value)) {
            ele.value = ele.value.replace(/[0-9]/g, '');
        }
    };


    $("#btn-admin-join").click(function(){

        if(
            $("#web_id").val() == "" ||
            $("#web_id2").val() == "" ||
            $("#admin_name").val() == "" ||
            // corpName == "" ||
            // $("#job_title").val() == "" ||
            // $("#sign_in_type").val() == "" ||
            $("#mphone_num").val() == ""
        ){
            alert("회원가입에 필요한 데이터가 모두 입력되지 않았습니다.");
            return;
        }



        var param = {
            admin_id: $("#web_id").val() + "@" + $("#web_id2").val(),
            admin_name: $("#admin_name").val(),
            // corporate_name: corpName,
            // job_title: $("#job_title").val(),
            auth_status: 0,
            tel_num: $("#tel_num").val() == "" ? "-" : $("#tel_num").val(),
            mphone_num: $("#mphone_num").val(),
            // sign_in_type: $("#sign_in_type").val(),
            // corporate_num: $("#corporate_num").val(),
            // corporate_fax: $("#corporate_fax").val(),
            // corporate_homepage: $("#corporate_homepage").val(),
            // admin_type: $("#admin_type").val(),
            // main_part: $("#main_part").val(),
            // manage_num: $("#manage_num").val(),
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
                    $("#modal-staff-write").modal("hide");
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

    $("#initializtion_pw").click(function(){
        if(confirm("해당 아이디의 비밀번호를 초기화하시겠습니까?")){
            var selectId = $(this).parent().attr('id');
            $.ajax({
                type: 'post',
                url: 'admin_pw_initialization',
                data: JSON.stringify(parseInt(selectId)),
                contentType:"application/json; charset=utf-8;",
                dataType:'json',
                success: function(res){
                    if(res.result_code == "SUCCESS"){
                        alert("비밀번호가 초기화되었습니다. \n초기화된 비밀번호는 이메일로 전송되었습니다.");
                    }
                    else{
                        alert(res.result_str);
                    }
                }
            })
        }
    })


    $("#btn-admin-modify").click(function(){
        var param = {
            idx_admin: parseInt(curUser),
            tel_num: $("#tel_num_modify").val(),
            mphone_num: $("#mphone_num_modify").val(),
            // admin_type: $("#admin_type_modify").val(),
            admin_addr: $("#addr_detail_modify").val() != "" ? $("#addr_main_modify").val() + " " + $("#addr_detail_modify").val() : $("#addr_main_modify").val(),
            // job_title: $("#job_title_modify").val(),
            // main_part: $("#main_part_modify").val(),
            // manage_num: $("#manage_num_modify").val(),
            // sign_in_type: $("#sign_in_type_modify").val()
        }
        $.ajax({
            type: 'post',
            url: 'admin_modify',
            data: JSON.stringify(param),
            contentType:"application/json; charset=utf-8;",
            dataType:'json',
            success: function(res){
                if(res.result_code == "SUCCESS"){
                    alert("관리자 정보가 성공적으로 변경되었습니다.");
                    $("#modal-staff-modify").removeClass("show");
                    $(".modal-backdrop").removeClass("show");

                    $("#admin_name_modify").val("");
                    $("#tel_num_modify").val("");
                    $("#mphone_num_modify").val("");
                    $("#admin_type_modify").val("");
                    $("#addr_main_modify").val("");
                    $("#corp_select_modify").val("");
                    $("#job_title_modify").val("");
                    $("#corporate_num_modify").val("");
                    $("#corporate_fax_modify").val("");
                    $("#corporate_homepage_modify").val("");
                    $("#main_part_modify").val("");
                    $("#manage_num_modify").val("");
                    $("#web_id_modify").val("");
                    $("#sign_in_type_modify").val("");
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

    $("#btn-admin-delete").click(function(){
        if(confirm($("#admin_name_modify").val() + "님의 관리자 계정을 삭제하시겠습니까?")){

            $.ajax({
                type: 'post',
                url: 'admin_delete',
                data: JSON.stringify(parseInt(curUser)),
                contentType:"application/json; charset=utf-8;",
                dataType:'json',
                success: function(res){
                    if(res.result_code == "SUCCESS"){
                        alert("해당 관리자 계정이 삭제되었습니다.");
                        $(".modal-backdrop").removeClass("show");

                    }
                },
                error:function(res){
                    alert(res.result_str);
                    //에러가 났을 경우 실행시킬 코드
                }
            })
        }
    })

    $('input[name="corporate"]').change(function(){
        var corpClass = $('input[name="corporate"]:checked').val();
        //pageLoad("admin_corporate", {cur_page: 1, corp: parseInt(corpClass)}, "어드민 보드", true);
    })

var curCategory = "${corpCategory}";

var curUser;



var adminVOList = [];
<c:forEach items="${adminVOList}" var="admin">
adminVOList.push({
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
    admin_addr: "${admin.admin_addr}",

    maxvalue: "${admin.maxvalue}"
})
</c:forEach>




var modelArr = [];
var corpName = "";
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





$(".admin-entity").click(function(){
    var selectId = $(this).attr('id');
    curUser = selectId;
    for(var admin of adminVOList){
        if(selectId == admin.idx_admin){
            $(".store-idx").attr("id", selectId);
            $("#admin_name_detail").text(admin.admin_name);
            $("#tel_num_detail").text(admin.tel_num);
            $("#mphone_num_detail").text(admin.mphone_num);
            $("#addr_main_detail").text(admin.admin_addr);
            $("#corporate_name_detail").text(admin.corporate_name);
            $("#job_title_detail").text(admin.job_title);
            $("#corporate_num_detail").text(admin.corporate_num);
            $("#corporate_fax_detail").text(admin.corporate_fax);
            $("#corporate_homepage_detail").text(admin.corporate_homepage);
            $("#main_part_detail").text(admin.main_part);
            $("#manage_num_detail").text(admin.manage_num);
            $("#web_id_detail").text(admin.admin_id);
            $("#admin_type_detail").text(admin.admin_type == "512" ? "슈퍼관리자" : admin.admin_type == "1" ? "실증책임자" : admin.admin_type == "2" ? "재배사" : admin.admin_type == "4" ? "관계기관" : "일반관리자");

            $("#admin_name_modify").val(admin.admin_name);
            $("#tel_num_modify").val(admin.tel_num);
            $("#mphone_num_modify").val(admin.mphone_num);
            $("#admin_type_modify").val(admin.admin_type);
            $("#addr_main_modify").val(admin.admin_addr);
            $("#corp_select_modify").val(admin.corporate_name);
            $("#job_title_modify").val(admin.job_title);
            $("#corporate_num_modify").val(admin.corporate_num);
            $("#corporate_fax_modify").val(admin.corporate_fax);
            $("#corporate_homepage_modify").val(admin.corporate_homepage);
            $("#main_part_modify").val(admin.main_part);
            $("#manage_num_modify").val(admin.manage_num);
            $("#web_id_modify").val(admin.admin_id);
            $("#sign_in_type_modify").val(admin.sign_in_type);
            break;
        }
    }
})



</script>
<!-- / Layout footer -->

<!-- / Page content -->
