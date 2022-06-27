<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>자원 예약</div>
        </h4>
        <div class="row">
            <div class="col-sm-6 col-xl-4">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">신규 예약</div>
                            <div class="text-large">5200</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-4">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">예약 승인</div>
                            <div class="text-large">2590</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-4">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">예약 불가</div>
                            <div class="text-large">000</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card px-4 pt-4 ">
            <div class="form-row mb-4">
                <div class="col-lg-3 col-md-6 ">
                    <label class="form-label text-muted">조회 구분</label>
                    <div class="form-inline mt-2">
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">전체</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">승인</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">승인불가</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-label">예약 취소</span>
                        </label>
                    </div>
                </div>
                <div class="col-lg-7 col-md-6">
                    <label class="form-label text-muted">조회기간</label>
                    <div class="form-inline">
                        <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-secondary active">
                                <input type="radio" name="btn-radio" checked="">오늘
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio"> 1주일
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio"> 1개월
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio"> 3개월
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio"> 6개월
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio"> 1년이상
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 text-right">
                    <label class="form-label d-none d-md-block">&nbsp;</label>
                    <button type="button" class="btn btn-success">조회</button>
                </div>
            </div>
        </div>

        <hr>

        <div class="card" id="asset_reservation_list">

        </div>

        <div class="d-flex justify-content-end align-items-end demo-inline-spacing w-100 mt-3">
            <button type="button" class="btn btn-success mr-0">자원 예약</button>
        </div>

        <!-- Modal template -->
        <div class="modal fade" id="modals-reserve-write">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">자원 예약 신청서 작성</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">사용신청자</label>
                                <table id="" class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                    <tbody>
                                    <tr class="">
                                        <th class="text-center align-middle bg-light" rowspan="4" style="width:15%">신청인</th>
                                        <th class="text-center bg-light" style="width:15%">소속</th>
                                        <td class="text-center" colspan="3">${myInfo.corporate_name}</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light" style="width:15%">직위</th>
                                        <td class="text-center" style="width:22.5%">${myInfo.job_title}</td>
                                        <th class="text-center bg-light" style="width:15%">성명</th>
                                        <td class="text-center" style="width:22.5%">${myInfo.admin_name}</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">연락처</th>
                                        <td class="text-center">${myInfo.mphone_num}</td>
                                        <th class="text-center bg-light">팩스</th>
                                        <td class="text-center">${myInfo.corporate_fax}</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center align-middle bg-light">실증시설<br>이용현황</th>
                                        <td colspan="3">1. 실증시설이용기간 : 2021.00.00 ~ 2022.00.00<br>
                                            2. 실증유형 : 자율실증<br>
                                            3. 이용시 설명 : XXXXXXXXXXXXX</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center align-middle bg-light" rowspan="2">신청내역</th>
                                        <th class="text-center bg-light">사용기간</th>
                                        <td colspan="3" class="">2021.00.00~2022.00.00</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">사용기간</th>
                                        <td colspan="3" class="">2021.00.00~2022.00.00</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">사용신청 가능한 장비 목록</label>
                                <div class="form-inline mb-2">
                                    <select class="custom-select mr-sm-2 mb-2 mb-sm-0" id="asset_main_code">
                                        <option value="100" selected>대분류 전체</option>
                                        <c:forEach items="${main_cate}" var="cate" varStatus="status">
                                            <option value="${cate.code_value}">${cate.code_name} ${cate.detail != null ?  cate.detail : ""}</option>
                                        </c:forEach>
                                    </select>
                                    <select class="custom-select mr-sm-2 mb-2 mb-sm-0" id="asset_sub_code" value="0" style="display: none">
                                        <option value="0" selected>중분류 전체</option>
                                    </select>
                                    <select class="custom-select mr-sm-2 mb-2 mb-sm-0" id="asset_detail_code" value="0" style="display: none">
                                        <option value="0" selected>소분류 전체</option>
                                    </select>
                                </div>
                                <table id="" class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                    <thead>
                                    <tr>
                                        <th class="text-center">No</th>
                                        <th class="text-center">관리번호</th>
                                        <th class="text-center">실증장비명</th>
                                        <th class="text-center">모델명</th>
                                        <th class="text-center">제조사</th>
                                        <th class="text-center">신청</th>
                                    </tr>
                                    </thead>
                                    <tbody id="asset_list">

                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">사용신청 장비 내역</label>

                                <table id="" class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                    <thead>
                                    <tr>
                                        <th class="text-center">No</th>
                                        <th class="text-center">관리번호</th>
                                        <th class="text-center">실증장비명</th>
                                        <th class="text-center">모델명</th>
                                        <th class="text-center">제조사</th>
                                        <th class="text-center">취소</th>
                                    </tr>
                                    </thead>
                                    <tbody id="apply_checked_entity">

                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">용도</label>
                                <textarea class="form-control" id="asset_usage" rows="3" placeholder="1000자 이내로 작성이 가능합니다."></textarea>
                            </div>
                        </div>
                        <div class="form-row">
                            <label class="form-label d-block text-muted">사용 기간</label>
                            <div class="col-md-10">
                                <div id="datepicker-open" class="input-daterange input-group mode-edit mode-new">
                                    <input type="text" class="form-control" name="posting_start_date" id="reserve_start_date">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">~</span>
                                    </div>
                                    <input type="text" class="form-control" name="posting_end_date" id="reserve_end_date">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="asset_reservation_apply">신청</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="modal fade" id="modals-reserve-result">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">자원 예약 신청 결과</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">신청일</label>
                                <span id="reservation_register_date">YYYY.MM.DD</span>
                            </div>
                            <div class="form-group col col-md-8">
                                <label class="form-label d-block text-muted">신청기간</label>
                                <span id="reservation_using_term">YYYY.MM.DD~YYYY.MM.DD (총 00일간)</span>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">사용신청 장비 내역</label>

                                <table id="" class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                    <thead>
                                    <tr>
                                        <th class="text-center">No</th>
                                        <th class="text-center">관리번호</th>
                                        <th class="text-center">실증장비명</th>
                                        <th class="text-center">수량</th>
                                        <th class="text-center">모델명</th>
                                        <th class="text-center">규격 및 구성</th>
                                        <th class="text-center">제조사</th>
                                        <th class="text-center">결과</th>
                                    </tr>
                                    </thead>
                                    <tbody id="">

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
                        <button type="button" class="btn btn-primary">신청 취소</button>
                    </div>
                </form>
            </div>
        </div>

    </div>

