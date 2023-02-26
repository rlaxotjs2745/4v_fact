<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h5 class="d-flex justify-content-between align-items-center w-100 mt-2">
        <div><i class="pe-7s-way text-success-custom"></i>장비관련 데이터</div>
    </h5>

    <div class="card px-4 pt-2 mb-2 bg-">
        <div class="form-row mb-4">

            <div class="col-md-2 ">
                <label class="form-label text-body">전체 / 개별 보기</label>
                <div class="form-inline">
                    <div class="btn-group btn-group-sm btn-group-toggle srch_filtp1" data-toggle="buttons">
                        <label class="btn btn-secondary <c:if test="${filter1 eq 9999}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="0" checked onclick="javascript:pageLoad('ghdata_mng',{cur_page:1,filter1:9999,filter2:9998},'시설 데이터');">최신
                        </label>
                        <label class="btn btn-secondary <c:if test="${filter1 ne 9999}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="0" onclick="javascript:getGhFilteredData(1,1);">시설별
                        </label>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <label class="form-label text-body">시설별 보기</label>
                <div class="form-inline">
                    <div class="btn-group btn-group-sm btn-group-toggle srch_filtp1" data-toggle="buttons">

                        <c:choose>
                            <c:when test="${filter1 eq 9999}">
                                <c:forEach items="${farmVOList}" var="ghItem" varStatus="status">
                                    <label class="btn btn-secondary <c:if test="${filter1 eq status.count}">active</c:if>">
                                        <input type="radio" name="btn-radio" class="category_change" value="0" checked onclick="javascript:getGhFilteredData(1,${status.count});">${ghItem.idx_farm}
                                    </label>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <c:forEach var = "i" begin = "1" end = "21">
                                    <label class="btn btn-secondary <c:if test="${filter1 eq i}">active</c:if>">
                                        <input type="radio" name="btn-radio" class="category_change" value="0" checked onclick="javascript:getGhFilteredData(1,${i});">${i}
                                    </label>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>


                    </div>
                </div>
            </div>
            <div class="col-md-4 search-area <c:if test="${filter1 eq 9999}">d-none</c:if>">
                <label class="form-label d-none d-md-block">&nbsp;조회 조건</label>
                <div class="form-inline text-right">
                    <input id="dateSelector" type="text" class="form-control-sm dateSelector border-light" name="sDate" style="width: 30%;" placeholder="날짜를 선택하세요.">
                    <input id="startTimeSelect" type="text" class="form-control-sm startTimeSelector border-light" name="sDate" style="width: 15%;" placeholder="시간선택">
                    <div class="form-text">~</div>
                    <input id="endTimeSelect" type="text" class="form-control-sm endTimeSelector border-light" name="sDate" style="width: 15%;" placeholder="시간선택">

                    <button type="button" class="btn btn-sm btn-success btn_search mx-2" style="width: 12%;">조회</button>
                    <button type="button" class="btn btn-sm btn-outline-success btn_reset" style="width: 12%;">초기화</button>
                </div>
            </div>
        </div>
    </div>

    <div class="card mt-2">
        <div class="card-header font-weight-bold with-elements text-white bg-success">
            <div>시설 데이터 목록</div>
            <div class="card-header-elements ml-auto">
                <button type="button" id="btn_new_domo_bs" class="btn btn-sm btn-outline-white font-weight-bold" data-toggle="modal" data-target="#modals-business" data-what="mode-new">+ 신규 시설 등록</button>
            </div>
        </div>
        <div class="card-datatable table-responsive pt-0 pb-3">
            <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <table id="table_demo_bs" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                            <thead class="bg-light-dark text-white font-weight-bold">
                            <tr role="row">
                                <th class="text-center px-2" style="width:3%">온실</th>
                                <th class="text-center px-2" style="width:10%">시간</th>
                                <th class="text-center px-2" style="width:4%">온도(℃)</th>
                                <th class="text-center px-2" style="width:4%">습도(%)</th>
                                <th class="text-center px-2" style="width:4%">CO<sup>2</sup>
                                    (ppm)</th>
                                <th class="text-center px-2" style="width:5%">외부온도(℃)</th>

                                <th class="text-center px-2" style="width:4%">풍향</th>
                                <th class="text-center px-2" style="width:4%">풍속(m/s)</th>
                                <th class="text-center px-2" style="width:5%">일사량(MJ/m<sup>2</sup>)</th>
                                <th class="text-center px-2" style="width:5%">차광커튼1
                                    (0-100)</th>
                                <th class="text-center px-2" style="width:5%">차광커튼2
                                    (0-100)</th>
                                <th class="text-center px-2" style="width:5%">환기설정온도(℃)</th>
                                <th class="text-center px-2" style="width:5%">천창좌
                                    (0-100)</th>
                                <th class="text-center px-2" style="width:5%">천창우
                                    (0-100)</th>
                                <th class="text-center px-2" style="width:5%">난방설정온도(℃)</th>
                                <th class="text-center px-2" style="width:4%">냉난방기(On/Off)</th>
                                <th class="text-center px-2" style="width:4%">온수온도(℃)</th>
                                <th class="text-center px-2" style="width:4%">순환펌프(On/Off)</th>
                                <th class="text-center px-2" style="width:4%">분무작동(On/Off)</th>
                                <th class="text-center px-2" style="width:4%">유동팬(On/Off)</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:choose>
                                <c:when test="${farmVOList eq null or farmVOList.size() eq 0}">

                                    <c:forEach var = "i" begin = "1" end = "4">
                                        <tr><td class="text-center empty-list" colspan="20"></td></tr>
                                    </c:forEach>
                                    <tr class=""><td class="text-center empty" colspan="20">내용이 없습니다</td></tr>
                                    <c:forEach var = "i" begin = "1" end = "20">
                                        <tr><td class="text-center empty-list" colspan="20"></td></tr>
                                    </c:forEach>

                                </c:when>
                                <c:otherwise>
                                    <c:forEach items="${farmVOList}" var="item" varStatus="status">

                                        <tr class="">
                                            <td class="text-center align-middle">${item.guyok}</td>
                                            <td class="text-center align-middle"><fmt:formatDate value="${item.ymdtime_dt}" var="ymdtime" pattern="yyyy-MM-dd hh:mm:ss"/>${ymdtime}</td>
                                            <td class="text-center align-middle">${item.xintemp1}</td>
                                            <td class="text-center align-middle">${item.xinhum1}</td>
                                            <td class="text-center align-middle">${item.xco2}</td>
                                            <td class="text-center align-middle">${item.xouttemp}</td>
                                            <td class="text-center align-middle">${item.xwinddirec < 22.5 || item.xwinddirec>337.5?"북풍":item.xwinddirec >= 22.5 && item.xwinddirec< 67.5?"북동풍":item.xwinddirec >= 67.5 && item.xwinddirec< 112.5?"동풍":item.xwinddirec >= 112.5 && item.xwinddirec< 157.5?"남동풍":item.xwinddirec >= 157.5 && item.xwinddirec< 202.5?"남풍":item.xwinddirec >= 202.5 && item.xwinddirec< 247.5?"남서풍":item.xwinddirec >= 247.5 && item.xwinddirec< 292.5?"서풍":item.xwinddirec >= 292.5 && item.xwinddirec< 337.5?"북서풍":"없음"}</td>
                                            <td class="text-center align-middle">${item.xwindsp}</td>
                                            <td class="text-center align-middle">${item.xsunvol}</td>
                                            <td class="text-center align-middle">${item.xcur1vol}</td>
                                            <td class="text-center align-middle">${item.xcur2vol}</td>
                                            <td class="text-center align-middle">${item.xventtemp}</td>
                                            <td class="text-center align-middle">${item.xskyvol1}</td>
                                            <td class="text-center align-middle">${item.xskyvol2}</td>
                                            <td class="text-center align-middle">${item.xheattemp}</td>
                                            <td class="text-center align-middle <c:if test="${item.xheaterrun eq 1}">text-primary</c:if>">${item.xheaterrun eq 0?"Off":"On"}</td>
                                            <td class="text-center align-middle">${item.xwatertemp}</td>
                                            <td class="text-center align-middle <c:if test="${item.xpumprun eq 1}">text-danger</c:if>">${item.xpumprun eq 0?"Off":"On"}</td>
                                            <td class="text-center align-middle <c:if test="${item.xsprayrun eq 1}">text-danger</c:if>">${item.xsprayrun eq 0?"Off":"On"}</td>
                                            <td class="text-center align-middle <c:if test="${item.xfan1run eq 1}">text-danger</c:if>">${item.xfan1run eq 0?"Off":"On"}</td>
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

                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:getGhFilteredData(1,'${filter1}');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:getGhFilteredData('${cur_page-1}','${filter1}');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>

                                    <c:forEach var="i" begin="1" end="${remain_page}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:getGhFilteredData('${(cur_sector-1)*page_amount+i}','${filter1}');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>

                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:getGhFilteredData('${cur_page+1}','${filter1}');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:getGhFilteredData('${tot_page}','${filter1}');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
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