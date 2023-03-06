<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h5 class="d-flex justify-content-between align-items-center w-100 mt-2">
        <div><i class="pe-7s-way text-white-50"></i>&nbsp;&nbsp;&nbsp;실증사업 현황</div>
    </h5>

    <div class="card px-4 pt-2 mb-2 bg-">
        <div class="form-row mb-4">

            <div class="col-md-8 ">
                <label class="form-label text-muted">전체 / 개별 보기</label>
                <div class="form-inline">
                    <div class="btn-group btn-group-sm btn-group-toggle srch_filtp1" data-toggle="buttons">
                        <label class="btn btn-secondary <c:if test="${filter1 eq 9999}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="0" checked onclick="javascript:pageLoad('corp_cur',{cur_page:1,filter1:9999,filter2:9998},'시설 데이터');">전체
                        </label>
                        <label class="btn btn-secondary <c:if test="${filter1 eq 0}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="0" onclick="javascript:pageLoad('corp_cur',{cur_page:1,filter1:0,filter2:9998},'시설 데이터');">자율
                        </label>
                        <label class="btn btn-secondary <c:if test="${filter1 eq 1}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="0" onclick="javascript:pageLoad('corp_cur',{cur_page:1,filter1:1,filter2:9998},'시설 데이터');">위탁
                        </label>
                    </div>
                </div>
            </div>

            <div class="col-md-1 search-area <c:if test="${filter1 eq 9999}">d-none</c:if>">
                <label class="form-label d-md-block text-muted">&nbsp;조회 기준일</label>
                <div class="form-inline text-right">
                    <input id="dateSelector" type="text" class="form-control-sm dateSelector border-light" name="sDate" style="width: 100%;" placeholder="날짜를 선택하세요.">
                </div>
            </div>
            <div class="col-md-1 search-area <c:if test="${filter1 eq 9999}">d-none</c:if>">
                <label class="form-label d-md-block text-muted">&nbsp;기업명 조회</label>
                <div class="form-inline text-right">
                    <input id="cor_name" type="text" class="form-control-sm dateSelector border-light" name="sDate" style="width: 100%;" placeholder="기업명을 입력해주세요.">
                </div>
            </div>
            <div class="col-md-2 search-area <c:if test="${filter1 eq 9999}">d-none</c:if>">
                <label class="form-label d-md-block text-muted">검색</label>
                <div class="form-inline">
                    <button type="button" class="btn btn-sm btn-success btn_search mr-1" style="width: 40%;">조회</button>
                    <button type="button" class="btn btn-sm btn-outline-success btn_reset" style="width: 40%;">초기화</button>
                </div>
            </div>
        </div>
    </div>
    <%--
        <div class="card px-4 pt-4 mb-4">
            <div class="form-row mb-4">
                <div class="col-md-4 ">
                    <label class="form-label text-muted">실증분야</label>
                    <div class="form-inline">
                        <select class="custom-select mr-sm-2 mb-2 mb-sm-0">
                            <option selected="">분야 전체</option>
                            <option value="1">분야</option>
                            <option value="2">분야</option>
                            <option value="3">분야</option>
                        </select>
                        <select class="custom-select mr-sm-2 mb-2 mb-sm-0">
                            <option selected="">실증대상 전체</option>
                            <option value="1">분야</option>
                            <option value="2">분야</option>
                            <option value="3">분야</option>
                        </select>
                        <select class="custom-select mr-sm-2 mb-2 mb-sm-0">
                            <option selected="">실증대상 전체</option>
                            <option value="1">분야</option>
                            <option value="2">분야</option>
                            <option value="3">분야</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-2 ">
                    <label class="form-label text-muted">실증주체</label>
                    <div class="form-inline mt-2">
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">전체</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">자율</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">위탁</span>
                        </label>
                    </div>
                </div>
                <div class="col-md-5 ">
                    <label class="form-label text-muted">입주일</label>
                    <div class="form-inline">
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">전체</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">오늘</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">오늘 이전</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">이 날짜 이전</span>
                        </label>
                        <input type="text" class="form-control" id="datepicker-base">
                    </div>
                </div>
                <div class="col-md-1 text-right">
                    <label class="form-label d-none d-md-block">&nbsp;</label>
                    <button type="button" class="btn btn-success">조회</button>
                </div>
            </div>
        </div>--%>

    <div class="card mt-2">
        <div class="card-header font-weight-bold with-elements text-white bg-success">
            <div>실증기업 목록</div>
            <%--            <div class="card-header-elements ml-auto">
                            <button type="button" id="btn_new_domo_bs" class="btn btn-sm btn-outline-white font-weight-bold" data-toggle="modal" data-target="#modals-business" data-what="mode-new">+ 신규 시설 등록</button>
                        </div>--%>
        </div>
        <div class="card-datatable table-responsive pt-0 pb-3">
            <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <table id="table_demo_bs" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                            <thead class="bg-dark text-white font-weight-bold">
                            <tr role="row">
                                <th class="text-center px-2" style="width:8%">NO.</th>
                                <th class="text-center" style="width:10%">기업명</th>
                                <th class="text-center" style="width:8%">주체</th>
                                <th class="text-center" style="width:8%">실증시설</th>
                                <th class="text-center" style="width:8%">실증방법</th>
                                <th class="text-center" style="width:8%">실증목적</th>
                                <th class="text-center" style="width:8%">실증대상</th>
                                <th class="text-center" style="width:12%">실증 기간</th>
                                <th class="text-center" style="width:5%">상태</th>

                            </tr>
                            </thead>
                            <tbody>
                            <c:choose>
                                <c:when test="${farmSectorVOList eq null or farmSectorVOList.size() eq 0}">

                                    <c:forEach var = "i" begin = "1" end = "4">
                                        <tr><td class="text-center empty-list" colspan="9"></td></tr>
                                    </c:forEach>
                                    <tr class=""><td class="text-center empty" colspan="9">내용이 없습니다</td></tr>
                                    <c:forEach var = "i" begin = "1" end = "20">
                                        <tr><td class="text-center empty-list" colspan="9"></td></tr>
                                    </c:forEach>

                                </c:when>
                                <c:otherwise>
                                    <c:forEach items="${farmSectorVOList}" var="item" varStatus="status">

                                        <tr class="">
                                        <tr class="">
                                            <td class="text-center align-middle">${item.idx_user_demo_bs}</td>
                                            <td class="align-middle"><a href="#none" data-toggle="modal" data-target="#modals-default-view">${item.corp_name}</a></td>
                                            <td class="text-center align-middle">${item.user_demo_type eq 1?"자율":item.user_demo_type eq 2?"위탁":"모두"}</td>
                                            <td class="text-center align-middle">${item.user_demo_facility eq 1?"단동비닐":  item.user_demo_facility eq 2?"연동비닐":item.user_demo_facility eq 3?"노지" :item.user_demo_facility eq 4?"단동유리":item.user_demo_facility eq 5?"연동유리":item.user_demo_facility eq 6?"식물공장":"기타"}</td>
                                            <td class="text-center align-middle">${item.user_demo_way eq 1?"단순":item.user_demo_way eq 2?"비교":"기타"}</td>
                                            <td class="text-center align-middle">${item.user_demo_goal eq 1?"성능확인":item.user_demo_goal eq 2?"자체평가":"기타실증"}</td>
                                            <td class="text-center align-middle">${item.demo_type eq 1?"시설재":item.demo_type eq 2?"기계장치":item.demo_type eq 3?"생튝자재":item.demo_type eq 4?"시스템":item.demo_type eq 5?"진단솔루션":item.demo_type eq 6?"농업로봇":item.demo_type eq 7?"생육모델":"기타대상"}</td>
                                            <fmt:formatDate value="${item.demo_start_date}" var="demo_start_date" pattern="yyyy-MM-dd"/>
                                            <fmt:formatDate value="${item.demo_end_date}" var="demo_end_date" pattern="yyyy-MM-dd"/>
                                            <td class="text-center align-middle">${demo_start_date} ~ ${demo_end_date}</td>
                                            <td class="text-center align-middle">
                                                <c:choose>
                                                    <c:when test="${item.user_demobs_status eq 34}"><span class="text-primary">협약완료</span></c:when>
                                                    <c:when test="${item.user_demobs_status eq 40}"><span class="text-success">사업 중</span></c:when>
                                                    <c:when test="${item.user_demobs_status eq 50}"><span class="text-warning">사업 종료</span></c:when>
                                                    <c:when test="${item.user_demobs_status eq 60}"><span class="text-muted">결산중</span></c:when>
                                                    <c:when test="${item.user_demobs_status eq 61}"><span class="text-muted">결산 완료</span></c:when>
                                                </c:choose>
                                            </td>
                                        </tr>
                                        </tr>
                                    </c:forEach>

                                    <c:forEach var = "i" begin = "${farmSectorVOList.size()}" end = "9">
                                        <tr><td class="text-center empty-list" colspan="10"></td></tr>
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

                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('corp_list',{cur_page:1,filter1:'${filter1}', filter2:'${filter2}'},'시스템코드 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('corp_list',{cur_page:'${cur_page-1}',filter1:'${filter1}',filter2:'${filter2}'},'시스템코드 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>

                                    <c:forEach var="i" begin="1" end="${remain_page}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('corp_list',{cur_page:'${(cur_sector-1)*page_amount+i}',filter1:'${filter1}',filter2:'${filter2}'},'시스템코드 관리');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>

                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('corp_list',{cur_page:'${cur_page+1}',filter1:'${filter1}',filter2:'${filter2}'},'시스템코드 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('corp_list',{cur_page:'${tot_page}',filter1:'${filter1}',filter2:'${filter2}'},'시스템코드 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
    <%--<div class="layout-overlay layout-sidenav-toggle"></div>--%>




    <div class="modal fade" id="modals-default">
        <div class="modal-dialog modal-lg">
            <form class="modal-content">
                <div class="modal-header bg-success">
                    <h5 class="modal-title">기업 정보 등록</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body">
                    <label class="form-label">기본정보</label>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">기업명<span class="text__essential">*</span></label>
                            <input type="text" class="form-control" placeholder="">
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">설립일</label>
                            <input type="text" class="form-control" id="datepicker-base">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">사업자등록번호<span class="text__essential">*</span></label>
                            <input type="text" class="form-control" placeholder="">
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">법인등록번호</label>
                            <input type="text" class="form-control" id="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">소재지<span class="text__essential">*</span></label>
                            <input type="text" class="form-control mb-1" placeholder="(본사) 전라남도 광양시 XXXXXX XXXXXXXXXX">
                            <input type="text" class="form-control" placeholder="(공장) 전라남도 광양시 XXXXXX XXXXXXXXXX">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-6 mb-3">
                            <label class="form-label text-muted">전년도 매출액</label>
                            <input type="text" class="form-control" placeholder="000,000(백만원)">
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">자기자본비율(%)</label>
                            <input type="text" class="form-control" id="">
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">상근인원</label>
                            <input type="text" class="form-control" id="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-6 mb-3">
                            <label class="form-label text-muted">업태,종목<span class="text__essential">*</span></label>
                            <input type="text" class="form-control" placeholder="">
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">주생산 품목</label>
                            <input type="text" class="form-control" id="">
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">&nbsp;</label>
                            <input type="text" class="form-control" id="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">개발예정 품목(기술)<span class="text__essential">*</span></label>
                            <input type="text" class="form-control" placeholder="(본사) 전라남도 광양시 XXXXXX XXXXXXXXXX">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col m-0">
                            <label class="form-label text-muted ">이용신청시설</label>
                            <div class="d-block mt-2 mb-0">
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-1">
                                    <span class="custom-control-label">온실</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-1">
                                    <span class="custom-control-label">R&D연구실</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-1">
                                    <span class="custom-control-label">스타트업사무실</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-1">
                                    <span class="custom-control-label">기타</span>
                                </label>
                                <div class="d-inline-block">
                                    (<input type="text" style="border:none;width:50px;">)
                                </div>
                            </div>
                        </div>
                    </div>

                    <hr>

                    <label class="form-label">대표자</label>
                    <div class="form-row">
                        <div class="form-group col-6 mb-3">
                            <label class="form-label text-muted">성명<span class="text__essential">*</span></label>
                            <input type="text" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">주소</label>
                            <input type="text" class="form-control" placeholder="(00000) 전라남도 광양시 XXXXXX XXXXXXXXXX">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">전화번호(사무실)</label>
                            <input type="text" class="form-control" placeholder="">
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">전화번호(휴대폰)<span class="text__essential">*</span></label>
                            <input type="text" class="form-control" id="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">이메일<span class="text__essential">*</span></label>
                            <input type="text" class="form-control" placeholder="">
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">팩스</label>
                            <input type="text" class="form-control" id="">
                        </div>
                    </div>

                    <label class="form-label">담당자</label>
                    <div class="form-row">
                        <div class="form-group col-6 mb-3">
                            <label class="form-label text-muted">성명<span class="text__essential">*</span></label>
                            <input type="text" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">부서</label>
                            <input type="text" class="form-control" placeholder="">
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">직위<span class="text__essential">*</span></label>
                            <input type="text" class="form-control" id="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">전화번호(사무실)<span class="text__essential">*</span></label>
                            <input type="text" class="form-control" placeholder="">
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">전화번호(휴대폰)<span class="text__essential">*</span></label>
                            <input type="text" class="form-control" id="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">이메일<span class="text__essential">*</span></label>
                            <input type="text" class="form-control" placeholder="">
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label text-muted">팩스</label>
                            <input type="text" class="form-control" id="">
                        </div>
                    </div>


                    <hr>
                    <label class="form-label">실증계획</label>
                    <div class="form-row">
                        <div class="form-group col m-0">
                            <label class="form-label text-muted ">실증주체<span class="text__essential">*</span></label>
                            <div class="d-block mt-2 mb-2">
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-2">
                                    <span class="custom-control-label">자율</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-2">
                                    <span class="custom-control-label">위탁</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col m-0">
                            <label class="form-label text-muted ">이용신청시설<span class="text__essential">*</span></label>
                            <div class="d-block mt-2 mb-2">
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-3">
                                    <span class="custom-control-label">단동비닐</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-3">
                                    <span class="custom-control-label">연동비닐</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-3">
                                    <span class="custom-control-label">육모장</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-3">
                                    <span class="custom-control-label">노지</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-3">
                                    <span class="custom-control-label">단동유리</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-3">
                                    <span class="custom-control-label">연동유리</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-3">
                                    <span class="custom-control-label">식물농장</span>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col mb-2">
                            <label class="form-label text-muted">실증방법<span class="text__essential">*</span></label>
                            <div class="d-block mt-2 mb-2">
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-4">
                                    <span class="custom-control-label">비교실증</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-4">
                                    <span class="custom-control-label">단순실증</span>
                                </label>
                            </div>
                        </div>
                        <div class="form-group col mb-2">
                            <label class="form-label text-muted">실증목적<span class="text__essential">*</span></label>
                            <div class="d-block mt-2 mb-2">
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-5">
                                    <span class="custom-control-label">성능확인</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-5">
                                    <span class="custom-control-label">자체평가</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-2">
                            <label class="form-label text-muted">실증조건<span class="text__essential">*</span></label>
                            <div class="d-block mt-2 mb-2">
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-6">
                                    <span class="custom-control-label">일반환경</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-6">
                                    <span class="custom-control-label">특수환경</span>
                                </label>
                            </div>
                        </div>
                        <div class="form-group col mb-2">
                            <label class="form-label text-muted">생육토양<span class="text__essential">*</span></label>
                            <div class="d-block mt-2 mb-2">
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-7">
                                    <span class="custom-control-label">토경재배</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-7">
                                    <span class="custom-control-label">수경재배</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-7">
                                    <span class="custom-control-label">고형배지재배</span>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col m-0">
                            <label class="form-label text-muted ">실증대상<span class="text__essential">*</span></label>
                            <div class="d-block mt-2 mb-2">
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-8">
                                    <span class="custom-control-label">시설자재</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-8">
                                    <span class="custom-control-label">ICT기자재</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-8">
                                    <span class="custom-control-label">작물보호제/비료</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-8">
                                    <span class="custom-control-label">스마트팜SW</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-8">
                                    <span class="custom-control-label">단동유리</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-8">
                                    <span class="custom-control-label">생육모델</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-8">
                                    <span class="custom-control-label">로봇</span>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col mb-2">
                            <label class="form-label text-muted ">실증기간<span class="text__essential">*</span></label>
                            <div class="d-block form-inline mb-2">
                                <span class="text-muted">시작일</span> <input type="text" class="form-control" id="datepicker-start" style="width:150px;">
                                <span class="text-muted ml-3">종료일</span> <input type="text" class="form-control" id="datepicker-end" style="width:150px;">
                                <span class="ml-3">총 120일</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-2">
                            <label class="form-label text-muted">상주계획<span class="text__essential">*</span></label>
                            <div class="d-block">
                                <div class="d-inline-block"><span class="text-muted">1.필요시설 :</span></div>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-9">
                                    <span class="custom-control-label">R&D연구실</span>
                                </label>
                                <label class="custom-control custom-checkbox d-inline-block">
                                    <input type="checkbox" class="custom-control-input" name="dcbm-9">
                                    <span class="custom-control-label">스타트업사무실</span>
                                </label>
                                <div class="d-inline-block ml-4"><span class="text-muted">2.상주인력 </span>: 000명</div>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">실증단지 이용신청서<span class="text__essential">*</span></label>
                            <input type="file" class="">
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">실증계획서<span class="text__essential">*</span></label>
                            <input type="file" class="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">작물재배계획서<span class="text__essential">*</span></label>
                            <input type="file" class="">
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">실증대상 기자재 및 장치 등의 설치계획서<span class="text__essential">*</span></label>
                            <input type="file" class="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">실증장비 운전조건 및 실증방법 기술서<span class="text__essential">*</span></label>
                            <input type="file" class="">
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">사업자등록증</label>
                            <input type="file" class="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">대표자 주민등록등본<span class="text__essential">*</span></label>
                            <input type="file" class="">
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">재무재표 또는 회계감사서</label>
                            <input type="file" class="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-0">
                            <label class="form-label d-block text-muted">법인등기부등본</label>
                            <input type="file" class="">
                        </div>
                        <div class="form-group col mb-0">
                            <label class="form-label d-block text-muted">인감증명서<span class="text__essential">*</span></label>
                            <input type="file" class="">
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

    <div class="modal fade" id="modals-default-view">
        <div class="modal-dialog modal-xl">
            <form class="modal-content">
                <div class="modal-header bg-success">
                    <h5 class="modal-title">기업 정보 등록</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="ion ion-md-close"></i></button>
                </div>
                <div class="modal-body">
                    <label class="form-label">기본정보</label>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">기업명</label>
                            <span>행복한 농장</span>
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">설립일</label>
                            <span>2021.00.00</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">사업자등록번호</label>
                            <span>000-00-00000</span>
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">법인등록번호</label>
                            <span>0000000000</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">소재지</label>
                            <span class="d-block mb-2">(본사) 전라남도 광양시 XXXXXX XXXXXXXXXX</span>
                            <span class="d-block mb-2">(공장) 전라남도 광양시 XXXXXX XXXXXXXXXX</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-6 mb-3">
                            <label class="form-label d-block text-muted">전년도 매출액</label>
                            <span>000,000(백만원)</span>
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">자기자본비율(%)</label>
                            <span>150%</span>
                        </div>
                        <div class="form-group col  mb-3">
                            <label class="form-label d-block text-muted">상근인원</label>
                            <span>200명</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-6 mb-3">
                            <label class="form-label d-block text-muted">업태,종목</label>
                            <span>서비스</span>
                        </div>
                        <div class="form-group col-6 mb-3">
                            <label class="form-label d-block text-muted">주생산 품목</label>
                            <span>XXXXXX, XXXXXX</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">개발예정 품목(기술)</label>
                            <span>리얼 디지털 트윈 스마트팜 시설</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col m-0">
                            <label class="form-label d-block text-muted ">이용신청시설</label>
                            <div class="d-block mt-2 mb-0">
                                온실
                            </div>
                        </div>
                    </div>

                    <hr>

                    <label class="form-label">대표자</label>
                    <div class="form-row">
                        <div class="form-group col-6 mb-3">
                            <label class="form-label d-block text-muted">성명</label>
                            <span>홍길동</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">주소</label>
                            <span>(00000) 전라남도 광양시 XXXXXX XXXXXXXXXX</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">전화번호(사무실)</label>
                            <span>000-0000-0000</span>
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">전화번호(휴대폰)</label>
                            <span>000-0000-0000</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">이메일</label>
                            <span>xxxxxx@xxx.com</span>
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">팩스</label>
                            <span>000-0000-0000</span>
                        </div>
                    </div>

                    <hr>

                    <label class="form-label">담당자</label>
                    <div class="form-row">
                        <div class="form-group col-6 mb-3">
                            <label class="form-label d-block text-muted">성명</label>
                            <span>박길동</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">부서</label>
                            <span>XXXXXXXXX</span>
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">직위</label>
                            <span>XXXXXXXXX</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">전화번호(사무실)</label>
                            <span>000-0000-0000</span>
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">전화번호(휴대폰)</label>
                            <span>000-0000-0000</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">이메일</label>
                            <span>xxxxxx@xxx.com</span>
                        </div>
                        <div class="form-group col mb-3">
                            <label class="form-label d-block text-muted">팩스</label>
                            <span>000-0000-0000</span>
                        </div>
                    </div>

                    <ul class="nav nav-tabs">
                        <li class="nav-item"><button id="btn_tab_getinfo" class="nav-link active">기본정보</button></li>
                        <li class="nav-item"><button id="btn_tab_appl" class="nav-link">신청 접수 업무</button></li>
                        <li class="nav-item"><button id="btn_tab_eval" class="nav-link">선정 업무 </button></li>
                        <li class="nav-item"><button id="btn_tab_contract" class="nav-link">협약 업무</button></li>
                    </ul>


                    <div class="nav-plane">
                        <div id="tab_contents" class="nav-card">
                            <div class="card-body">


                                    <label class="form-label">실증계획</label>
                                <div class="callout callout-secondary callout-sm mb-1">
                                    <div class="form-row border-bottom boder-success">
                                        <div class="form-group col mb-2">
                                            <label class="form-label text-muted ">실증주체</label>
                                            <div class="d-block mb-2">
                                                <span>자율</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col mb-2">
                                            <label class="form-label text-muted ">이용신청시설</label>
                                            <div class="d-block mb-2">
                                                <span>단동비닐, 연동비닐, 노지</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group col mb-2">
                                            <label class="form-label text-muted">실증방법</label>
                                            <div class="d-block mb-2">
                                                <span>비교실증</span>
                                            </div>
                                        </div>
                                        <div class="form-group col mb-2">
                                            <label class="form-label text-muted">실증목적</label>
                                            <div class="d-block mb-2">
                                                <span>성능확인 자체평가</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col mb-2">
                                            <label class="form-label text-muted">실증조건</label>
                                            <div class="d-block mb-2">
                                                <span>일반환경 특수환경</span>
                                            </div>
                                        </div>
                                        <div class="form-group col mb-2">
                                            <label class="form-label text-muted">생육토양</label>
                                            <div class="d-block mb-2">
                                                <span>토경재배, 수경재배</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group col mb-2">
                                            <label class="form-label text-muted ">실증대상</label>
                                            <div class="d-block mb-2">
                                                <span>ICT기자재 작물보호제/비료 스마트팜SW</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group col mb-2">
                                            <label class="form-label text-muted ">실증기간</label>
                                            <div class="d-block form-inline mb-2">
                                                <span class="text-muted">시작일</span> <span>2021.00.00</span>
                                                <span class="text-muted ml-3">종료일</span> <span>2021.00.00</span>
                                                <span class="ml-3">총 120일</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col mb-2">
                                            <label class="form-label text-muted">상주계획</label>
                                            <div class="d-block">
                                                <div class="d-inline-block"><span class="text-muted">1.필요시설 :</span></div>
                                                <span>R&D연구실</span>
                                                <div class="d-inline-block ml-4"><span class="text-muted">2.상주인력 </span>: 000명</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>


                    <hr>
                    <label class="form-label">입주 정보</label>
                    <div class="form-row">
                        <div class="form-group col mb-2">
                            <label class="form-label text-muted">입주일</label>
                            <div class="d-block mb-2">
                                <span>2021.00.00</span>
                            </div>
                        </div>
                        <div class="form-group col mb-2">
                            <label class="form-label text-muted">퇴거일</label>
                            <div class="d-block mb-2">
                                <span>2021.00.00</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col mb-2">
                            <label class="form-label text-muted">실증서비스료</label>
                            <div class="d-block mb-2">
                                <span>00,000,000원</span>
                            </div>
                        </div>
                        <div class="form-group col mb-2">
                            <label class="form-label text-muted">보증금</label>
                            <div class="d-block mb-2">
                                <span>00,000,000원</span>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col mb-0">
                            <label class="form-label d-block text-muted">첨부 서류</label>
                            <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 실증단지 이용신청서</button>
                            <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 최초 실증계획서</button>
                            <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 변경 실증계획서</button>
                            <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 작물재배계획서</button>
                            <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 확정 이용계획서</button>
                            <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 실증대상 기자재 및 장치 등의 설치 계획서</button>
                            <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 실증장비 운전조건 및 실증방법 기술서</button>
                            <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 대표자 주민등록등본</button>
                            <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 법인등기부등본</button>
                            <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 인감증명서</button>
                            <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 재무제표 또는 회계감사서</button>
                            <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 사업자등록증</button>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                    <div>
                        <button type="button" class="btn btn-outline-primary">정보 수정</button>
                        <button type="button" class="btn btn-primary">출력</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <!-- / Page content -->
