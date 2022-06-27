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

        <div class="card">
            <h6 class="card-header with-elements">
                <div class="card-header-title">예약 현황</div>
                <div class="card-header-elements ml-auto">
                    <button type="button" class="btn btn-success"  data-toggle="modal" data-target="#modals-reserve-write">자원 예약</button>
                </div>
            </h6>

            <div class="card-datatable table-responsive pt-0 pb-3">
                <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-success text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center px-2" style="width:40px">No</th>
                                    <th class="text-center px-2" style="width:80px">구분</th>
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
                                <tr class="">
                                    <td class="text-center">1</td>
                                    <td class="text-center">신규</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default"  data-toggle="modal" data-target="#modals-reserve-result">예약접수</a></td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">각종 장비류:XXXXX</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">2</td>
                                    <td class="text-center">연장</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">불가</a></td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">각종 장비류:XXXXX</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">3</td>
                                    <td class="text-center">취소</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">대기</a></td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">각종 장비류:XXXXX</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">4</td>
                                    <td class="text-center">신규</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">예약 취소</a></td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">각종 장비류:XXXXX</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">5</td>
                                    <td class="text-center">신규</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">일부 승인</a></td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">각종 장비류:XXXXX</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">6</td>
                                    <td class="text-center">신규</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">예약 접수</a></td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">각종 장비류:XXXXX</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">7</td>
                                    <td class="text-center">신규</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">예약 접수</a></td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">각종 장비류:XXXXX</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">8</td>
                                    <td class="text-center">신규</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">예약 접수</a></td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">각종 장비류:XXXXX</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">9</td>
                                    <td class="text-center">신규</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">예약 접수</a></td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">각종 장비류:XXXXX</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">10</td>
                                    <td class="text-center">신규</td>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-outline-default">예약 접수</a></td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">각종 장비류:XXXXX</td>
                                    <td class="text-center">00</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-center">00</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor</span></td>
                                </tr>
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
                                        <td class="text-center" colspan="3">맛있는 농부</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light" style="width:15%">직위</th>
                                        <td class="text-center" style="width:22.5%">맛있는 농부</td>
                                        <th class="text-center bg-light" style="width:15%">성명</th>
                                        <td class="text-center" style="width:22.5%">홍길동</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">연락처</th>
                                        <td class="text-center">010-0000-0000</td>
                                        <th class="text-center bg-light">팩스</th>
                                        <td class="text-center">010-0000-0000</td>
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
                                <span>YYYY.MM.DD</span>
                            </div>
                            <div class="form-group col col-md-8">
                                <label class="form-label d-block text-muted">신청기간</label>
                                <span>YYYY.MM.DD~YYYY.MM.DD (총 00일간)</span>
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
                                    <tbody>
                                    <tr>
                                        <td class="text-center">1</td>
                                        <td class="text-center">00000000</td>
                                        <td class="text-center">XXXXXXXXXXXX</td>
                                        <td class="text-center">00</td>
                                        <td class="text-center">XXXXX</td>
                                        <td class="text-center">XXXXXXXXXXXXXXX</td>
                                        <td class="text-center">XXXXX</td>
                                        <td class="text-center"><span class="text-info">승인</span></td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">2</td>
                                        <td class="text-center">00000000</td>
                                        <td class="text-center">XXXXXXXXXXXX</td>
                                        <td class="text-center">00</td>
                                        <td class="text-center">XXXXX</td>
                                        <td class="text-center">XXXXXXXXXXXXXXX</td>
                                        <td class="text-center">XXXXX</td>
                                        <td class="text-center"><span class="text-warning">대기</span></td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">3</td>
                                        <td class="text-center">00000000</td>
                                        <td class="text-center">XXXXXXXXXXXX</td>
                                        <td class="text-center">00</td>
                                        <td class="text-center">XXXXX</td>
                                        <td class="text-center">XXXXXXXXXXXXXXX</td>
                                        <td class="text-center">XXXXX</td>
                                        <td class="text-center"><span class="text-hero">불가</span></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary">신청</button>
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
        var idxArr = [];
        $("#apply_checked_entity").children().forEach(function(esset){
            idxArr.push(parseInt(esset.attr("id").substring(7)));
        })
        $.ajax({
            url: 'asset_reservation',
            method: 'post',
            data: JSON.stringify(idxArr),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'html',//받는 데이터 타입
            success:function(result){
                $("#asset_detail_code").html(result).css("display", "inline-block");
            }
        })
    })
</script>
