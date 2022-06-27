<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2022/06/28
  Time: 3:49 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${itemList}" var="item" varStatus="status">
    <tr>
        <td class="text-center">${status.count}</td>
        <td class="text-center" id="asset_code">${item.asset_code}</td>
        <td class="text-center" class="item_name"></td>
        <td class="text-center">${item.amount}</td>
        <td class="text-center" class="item_model_name"></td>
        <td class="text-center" class="item_brand"></td>
        <td class="text-center" class="item_manufacture"></td>
        <td class="text-center"><span class="${item.reservation_item_status == 0 ? "text-warning" : item.reservation_item_status == 1 ? "text-info" : item.reservation_item_status == 2 ? "text-warning" : item.reservation_item_status == 3 ? "text-hero" : ""}">${item.reservation_item_status == 0 ? "대기" : item.reservation_item_status == 1 ? "승인" : item.reservation_item_status == 2 ? "부분승인" : item.reservation_item_status == 3 ? "불가" : ""}</span></td>
    </tr>
</c:forEach>

<script>
    console.log("ehoTek")
    <c:forEach items="${assetList}" var="asset">
    if("${asset.asset_code}" == $("#asset_code").val()){
         $(".item_name").text("${asset.asset_name}");
         $(".item_brand").text("${asset.asset_brand}");
         $(".item_manufacture").text("${asset.asset_manufacture}");
         $(".item_model_name").text("${asset.asset_model_name}");
    }
    </c:forEach>
</script>