<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
<!-- / Layout footer -->

<!-- / Page content -->
<script>
    pageLoad("get_asset_list", {page_num: 1, filter1: 100}, "자산 현황 보드", "asset_list");
    pageLoad("asset_reservation_list", {page_num: 1, filter1: 100}, "자산 예약 보드", "asset_reservation_list");

    var checkedIdxArr = [];

    $(function() {
        var isRtl = $('html').attr('dir') === 'rtl';

        $('#datepicker-show,#datepicker-open').datepicker({
            orientation: isRtl ? 'auto right' : 'auto left',
            format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
            startDate: '-10d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
            language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
        });


    });
    $(function () {
        // Time
        $('#flatpickr-time-start,#flatpickr-time-end').flatpickr({
            enableTime: true,
            noCalendar: true,
            altInput: true,
            static:true
        });
    });

    $("#asset_main_code").change(function(){
        $("#asset_sub_code").css("display", "none");
        $("#asset_detail_code").css("display", "none");

        $.ajax({
            url: 'asset_category',
            method: 'post',
            data: JSON.stringify({code_value: $("#asset_main_code").val(), code_name: "sub_code"}),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'html',//받는 데이터 타입
            success:function(result){
                $("#asset_sub_code").html(result).css("display", "inline-block");
            }
        })

        pageLoad("get_asset_list", {filter1: $("#asset_main_code").val()}, "자산 현황 보드", "asset_list");
    })

    $("#asset_sub_code").change(function(){
        $("#asset_detail_code").css("display", "none");
        $.ajax({
            url: 'asset_category',
            method: 'post',
            data: JSON.stringify({code_value: $("#asset_sub_code").val(), code_name: "detail_code"}),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'html',//받는 데이터 타입
            success:function(result){
                $("#asset_detail_code").html(result).css("display", "inline-block");
            }
        })
        pageLoad("get_asset_list", {filter2: $("#asset_sub_code").val()}, "자산 현황 보드", "asset_list");
    })

    $("#asset_detail_code").change(function(){
        pageLoad("get_asset_list", {filter3: $("#asset_detail_code").val()}, "자산 현황 보드", "asset_list");
    })

    $("#asset_reservation_apply").click(function(){
        if($("#apply_checked_entity").children().length){
            var idxArr = [];
            var reserveObj = {
                idx_user: ${myInfo.idx_admin},
                reservation_status: 0,
                is_end: 0,
                use_start_date: $("#reserve_start_date").val(),
                use_end_date: $("#reserve_end_date").val(),
                is_return: 0,
                asset_usage: $("#asset_usage").val()
            }
            $.each($("#apply_checked_entity").children(),function(idx, esset){
                idxArr.push($(esset).attr("id").substring(8));
            })
            reserveObj.assetList = idxArr;
            $.ajax({
                url: 'asset_reservation',
                method: 'post',
                data: JSON.stringify(reserveObj),//보내는 데이터
                contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                dataType:'json',//받는 데이터 타입
                success:function(result){
                    console.log(result);
                    alert(result.result_str);
                    if(result.result_code == "SUCCESS"){
                        $("#modals-reserve-write").modal("hide");
                        $(".modal-backdrop").css("display", "none");
                        pageLoad('g20_asset_booking',{page_num:1},'자원예약관리');
                    }
                }
            })
        } else {
            alert("신청 장비가 없습니다. 장비를 선택한 후 다시 신청해주세요.")
        }

    })

</script>
