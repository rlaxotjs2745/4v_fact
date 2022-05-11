<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2022/05/11
  Time: 4:39 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<table class="table__type--my">
    <colgroup>
        <col style="width:10%">
        <col style="width:12%">
        <col style="width:14%">
        <col>
        <col style="width:15%">
    </colgroup>
    <thead>
    <tr>
        <th>구분</th>
        <th>신청인</th>
        <th>견학 희망일</th>
        <th>견학 목적</th>
        <th>상태</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${visitReqVOS}" var="visit" varStatus="status">
        <tr>
            <td>
                <c:if test="${visit.is_group eq 0}">개인</c:if>
                <c:if test="${visit.is_group eq 1}">단체</c:if>
            </td>
            <td>${visit.visitor}</td>
            <td><fmt:formatDate value="${visit.resulvation_date}" pattern="yyyy-MM-dd" /></td>
            <td class="td__left"><a onclick="javascript:visit_req_view(${visit.idx_visit_req});" class="js-modal-detail">${visit.visit_goal}</a></td>
            <td>
                <c:if test="${visit.visit_req_status eq 0}">신청</c:if>
                <c:if test="${visit.visit_req_status eq 1}">접수</c:if>
                <c:if test="${visit.visit_req_status eq 2}">승인</c:if>
                <c:if test="${visit.visit_req_status eq 3}">방문</c:if>
                <c:if test="${visit.visit_req_status eq 4}">방문완료</c:if>
                <c:if test="${visit.visit_req_status eq 5}">방문취소</c:if>
                <c:if test="${visit.visit_req_status eq 6}">승인거절</c:if>
            </td>
        </tr>
    </c:forEach>
    <%--                        <tr>
                                <td>단체</td>
                                <td>도레미</td>
                                <td>YYYY.MM.DD</td>
                                <td class="td__left"><a href="#popup_visit_view" class="js-modal-detail">신청서 작성</a></td>
                                <td>접수</td>
                            </tr>--%>
    </tbody>
</table>
<div class="table__paging">
    <c:set var="name" value="${total_count/amount}" />

    <c:if test="${is_past eq true}"><a href="javascript:getUserVisitList(1);" class="paging__prev2"><img src="resources/assets/image/ico_paging_prev_02.png" alt=""></a></c:if>
    <c:if test="${is_prev eq true}"><a href="javascript:getUserVisitList(${cur_page-1});" class="paging__prev"><img src="resources/assets/image/ico_paging_prev.png" alt=""></a></c:if>
    <c:forEach var="i" begin="1" end="${page_amount}">
        <a href="javascript:getUserVisitList(${(cur_sector-1)*page_amount+i});" <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">class="is-active"</c:if>>${(cur_sector-1)*page_amount+i}</a>
    </c:forEach>
    <c:if test="${is_next eq true}"><a href="javascript:getUserVisitList(${cur_page+1});" class="paging__next"><img src="resources/assets/image/ico_paging_next.png" alt=""></a></c:if>
    <c:if test="${is_last eq true}"><a href="javascript:getUserVisitList(${tot_page});" class="paging__next2"><img src="resources/assets/image/ico_paging_next_02.png" alt=""></a></c:if>
</div>