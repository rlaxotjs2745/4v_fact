<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2022/06/29
  Time: 2:26 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



            <div class="form-row">
                <div class="form-group col col-md-12">
                    <label class="form-label d-block text-muted">사용신청자</label>
                    <table id="" class="table table-bordered no-footer m-0" role="grid"
                           aria-describedby="article-list_info" style="">
                        <tbody>
                        <tr class="">
                            <th class="text-center align-middle bg-light" rowspan="4" style="width:15%">신청인</th>
                            <th class="text-center bg-light" style="width:15%">소속</th>
                            <td class="text-center" colspan="3">${applicant.corporate_name}</td>
                        </tr>
                        <tr>
                            <th class="text-center bg-light" style="width:15%">직위</th>
                            <td class="text-center" style="width:22.5%">${applicant.job_title}</td>
                            <th class="text-center bg-light" style="width:15%">성명</th>
                            <td class="text-center" style="width:22.5%">${applicant.admin_name}</td>
                        </tr>
                        <tr>
                            <th class="text-center bg-light">연락처</th>
                            <td class="text-center">${applicant.mphone_num}</td>
                            <th class="text-center bg-light">팩스</th>
                            <td class="text-center">${applicant.corporate_fax}</td>
                        </tr>
                        <tr>
                            <th class="text-center align-middle bg-light">실증시설<br>이용현황</th>
                            <td colspan="3">1. 실증시설이용기간 : 2021.00.00 ~ 2022.00.00<br>
                                2. 실증유형 : 자율실증<br>
                                3. 이용시 설명 : XXXXXXXXXXXXX
                            </td>
                        </tr>
                        <tr>
                            <th class="text-center align-middle bg-light" rowspan="1">신청내역</th>
                            <th class="text-center bg-light">신청 기간</th>
                            <fmt:formatDate value="${curReservation.use_start_date}" var="start_date" pattern="yyyy.MM.dd."/>
                            <fmt:formatDate value="${curReservation.use_end_date}" var="end_date" pattern="yyyy.MM.dd."/>
                            <td colspan="3" class="">${start_date}~${end_date}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col col-md-12">
                    <label class="form-label d-block text-muted">사용신청 장비 내역</label>
                    <table id="" class="table table-bordered no-footer m-0" role="grid"
                           aria-describedby="article-list_info" style="">
                        <thead>
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
                        <tr>
                            <td class="text-center">1</td>
                            <td class="text-center">00000000</td>
                            <td class="text-center">XXXXXXXXXXXX</td>
                            <td class="text-center">00</td>
                            <td class="text-center">XXXXX</td>
                            <td class="text-center">XXXXXXXXXXXXXXX</td>
                            <td class="text-center">XXXXX</td>
                            <td class="text-center">XX</td>
                        </tr>
                        <c:forEach items="${itemList}" var="resItem" varStatus="status">
                            <tr>
                                <td class="text-center">${status.count}</td>
                                <td class="text-center" id="asset_code">${resItem.asset_code}</td>
                                <td class="text-center" class="item_name"></td>
                                <td class="text-center">${resItem.amount}</td>
                                <td class="text-center" class="item_model_name"></td>
                                <td class="text-center" class="item_brand"></td>
                                <td class="text-center" class="item_manufacture"></td>
                                <td class="text-center"><span class="${resItem.reservation_item_status == 0 ? "text-warning" : resItem.reservation_item_status == 1 ? "text-info" : resItem.reservation_item_status == 2 ? "text-warning" : resItem.reservation_item_status == 3 ? "text-hero" : ""}">${resItem.reservation_item_status == 0 ? "대기" : resItem.reservation_item_status == 1 ? "승인" : resItem.reservation_item_status == 2 ? "부분승인" : resItem.reservation_item_status == 3 ? "불가" : ""}</span></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <hr class="mt-0">
            <div class="form-row">
                <div class="form-group col col-md-12">
                    <label class="form-label d-block text-muted">신청일</label>
                    <span>2021.00.00</span>
                </div>
            </div>
            <hr class="mt-0">

            <div class="form-row">
                <div class="form-group col col-md-12">
                    <label class="form-label d-block text-muted">검토 결과</label>
                    <table id="" class="table table-bordered no-footer m-0" role="grid"
                           aria-describedby="article-list_info" style="">
                        <thead>
                        <tr>
                            <th class="text-center">No</th>
                            <th class="text-center">관리번호</th>
                            <th class="text-center">실증장비명</th>
                            <th class="text-center">수량</th>
                            <th class="text-center">모델명</th>
                            <th class="text-center">규격 및 구성</th>
                            <th class="text-center">승인</th>
                        </tr>
                        </thead>
                        <tbody>

                        <c:forEach items="${itemList}" var="resItem" varStatus="status">
                            <tr>
                                <td class="text-center">${status.count}</td>
                                <td class="text-center" id="asset_code_status_select">${resItem.asset_code}</td>
                                <td class="text-center" class="item_name"></td>
                                <td class="text-center">${resItem.amount}</td>
                                <td class="text-center" class="item_model_name"></td>
                                <td class="text-center" class="item_brand"></td>
                                <td class="text-center">
                                    <select  class="custom-select custom-select-sm item_status" id="${resItem.idx_asset_reservation_item}" value="${resItem.reservation_item_status}">
                                    <c:if test="${resItem.reservation_item_status eq 1}">
                                        <option value="0">대기</option>
                                        <option value="1" checked>승인</option>
                                        <option value="2">부분 승인</option>
                                        <option value="3">불가</option>
                                    </c:if>
                                        <c:if test="${resItem.reservation_item_status eq 2}">
                                            <option value="0">대기</option>
                                            <option value="1">승인</option>
                                            <option value="2" checked>부분 승인</option>
                                            <option value="3">불가</option>
                                        </c:if>
                                        <c:if test="${resItem.reservation_item_status eq 3}">
                                            <option value="0">대기</option>
                                            <option value="1" >승인</option>
                                            <option value="2">부분 승인</option>
                                            <option value="3" checked>불가</option>
                                        </c:if>
                                        <c:if test="${resItem.reservation_item_status eq 0}">
                                            <option value="0" checked>대기</option>
                                            <option value="1" >승인</option>
                                            <option value="2">부분 승인</option>
                                            <option value="3">불가</option>
                                        </c:if>
                                    </select>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>


