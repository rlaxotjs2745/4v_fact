<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
        <div>문서발급요청 관리</div>
    </h4>

    <div class="row">
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <button id="btn_filter1" class="card-body btn btn-white" onclick="">
                    <div class="d-flex align-items-center">
                        <div class="display-4"><img src="resources/assets/img/img_business_all.png" alt=""></div>
                        <div class="ml-3">
                            <div class="text-muted small">전체</div>
                            <div class="text-large">${adminAnnounceFilterVO.announce_tot}</div>
                        </div>
                    </div>
                </button>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <button id="btn_filter2" class="card-body btn btn-white" onclick="">
                    <div class="d-flex align-items-center">
                        <div class="display-4"><img src="resources/assets/img/img_business_on.png" alt=""></div>
                        <div class="ml-3">
                            <div class="text-muted small">전시중</div>
                            <div class="text-large">${adminAnnounceFilterVO.status_on_count}</div>
                        </div>
                    </div>
                </button>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <button id="btn_filter3" class="card-body btn btn-white" onclick="">
                    <div class="d-flex align-items-center">
                        <div class="display-4"><img src="resources/assets/img/img_business_week.png" alt=""></div>
                        <div class="ml-3">
                            <div class="text-muted small">대기중</div>
                            <div class="text-large">${adminAnnounceFilterVO.wait_count}</div>
                        </div>
                    </div>
                </button>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <button id="btn_filter4" class="card-body btn btn-white" onclick="">
                    <div class="d-flex align-items-center">
                        <div class="display-4"><img src="resources/assets/img/img_business_off.png" alt=""></div>
                        <div class="ml-3">
                            <div class="text-muted small">일시 중지 중</div>
                            <div class="text-large">${adminAnnounceFilterVO.pause_count}</div>
                        </div>
                    </div>
                </button>
            </div>
        </div>
    </div>

    <hr class="mt-0">

    <div class="card mt-4">
        <h6 class="card-header font-weight-bold with-elements">
            <div class="card-header-title">사업 공고문 목록</div>
            <div class="card-header-elements ml-auto">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modals-business" data-what="mode-new">+ 신규 공고문 작성</button>
            </div>
        </h6>
        <div class="card-datatable table-responsive pt-0 pb-3">
            <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <table id="table_demo_bs" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                            <thead class="bg-success text-white font-weight-bold">
                            <tr role="row">
                                <th class="text-center" style="width:60px">NO.</th>
                                <th class="text-center" style="width:100px">발급상태</th>
                                <th class="text-center" style="width:300px">기업명</th>
                                <th class="text-center" style="width:80px">신청자</th>
                                <th class="text-center" style="width:80px">신청일</th>
                                <th class="text-center" style="width:110px">발급 요청 문서</th>
                                <th class="text-center" style="width:110px">수량</th>
                                <th class="text-center" style="width:80px">용도</th>
                                <th class="text-center" style="width:80px">발급일시</th>
                                <th class="text-center" style="width:80px">일련번호</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:if test="${total_count eq 0}">
                                <tr class="">
                                    <td class="text-center" colspan="7" rowspan="3">내용이 없습니다</td>
                                </tr>
                                <tr class="">
                                </tr>
                                <tr class="">
                                </tr>
                                <tr class="">
                                </tr>
                            </c:if>
                            <c:if test="${total_count ne 0}">
                                <c:forEach items="${bsAnnounceHeaderVOList}" var="item" varStatus="status">
                                    <tr class="">
                                        <td class="text-center">
                                            <c:choose>
                                                <c:when test="${item.announce_status eq 0}">임시저장</c:when>
                                                <c:when test="${item.announce_status eq 1}">게시전 수동게시</c:when>
                                                <c:when test="${item.announce_status eq 2}">게시전 자동게시</c:when>
                                                <c:when test="${item.announce_status eq 3}">게시중</c:when>
                                                <c:when test="${item.announce_status eq 4}">게시 일지 중지</c:when>
                                                <c:when test="${item.announce_status eq 5}">게시 기간 종료</c:when>
                                            </c:choose>
                                        </td>
                                        <td class="text-center">${item.bs_announcement_code}</td>
                                        <td class=""><a href="#none" data-toggle="modal" data-target="#modals-business" data-what="mode-view">${item.subject}</a></td>
                                        <td class="text-right">${item.view_count}</td>
                                        <td class="text-right">${item.applicant_count}</td>
                                        <td class="text-center">${item.posting_start_date}</td>
                                        <td class="text-center">${item.posting_end_date}</td>
                                        <td class="text-center">${item.author}</td>
                                        <td class="text-center">${item.author}</td>
                                        <td class="text-center">${item.author}</td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                            </tbody>
                        </table>
                    </div>
                </div>
                <c:if test="${total_count ne 0}">
                    <div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div class="dataTables_info" id="article-list_info" role="status" aria-live="polite">총 ${total_count}개 중 ${list_amount*(cur_page-1)+1}에서 ${list_amount*page_amount}까지</div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                                <ul class="pagination">

                                    <c:set var="name" value="${total_count/amount}" />


                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('b10_demo_bs_announce_doc_mng',{page_num:1,filter1:${filter1},filter2:${filter2}},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('b10_demo_bs_announce_doc_mng',{page_num:${cur_page-1},filter1:${filter1},filter2:${filter2}},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>



                                    <c:forEach var="i" begin="1" end="${page_amount}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('b10_demo_bs_announce_doc_mng',{page_num:${(cur_sector-1)*page_amount+i},filter1:${filter1},filter2:${filter2}},'사업공고문 관리');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>

                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('b10_demo_bs_announce_doc_mng',{page_num:${cur_page+1},filter1:${filter1},filter2:${filter2}},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('b10_demo_bs_announce_doc_mng',{page_num:${tot_page},filter1:${filter1},filter2:${filter2}},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </c:if>
            </div>
        </div>

    </div>
    <%--        <div class="d-flex justify-content-end align-items-end w-100 mt-2">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modals-business-write">신규 공고문 작성</button>
            </div>--%>
</div>


<!-- Layout footer -->
<%@include file ="../layouts/frame_footer.jsp" %>
<!-- / Layout footer -->
<!-- / Page content -->
