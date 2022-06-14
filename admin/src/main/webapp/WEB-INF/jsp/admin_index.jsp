<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2022/06/14
  Time: 10:19 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h6 class="card-header with-elements">
    <div class="card-header-title">직원 명단</div>
    <div class="card-header-elements ml-auto">
        <button type="button" class="btn btn-success"  data-toggle="modal" data-target="#modal-staff-write">+ 등록</button>
        <button type="button" class="btn btn-success"  data-toggle="modal" data-target="#modal-staff-upload">+ 일괄등록</button>
    </div>
</h6>

<div class="card-datatable table-responsive py-2">
    <div class="dataTables_wrapper dt-bootstrap4 no-footer">
        <div class="row">
            <div class="col-sm-12 col-md-6">
                <label class="mr-3">총 : <strong>${adminCount}</strong>명</label>
            </div>
            <div class="col-sm-12 col-md-6">
                <div class="dataTables_filter"><label>찾기:<input type="search" class="form-control form-control-sm" placeholder="소속, 이름, 전화번호" aria-controls="article-list"></label></div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <table class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                    <thead>
                    <tr role="row">
                        <th class="text-center px-2" style="width:40px">No</th>
                        <th class="text-center px-2" style="width:80px">직원명</th>
                        <th class="text-center px-2" style="width:80px">구분</th>
                        <th class="text-center px-2" style="width:80px">시스템 권한</th>
                        <th class="text-center px-2" style="width:150px">소속</th>
                        <th class="text-center px-2" style="width:70px">담당업무</th>
                        <th class="text-center px-2" style="width:70px">직급</th>
                        <th class="text-center px-2" style="width:130px">사무실 전화번호</th>
                        <th class="text-center px-2" style="width:130px">휴대폰 번호</th>
                        <th class="text-center px-2" style="width:150px">이메일</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${adminList}" var="admin" varStatus="status">
                        <tr class="admin-entity" id="${admin.idx_admin}">
                            <td class="text-center" class="page-count">${admin.page * 10 - 10 + status.count}</td>
                            <td class="text-center"><a href="#none" class="btn btn-underline"  data-toggle="modal" data-target="#modals-staff-view" class="admin-name">${admin.admin_name}</a></td>
                            <td class="text-center" class="admin-corp-type">${admin.corporate eq 0 ? "진흥원" : admin.corporate eq 1 ? "센터" : admin.corporate eq 2 ? "지자체" : "기타"}</td>
                            <td class="text-center" class="admin-type">${admin.sign_in_type eq 1 ? "SA" : "BM"}</td>
                            <td class="text-center" class="admin-corp">${admin.corporate_name}</td>
                            <td class="text-center" class="admin-depart">${admin.main_part != null ? admin.main_part : "-"}</td>
                            <td class="text-center" class="admin-jobTitle">${admin.job_title}</td>
                            <td class="text-center" class="admin-telnum">${admin.corporate_num}</td>
                            <td class="text-center" class="admin-mphonenum">${admin.mphone_num}</td>
                            <td class="text-center" class="admin-emailid">${admin.admin_id}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-5">
                <div class="dataTables_info" role="status" aria-live="polite">Showing ${adminList[0].page * 10 - 9} to ${adminList[0].page * 10 > adminCount ? adminCount : adminList[0].page * 10} of ${adminList[0].maxvalue} entries</div>
            </div>
            <div class="col-sm-12 col-md-7">
                <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                    <ul class="pagination">
                        <li class="paginate_button page-item previous disabled" id="article-list_previous"><a href="javascript:pageLoad('i21_admin_mng',{page_num:1},'대시보드');"aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li>
                        <li class="paginate_button page-item previous disabled" id="article-list_previous-one"><a href="javascript:pageLoad('i21_admin_mng',{page_num:'${adminList[0].page + pageBool - 5}'},'대시보드');"aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li>
                        <li class="paginate_button page-item " id="page1-button"><a href="javascript:pageLoad('admin_corporate',{page_num:'${adminList[0].page + pageBool - 4}'},'대시보드');" aria-controls="article-list" data-dt-idx="1" tabindex="0" class="page-link">${adminList[0].page + pageBool - 4}</a></li>
                        <li class="paginate_button page-item " id="page2-button"><a href="javascript:pageLoad('admin_corporate',{page_num:'${adminList[0].page + pageBool - 3}'},'대시보드');" aria-controls="article-list" data-dt-idx="2" tabindex="0" class="page-link">${adminList[0].page + pageBool - 3}</a></li>
                        <li class="paginate_button page-item " id="page3-button"><a href="javascript:pageLoad('admin_corporate',{page_num:'${adminList[0].page + pageBool - 2}'},'대시보드');" aria-controls="article-list" data-dt-idx="3" tabindex="0" class="page-link">${adminList[0].page + pageBool - 2}</a></li>
                        <li class="paginate_button page-item " id="page4-button"><a href="javascript:pageLoad('admin_corporate',{page_num:'${adminList[0].page + pageBool - 1}'},'대시보드');" aria-controls="article-list" data-dt-idx="4" tabindex="0" class="page-link">${adminList[0].page + pageBool - 1}</a></li>
                        <li class="paginate_button page-item " id="page5-button"><a href="javascript:pageLoad('admin_corporate',{page_num:'${adminList[0].page + pageBool}'},'대시보드');" aria-controls="article-list" data-dt-idx="5" tabindex="0" class="page-link">${adminList[0].page + pageBool}</a></li>
                        <li class="paginate_button page-item next" id="article-list_next-one"><a href="javascript:pageLoad('i21_admin_mng',{page_num: '${adminList[0].page + pageBool - 3}'},'대시보드');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li>
                        <li class="paginate_button page-item next" id="article-list_next"><a href="javascript:pageLoad('i21_admin_mng',{page_num: '${adminList[0].maxvalue}'},'대시보드');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<script>

    var curPage = "${adminList[0].page}";
    var curUser;

    // pageLoad("admin_corporate", {page_num: 1, corp: 100}, "어드민 보드", true);

    if(curPage != "1"){
        $("#article-list_previous").removeClass("disabled");
        $("#article-list_previous-one").removeClass("disabled");
    }
    if("${pageBool}" == "0"){
        $("#article-list_next").addClass("disabled");
        $("#article-list_next-one").addClass("disabled");
    }


    $.each($(".page-item a"), function(idx,obj){
        if($(obj).text() == "${adminList[0].page}"){
            $(obj).parent().addClass("active");
        }
    })

    var adminList = [];
    <c:forEach items="${adminList}" var="admin">
    adminList.push({
        idx_admin: "${admin.idx_admin}",
        admin_id: "${admin.admin_id}",
        admin_pw: "${admin.admin_pw}",
        admin_name: "${admin.admin_name}",
        corporate: "${admin.corporate}",
        corporate_name: "${admin.corporate_name}",
        corporate_num: "${admin.corporate_num}",
        corporate_fax: "${admin.corporate_fax}",
        corporate_homepage: "${admin.corporate_homepage}",
        job_title: "${admin.job_title}",
        auth_status: "${admin.auth_status}",
        tel_num: "${admin.tel_num}",
        mphone_num: "${admin.mphone_num}",
        admin_type: "${admin.admin_type}",
        main_part: "${admin.main_part}",
        manage_num: "${admin.manage_num}",
        sign_in_type: "${admin.sign_in_type}",
        admin_addr: "${admin.admin_addr}",
        page: "${admin.page}",
        maxvalue: "${admin.maxvalue}"
    })
    </c:forEach>


    if(adminList.length > 0 || adminList[0].maxvalue <= 10){
        $("#page1-button, #page2-button, #page3-button, #page4-button").css("display", "none");
    } else if(adminList[0].maxvalue <= 20){
        $("#page1-button, #page2-button, #page3-button").css("display", "none");
    } else if(adminList[0].maxvalue <= 30){
        $("#page1-button, #page2-button").css("display", "none");
    } else if(adminList[0].maxvalue <= 40){
        $("#page1-button").css("display", "none");
    }



    var modelArr = [];
    var corpName = ""
    <c:forEach items="${corps}" var="corp">
    modelArr.push({
        idx_corp_info: "${corp.idx_corp_info}",
        corp_name_kor: "${corp.corp_name_kor}",
        company_num: "${corp.company_num}" ? "${corp.company_num}" : "-",
        tel_num: "${corp.tel_num}" ? "${corp.tel_num}" : "-",
        fax_num: "${corp.fax_num}" ? "${corp.fax_num}" : "-",
        homepage: "${corp.homepage}" ? "${corp.homepage}" : "-",
    })
    </c:forEach>

    $("#addr_search, #addr_main").click(function() {
        new daum.Postcode({
            oncomplete: function (data) {
                $("#addr_main").val(data.roadAddress + " " + data.buildingName);
                // console.log(data);
            }
        }).open();
    })

    $("#addr_main_modify, #addr_search_modify").click(function() {
        new daum.Postcode({
            oncomplete: function (data) {
                $("#addr_main").val(data.roadAddress + " " + data.buildingName);
                // console.log(data);
            }
        }).open();
    })


    $("#corp_select").change(function(){
        for(var corp of modelArr){
            if(corp.idx_corp_info == $("#corp_select").val()){
                corpName = corp.corp_name_kor;
                $("#corp_telnum").val(corp.tel_num);
                $("#corp_homepage").val(corp.homepage);
                $("#corp_fax").val(corp.fax_num);
            }
        }
    })

    $("#admin_id_select_box").change(function(){
        if($("#admin_id_select_box").val() == "0"){
            $("#web_id2").attr("readonly", false);
            $("#web_id2").val("");
        } else {
            $("#web_id2").attr("readonly", true);
            $("#web_id2").val($("#admin_id_select_box").val());
        }
    })

    $("#web_id_check").click(function(){
        var user_id = $("#web_id").val();
        var user_id2 = $("#web_id2").val();
        if(user_id.length == 0 || user_id2.length == 0){
            alert("아이디가 입력되지 않았습니다");
            return;
        }
        var param = {"admin_id":user_id + "@" + user_id2};

        // if(!CheckEmail(user_id)){
        //     alert("아이디는 이메일형식입니다");
        //     return;
        // }

        $.ajax({
            type: 'post',
            url :'admin_id_check', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                console.log(result);
                if(result.result_code=="SUCCESS"){
                    $("#web_id_guide").html("사용 가능한 아이디입니다.");
                }
                else {
                    $("#web_id_guide").html("사용 불가능한 아이디입니다.");
                    // $("#").addClass("is-alert");
                }
            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
            }
        });
    });

    $("#btn-admin-join").click(function(){
        if(
            $("#web_id").val() == "" ||
            $("#web_id2").val() == "" ||
            $("#admin_name").val() == "" ||
            corpName == "" ||
            $("#job_title").val() == "" ||
            $("#mphone_num").val() == "" ||
            $("#sign_in_type").val() == ""
        ){
            alert("회원가입에 필요한 데이터가 모두 입력되지 않았습니다.");
            return;
        }

        var param = {
            admin_id: $("#web_id").val() + "@" + $("#web_id2").val(),
            admin_name: $("#admin_name").val(),
            corporate_name: corpName,
            job_title: $("#job_title").val(),
            auth_status: 0,
            tel_num: $("#tel_num").val() == "" ? "-" : $("#tel_num").val(),
            mphone_num: $("#mphone_num").val(),
            sign_in_type: $("#sign_in_type").val(),
            corporate_num: $("#corporate_num").val(),
            corporate_fax: $("#corporate_fax").val(),
            corporate_homepage: $("#corporate_homepage").val(),
            admin_type: $("#admin_type").val(),
            main_part: $("#main_part").val(),
            manage_num: $("#manage_num").val(),
            admin_addr: $("#addr_main").val() + " " + $("#addr_detail").val()
        }

        $.ajax({
            type: 'post',
            url: 'admin_join',
            data: JSON.stringify(param),
            contentType:"application/json; charset=utf-8;",
            dataType:'json',
            success: function(res){
                if(res.result_code == "SUCCESS"){
                    alert("관리자 등록이 완료되었습니다.\n생성한 계정의 비밀번호는 아이디로 지정한 메일로 전송되었습니다.");
                    $("#modal-staff-write").removeClass("show");
                    $(".modal-backdrop").removeClass("show");
                    pageLoad("i21_admin_mng");
                    $("#admin_name").val("");
                    $("#tel_num").val("");
                    $("#mphone_num").val("");
                    $("#email_admin").val("");
                    $("#addr_main").val("");
                    $("#addr_detail").val("");
                    $("#corp_select").val("");
                    $("#job_title").val("");
                    $("#corp_telnum").val("");
                    $("#corp_fax").val("");
                    $("#corp_homepage").val("");
                    $("#admin_rolenum").val("");
                    $("#admin_role").val("");
                    $("#web_id").val("");
                    $("#web_id2").val("");
                    $("#web_id2").val("");
                    $("#admin_id_select_box").val("0");
                    $("#web_id_guide").html("");
                }
            },
            error:function(res){
                alert(res.result_str);
                //에러가 났을 경우 실행시킬 코드
            }
        })

    })

    $("#initializtion_pw").click(function(){
        if(confirm("해당 아이디의 비밀번호를 초기화하시겠습니까?")){
            var selectId = $(this).parent().attr('id');
            $.ajax({
                type: 'post',
                url: 'admin_pw_initialization',
                data: JSON.stringify(parseInt(selectId)),
                contentType:"application/json; charset=utf-8;",
                dataType:'json',
                success: function(res){
                    if(res.result_code == "SUCCESS"){
                        alert("비밀번호가 초기화되었습니다. \n초기화된 비밀번호는 이메일로 전송되었습니다.");
                    }
                    else{
                        alert(res.result_str);
                    }
                }
            })
        }
    })


    $(".admin-entity").click(function(){
        var selectId = $(this).attr('id');
        curUser = selectId;
        for(var admin of adminList){
            if(selectId == admin.idx_admin){
                $(".store-idx").attr("id", selectId);
                $("#admin_name_detail").text(admin.admin_name);
                $("#tel_num_detail").text(admin.tel_num);
                $("#mphone_num_detail").text(admin.mphone_num);
                $("#addr_main_detail").text(admin.admin_addr);
                $("#corporate_name_detail").text(admin.corporate_name);
                $("#job_title_detail").text(admin.job_title);
                $("#corporate_num_detail").text(admin.corporate_num);
                $("#corporate_fax_detail").text(admin.corporate_fax);
                $("#corporate_homepage_detail").text(admin.corporate_homepage);
                $("#main_part_detail").text(admin.main_part);
                $("#manage_num_detail").text(admin.manage_num);
                $("#web_id_detail").text(admin.admin_id);
                $("#admin_type_detail").text(admin.admin_type == "512" ? "슈퍼관리자" : admin.admin_type == "1" ? "실증책임자" : admin.admin_type == "2" ? "재배사" : admin.admin_type == "4" ? "관계기관" : "일반관리자");

                $("#admin_name_modify").val(admin.admin_name);
                $("#tel_num_modify").val(admin.tel_num);
                $("#mphone_num_modify").val(admin.mphone_num);
                $("#admin_type_modify").val(admin.admin_type);
                $("#addr_main_modify").val(admin.admin_addr);
                $("#corp_select_modify").val(admin.corporate_name);
                $("#job_title_modify").val(admin.job_title);
                $("#corporate_num_modify").val(admin.corporate_num);
                $("#corporate_fax_modify").val(admin.corporate_fax);
                $("#corporate_homepage_modify").val(admin.corporate_homepage);
                $("#main_part_modify").val(admin.main_part);
                $("#manage_num_modify").val(admin.manage_num);
                $("#web_id_modify").val(admin.admin_id);
                $("#sign_in_type_modify").val(admin.sign_in_type);
                break;
            }
        }
    })

    $("#btn-admin-modify").click(function(){
        var param = {
            idx_admin: parseInt(curUser),
            tel_num: $("#tel_num_modify").val(),
            mphone_num: $("#mphone_num_modify").val(),
            admin_type: $("#admin_type_modify").val(),
            admin_addr: $("#addr_detail_modify").val() != "" ? $("#addr_main_modify").val() + " " + $("#addr_detail_modify").val() : $("#addr_main_modify").val(),
            job_title: $("#job_title_modify").val(),
            main_part: $("#main_part_modify").val(),
            manage_num: $("#manage_num_modify").val(),
            sign_in_type: $("#sign_in_type_modify").val()
        }
        $.ajax({
            type: 'post',
            url: 'admin_modify',
            data: JSON.stringify(param),
            contentType:"application/json; charset=utf-8;",
            dataType:'json',
            success: function(res){
                if(res.result_code == "SUCCESS"){
                    alert("관리자 정보가 성공적으로 변경되었습니다.");
                    $("#modal-staff-modify").removeClass("show");
                    $(".modal-backdrop").removeClass("show");
                    pageLoad("i21_admin_mng");
                    $("#admin_name_modify").val("");
                    $("#tel_num_modify").val("");
                    $("#mphone_num_modify").val("");
                    $("#admin_type_modify").val("");
                    $("#addr_main_modify").val("");
                    $("#corp_select_modify").val("");
                    $("#job_title_modify").val("");
                    $("#corporate_num_modify").val("");
                    $("#corporate_fax_modify").val("");
                    $("#corporate_homepage_modify").val("");
                    $("#main_part_modify").val("");
                    $("#manage_num_modify").val("");
                    $("#web_id_modify").val("");
                    $("#sign_in_type_modify").val("");
                    $("#admin_id_select_box").val("0");
                    $("#web_id_guide").html("");
                }
            },
            error:function(res){
                alert(res.result_str);
                //에러가 났을 경우 실행시킬 코드
            }
        })

    })

    $("#btn-admin-delete").click(function(){
        if(confirm($("#admin_name_modify").val() + "님의 관리자 계정을 삭제하시겠습니까?")){

            $.ajax({
                type: 'post',
                url: 'admin_delete',
                data: JSON.stringify(parseInt(curUser)),
                contentType:"application/json; charset=utf-8;",
                dataType:'json',
                success: function(res){
                    if(res.result_code == "SUCCESS"){
                        alert("해당 관리자 계정이 삭제되었습니다.");
                        $(".modal-backdrop").removeClass("show");
                        pageLoad("i21_admin_mng");
                    }
                },
                error:function(res){
                    alert(res.result_str);
                    //에러가 났을 경우 실행시킬 코드
                }
            })
        }
    })

    $("")

    // pageLoad("admin_corporate", {page_num: 1, corp: 100}, "어드민 보드", true);
</script>
<!-- / Layout footer -->

<!-- / Page content -->
