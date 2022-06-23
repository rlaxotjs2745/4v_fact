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
        <a href="#none" class="btn btn-outline-primary" data-toggle="modal" data-target="#modals-source-upload">XLS
            일괄등록</a>
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modals-source-write">+ 자원등록
        </button>

    </div>
</h6>

<div class="card-datatable table-responsive pt-0 pb-3">
    <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
        <div class="row p-3">
            <div class="col-sm-12 col-md-12">
                <label class="mr-3  mb-0">총 : <strong>999</strong>개</label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid"
                       aria-describedby="article-list_info" style="">
                    <thead>
                    <tr role="row">
                        <th class="text-center px-2" style="width:120px">대분류</th>
                        <th class="text-center px-2" style="width:120px">중분류</th>
                        <th class="text-center px-2" style="width:120px">세분류</th>
                        <th class="text-center px-2" style="width:80px">상태</th>
                        <th class="text-center px-2" style="width:80px">브랜드</th>
                        <th class="text-center px-2" style="width:80px">모델명</th>
                        <th class="text-center px-2" style="width:80px">대표용도</th>
                        <th class="text-center px-2" style="width:80px">담당자</th>
                        <th class="text-center px-2" style="width:80px">위치</th>
                        <th class="text-center px-2" style="width:80px">메모</th>
                        <th class="text-center px-2" style="width:80px">최종 변경 일자</th>
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
                            <td class="text-center">${asset.memo}</td>
                            <td class="text-center"><fmt:formatDate value="${asset.last_upd_date}" pattern="yyyy-MM-dd HH:MM"/></td>
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
                        <li class="paginate_button page-item previous category_change" id="article-list_previous"><a aria-controls="article-list" data-dt-idx="0" tabindex="0" id="article-list_previous_btn" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li>
                        <li class="paginate_button page-item previous category_change" id="article-list_previous-one"><a aria-controls="article-list" data-dt-idx="0" tabindex="0" id="article-list_previous-one_btn" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li>
                        <li class="paginate_button page-item next category_change" id="article-list_next-one"><a aria-controls="article-list" data-dt-idx="6" tabindex="0" id="article-list_next-one_btn" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li>
                        <li class="paginate_button page-item next category_change" id="article-list_next"><a aria-controls="article-list" data-dt-idx="6" tabindex="0" id="article-list_next_btn" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
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