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


<div class="page__h1">행사안내</div>
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
                    <input type="text" class="search" placeholder="검색어를 입력해주세요."><a href="#none" class="btn btn__board--search">검색</a></div>
                <div class="board__total">총 <strong>00</strong>개</div>
            </div>
            <div class="list__type">
                <ul class="list__type--event">
                    <li>
                        <a href="#none">
                            <figure><img src="<%=request.getContextPath()%>/static/assets/image/@list_01.png" alt=""></figure>
                            <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                            <span class="list__duedate">2021.06.25~2021.07.25</span>
                        </a>
                    </li>
                    <li>
                        <a href="#none">
                            <figure><img src="<%=request.getContextPath()%>/static/assets/image/@list_02.png" alt=""></figure>
                            <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                            <span class="list__duedate">2021.06.25~2021.07.25</span>
                        </a>
                    </li>
                    <li>
                        <a href="#none">
                            <figure><img src="<%=request.getContextPath()%>/static/assets/image/@list_03.png" alt=""></figure>
                            <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                            <span class="list__duedate">2021.06.25~2021.07.25</span>
                        </a>
                    </li>
                    <li>
                        <a href="#none">
                            <figure><img src="<%=request.getContextPath()%>/static/assets/image/@list_04.png" alt=""></figure>
                            <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                            <span class="list__duedate">2021.06.25~2021.07.25</span>
                        </a>
                    </li>
                    <li>
                        <a href="#none">
                            <figure><img src="<%=request.getContextPath()%>/static/assets/image/@list_02.png" alt=""></figure>
                            <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                            <span class="list__duedate">2021.06.25~2021.07.25</span>
                        </a>
                    </li>
                    <li>
                        <a href="#none">
                            <figure><img src="<%=request.getContextPath()%>/static/assets/image/@list_03.png" alt=""></figure>
                            <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                            <span class="list__duedate">2021.06.25~2021.07.25</span>
                        </a>
                    </li>
                    <li>
                        <a href="#none">
                            <figure><img src="<%=request.getContextPath()%>/static/assets/image/@list_04.png" alt=""></figure>
                            <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                            <span class="list__duedate">2021.06.25~2021.07.25</span>
                        </a>
                    </li>
                    <li>
                        <a href="#none">
                            <figure><img src="<%=request.getContextPath()%>/static/assets/image/@list_01.png" alt=""></figure>
                            <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                            <span class="list__duedate">2021.06.25~2021.07.25</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="table__paging">
                <a href="#" class="btn paging-more">더보기</a>
            </div>
            <!--//-->
        </div>

    </div>
</div>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/ui.common.js" type="text/javascript"></script>
<%@include file ="footer.jsp" %>