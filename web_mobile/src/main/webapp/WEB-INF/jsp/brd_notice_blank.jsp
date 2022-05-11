<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:25 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="header.jsp" %>


<div class="page__h1">공지사항</div>
</header>
<div class="content" id="content">
    <div class="page__body">
        <div class="page__cnt">

            <div class="board__head">
                <div class="board__search">
                    <select name="" id="" class="select-sm">
                        <option value="">제목</option>
                        <option value="">작성자</option>
                        <option value="">내용</option>
                        <option value="">제목+내용</option>
                    </select>
                    <input type="text" class="search" value="실증단지"><a href="#none" class="btn btn__board--search">검색</a></div>
                <div class="board__total">검색 결과 총 <strong>00</strong>개</div>
            </div>

            <div class="table__blank">
                <div class="blank__title">검색된 결과가 없습니다.</div>
                <div class="blank__text">다른 검색어로 검색하거나 단어의 철자가 정확한지 확인해주세요.</div>
            </div>
            <!--//-->
        </div>

    </div>
</div>
<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
<%@include file ="footer.jsp" %>
