<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2022/06/28
  Time: 3:49 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${itemList}" var="resItem" varStatus="status">
    <tr>
        <td class="text-center">${status.count}</td>
        <td class="text-center" id="asset_code">${resItem.asset_code}</td>
        <td class="text-center" class="item_name"></td>
        <td class="text-center">${resItem.amount}</td>
        <td class="text-center" class="item_model_name"></td>
        <td class="text-center" class="item_brand"></td>
        <td class="text-center" class="item_manufacture"></td>
        <td class="text-center"><span class="${resItem.reservation_item_status == 0 ? "text-warning" : resItem.reservation_item_status == 1 ? "text-info" : resItem.reservation_item_status == 2 ? "text-warning" : resItem.reservation_item_status == 3 ? "text-hero" : ""}">${resItem.reservation_item_status == 0 ? "대기" : resItem.reservation_item_status == 1 ? "승인" : resItem.reservation_item_status == 2 ? "부분승인" : resItem.reservation_item_status == 3 ? "불가" : ""}</span></td>
    </tr>
</c:forEach>

<script>
    <c:forEach items="${assetList}" var="asset">
    if("${asset.asset_code}" == $("#asset_code").val()){
         $(".item_name").text("${asset.asset_name}");
         $(".item_brand").text("${asset.asset_brand}");
         $(".item_manufacture").text("${asset.asset_manufacture}");
         $(".item_model_name").text("${asset.asset_model_name}");
    }
    </c:forEach>
</script>