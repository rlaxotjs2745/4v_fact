<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Page content -->
                <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row p-3">
                        <div class="col-sm-12 col-md-12">
                            <label class="mr-3  mb-0">총 : <strong>${total_count}</strong>건</label><label class="mr-3  mb-0">신규 : <strong>${count_req}</strong>건</label><label class="mr-3  mb-0">신규아님 : <strong>${count_comp}</strong>건</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <table class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-success text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center px-2" style="width:60px">No</th>
                                    <th class="text-center px-2" style="width:80px">홍보자료 제목</th>
                                    <th class="text-center px-2" style="width:60px">홍보자료 내용</th>
                                    <th class="text-center px-2" style="width:100px">파일포함여부</th>
                                    <th class="text-center px-2" style="width:100px">신규등록여부</th>
                                    <th class="text-center px-2" style="width:150px">메인페이지 노출여부</th>
                                    <th class="text-center px-2" style="width:80px">조회수</th>
                                    <th class="text-center px-2" style="width:120px">홍보게시 프로세스상태</th>
                                    <th class="text-center px-2" style="width:120px">시작일시</th>
                                    <th class="text-center px-2" style="width:120px">종료일시</th>
                                    <th class="text-center px-2" style="width:100px">홍보자료 관련 메모</th>
                                </tr>
                                </thead>
                                <tbody>
                               <c:forEach items="${prlist}" var="pr" varStatus="status">
                                <tr class="pr_entity" id="${pr.idx_pr_content}">
                                    <td class="text-center">${pr.idx_row_num}</td>
                                    <td class="text-center"><a href="#none" id="data" class="btn btn-outline-default btn-sm btn_content_view" data-toggle="modal" data-target="#modals-counsel-view" data-idx="${pr.idx_row_num}">${pr.subject}</a></td>
                                    <td class="text-center"><a href="#none" id="${pr.idx_pr_content}" class="btn btn-outline-default btn-sm btn_content_modal"  data-toggle="modal" data-target="#modals-content" data-idx="${pr.idx_row_num}">컨텐츠 보기</a></td>
                                    <td class="text-center">${pr.is_file eq 0 ? "포함안함" : pr.is_file eq 1 ? "포함" :""}</td>
                                    <td class="text-center">${pr.is_new eq 0 ? "신규아님" : pr.is_new eq 1 ? "신규" :""}</td>
                                    <td class="text-center">${pr.is_show eq 0 ? "노출안함" : pr.is_show eq 1 ? "노출함" :""}</td>
                                    <td class="text-center">${pr.view_count}</td>
                                    <td class="text-center">${pr.pr_content_status eq 0 ? "임시저장" :pr.pr_content_status eq 1 ? "허락" :pr.pr_content_status eq 2 ? "수정발행": pr.pr_content_status eq 3 ? "게시종료" :"기타"}</td>
                                    <td class="text-center"><fmt:formatDate value="${pr.show_start_date}" pattern="yyyy-MM-dd HH:MM"/></td>
                                    <td class="text-center"><fmt:formatDate value="${pr.show_end_date}" pattern="yyyy-MM-dd HH:MM"/></td>
                                    <td class="text-center">${pr.memo}</td>
                                </tr>
                               </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div class="dataTables_info" id="" role="status" aria-live="polite">총 ${total_count}개 중 ${list_amount*(cur_page-1)+1}에서 ${total_count}까지</div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                                <ul class="pagination">
                                    <c:set var="name" value="${total_count/amount}" />
                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c431_site_adver_mng',{page_num:1},'홍보자료 목록','site_adver_mng');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c431_site_adver_mng',{page_num:${cur_page-1}},'홍보자료 목록','site_adver_mng');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>
                                    <c:forEach var="i" begin="1" end="${page_amount}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('c431_site_adver_mng',{page_num:${(cur_sector-1)*page_amount+i}},'홍보자료 목록','site_adver_mng');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>
                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c431_site_adver_mng',{page_num:${cur_page+1}},'홍보자료 목록','site_adver_mng');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c431_site_adver_mng',{page_num:${tot_page}},'홍보자료 목록','site_adver_mng');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

        <script>
            curPRdata = '';
            prList=[];
            <c:forEach items="${prlist}" var="pr" varStatus="status">
            prList[${pr.idx_row_num}] = {
                idx_pr_content :"${pr.idx_pr_content}",
                subject:"${pr.subject}",
                is_new:"${pr.is_new eq 0 ? "신규아님" : pr.is_new eq 1 ? "신규" :""}",
                is_file:"${pr.is_file eq 0 ? "포함안함" : pr.is_file eq 1 ? "포함" :""}",
                is_main_page:${pr.is_main_page},
                pr_content_code:"${pr.pr_content_code}",
                show_start_date:"<fmt:formatDate value="${pr.show_start_date}" pattern="yyyy-MM-dd"/>",
                show_end_date:"<fmt:formatDate value="${pr.show_end_date}" pattern="yyyy-MM-dd"/>",
                pr_content_status:"${pr.pr_content_status eq 0 ? "임시저장" :pr.pr_content_status eq 1 ? "허락" :pr.pr_content_status eq 2 ? "수정발행": pr.pr_content_status eq 3 ? "게시종료" :"기타"}",
                pr_content_status_no:${pr.pr_content_status},
                last_upd_date:"<fmt:formatDate value="${pr.last_upd_date}" pattern="yyyy-MM-dd HH:MM"/>",
                veiw_count:"${pr.view_count}",
                memo:"${pr.memo}"
            }
            </c:forEach>

            _contents()
        </script>
<!-- / Layout footer -->
<!-- / Page content -->
