<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>보낸 SMS 이력</div>
        </h4>
        <div class="card">
            <h6 class="card-header with-elements">
                <div class="card-header-title">총 : 150건</div>
                <div class="card-header-elements ml-auto">
                    <a href="DCSS-1000.html" class="btn btn-success" >SMS 작성</a>
                </div>
            </h6>

            <div class="card-datatable table-responsive pt-0">
                <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead>
                                <tr role="row">
                                    <th class="text-center px-2" style="width:40px">No</th>
                                    <th class="text-center px-2" style="width:120px">보낸시간</th>
                                    <th class="text-center px-2" style="width:80px">예약/즉시</th>
                                    <th class="text-center px-2" style="width:250px">수신인</th>
                                    <th class="text-center px-2" style="width:250px">수신 연락처</th>
                                    <th class="text-center px-2" style="width:300px">내용</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${sentSms}" var="smsSent" varStatus="status">
                                    <tr class="smsSent-entity" id="${sentSms.msg_id}">
                                        <td class="text-center">${status.count + (page_num-1) * 10}</td>
                                        <td class="text-center">${smsSent.send_date}</td>
                                        <c:if test="${smsSent.schedule_type == 0}">
                                            <td class="text-center">즉시</td>
                                        </c:if>
                                        <c:if test="${smsSent.schedule_type == 1}">
                                            <td class="text-center">예약</td>
                                        </c:if>
                                        <td class="text-center"><span class="text-truncate d-inline-block" style="width:200px;">${smsSent.dest_info.split('^')[0]}</span></td>
                                        <td class="text-center">${smsSent.dest_info.split('^')[1]}</td>
                                        <td class=""><span class="text-truncate d-inline-block" style="width:300px;">${smsSent.sms_msg}</span></td>
                                    </tr>
                                </c:forEach>

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
            <a href="DCSS-1000.html" class="btn btn-primary" >SMS 작성</a>
        </div>


    </div>

<!-- Layout footer -->
<%@include file ="../layouts/frame_footer.jsp" %>
<!-- / Layout footer -->

<!-- / Page content -->
