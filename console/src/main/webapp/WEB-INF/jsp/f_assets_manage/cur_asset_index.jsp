<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2022/06/22
  Time: 5:55 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<h6 class="card-header with-elements">
    <div class="card-header-title">자산 목록</div>
    <div class="card-header-elements ml-auto">
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modals-source-write">+ 자원등록
        </button>
    </div>
</h6>

<div class="card-datatable table-responsive pt-0 pb-3">
    <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
        <div class="row p-3">
            <div class="col-sm-12 col-md-12">
                <label class="mr-3  mb-0">총 : <strong>8</strong>개</label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid"
                       aria-describedby="article-list_info" style="">
                    <thead class="bg-success text-white font-weight-bold">
                    <tr role="row">
                        <th class="text-center px-2" style="width:8%">대분류</th>
                        <th class="text-center px-2" style="width:8%">중분류</th>
                        <th class="text-center px-2" style="width:8%">세분류</th>
                        <th class="text-center px-2" style="width:8%">상태</th>
                        <th class="text-center px-2" style="width:12%">브랜드</th>
                        <th class="text-center px-2" style="width:12%">모델명</th>
                        <th class="text-center px-2" style="width:16%">대표용도</th>
                        <th class="text-center px-2" style="width:8%">담당자</th>
                        <th class="text-center px-2" style="width:10%">위치</th>
                        <th class="text-center px-2" style="width:10%">최종 변경 일자</th>
                    </tr>
                    </thead>
                    <tbody id="assetList">
                    <c:forEach items="${assetList}" var="asset" varStatus="status">
                        <tr class="asset_entity">
                            <td class="text-center align-middle ${asset.asset_main_category_code}"></td>
                            <td class="text-center align-middle ${asset.asset_sub_category_code}"></td>
                            <td class="text-center align-middle ${asset.asset_detail_category_code}"></td>
                            <td class="text-center">${asset.asset_status == 0 ? "신규 등록" : asset.asset_status == 1 ? "예약 가능" : asset.asset_status == 2 ? "사용중" : asset.asset_status == 3 ? "파손 수리 중" : asset.asset_status == 4 ? "폐기" : "분실"}</td>
                            <td class="text-center" >${asset.asset_brand}</td>
                            <td class="text-center">${asset.asset_model_name}</td>
                            <td class="text-center">${asset.representative_use}</td>
                            <td class="text-center">${asset.asset_manager_name}</td>
                            <td class="text-center">${asset.asset_loc}</td>
                            <td class="text-center"><fmt:formatDate value="${asset.last_upd_date}" pattern="yyyy-MM-dd HH:MM"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <%--<c:if test="${total_count ne 0}">
            <div class="row">
                <div class="col-sm-12 col-md-5">
                    <div class="dataTables_info" id="" role="status" aria-live="polite">총 ${total_count}개 중 ${list_amount*(cur_page-1)+1}에서 ${total_count}까지</div>
                </div>
                <div class="col-sm-12 col-md-7">
                    <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                        <ul class="pagination">
                            <c:set var="name" value="${total_count/amount}" />
                            <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('cur_asset_index',{page_num:1},'자산현황');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                            <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('cur_asset_index',{page_num:${cur_page-1},'자산현황');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>
                            <c:forEach var="i" begin="1" end="${page_amount}">
                                <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('cur_asset_index',{page_num:${(cur_sector-1)*page_amount+i},'자산현황');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                            </c:forEach>
                            <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('cur_asset_index',{page_num:${cur_page+1},'자산현황');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                            <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('cur_asset_index',{page_num:${tot_page},'자산현황');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                        </ul>
                    </div>
                </div>
            </div>
        </c:if>--%>
    </div>
</div>

<script>
    var codeArr = [];
    <c:forEach items="${systemCodeList}" var="code" varStatus="status">
        codeArr.push({
            idx_system_code: "${code.idx_system_code}",
            code_name: "${code.code_name}",
            code_value: "${code.code_value}",
            detail: "${code.detail}",
            order_num: "${code.order_num}",
            reg_date: "${code.reg_date}"
        })
    </c:forEach>


    codeArr.forEach(function(code){
        $('.' + code.code_value).html(code.code_name);
    })

    $(".page-link").click(function (){
        if($(this).attr("id") == "article-list_next-one_btn"){
            pageLoad("cur_asset_index", {
                page_num: ${page_num + 1},
                filter1: ${filter1},
                filter2: ${filter2},
                filter3: ${filter3}
            }, "자산 현황 보드", "cur_asset_index");
        } else if($(this).attr("id") == "article-list_next_btn"){
            pageLoad("cur_asset_index", {
                page_num: ${maxvalue},
                filter1: ${filter1},
                filter2: ${filter2},
                filter3: ${filter3}
            }, "자산 현황 보드", "cur_asset_index");
        } else if($(this).attr("id") == "article-list_previous_btn"){
            pageLoad("cur_asset_index", {
                page_num: ${page_num - 1},
                filter1: ${filter1},
                filter2: ${filter2},
                filter3: ${filter3}
            }, "자산 현황 보드", "cur_asset_index");
        } else if($(this).attr("id") == "article-list_previous-one_btn"){
            pageLoad("cur_asset_index", {
                page_num: 1,
                filter1: ${filter1},
                filter2: ${filter2},
                filter3: ${filter3}
            }, "자산 현황 보드", "cur_asset_index");
        }
    })
    if(parseInt("${page_num}") <= 1){
        $("#article-list_previous").addClass("disabled");
        $("#article-list_previous-one").addClass("disabled");
    }
    if(parseInt("${page_num}") >= parseInt("${maxvalue}")){
        $("#article-list_next").addClass("disabled");
        $("#article-list_next-one").addClass("disabled");
    }
</script>