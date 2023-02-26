<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h5 class="d-flex justify-content-between align-items-center w-100 mt-2">
        <div><i class="pe-7s-way text-success-custom"></i>&nbsp;&nbsp;SMS발송 관리</div>
    </h5>

    <div class="card mt-2">
        <div class="card-header font-weight-bold with-elements text-white bg-success">
            <div>SMS발송 설정목록</div>
            <div class="card-header-elements ml-auto">
                <button type="button" id="btn_new_domo_bs" class="btn btn-sm btn-outline-white font-weight-bold" data-toggle="modal" data-target="#modals-business" data-what="mode-new">+ 신규 등록</button>
            </div>
        </div>
        <div class="card-datatable table-responsive pt-0 pb-3">
            <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <table id="table_demo_bs" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                            <thead class="bg-light-dark text-white font-weight-bold">
                            <tr role="row">
                                <th class="text-center px-2" style="width:6%">번호</th>
                                <th class="text-center px-2" style="width:8%">종류</th>
                                <th class="text-center px-2" style="width:8%">사용여부</th>
                                <th class="text-center px-2" style="width:18%">제목</th>
                                <th class="text-center px-2" style="width:38%">문자메세지 내용</th>
                                <th class="text-center px-2" style="width:6%">수신대상</th>
                                <th class="text-center px-2" style="width:6%">발송 조건</th>
                                <th class="text-center px-2" style="width:10%">등록 및 수정일</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:choose>
                                <c:when test="${smsTemplateVOS eq null or smsTemplateVOS.size() eq 0}">

                                    <c:forEach var = "i" begin = "1" end = "4">
                                        <tr><td class="text-center empty-list" colspan="8"></td></tr>
                                    </c:forEach>
                                    <tr class=""><td class="text-center empty" colspan="8">내용이 없습니다</td></tr>
                                    <c:forEach var = "i" begin = "1" end = "5">
                                        <tr><td class="text-center empty-list" colspan="8"></td></tr>
                                    </c:forEach>

                                </c:when>
                                <c:otherwise>
                                    <c:forEach items="${smsTemplateVOS}" var="item" varStatus="status">

                                        <tr class="">
                                            <td class="text-center align-middle">${item.row_num}</td>
                                            <td class="text-center align-middle">${item.sms_type eq 0 ?"임의발송":item.sms_type eq 1 ?"회원가입":item.sms_type eq 2 ?"알림":item.sms_type eq 3 ?"업무일반":item.sms_type eq 3 ?"업무긴급":item.sms_type}</td>
                                            <td class="text-center align-middle">${item.sms_status eq 0 ?"발송중지":item.sms_type eq 1 ?"회원결정":item.sms_type eq 2 ?"발송예정":"신규타입정의 필요"} </td>
                                            <td class="text-center align-middle">${item.subject}</td>
                                            <td class="text-center align-middle">${item.sms_msg}</td>
                                            <td class="text-center align-middle">${item.is_group eq 0 ?"개인":item.is_group eq 1 ?"그룹":"신규타입정의 필요"}</td>
                                            <td class="text-center align-middle">${item.schedule_type eq 0 ?"즉시":item.schedule_type eq 1 ?"예약":"신규타입정의 필요"}</td>
                                            <td class="text-center align-middle">${item.last_upd_date}</td>
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
                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('sms_mng',{cur_page:1,filter1:'${filter1}', filter2:'${filter2}'},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('sms_mng',{cur_page:'${cur_page-1}',filter1:'${filter1}',filter2:'${filter2}'},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>

                                    <c:forEach var="i" begin="1" end="${remain_page}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('sms_mng',{cur_page:'${(cur_sector-1)*page_amount+i}',filter1:'${filter1}',filter2:'${filter2}'},'사업공고문 관리');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>

                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('sms_mng',{cur_page:'${cur_page+1}',filter1:'${filter1}',filter2:'${filter2}'},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('sms_mng',{cur_page:'${tot_page}',filter1:'${filter1}',filter2:'${filter2}'},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</div>
<!-- / Page content -->

<!-- Layout footer -->
<%@include file ="../layouts/frame_footer.jsp" %>
<!-- / Layout footer -->
<!-- / Page content -->
<script>

    $(document).ready(function(){
        var today = new Date();
        var dateSelector = document.querySelector('.dateSelector');
        dateSelector.flatpickr();
        flatpickr("#dateSelector",{
            maxDate:"today",
            dateFormat: "Y-m-d",
            defaultDate:formatDate('<fmt:formatDate value="${end_dt}" var="enddt" pattern="yyyy-MM-dd hh:mm:ss"/>${enddt}')
        });
        flatpickr("#startTimeSelect",{
            enableTime: true,
            noCalendar: true,
            dateFormat: "H:i",
            defaultDate: getHMtoDate('<fmt:formatDate value="${start_dt}" var="startdt" pattern="yyyy-MM-dd hh:mm:ss"/>${startdt}')
        });
        flatpickr("#endTimeSelect",{
            enableTime: true,
            noCalendar: true,
            dateFormat: "H:i",
            defaultDate: getHMtoDate('<fmt:formatDate value="${end_dt}" var="enddt" pattern="yyyy-MM-dd hh:mm:ss"/>${enddt}')
        });

    });


    function getGhFilteredData(cur_page,filter1){

        console.log("date = "+$("#dateSelector").val() + " " + $("#startTimeSelect").val() + ":00");
        var start_dt = new Date($("#dateSelector").val() + " " + $("#startTimeSelect").val() + ":00");
        var end_dt = new Date($("#dateSelector").val() + " " + $("#endTimeSelect").val() + ":00");

        pageLoad('ghdata_mng',{cur_page:cur_page,filter1:filter1,start_dt:start_dt,end_dt:end_dt},'시설 데이터');

    }

</script>