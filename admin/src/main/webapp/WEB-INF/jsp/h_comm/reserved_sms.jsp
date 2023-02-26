<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h5 class="d-flex justify-content-between align-items-center w-100 mt-2">
            <div><i class="pe-7s-way text-success-custom"></i>&nbsp;&nbsp;SMS 예약목록 및 메세지 발송</div>
        </h5>

        <div class="card mt-2">
            <div class="card-header font-weight-bold with-elements text-white bg-success">
                <div>예약된 SMS 목록</div>
                <div class="card-header-elements ml-auto">
                    <button type="button" id="btn_new_domo_bs" class="btn btn-sm btn-outline-white font-weight-bold" data-toggle="modal" data-target="#modals-business" data-what="mode-new">+ SMS 작성</button>
                </div>
            </div>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="table_demo_bs" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-light-dark text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center px-2" style="width:10%">ID</th>
                                    <th class="text-center px-2" style="width:8%">발송 조건</th>
                                    <th class="text-center px-2" style="width:8%">종류</th>
                                    <th class="text-center px-2" style="width:10%">예정시간</th>
                                    <th class="text-center px-2" style="width:18%">제목</th>
                                    <th class="text-center px-2" style="width:38%">문자메세지 내용</th>
                                    <th class="text-center px-2" style="width:6%">수신대상 수</th>
                                    <th class="text-center px-2" style="width:10%">등록시간</th>
                                </tr>
                                </thead>
                                <tbody>
<c:choose>
    <c:when test="${smsItemVOList eq null or smsItemVOList.size() eq 0}">

        <c:forEach var = "i" begin = "1" end = "4">
            <tr><td class="text-center empty-list" colspan="8"></td></tr>
        </c:forEach>
        <tr class=""><td class="text-center empty" colspan="8">내용이 없습니다</td></tr>
        <c:forEach var = "i" begin = "1" end = "5">
            <tr><td class="text-center empty-list" colspan="8"></td></tr>
        </c:forEach>

    </c:when>
    <c:otherwise>
        <c:forEach items="${smsItemVOList}" var="item" varStatus="status">
                                    <tr class="reserveSms-entity" id="${item.msg_id}">
                                        <td class="text-center">${item.msg_id}</td>

                                        <c:set var="st" value="${item.schedule_type}" scope="request" />
                                        <td class="text-center align-middle">${st eq 0 ?"즉시":st eq 1 ?"예약":"신규타입정의 필요"}</td>

                                        <c:set var="rsvd" value="${item.reserved1}" scope="request" />
                                        <td class="text-center align-middle">${rsvd eq "0" ?"임의발송":rsvd eq "1" ?"회원가입":rsvd eq "2" ?"알림":rsvd eq "3" ?"업무일반":rsvd eq "3" ?"업무긴급":rsvd}</td>

                                        <td class="text-center">${item.send_date}</td>

                                        <td class="text-center">${item.subject}</td>

                                        <td class=""><span class="text-truncate d-inline-block" style="width:300px;">${item.sms_msg}</span></td>

                                        <td class=""><span class="text-truncate d-inline-block" style="width:300px;">${item.dest_count}</span></td>

                                        <td class="text-center">${item.now_date}</td>
                                    </tr>

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
                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('reserved_mng',{cur_page:1,filter1:'${filter1}', filter2:'${filter2}'},'SMS 예약목록 및 발송');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('reserved_mng',{cur_page:'${cur_page-1}',filter1:'${filter1}',filter2:'${filter2}'},'SMS 예약목록 및 발송');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>

                                    <c:forEach var="i" begin="1" end="${remain_page}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('reserved_mng',{cur_page:'${(cur_sector-1)*page_amount+i}',filter1:'${filter1}',filter2:'${filter2}'},'SMS 예약목록 및 발송');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>

                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('reserved_mng',{cur_page:'${cur_page+1}',filter1:'${filter1}',filter2:'${filter2}'},'SMS 예약목록 및 발송');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('reserved_mng',{cur_page:'${tot_page}',filter1:'${filter1}',filter2:'${filter2}'},'SMS 예약목록 및 발송');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </c:if>
                </div>
            </div>
        </div>
    </div>

<!-- Layout footer -->
<%@include file ="../layouts/frame_footer.jsp" %>
<!-- / Layout footer -->

<!-- / Page content -->
