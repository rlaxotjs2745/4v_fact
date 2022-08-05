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

<div class="content" id="content">
    <div class="page__body">
        <div class="page__breadcrumbs--box">
            <div class="page__breadcrumbs--inner">
                <span>홈</span>
                <span>열린마당</span>
                <div class="under__depth">
                    <a href="#" class="under__depth--anchor">공지사항</a>
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
                <h2 class="page__title">공지사항</h2>
                <div class="page__location">
                    <div class="location__deco">준비중이니 잠시만 기다려주세요.</div>
                </div>
            </div>
        </div>
        <div class="page__cnt">

            <div class="board__head">
                <div class="board__total">검색 결과 총 <strong>00</strong>개</div>
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

            <div class="table__blank">
                <div class="blank__title">준비중.</div>
                <div class="blank__text">공지사항 준비중입니다.</div>
            </div>
            <!--//-->
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
        window.location = 'brd_notice?page=1&filter=' + searchSelect + '&query=' + encodeURI(encodeURIComponent(searchInput));
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
