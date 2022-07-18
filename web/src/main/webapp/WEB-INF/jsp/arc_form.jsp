<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:23 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file ="header.jsp" %>

<div class="content" id="content">
    <div class="page__body">
        <div class="page__breadcrumbs--box">
            <div class="page__breadcrumbs--inner">
                <span>홈</span>
                <span>자료실</span>
                <div class="under__depth">
                    <a href="#" class="under__depth--anchor">관련 양식</a>
                    <div class="under__depth--list">
                        <a href="arc_form">관련 양식</a>
                        <a href="arc_rule">관련 규정</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">관련 양식</h2>
                <div class="page__location">
                    <div class="location__deco">실증단지 이용에 참고할 각종 양식을 제공합니다.</div>
                </div>
                <div class="location__advice">실증단지 이용에 관련된 각종 양식입니다. 실증서비스 이용 시 참고해 주십시오.</div>
            </div>
        </div>
        <div class="page__cnt">
            <div class="table__type no--head">
                <table class="table__type--board">
                    <colgroup>
                        <col style="width:20%"></col>
                        <col></col>
                        <col style="width:20%"></col>
                    </colgroup>
                    <thead>
                    <tr>
                        <th class="th__left">제목</th>
                        <th class="th__left">용도</th>
                        <th>파일 형식별 내려받기</th>
                    </tr>
                    </thead>
                    <tbody>
<c:forEach items="${formfileList}" var="form">
    <tr class="form-entity" id="${form.idx_form_file_info}" >
                    <tr>
                        <td class="td__left">${form.subject}</td>
                        <td class="td__left">${form.usage_detail}</td>
                        <td class="td__data"><a href="${form.file_path}"><img src="resources/assets/image/ico_doc.png" alt=""></a><a href="#none"><img src="resources/assets/image/ico_pdf.png" alt=""></a><a href="#none"><img src="resources/assets/image/ico_hwp.png" alt=""></a></td>
                    </tr>


</c:forEach>


                    </tbody>
                </table>
                <!--//-->
                <div class="table__paging">
                    <a href="#none" class="paging__prev2 disabled"><img src="resources/assets/image/ico_paging_prev_02.png" alt=""></a>
                    <a href="#none" class="paging__prev disabled"><img src="resources/assets/image/ico_paging_prev.png" alt=""></a>
                    <a href="#none" class="is-active">1</a>
                    <a href="#none">2</a>
                    <a href="#none">3</a>
                    <a href="#none">4</a>
                    <a href="#none">5</a>
                    <a href="#none">6</a>
                    <a href="#none">7</a>
                    <a href="#none">8</a>
                    <a href="#none">9</a>
                    <a href="#none">10</a>
                    <a href="#none" class="paging__next"><img src="resources/assets/image/ico_paging_next.png" alt=""></a>
                    <a href="#none" class="paging__next2"><img src="resources/assets/image/ico_paging_next_02.png" alt=""></a>
                </div>
            </div>
            <!--//-->
        </div>

    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
</body>
</html>