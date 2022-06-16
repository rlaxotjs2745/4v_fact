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
    <div class="card-header-title">고객 명단</div>
    <div class="card-header-elements ml-auto">
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-person-write">+ 등록</button>
    </div>
</h6>

<div class="card-datatable table-responsive py-2">
    <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
        <div class="row">
            <div class="col-sm-12 col-md-6">
                <label class="mr-3">총 : <strong>150</strong>명</label><label class="mr-3">위탁 : <strong>70</strong>명</label><label class="mr-3">자율 : <strong>80</strong>명</label>
            </div>
            <div class="col-sm-12 col-md-6">
                <div id="" class="dataTables_filter"><label>찾기:<input type="search" class="form-control form-control-sm" placeholder="기업/기관명, 기업 대표자, 이름, 전화번호" aria-controls="article-list"></label></div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                    <thead>
                    <tr role="row">
                        <th class="text-center px-2" style="width:40px">No</th>
                        <th class="text-center px-2" style="width:80px">고객명</th>
                        <th class="text-center px-2" style="width:80px">구분</th>
                        <th class="text-center px-2" style="width:100px">시스템 권한</th>
                        <th class="text-center px-2" style="width:120px">소속</th>
                        <th class="text-center px-2" style="width:80px">직급</th>
                        <th class="text-center px-2" style="width:100px">회사 전화번호</th>
                        <th class="text-center px-2" style="width:100px">휴대폰 번호</th>
                        <th class="text-center px-2" style="width:100px">팩스번호</th>
                        <th class="text-center px-2" style="width:150px">이메일</th>
                        <th class="text-center px-2" style="width:200px">메모</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="">
                        <td class="text-center">1</td>
                        <td class="text-center"><a href="#none" class="btn btn-underline"  data-toggle="modal" data-target="#modal-person-view">가나다</a></td>
                        <td class="text-center">정회원</td>
                        <td class="text-center">C마스터</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">사장</td>
                        <td class="text-center">000-0000-0000</td>
                        <td class="text-center">000-0000-0000</td>
                        <td class="text-center">000-0000-0000</td>
                        <td class="text-center">xxxx@xxxxx.xxx</td>
                        <td class=""><span class="text-truncate d-inline-block" style="width:200px;">Lorem ipsum dolor</span></td>
                    </tr>
                    <tr class="">
                        <td class="text-center">2</td>
                        <td class="text-center">가나다</td>
                        <td class="text-center">정회원</td>
                        <td class="text-center">C마스터</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">사장</td>
                        <td class="text-center">000-0000-0000</td>
                        <td class="text-center">000-0000-0000</td>
                        <td class="text-center">000-0000-0000</td>
                        <td class="text-center">xxxx@xxxxx.xxx</td>
                        <td class=""><span class="text-truncate d-inline-block" style="width:200px;">Lorem ipsum dolor</span></td>
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
<script>
    var curCategory = "${corpCategory}";
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

    console.log(adminList.length + ", " + adminList[0].maxvalue)

    if(adminList[0].page == 1 && adminList[0].maxvalue == adminList[0].page){
        $("#article-list_previous, #article-list_previous-one, #article-list_next, #article-list_next-one").addClass("disabled");
    } else if(adminList[0].page == 1){
        $("#article-list_previous, #article-list_previous-one").addClass("disabled");
    } else if(adminList[0].maxvalue == adminList[0].page){
        $("#article-list_next, #article-list_next-one").addClass("disabled");
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





    $(".page-link").click(function (){
        if($(this).attr("id") == "article-list_next-one_btn"){
            pageLoad('admin_corporate',{page_num: '${adminList[0].page + 1}', corp: parseInt(curCategory)},'대시보드', "admin");
        } else if($(this).attr("id") == "article-list_next_btn"){
            pageLoad('admin_corporate',{page_num: '${adminList[0].maxvalue}', corp: parseInt(curCategory)},'대시보드', "admin");
        } else if($(this).attr("id") == "article-list_previous_btn"){
            pageLoad('admin_corporate',{page_num:1, corp: parseInt(curCategory)},'대시보드', "admin");
        } else if($(this).attr("id") == "article-list_previous-one_btn"){
            pageLoad('admin_corporate',{page_num: '${adminList[0].page - 1}', corp: parseInt(curCategory)},'대시보드', "admin");
        }
    })

    // pageLoad("admin_corporate", {page_num: 1, corp: 100}, "어드민 보드", true);
</script>
<!-- / Layout footer -->

<!-- / Page content -->
