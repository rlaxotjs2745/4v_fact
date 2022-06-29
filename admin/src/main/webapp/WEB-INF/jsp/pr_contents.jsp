<%--
  Created by IntelliJ IDEA.
  User: jjungb
  Date: 2022/06/29
  Time: 8:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div >
    <div class="modal-content">
        <div class="modal-header bg-success">
            <h5 class="modal-title text-white font-weight-bold mode-new">홍보자료</h5>
            <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
        </div>
        <div class="modal-body" id="content_fock">

        </div>
    </div>
</div>
<script>
    $("#content_fock").html(`${contentFuck}`)
    <%--$("#content_fock").val(`${contentFuck}`)--%>
    console.log(`${contentFuck}`)
</script>