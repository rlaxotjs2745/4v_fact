<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/10/11
  Time: 5:05 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">
    <h4 class="font-weight-bold py-3 mb-4">실증사업 현황</h4>


    <div class="card mt-4">
        <h6 class="card-header font-weight-bold with-elements">
            <div class="card-header-title">실증사업 목록</div>
            <div class="card-header-elements ml-auto">
                <button type="button" id="btn_new_domo_bs" class="btn btn-primary" data-toggle="modal" data-target="#modals-business" data-what="mode-new">+ 신규 사업 등록</button>
            </div>
        </h6>
        <div class="card-datatable table-responsive pt-0 pb-3">
            <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <table id="table_demo_bs" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                            <thead class="bg-success text-white font-weight-bold">
                            <tr role="row">
                                <th class="text-center" style="width:60px">사업 상태</th>
                                <th class="text-center" style="width:100px">사업 번호</th>
                                <th class="text-center" style="width:300px">사업 제목</th>
                                <th class="text-center" style="width:80px">모집 수</th>
                                <th class="text-center" style="width:110px">사업 시작일,시간</th>
                                <th class="text-center" style="width:110px">사업 종료일,시간</th>
                                <th class="text-center" style="width:80px">사업공고 게시여부</th>
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
                                <c:forEach items="${demoBusinessVOList}" var="demoBs" varStatus="status">
                                    <tr class="">
                                        <td class="text-center">
                                            <c:choose>
                                                <c:when test="${demoBs.demo_bs_status eq 0}">임시저장</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 1}">작성완료</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 2}">승인완료</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 3}">모집중</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 4}">모집종료</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 5}">심사중</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 6}">심사완료</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 7}">이용계획조정</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 8}">이용계획확정</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 9}">협약중</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 10}">협약완료</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 11}">사업시작</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 12}">사업종료</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 13}">결산중</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 14}">결산완료</c:when>
                                            </c:choose>
                                        </td>
                                        <td class="text-center">${demoBs.demo_bs_code}</td>
                                        <td class="demo_entity" id="demo_${demoBs.idx_demo_business}"><a href="#none" data-toggle="modal" data-target="#modals-business" data-what="mode-view" >${demoBs.demo_subject}</a></td>
                                        <td class="text-right">${demoBs.recruit_count_limit}</td>
                                        <fmt:formatDate value="${demoBs.start_date}" var="dstart_date" pattern="yyyy-MM-dd"/>
                                        <fmt:formatDate value="${demoBs.end_date}" var="dend_date" pattern="yyyy-MM-dd"/>
                                        <td class="text-center">${dstart_date}</td>
                                        <td class="text-center">${dend_date}</td>
                                        <td class="text-center">
                                            <c:choose>
                                                <c:when test="${demoBs.is_announce eq 0}">아니오</c:when>
                                                <c:when test="${demoBs.is_announce eq 1}">예</c:when>
                                            </c:choose>
                                        </td>
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
                            <div class="dataTables_info" id="article-list_info" role="status" aria-live="polite">총 ${total_count}개 중 ${list_amount*(cur_page-1)+1}에서 ${list_amount*page_amount}까지</div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                                <ul class="pagination">

                                    <c:set var="name" value="${total_count/amount}" />


                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('b00_demo_bs_mng',{page_num:1,filter1:parseInt('${filter1}'),filter2:parseInt('${filter2}')},'실증사업 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('b00_demo_bs_mng',{page_num:parseInt('${cur_page-1}'),filter1:parseInt('${filter1}'),filter2:parseInt('${filter2}')},'실증사업 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>



                                    <c:forEach var="i" begin="1" end="${page_amount}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('b00_demo_bs_mng?page=${(cur_sector-1)*page_amount+i}&filter1=${filter1}&filter2=${filter2}','실증사업 관리');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>

                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('b00_demo_bs_mng',{page_num:parseInt('${cur_page+1}'),filter1:parseInt('${filter1}'),filter2:parseInt('${filter2}')},'실증사업 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('b00_demo_bs_mng',{page_num:parseInt('${tot_page}'),filter1:parseInt('${filter1}'),filter2:parseInt('${filter2}')},'실증사업 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
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
