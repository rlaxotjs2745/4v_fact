<%@ page import="kr.or.fact.core.model.DTO.BsAnnouncementVO" %>
<%@ page import="javax.servlet.jsp.jstl.core.LoopTagStatus" %><%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:24 오전
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
                <span>열린마당</span>
                <div class="under__depth">
                    <a href="#" class="under__depth--anchor">사업공고</a>
                    <div class="under__depth--list">
                        <a href="brd_notice?page=1">공지사항</a>
                        <a href="brd_announce?page=1">사업공고</a>
                        <a href="brd_event?page=1">행사안내</a>
                        <a href="brd_promotion?page=1">홍보자료</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">사업공고</h2>
                <div class="page__location">
                    <div class="location__deco">담당자는 해당 게시물 작성자 및 전화번호 참고 부탁드립니다.</div>
                </div>
            </div>
        </div>
        <div class="page__cnt">

            <div class="board__head">
                <div class="board__total">총 <strong>${total_count}</strong>개</div>
                <div class="board__search">
                    <select name="" id="search_select" class="select-sm">
                        <option value="t">제목</option>
                        <option value="w">작성자</option>
                        <option value="c">내용</option>
                        <option value="tc">제목+내용</option>
                    </select>
                    <input type="text" id="search_input" class="search" placeholder="검색어를 입력해주세요."><a id="search_btn" class="btn btn__board--search">검색</a>
                </div>
            </div>
            <div class="table__type">
                <table class="table__type--board">
                    <colgroup>
                        <col style="width:12%"></col>
                        <col style="width:12%"></col>
                        <col style="width:36%"></col>
                        <col style="width:8%"></col>
                        <col style="width:10%"></col>
                        <col style="width:12%"></col>
                        <col style="width:10%"></col>
                    </colgroup>
                    <thead>
                    <tr>
                        <th>번호</th>
                        <th>구분</th>
                        <th class="th__left">제목</th>
                        <th>첨부<br>파일</th>
                        <th>게시자</th>
                        <th>등록일</th>
                        <th>조회수</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${announceList}" var="ann" varStatus="status">
                        <tr>
                            <%
                                int pageCount = 10;
                                final LoopTagStatus status = (LoopTagStatus) pageContext.getAttribute("status");
                                final Integer totalCount = (Integer) request.getAttribute("total_count");
                                final Integer pageNum = (Integer) request.getAttribute("page");

                                int boardStartNumber = totalCount - (pageNum - 1) * pageCount;
                                final int boardNumber = boardStartNumber - (status.getIndex() % pageCount);
                            %>
                            <td><%=boardNumber%></td>
                            <td>
                                <c:if test="${ann.bs_status eq 2}"> 대기</c:if>
                                <c:if test="${ann.bs_status eq 3}"> 신청중</c:if>
                                <c:if test="${ann.bs_status eq 4}"> 신청완료</c:if>
                                <c:if test="${ann.bs_status eq 10}"> 사업종료</c:if>
                            </td>
                            <%
                                final BsAnnouncementVO notice = (BsAnnouncementVO) pageContext.getAttribute("ann");
                                final String query = (String) request.getAttribute("query");
                                final String highlightSubject;
                                if (query == null || query.trim().length() == 0) {
                                    highlightSubject = notice.getSubject();
                                } else {
                                    highlightSubject = notice.getSubject().replaceAll(query, "<span style=\"background-color:yellow\">" + query + "</span>");
                                }
                            %>
                            <td class="td__left"><a href="brd_announce_detail?idx=${ann.idx_bs_announcement}" class="td__link"><%=highlightSubject%><c:if test="${ann.is_new eq 1}"> <img src="resources/assets/image/ico_new.png" alt="NEW" class="board__badge"></c:if></a></td>
                            <td class="td__data"><c:if test="${notice.is_file eq 1}"><img src="resources/assets/image/ico_file-present.png" alt=""></c:if></td>
                            <td class="td__data">${ann.author}</td>
                            <td class="td__data"><fmt:formatDate value="${ann.posting_start_date}" pattern="yyyy-MM-dd" /></td>
                            <td class="td__data">${ann.view_count}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="table__paging">
                    <c:set var="name" value="${total_count/amount}" />

                    <c:if test="${is_past eq true}"><a href="brd_announce?page=1&filter=${filter}&query=${query}" class="paging__prev2"><img src="resources/assets/image/ico_paging_prev_02.png" alt=""></a></c:if>
                    <c:if test="${is_prev eq true}"><a href="brd_announce?page=${cur_page-1}&filter=${filter}&query=${query}" class="paging__prev"><img src="resources/assets/image/ico_paging_prev.png" alt=""></a></c:if>
                    <c:forEach var="i" begin="1" end="${page_amount}">
                        <a href="brd_announce?page=${(cur_sector-1)*page_amount+i}&filter=${filter}&query=${query}" <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">class="is-active"</c:if>>${(cur_sector-1)*page_amount+i}</a>
                    </c:forEach>
                    <c:if test="${is_next eq true}"><a href="brd_announce?page=${cur_page+1}&filter=${filter}&query=${query}" class="paging__next"><img src="resources/assets/image/ico_paging_next.png" alt=""></a></c:if>
                    <c:if test="${is_last eq true}"><a href="brd_announce?page=${tot_page}&filter=${filter}&query=${query}" class="paging__next2"><img src="resources/assets/image/ico_paging_next_02.png" alt=""></a></c:if>
                </div>
            </div>
        </div>

    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>
</div>
<script>

    function locationSearch() {
        const searchSelect = $('#search_select').val();
        const searchInput = $('#search_input').val();
        window.location = 'brd_announce?page=1&filter=' + searchSelect + '&query=' + encodeURI(encodeURIComponent(searchInput));
    }

    $(document).ready(function() {
        (function() {
            switch('${filter}') {
                case 't':
                case 'w':
                case 'c':
                case 'tc':
                    $('#search_select').val('${filter}').prop("selected", true);
                    break;
                default:
                    $('#search_select').val('t').prop("selected", true);
            }
            $('#search_input').val('${query}');
        })();

        $('#search_btn').click(function () {
            locationSearch();
        });

        $("#search_input").on('keyup', function(key) {
            if(key.keyCode === 13) {
                locationSearch();
            }
        });
    });

</script>
</body>
</html>