<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2022/04/16
  Time: 3:33 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- Layout content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
        <div>홈페이지 정보 관리</div>
    </h4>

    <div class="card px-4 pt-4 mb-4">
        <h6 class="card-header with-elements">
            <div class="card-header-title">푸터 정보</div>
        </h6>
        <form>
        <div class="form-group row mb-4">
            <div class="col-md-4 ">
                <label class="form-label text-muted">담당자</label>
                <div class="">
                    <input type="text" class="form-control form-control-md" value="${homepageInfo.homepage_admin}">
                    <%--<input class="mr-sm-4 mb-2 mb-sm-0" value="${homepageInfo.homepage_admin}">--%>
                </div>
            </div>
            <div class="col-md-4 ">
                <label class="form-label text-muted">연락처</label>
                <div class="">
                    <input type="text" class="form-control form-control-md" value="${homepageInfo.homepage_admin_pnum}">
                    <%--<input class="mr-sm-4 mb-2 mb-sm-0" value="${homepageInfo.homepage_admin_pnum}">--%>
                </div>
            </div>
            <div class="ml-auto">
                <%--<label class="form-label d-none d-md-block">&nbsp;</label>--%>
                    <label class="form-label text-muted"></label>
                <div class="card-header-elements ml-auto">
                    <button type="button" class="btn btn-success float-right">저장</button>
                </div>

            </div>
        </div>
        </form>
    </div>

    <hr class="container-m-nx mt-4 mb-4 ml-2 mr-2">

    <div class="card">
        <h6 class="card-header with-elements">
            <div class="card-header-title">홈페이지 조직도에 표시할 직원 목록</div>
            <div class="card-header-elements ml-auto">
                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modals-default">+ 직원 등록</button>
            </div>
        </h6>
        <div class="card-datatable table-responsive pt-0 pb-3">
            <div id="table-list" class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <table id="" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="" data-minimum-count-columns="10" >
                            <thead class="bg-success text-white font-weight-bold">
                            <tr role="row">
                                <th class="text-center px-2" style="width:6%">순서</th>
                                <th class="text-center px-2" style="width:4%">표시</th>
                                <th class="text-center sorting" style="width:10%">소속</th>
                                <th class="text-center sorting" style="width:10%">성명</th>
                                <th class="text-center sorting" style="width:auto">담당 업무</th>
                                <th class="text-center sorting" style="width:10%">직위</th>
                                <th class="text-center sorting" style="width:16%">전화번호</th>
                                <th class="text-center px-2" style="width:16%">이메일</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:choose>
                                <c:when test="${fn:length(coWorkerVOList)>0}">
                                    <c:forEach items = "${coWorkerVOList}" var ="coworker">
                                    <tr class="">
                                        <td class="text-center">${coworker.co_worker_oder}</td>
                                        <td class="text-center" name="checkbox">
                                            <label class="form-check">
                                            <input type="checkbox" class="form-check-input" <c:if test="${coworker.is_show eq 1}">checked</c:if>>
                                            </label>
                                        </td>
                                        <td class="text-center">${coworker.devision}</td>
                                        <td class="text-center">${coworker.coworker_name}</td>
                                        <td class="text-center">${coworker.job_role}</td>
                                        <td class="text-center">${coworker.job_title}</td>
                                        <td class="text-center">${coworker.tel_num}</td>
                                        <td class="text-center">${coworker.email}</td>

                                    </tr>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>

                                        <tr class="">
                                            <td colspan="8" class="text-center">아이템이 없어요</td>
                                        </tr>



                                </c:otherwise>
                           
                            

                                
                            </c:choose>

                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-5">
                        <div class="dataTables_info" id="article-list_info" role="status" aria-live="polite">총 50개 중 1에서 10까지</div>
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


</div>
<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>

<script src="/static/assets/js/bootstable.js"></script>
<!-- / Layout footer -->