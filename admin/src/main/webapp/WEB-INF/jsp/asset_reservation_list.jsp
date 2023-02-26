<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2022/06/28
  Time: 12:33 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<h6 class="card-header with-elements">
    <div class="card-header-title">예약 현황</div>
    <div class="card-header-elements ml-auto">
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modals-reserve-write">자원 예약
        </button>
    </div>
</h6>
<div class="card-datatable table-responsive pt-0 pb-3">
    <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
        <div class="row">
            <div class="col-sm-12">
                <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid"
                       aria-describedby="article-list_info" style="">
                    <thead class="bg-success text-white font-weight-bold">
                    <tr role="row">
                        <th class="text-center px-2" style="width:40px">No</th>
                        <th class="text-center px-2" style="width:80px">처리</th>
                        <th class="text-center px-2" style="width:80px">접수일</th>
                        <th class="text-center px-2" style="width:150px">자원 명</th>
                        <th class="text-center px-2" style="width:60px">수량</th>
                        <th class="text-center px-2" style="width:150px">예약기간</th>
                        <th class="text-center px-2" style="width:60px">일수</th>
                        <th class="text-center px-2" style="width:250px">용도</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${assetResList}" var="assetRes" varStatus="status">
                        <fmt:formatDate value="${assetRes.last_upd_date}" var="update_date" pattern="yyyy.MM.dd."/>
                        <fmt:formatDate value="${assetRes.use_start_date}" var="start_date" pattern="yyyy.MM.dd."/>
                        <fmt:formatDate value="${assetRes.use_end_date}" var="end_date" pattern="yyyy.MM.dd."/>
                        <tr class="" >
                            <td class="text-center">${status.count}</td>
                            <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default res_choice" id="${assetRes.idx_asset_reservation}"
                                                       data-toggle="modal" data-target="${proto_page == 1 ? "#modals-reserve-result" : "#modals-reserve-view"}">${assetRes.reservaion_status == 0 ? "신규 예약" : assetRes.reservaion_status == 1 ? "승인" : assetRes.reservaion_status == 2 ? "보류" : assetRes.reservaion_status == 3 ? "부분 승인" : assetRes.reservaion_status == 4 ? "거부" : assetRes.reservaion_status == 99 ? "권한 없음" : ""}</a>
                            </td>
                            <td class="text-center" id="register_date">${update_date}</td>
                            <td class="text-center">각종 장비류:XXXXX</td>
                            <td class="text-center">00</td>
                            <td class="text-center" id="using_term">${start_date}~${end_date}</td>
                            <fmt:parseNumber value="${assetRes.use_start_date.time / (1000 * 60 * 60 * 24)}" integerOnly="true" var="startDateNum"></fmt:parseNumber>
                            <fmt:parseNumber value="${assetRes.use_end_date.time / (1000 * 60 * 60 * 24)}" integerOnly="true" var="endDateNum"></fmt:parseNumber>
                            <td class="text-center" id="using_term_num">${endDateNum - startDateNum}일</td>
                            <td class=""><span class="text-truncate d-inline-block"
                                               style="width:300px;">${assetRes.asset_usage}</span></td>
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
                        <li class="paginate_button page-item previous" id="article-list_previous"><a aria-controls="article-list" data-dt-idx="0" tabindex="0" id="article-list_previous_btn" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li>
                        <li class="paginate_button page-item previous" id="article-list_previous-one"><a aria-controls="article-list" data-dt-idx="0" tabindex="0" id="article-list_previous-one_btn" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li>
                        <%--                        <li class="paginate_button page-item " id="page1-button"><a href="javascript:pageLoad('asset_reservation_list',{cur_page:'${adminList[0].page + pageBool - 4}'},'대시보드');" aria-controls="article-list" data-dt-idx="1" tabindex="0" class="page-link">${adminList[0].page + pageBool - 4}</a></li>--%>
                        <%--                        <li class="paginate_button page-item " id="page2-button"><a href="javascript:pageLoad('asset_reservation_list',{cur_page:'${adminList[0].page + pageBool - 3}'},'대시보드');" aria-controls="article-list" data-dt-idx="2" tabindex="0" class="page-link">${adminList[0].page + pageBool - 3}</a></li>--%>
                        <%--                        <li class="paginate_button page-item " id="page3-button"><a href="javascript:pageLoad('asset_reservation_list',{cur_page:'${adminList[0].page + pageBool - 2}'},'대시보드');" aria-controls="article-list" data-dt-idx="3" tabindex="0" class="page-link">${adminList[0].page + pageBool - 2}</a></li>--%>
                        <%--                        <li class="paginate_button page-item " id="page4-button"><a href="javascript:pageLoad('asset_reservation_list',{cur_page:'${adminList[0].page + pageBool - 1}'},'대시보드');" aria-controls="article-list" data-dt-idx="4" tabindex="0" class="page-link">${adminList[0].page + pageBool - 1}</a></li>--%>
                        <%--                        <li class="paginate_button page-item " id="page5-button"><a href="javascript:pageLoad('asset_reservation_list',{cur_page:'${adminList[0].page + pageBool}'},'대시보드');" aria-controls="article-list" data-dt-idx="5" tabindex="0" class="page-link">${adminList[0].page + pageBool}</a></li>--%>
                        <li class="paginate_button page-item next" id="article-list_next-one"><a aria-controls="article-list" data-dt-idx="6" tabindex="0" id="article-list_next-one_btn" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li>
                        <li class="paginate_button page-item next" id="article-list_next"><a aria-controls="article-list" data-dt-idx="6" tabindex="0" id="article-list_next_btn" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    var assetResArr = [];

    <c:forEach items="${assetResList}" var="as">
        assetResArr.push({
            idx_asset_reservation: "${as.idx_asset_reservation}",
            asset_reservaion_code: "${as.asset_reservaion_code}",
            idx_user_demo_bs: "${as.idx_user_demo_bs}",
            idx_corp_info: "${as.idx_corp_info}",
            idx_user: "${as.idx_user}",
            idx_admin: "${as.idx_admin}",
            reservaion_status: "${as.reservaion_status}",
            asset_usage: "${as.asset_usage}",
            is_end: "${as.is_end}",
            is_return: "${as.is_return}",
            use_start_date: "${as.use_start_date}",
            use_end_date: "${as.use_end_date}",
            permission_date: "${as.permission_date}",
            reg_date: "${as.reg_date}",
            last_upd_date: "${as.last_upd_date}",
            maxvalue: "${as.maxvalue}",
            page: "${as.page}"
        })
    </c:forEach>
    console.log("cur_page: " + ${cur_page} + ", curStatus: " + ${curStatus});


    if("${cur_page}" == "1" && "${maxvalue}" == "${cur_page}"){
        $("#article-list_previous, #article-list_previous-one, #article-list_next, #article-list_next-one").addClass("disabled");
    } else if("${cur_page}" == "1"){
        $("#article-list_previous, #article-list_previous-one").addClass("disabled");
    } else if("${maxvalue}" == "${cur_page}"){
        $("#article-list_next, #article-list_next-one").addClass("disabled");
    }

    $(".page-link").click(function (){
        if($(this).attr("id") == "article-list_next-one_btn"){
            pageLoad('asset_reservation_list',{cur_page: '${cur_page + 1}', filter1: ${curStatus}},'대시보드', "asset_reservation_list");
        } else if($(this).attr("id") == "article-list_next_btn"){
            pageLoad('asset_reservation_list',{cur_page: '${maxvalue}', filter1: ${curStatus}},'대시보드', "asset_reservation_list");
        } else if($(this).attr("id") == "article-list_previous_btn"){
            pageLoad('asset_reservation_list',{cur_page:1, filter1: ${curStatus}},'대시보드', "asset_reservation_list");
        } else if($(this).attr("id") == "article-list_previous-one_btn"){
            pageLoad('asset_reservation_list',{cur_page: '${cur_page - 1}', filter1: ${curStatus}},'대시보드', "asset_reservation_list");
        }
    })

    $(".res_choice").click(function(){
        var idx = $(this).attr("id");
        if("${proto_page}" == "1"){
            assetResArr.forEach(function (res){
                if(res.idx_asset_reservation == idx){
                    $("#reservation_register_date").val($("#register_date").val());
                    $("#reservation_using_term").val($("#using_term").val() + "(총 " + $("#using_term_num").val() + "간)");
                    pageLoad("asset_reservation_items_list", {filter1: parseInt(idx)}, "자산 현황 보드", "asset_reservation_items_list");
                }
            })
        } else {
            pageLoad('reserve_view',{idx: parseInt(idx)},'대시보드', "reserve_view");
        }
    })
</script>
