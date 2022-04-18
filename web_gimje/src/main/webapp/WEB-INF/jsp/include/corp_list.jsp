<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/10/04
  Time: 5:17 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.List"%> <!-- 선언부 밑에 위치해야한다. -->
<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.fact.core.model.DTO.SimpleCorpInfoVO"%>



<c:choose >
<c:when test="${count eq 0}">

        <strong>검색 결과가 없습니다.</strong>
        <span>기업 회원으로 가입을 했으나, 심사가 완료되지 않을 수 있습니다.<br>
                  가입 통보를 받은 후 다시 확인해 주십시오.</span>
<script>
    $("#corp_search_result").addClass("search__none");
</script>
</c:when>
    <c:when test="${count ne 0}">
            <strong>검색 결과</strong>
            <div class="table__type">
                <table class="table__type--my">
                    <colgroup>
                        <col style="width:35%;">
                        <col style="width:30%;">
                        <col style="width:35%;">
                    </colgroup>
                    <thead>
                    <tr>
                        <th>기업명</th>
                        <th>사업자 등록 번호</th>
                        <th>대표자</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${corpList}" var="corp" varStatus="status">
                    <tr>
                        <td>${corp.corp_name_kor}<input id = "idx_corp_info${status.count}" type="hidden" value="${corp.idx_corp_info}"/> <input id = "corp_name_kor${status.count}" type="hidden" value="${corp.corp_name_kor}"/></td>
                        <td>${corp.company_num}</td>
                        <td class="td__modify">${corp.ceo_name_kor} <span class="text__dash"><button id="corp_select_complete" value="${status.count}" class="btn modify submit btn-lg">선택</button></span></td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        <script>
            $("#corp_search_result").addClass("search__find");
            $("#corp_select_complete").click(function(){

                console.log($(this).attr('value'));

                $("#corp_sel_name").val($("#corp_name_kor"+$(this).attr('value')).val());
                $("#idx_corp_info").val($("#idx_corp_info"+$(this).attr('value')).val());
                $("#popup_company").hide();
                $("#corp_search_result").removeClass("search__find");

                $("#corp_search_result").empty();

            });
        </script>
    </c:when>
</c:choose>


