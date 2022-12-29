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
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-success text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center px-2" style="width:60px">No</th>
                                    <th class="text-center px-2" style="width:80px">행사제목</th>
                                    <th class="text-center px-2" style="width:60px">행사 컨텐츠</th>
                                    <th class="text-center px-2" style="width:100px">파일 포함 여부</th>
                                    <th class="text-center px-2" style="width:100px">신규등록여부</th>
                                    <th class="text-center px-2" style="width:150px">고정 여부</th>
                                    <th class="text-center px-2" style="width:80px">행사안내노출여부</th>
                                    <th class="text-center px-2" style="width:120px">조회수</th>
                                    <th class="text-center px-2" style="width:120px">행사안내 상태</th>
                                    <th class="text-center px-2" style="width:120px">행사 내용</th>
                                    <th class="text-center px-2" style="width:100px">행사시작 일시</th>
                                    <th class="text-center px-2" style="width:150px">행사종료 일시</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${eventcontentlist}" var="eventcontent" varStatus="status">
                                <tr class="eventcontent_entity" id="${eventcontent.idx_event_content}">
                                    <td class="text-center">${eventcontent.idx_row_num}</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default btn-sm btn_content_view" data-toggle="modal" data-target="#modals-counsel-view" data-idx="${eventcontent.idx_row_num}">${eventcontent.subject}</a></td>
                                    <td class="text-center">${eventcontent.event_content_code}</td>
                                    <td class="text-center">${eventcontent.is_file eq 0 ? "포함안함" : eventcontent.is_file eq 1 ? "포함" :""}</td>
                                    <td class="text-center">${eventcontent.is_new eq 0 ? "신규아님" : eventcontent.is_new eq 1 ? "신규" :""}</td>
                                    <td class="text-center">${eventcontent.is_important eq 0 ? "고정안함" : eventcontent.is_important eq 1 ? "고정함" : "" }</td>
                                    <td class="text-center">${eventcontent.is_show eq 0 ? "노출안함" : eventcontent.is_show eq 1 ? "노출함" :""}</td>
                                    <td class="">${eventcontent.view_count}</td>
                                    <td class="text-center">${eventcontent.event_content_status eq 0 ? "임시저장" : eventcontent.event_content_status eq 1 ? "허락" : eventcontent.event_content_status eq 2 ? "수정발행" : eventcontent.event_content_status eq 3 ? "게시종료" : "기타"}</td>
                                    <td class="text-center">${eventcontent.memo}</td>
                                    <td class="text-center"><fmt:formatDate value="${eventcontent.event_start_date}" pattern="yyyy-MM-dd"/></td>
                                    <td class=""><fmt:formatDate value="${eventcontent.event_end_date}" pattern="yyyy-MM-dd"/></td>
                                </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div class="dataTables_info" role="status" aria-live="polite">총 ${total_count}개 중 ${(cur_page-1)*list_amount+1}에서 ${cur_page*list_amount}까지</div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                                <ul class="pagination">
                                    <c:set var="name" value="${total_count/amount}" />
                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c421_site_event_mng',{page_num:1},'행사 관리','site_event_mng');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c421_site_event_mng',{page_num:${cur_page-1}},'행사 관리','site_event_mng');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>
                                    <c:forEach var="i" begin="1" end="${page_amount}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('c421_site_event_mng',{page_num:${(cur_sector-1)*page_amount+i}},'행사 관리','site_event_mng');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>
                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c421_site_event_mng',{page_num:${cur_page+1}},'행사 관리','site_event_mng');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c421_site_event_mng',{page_num:${tot_page}},'행사 관리','site_event_mng');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
<script>
    curEventdata = '';
    eventContentList = [];
    <c:forEach items="${eventcontentlist}" var="eventcontent" varStatus="status">
    eventContentList[${eventcontent.idx_row_num}] = {
        idx_event_content: "${eventcontent.idx_event_content}",
        subject:"${eventcontent.subject}",
        is_file:"${eventcontent.is_file eq 0 ? "포함안함" : eventcontent.is_file eq 1 ? "포함" :""}",
        event_content_code:"${eventcontent.event_content_code}",
        event_start_date:"<fmt:formatDate value="${eventcontent.event_start_date}" pattern="yyyy-MM-dd"/>",
        event_end_date:"<fmt:formatDate value="${eventcontent.event_end_date}" pattern="yyyy-MM-dd"/>",
        last_upd_date:"<fmt:formatDate value="${eventcontent.last_upd_date}" pattern="yyyy-MM-dd HH:MM"/>",
        event_content_status:"${eventcontent.event_content_status eq 0 ? "임시저장" : eventcontent.event_content_status eq 1 ? "허락" : eventcontent.event_content_status eq 2 ? "수정발행" : eventcontent.event_content_status eq 3 ? "게시종료" : "기타"}",
        memo:"${eventcontent.memo}"
    }
    </c:forEach>
    _contents();
</script>
