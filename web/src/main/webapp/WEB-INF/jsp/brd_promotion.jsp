<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:46 오전
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
                    <a href="#" class="under__depth--anchor">홍보자료</a>
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
                <h2 class="page__title">홍보자료</h2>
                <div class="page__location">
                    <c:if test="${profile == 'sangju-prod'}">
                        <div class="location__deco">경북 상주 스마트팜 혁신밸리 실증단지의 다양한 홍보소식과 정보를 알려드립니다.</div>
                    </c:if>
                    <c:if test="${profile == 'gimje-prod'}">
                        <div class="location__deco">전북 김제 스마트팜 혁신밸리 실증단지의 다양한 홍보소식과 정보를 알려드립니다.</div>
                    </c:if>
                    <c:if test="${profile == 'local'}">
                        <div class="location__deco">전북 김제 스마트팜 혁신밸리 실증단지의 다양한 홍보소식과 정보를 알려드립니다.</div>
                    </c:if>
                </div>
            </div>
        </div>
        <div class="page__cnt">

            <div class="board__head">
                <div class="board__total">${total_count}개</div>
                <div class="board__search">
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
            <div class="list__type">
                <ul class="list__type--promo" id="pr_list">
                    <c:forEach items="${prContentList}" var="promotion" varStatus="status">
                        <li>
                            <a href="brd_promotion_detail?idx=${promotion.idx_pr_content}" class=" btn-sm btn_content_modal">
                                <figure><img src="${promotion.thumb_img_file_path == null ? 'resources/assets/image/img_thumbnail-no-resources.png' : promotion.thumb_img_file_path}" alt="" class="thumb_list_item"></figure>
                                <div class="caption">
                                    <span class="list__title">${promotion.subject}</span>
                                    <div class="list__file">
                                        <a href="${promotion.file_path}"><img src="resources/assets/image/ico_file-present.png" alt="hwp"></a>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="list__paging">
                <div class="form__btn">
                    <%
                        final Integer totalCount = (Integer) request.getAttribute("total_count");
                        int totalPage = totalCount / 10;

                        if (totalCount % 10 != 0) {
                            totalPage += 1;
                        }
                    %>
                    <button id="plus_pr" class="btn btn-next">더보기 1/<%=totalPage%></button>
                </div>
            </div>
            <!--//-->
        </div>

    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
<script>

    $(".btn_content_modal").click(function (){
        var idx = $(this).attr("id");
        pageLoad("pr_contents", {idx: parseInt(idx)}, "홍보자료 모달컨텐츠", "pr_contents");
    })

    function locationSearch() {
        const searchSelect = $('#search_select').val();
        const searchInput = $('#search_input').val();
        window.location = 'brd_promotion?page=1&filter=' + searchSelect + '&query=' + encodeURI(encodeURIComponent(searchInput));
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

    const makeCard = function(promotion){
        if(!promotion.thumb_img_file_path){
            promotion.thumb_img_file_path = 'resources/assets/image/h1_logo@3x.png';
        }
        return  '<li>' +
                '   <a href="brd_promotion_detail?idx=' + promotion.idx_pr_content + '" class=" btn-sm btn_content_modal">'+
                '       <figure><img src="' + promotion.thumb_img_file_path + '" alt="" class="thumb_list_item"></figure>'+
                '       <div class="caption">'+
                '           <span class="list__title">'+promotion.subject+'</span>'+
                '           <div class="list__file">'+
                '               <a href="'+ promotion.file_path +'"><img src="resources/assets/image/ico_file-present.png" alt=""></a>'+
                '           </div>'+
                '       </div>'+
                '   </a>'+
                '</li>'
        }


    var totalPage = <%=totalPage%>;
    var page = ${page} + 1;
    $("#plus_pr").click(function() {

        if (page > totalPage) {
            return;
        }

        var request = {
            page,
            filter: $('#search_select').val(),
            query: $('#search_input').val(),
        }

        $.ajax({
            type: 'post',
            url :'plus_pr', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(request),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(res){
                for (var i = 0; i < res.length; ++i) {
                    $("#pr_list").append(makeCard(res[i]));
                    $('#plus_pr')[0].innerText = ('더보기 ' + page + '/' + totalPage);
                }
                page++;
            }
        })
    })

</script>
</body>
</html>
