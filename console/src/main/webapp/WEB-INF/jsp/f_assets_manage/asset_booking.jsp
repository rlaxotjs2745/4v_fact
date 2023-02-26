<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 10:40 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Page content -->
<%--<div class="layout-content">--%>
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>자원 예약</div>
        </h4>

        <div class="card" id="cur_asset_index">

        </div>
        <!-- Modal template -->
        <div class="modal fade" id="modals-source-write">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">자산 등록</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">일련번호</label>
                                <input type="text" class="form-control w-lg-auto" id="asset_code">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">자산 분류</label>
                                <div class="form-inline" id="code_select">
                                    <select class="custom-select mr-sm-2 mb-2 mb-sm-0 code_select" id="main_code">
                                        <option selected="" disabled>대분류 전체</option>
                                        <c:forEach items="${main_cate}" var="cate" varStatus="status">
                                            <option value="${cate.code_value}">${cate.code_name} ${cate.detail != null ?  cate.detail : ""}</option>
                                        </c:forEach>
                                    </select>
                                    <select class="custom-select mr-sm-2 mb-2 mb-sm-0 code_select" id="sub_code" style="display: none">

                                    </select>
                                    <select class="custom-select mr-sm-2 mb-2 mb-sm-0 code_select" id="detail_code" style="display: none">

                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">자산이름</label>
                                <input type="text" class="form-control" id="asset_name">
                            </div>
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">관리 담당</label>
                                <select class="custom-select mr-sm-2 mb-2 mb-sm-0" id="asset_manager">
                                    <option selected="" disabled>관리자 선택</option>
                                    <c:forEach items="${adminList}" var="admin" varStatus="status">
                                        <option value="${admin.admin_name}">${admin.corporate_name == null ? "" : admin.corporate_name} ${admin.admin_name}</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12 mb-0">
                                <label class="form-label d-block text-muted">자산 사진</label>

                                <div class="media align-items-center">
                                    <img src="../..resources/assets/img/bg/1.jpg" alt="" class="d-block ui-w-140">
                                    <div class="media-body ml-4">
                                        <div class="text-light small mt-1">- 신청서 보완 요청서 등록이 필요 합니다.<br>
                                            - 파일 형식 : JPG, PNG</div>
                                    </div>
                                </div>
                                <div class="d-block mt-1">
                                    <input type="file" class="custom-file">
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">예약 가능</label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="reservation" type="radio" class="custom-control-input" value="0">
                                    <span class="custom-control-label">예약 가능</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="reservation" type="radio" class="custom-control-input" value="2">
                                    <span class="custom-control-label">사용 중</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="reservation" type="radio" class="custom-control-input" value="3">
                                    <span class="custom-control-label">파손 수리 중</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="reservation" type="radio" class="custom-control-input" value="4">
                                    <span class="custom-control-label">폐기</span>
                                </label>
                                <label class="custom-control custom-radio d-inline-block">
                                    <input name="reservation" type="radio" class="custom-control-input" value="99">
                                    <span class="custom-control-label">분실</span>
                                </label>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">제조사</label>
                                <input type="text" class="form-control" id="asset_manufacture">
                            </div>
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">브랜드</label>
                                <input type="text" class="form-control" id="asset_brand">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">모델명</label>
                                <input type="text" class="form-control" id="asset_model_name">
                            </div>
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">보관 위치</label>
                                <input type="text" class="form-control" id="asset_loc">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">대표 사용처</label>
                                <input type="text" class="form-control" id="representative_use">
                            </div>
                            <div class="form-group col col-md-6">
                                <label class="form-label d-block text-muted">일련 번호</label>
                                <input type="text" class="form-control" id="asset_pid">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">메모</label>
                                <textarea class="form-control" id="memo" rows="3" placeholder="메모는 고객에게 노출이 되지 않으며 관리자만 볼 수 있습니다."></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="asset_submit">저장</button>
                    </div>
                </form>
            </div>
        </div>

    </div>
<script>
    var reservation;
    $().ready(function(){
        pageLoad("cur_asset_index", {cur_page: 1, filter1: 100}, "자산 현황 보드", "cur_asset_index");
    });

    $('input[name="reservation"]').change(function(){
        reservation = $('input[name="reservation"]:checked').val();
    })

    $("#main_code").change(function(){
        $("#sub_code").css("display", "none");
        $("#detail_code").css("display", "none");

        $.ajax({
            url: 'asset_category',
            method: 'post',
            data: JSON.stringify({code_value: $("#main_code").val(), code_name: "sub_code"}),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'html',//받는 데이터 타입
            success:function(result){
                $("#sub_code").html(result).css("display", "inline-block");
            }
        })
    })

    $("#sub_code").change(function(){
        $("#detail_code").css("display", "none");
        $.ajax({
            url: 'asset_category',
            method: 'post',
            data: JSON.stringify({code_value: $("#sub_code").val(), code_name: "detail_code"}),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'html',//받는 데이터 타입
            success:function(result){
                $("#detail_code").html(result).css("display", "inline-block");
            }
        })
    })

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
    })

    $("#inqure_asset").click(function (){
        pageLoad("cur_asset_index", {
            cur_page: 1,
            filter1: parseInt($("#asset_main_code").val()),
            filter2: parseInt($("#asset_sub_code").val()),
            filter3: parseInt($("#asset_detail_code").val()),
        }, "자산 현황 보드", "cur_asset_index");
    })

    $("#asset_submit").click(function(){
        var param = {
            asset_code:$("#asset_code").val(),
            asset_main_category_code: parseInt($("#main_code").val()),
            asset_sub_category_code: parseInt($("#sub_code").val()),
            asset_detail_category_code: parseInt($("#detail_code").val()),
            asset_name: $("#asset_name").val(),
            asset_status: parseInt(reservation),
            is_asset_photo_file: 0,
            asset_manufacture: $("#asset_manufacture").val(),
            asset_brand: $("#asset_brand").val(),
            asset_model_name: $("#asset_model_name").val(),
            asset_pid: $("#asset_pid").val(),
            asset_manager_name: $("#asset_manager").val(),
            asset_loc: $("#asset_loc").val(),
            representative_use: $("#representative_use").val(),
            memo: $("#memo").val(),
            idx_admin: curMyIdx
        }
        $.ajax({
            type: 'post',
            url: 'register_asset',
            data: JSON.stringify(param),
            contentType: "application/json; charset=utf-8;",
            dataType: 'json',
            success: function (res) {
                if(res.result_code == "SUCCESS")
                    alert(res.result_str);
                $("#modals-source-write").modal("hide");
                $("#asset_code").text("")
                $("#main_code").val("");
                $("#sub_code").val("");
                $("#detail_code").val("");
                $("#asset_name").text("");
                $("#asset_manufacture").text("");
                $("#asset_brand").text("");
                $("#asset_model_name").text("");
                $("#asset_pid").text("");
                $("#asset_manager").val("");
                $("#asset_loc").text("");
                $("#representative_use").text("");
                $("#memo").text("");
                pageLoad("cur_asset_index", {cur_page: 1, filter1: 100}, "자산 현황 보드", "cur_asset_index");
            }
        })
    })



</script>
<!-- / Page content -->



<!-- / Page content -->
