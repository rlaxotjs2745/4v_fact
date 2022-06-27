<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2022/06/24
  Time: 2:11 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${assetList}" var="asset" varStatus="status">
    <c:if test="${asset.asset_status eq 0 or asset.asset_status eq 1}">
        <tr class="asset_entity" id="assetNum${asset.idx_asset}">
            <td class="text-center">${status.count}</td>
            <td class="text-center">${asset.asset_code}</td>
            <td class="text-center">${asset.asset_name}</td>
            <td class="text-center">${asset.asset_model_name}</td>
            <td class="text-center">${asset.asset_manufacture}</td>
            <td class="text-center"><a class="btn btn-sm btn-outline-default asset_request_btn checked_asset">신청</a></td>
        </tr>
    </c:if>
</c:forEach>


<script>

    $(".asset_request_btn").click(function(){

        if($(this).hasClass("checked_asset")){
            $(this).text("신청 취소").removeClass("checked_asset");
            $("#apply_checked_entity").append($(this).parents(".asset_entity"));

        } else {
            $(this).text("신청").addClass("checked_asset");
            $("#asset_list").append($(this).parents(".asset_entity"));
        }
    })
</script>