<script>
    <c:forEach items="${assetList}" var="asset">
    if("${asset.asset_code}" == $("#asset_code").val()){
        $(".item_name").text("${asset.asset_name}");
        $(".item_brand").text("${asset.asset_brand}");
        $(".item_manufacture").text("${asset.asset_manufacture}");
        $(".item_model_name").text("${asset.asset_model_name}");
    }
    </c:forEach>

    $(".close_reserve_confirm_modal").click(function (){
        modalClose();
    })

    $("#reserve_confirm").click(function (){
        var reservation_status = "";

        $(".item_status").each(function (idx, node){
            console.log($(this).val())
            reservation_status += $(this).val();
            var param = {
                idx_asset_reservation_item: parseInt($(this).attr("id")),
                reservation_item_status: parseInt($(this).val())
            }
            console.log(param);
            $.ajax({
                url: 'asset_reservation_item_confirm',
                method: 'post',
                data: JSON.stringify(param),//보내는 데이터
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'json',//받는 데이터 타입
                success: function (result) {
                    // alert(result.result_str);
                    // if (result.result_code == "SUCCESS") {
                    //     $("#modals-reserve-write").modal("hide");
                    //     $(".modal-backdrop").css("display", "none");
                    //     pageLoad('g30_asset_book_mng', {page_num: 1}, '자원예약관리');
                    // }
                }
            })
        })
        console.log(reservation_status);
        if(!reservation_status.includes("1")){ //보류 불가 부분승인
            if(reservation_status.includes("0")){ // 보류
                reservation_status = 2;
            } else if(!reservation_status.includes("2")){ //불가
                reservation_status = 4;
            } else { //부분
                reservation_status = 3;
            }
        } else { //승인 부분
            if(reservation_status.includes('0') || reservation_status.includes('2') ||reservation_status.includes('3')){
                reservation_status = 3;
            } else {
                reservation_status = 1;
            }
        }
        console.log(reservation_status);

        $.ajax({
            url: 'asset_reservation_confirm',
            method: 'post',
            data: JSON.stringify({idx: parseInt("${myIdx}"), filter1: reservation_status, filter2: parseInt("${curReservation.idx_asset_reservation}")}),//보내는 데이터
            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
            dataType: 'json',//받는 데이터 타입
            success: function (result) {
                alert(result.result_str);
                if (result.result_code == "SUCCESS") {
                    console.log("dodododod")
                    modalClose();
                    // $("#modals-reserve-write").modal("hide");
                    // $(".modal-backdrop").css("display", "none");
                    // pageLoad('g30_asset_book_mng', {page_num: 1}, '자원예약관리');
                } else {
                    console.log("anjrkdksehoTsp")
                }
            }
        })


    })



</script>