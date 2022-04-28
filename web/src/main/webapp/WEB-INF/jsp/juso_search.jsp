<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/10/04
  Time: 2:16 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-ui-1.12.1.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/assets/js/lib/rns.search-1.0.min.js"></script>

    <title>Juso Search Sample - Basic</title>

    <script>
        var rnsSearch = new rnsSearch({
            searchServerUrl : ${searchSeverUrl},
            width : 500,
            height : 500,
            oncomplete : function(data) {
                data.juso_type = '${juso_type}';
                let json_data = JSON.stringify(data);
                console.log(json_data);
                $(opener.location).attr("href", "javascript:fn_setJuso(" + json_data+");");
            },
        }).open({
        });
    </script>
</head>
<body>
</body>
</html>