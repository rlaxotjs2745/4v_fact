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
<%--        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-person-write">+ 등록</button>--%>
    </div>
</h6>

<div class="card-datatable table-responsive py-2">
    <div class="dataTables_wrapper dt-bootstrap4 no-footer">
        <div class="row">
            <div class="col-sm-12">
                <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                    <thead class="bg-success text-white font-weight-bold">
                    <tr role="row">
                        <th class="text-center px-2" style="width:40px">No</th>
                        <th class="text-center px-2" style="width:150px">이메일</th>
                        <th class="text-center px-2" style="width:80px">고객명</th>
                        <th class="text-center px-2" style="width:100px">휴대폰 번호</th>
                        <th class="text-center px-2" style="width:120px">일반/기업 회원</th>
                        <th class="text-center px-2" style="width:200px">메모</th>
                    </tr>
                    </thead>
                    <tbody class="max-value-starage" id="${maxBool ? maxvalue : "noMax"}">
                    <c:forEach items="${userList}" var="user" varStatus="status">
                        <tr class="user_entity" id="${user.idx_user}">
                            <td class="text-center">${user.page * 10 - 10 + status.count}</td>
                            <td class="text-center">${user.user_id}</td>
                            <td class="text-center"><a class="btn btn-underline"  data-toggle="modal" data-target="#modal-person-view">${user.user_name}</a></td>
                            <td class="text-center">${user.mphone_num}</td>
                            <td class="text-center">${user.is_corporate_member == 0 ? "일반회원" : "기업회원"}</td>
                            <td class=""><span class="text-truncate d-inline-block" style="width:200px;">${user.ban_memo != null ? user.ban_memo : ""}</span></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-5">
                <div class="dataTables_info" id="" role="status" aria-live="polite">Showing ${maxBool ? page * 10 - 9 : 1} to ${!maxBool ? 1 : page * 10 > count ? count : page * 10} of ${count} entries</div>
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
    var curCategory = ${filter};
    var maxValue = ${maxvalue};
    var page = ${page};

    var userArr = [];
    <c:forEach items="${userList}" var="user" varStatus="status">
        userArr.push({
            idx_user: "${user.idx_user}" ? "${user.idx_user}" : null,
            user_id: "${user.user_id}" ? "${user.user_id}" : null,
            user_pw: "${user.user_pw}" ? "${user.user_pw}" : null,
            user_name: "${user.user_name}" ? "${user.user_name}" : null,
            addr: "${user.addr}" ? "${user.addr}" : null,
            tel_num: "${user.tel_num}" ? "${user.tel_num}" : null,
            mphone_num: "${user.mphone_num}" ? "${user.mphone_num}" : null,
            email: "${user.email}" ? "${user.email}" : null,
            user_type: "${user.user_type}" ? "${user.user_type}" : null,
            ban_memo: "${user.ban_memo}" ? "${user.ban_memo}" : null,
            is_service_agree: "${user.is_service_agree}" ? "${user.is_service_agree}" : null,
            service_agree_ver: "${user.service_agree_ver}" ? "${user.service_agree_ver}" : null,
            is_privacy_agree: "${user.is_privacy_agree}" ? "${user.is_privacy_agree}" : null,
            privacy_agree_ver: "${user.privacy_agree_ver}" ? "${user.privacy_agree_ver}" : null,
            is_third_party_agree: "${user.is_third_party_agree}" ? "${user.is_third_party_agree}" : null,
            third_party_agree_ver: "${user.third_party_agree_ver}" ? "${user.third_party_agree_ver}" : null,
            is_maketing_agree: "${user.is_maketing_agree}" ? "${user.is_maketing_agree}" : null,
            maketing_agree_ver: "${user.maketing_agree_ver}" ? "${user.maketing_agree_ver}" : null,
            auth_status: "${user.auth_status}" ? "${user.auth_status}" : null,
            is_applicant: "${user.is_applicant}" ? "${user.is_applicant}" : null,
            is_corporate_member: "${user.is_corporate_member}" ? "${user.is_corporate_member}" : null,
            idx_corp_info: "${user.idx_corp_info}" ? "${user.idx_corp_info}" : null,
            sign_in_type: "${user.sign_in_type}" ? "${user.sign_in_type}" : null,
            is_sms_agree: "${user.is_sms_agree}" ? "${user.is_sms_agree}" : null,
            is_email_agree: "${user.is_email_agree}" ? "${user.is_email_agree}" : null,
            reg_date: "${user.reg_date}" ? "${user.reg_date}" : null,
            last_upd_date: "${user.last_upd_date}" ? "${user.last_upd_date}" : null,
        })
    </c:forEach>


    if(!${maxBool}){
        $("#article-list_previous").addClass("disabled");
        $("#article-list_previous-one").addClass("disabled");
        $("#article-list_next").addClass("disabled");
        $("#article-list_next-one").addClass("disabled");
    }

    if(page <= 1){
        $("#article-list_previous").addClass("disabled");
        $("#article-list_previous-one").addClass("disabled");
    }
    if(page >= maxValue){
        $("#article-list_next").addClass("disabled");
        $("#article-list_next-one").addClass("disabled");
    }

    $(".page-link").click(function (){
        if($(this).attr("id") == "article-list_next-one_btn"){
            pageLoad('user_index',{cur_page: page + 1, filter1: curCategory},'대시보드', "user");
        } else if($(this).attr("id") == "article-list_next_btn"){
            pageLoad('user_index',{cur_page: maxValue, filter1: curCategory},'대시보드', "user");
        } else if($(this).attr("id") == "article-list_previous_btn"){
            pageLoad('user_index',{cur_page:1, filter1: curCategory},'대시보드', "user");
        } else if($(this).attr("id") == "article-list_previous-one_btn"){
            pageLoad('user_index',{cur_page: page - 1, filter1: curCategory},'대시보드', "user");
        }
    })

    $(".user_entity").click(function(){
        var userIdx = $(this).attr("id");
        var clickedUser = userArr.find(function (user){
            if(userIdx == user.idx_user){
                return user;
            }
        })
        clickUser(clickedUser);
    })



</script>
<!-- / Layout footer -->

<!-- / Page content -->
