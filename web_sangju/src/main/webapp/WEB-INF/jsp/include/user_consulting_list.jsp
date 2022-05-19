<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2022/05/11
  Time: 7:53 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<table class="table__type--my">
    <colgroup>
        <col style="width:7%">
        <col style="width:12%">
        <col>
        <col style="width:13%">
        <col style="width:15%">
    </colgroup>
    <thead>
    <tr>
        <th>상담수</th>
        <th>상담일</th>
        <th>주제</th>
        <th>상담사</th>
        <th>상담 형식</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${demoBsConsultingVOList}" var="consult" varStatus="status">
        <tr>
            <td>${consult.consulting_num}</td>
            <td>
                <c:if test="${consult.consulting_status eq 0}"> <fmt:formatDate value="${consult.resulvation_date}" pattern="yyyy-MM-dd" /></c:if>
                <c:if test="${consult.consulting_status eq 1}"> <fmt:formatDate value="${consult.resulvation_date}" pattern="yyyy-MM-dd" /></c:if>
                <c:if test="${consult.consulting_status eq 2}"> <fmt:formatDate value="${consult.consulting_date}" pattern="yyyy-MM-dd" /></c:if>
                <c:if test="${consult.consulting_status eq 3}"> <fmt:formatDate value="${consult.consulting_date}" pattern="yyyy-MM-dd" /></c:if>
                <c:if test="${consult.consulting_status eq 4}"> <fmt:formatDate value="${consult.consulting_date}" pattern="yyyy-MM-dd" /></c:if>

            </td>
            <td class="td__left">${consult.consulting_goal}</td>
            <td>
                <c:if test="${consult.is_consultant eq 0}">배정예정</c:if>
                <c:if test="${consult.is_consultant eq 1}">홍순이</c:if>
            </td>
            <td>
                <c:if test="${consult.consult_answer_type eq 0}"></c:if>
                <c:if test="${consult.consult_answer_type eq 1}">전화</c:if>
                <c:if test="${consult.consult_answer_type eq 2}">이메일</c:if>
                <c:if test="${consult.consult_answer_type eq 3}">방문</c:if>
            </td>
        </tr>
    </c:forEach>

    </tbody>
</table>
<!--//-->
<div class="table__paging">
    <c:set var="name" value="${total_count/amount}" />

    <c:if test="${is_past eq true}"><a href="javascript:getUserConsultingList(1);" class="paging__prev2"><img src="resources/assets/image/ico_paging_prev_02.png" alt=""></a></c:if>
    <c:if test="${is_prev eq true}"><a href="javascript:getUserConsultingList(${cur_page-1});" class="paging__prev"><img src="resources/assets/image/ico_paging_prev.png" alt=""></a></c:if>
    <c:forEach var="i" begin="1" end="${page_amount}">
        <a href="javascript:getUserConsultingList(${(cur_sector-1)*page_amount+i});" <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">class="is-active"</c:if>>${(cur_sector-1)*page_amount+i}</a>
    </c:forEach>
    <c:if test="${is_next eq true}"><a href="javascript:getUserConsultingList(${cur_page+1});" class="paging__next"><img src="resources/assets/image/ico_paging_next.png" alt=""></a></c:if>
    <c:if test="${is_last eq true}"><a href="javascript:getUserConsultingList(${tot_page});" class="paging__next2"><img src="resources/assets/image/ico_paging_next_02.png" alt=""></a></c:if>
</div>
