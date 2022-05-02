<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2022/05/01
  Time: 5:08 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h6 class="card-header with-elements">
    <div class="card-header-title">총 XXX개 신청 <span class="normal">접수 완료 : <strong>70</strong>개</span><span>보완 : <strong>70</strong>개</span><span>미 검토 : <strong>70</strong>개</span></div>
    <div class="card-header-elements ml-auto">
        <button type="button" class="btn btn-sm  btn-outline-default"><i class="lnr lnr-download"></i> 신청서 전체 내려받기</button>
        <div class="btn-group btn-group-sm btn-group-toggle ml-2" data-toggle="buttons">
            <label class="btn btn-secondary">
                <input type="radio" name="btn-radio" value="9999" checked>전체
            </label>
            <label class="btn btn-secondary">
                <input type="radio" name="btn-radio" value="0"> 검토 전
            </label>
            <label class="btn btn-secondary ">
                <input type="radio" name="btn-radio" value="1"> 검토 중
            </label>
            <label class="btn btn-secondary ">
                <input type="radio" name="btn-radio" value="3"> 검토완료
            </label>
        </div>
    </div>
</h6>
<div class="card-datatable table-responsive pt-0 pb-3">
    <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">

        <div class="row">
            <div class="col-sm-12">
                <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                    <thead class="bg-success text-white font-weight-bold">
                    <tr role="row">
                        <th class="text-center px-2" style="width:60px">No</th>
                        <th class="text-center px-2" style="width:100px">신청서</th>
                        <th class="text-center px-2" style="width:100px">고객안내</th>
                        <th class="text-center px-2" style="width:80px">구분</th>
                        <th class="text-center sorting" style="width:200px">신청자이름</th>
                        <th class="text-center sorting" style="width:300px">기업정보</th>
                        <th class="text-center px-2" style="width:100px">사전상담</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:if test="${total_count eq 0}">
                        <tr class="">
                            <td class="text-center" colspan="7" rowspan="3">내용이 없습니다</td>
                        </tr>
                        <tr class="">
                        </tr>
                        <tr class="">
                        </tr>
                        <tr class="">
                        </tr>
                    </c:if>
                    <c:if test="${total_count ne 0}">


                    <c:forEach items="${adminApplHeaderListVOS}" var="appl_item">


                    <tr class="">
                        <td class="text-center">1</td>
                        <td class="text-center"><button class="btn btn-outline-default btn-sm" data-toggle="modal" onclick="popup_apple_manage(${appl_item.idx_user_demo_bs});">신청서 관리</button></td>
                        <td class="text-center">${appl_item.ceo_name}</td>
                        <td class="text-center">
                            <c:choose>
                                <c:when test="${appl_item.applicant_status eq 0}">신규 등록</c:when>
                                <c:when test="${appl_item.applicant_status eq 1}">서류 검토 중</c:when>
                                <c:when test="${appl_item.applicant_status eq 2}">서류 보완요청</c:when>
                                <c:when test="${appl_item.applicant_status eq 3}">서류검토완료</c:when>
                                <c:when test="${appl_item.applicant_status eq 4}">서류 부적격</c:when>
                            </c:choose>
                        </td>
                        <td class="text-center">${appl_item.man_name} / ${appl_item.corp_name}</td>
                        <td class="text-center">대표자 ${appl_item.ceo_name}, ${appl_item.ceo_mnumber}</td>
                        <td class="text-center">${appl_item.admin_name}</td>
                    </tr>
                    </c:forEach>
                    </c:if>
                    </tbody>
                </table>
            </div>
        </div>
        <c:if test="${total_count ne 0}">
        <div class="row">
            <div class="col-sm-12 col-md-5">
                <div class="dataTables_info" id="" role="status" aria-live="polite">총 ${total_count}개 중 ${list_amount*(cur_page-1)+1}에서 ${list_amount*page_amount}까지</div>
            </div>
            <div class="col-sm-12 col-md-7">
                <div class="dataTables_paginate paging_simple_numbers" id="">
                    <ul class="pagination">

                        <c:set var="name" value="${total_count/amount}" />


                        <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:getUserApplList(${idx_demo_business},1,${filter1});" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                        <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:getUserApplList(${idx_demo_business},${cur_page-1},${filter1});" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>



                        <c:forEach var="i" begin="1" end="${page_amount}">
                            <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:getUserApplList(${idx_demo_business},${(cur_sector-1)*page_amount+i},${filter1});" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                        </c:forEach>

                        <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:getUserApplList(${idx_demo_business},${cur_page+1},${filter1});" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                        <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:getUserApplList(${idx_demo_business},${tot_page},${filter1});load('b21_demo_bs_appl_mng?page=${tot_page}','신청접수 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                    </ul>
                </div>
            </div>
        </div>
        </c:if>
    </div>
</div>
<script>
    $('input:checkbox[name="btn-radio"]').on('click',function() {
        let filter1 =$(this).value();
        getUserApplList(${idx_demo_business},1,${filter1});
    });

    function popup_apple_manage(idx_user_demo_bs){

        let param = {
            idx_user_demo_bs: idx_user_demo_bs
        }
        $.ajax({
            type: 'post',
            url: 'get_user_demo_bs_info', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
            dataType: 'text',//받는 데이터 타입
            success: function (result) {

//작업이 성공적으로 발생했을 경우
                console.log(result);


                var data = JSON.parse(result);


                console.log(data["userDemoBsVO"].corp_name);


                $("#corp_name").val(data["userDemoBsVO"].corp_name);
                $("#corp_reg_num").val(data["userDemoBsVO"].corp_reg_num);
                $("#corp_num").val(data["userDemoBsVO"].corp_num);
                $("#corp_addr").val(data["userDemoBsVO"].corp_addr);
                $("#corp_addr2").val(data["userDemoBsVO"].corp_addr2);
                $("#corp_phone").val(data["userDemoBsVO"].corp_phone);
                $("#email").val(data["userDemoBsVO"].email);
                $("#homepage").val(data["userDemoBsVO"].homepage);
                $("#ceo_name").val(data["userDemoBsVO"].ceo_name);
                $("#ceo_mnumber").val(data["userDemoBsVO"].ceo_mnumber);
                $("#ceo_email").val(data["userDemoBsVO"].ceo_email);
                $("#man_name").val(data["userDemoBsVO"].man_name);
                $("#man_mnumber").val(data["userDemoBsVO"].man_mnumber);


                $('#modals-application-view').modal('show');




//STATUS_001 :
            },
            error: function () {
//에러가 났을 경우 실행시킬 코드
            }
        });
    }
</script>