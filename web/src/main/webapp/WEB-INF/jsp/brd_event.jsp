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
                    <a href="#" class="under__depth--anchor">행사안내</a>
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
                <h2 class="page__title">행사안내</h2>
                <div class="page__location">
                    <div class="location__deco">전북 김제 스마트팜 혁신밸리 실증단지의 새로운 소식을 알려드릡니다.</div>
                    <div class="location__link">한국농업기술진흥원 홈페이지 <a href="https://fact.or.kr/action.do?action=eventno%24list" target="_blank">바로가기</a></div>
                </div>
            </div>
        </div>
        <div class="page__cnt">

            <div class="board__head">
                <div class="board__total">총 <strong>${total_count}</strong>개</div>
                <div class="board__search">
                    <select name="" id="" class="select-sm">
                        <option value="">제목</option>
                        <option value="">작성자</option>
                        <option value="">내용</option>
                        <option value="">제목+내용</option>
                    </select>
                    <input type="text" class="search" placeholder="검색어를 입력해주세요."><a href="#none" class="btn btn__board--search">검색</a></div>
            </div>
            <div class="list__type">
                <ul class="list__type--event" id="event_list">
                    <c:forEach var="event" items="${eventContentVOList}"  varStatus="status"  >
                        <li>
                            <a href="brd_event_detail?idx=${event.idx_event_content}" >
                                <figure><img src="${event.thumb_img_file_path}" alt="" class="thumb_list_item"></figure>
                                <span class="list__title">${event.subject}</span><br>
                                <span class="list__duedate">${event.event_start_date}~${event.event_end_date}</span>
                            </a>
                        </li>
                    </c:forEach>
                    <%--
                    <li>
                        <a href="#none">
                            <figure><img src="resources/assets/image/@list_02.png" alt=""></figure>
                            <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                            <span class="list__duedate">2021.06.25~2021.07.25</span>
                        </a>
                    </li>
                    <li>
                        <a href="#none">
                            <figure><img src="resources/assets/image/@list_03.png" alt=""></figure>
                            <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                            <span class="list__duedate">2021.06.25~2021.07.25</span>
                        </a>
                    </li>
                    <li>
                        <a href="#none">
                            <figure><img src="resources/assets/image/@list_04.png" alt=""></figure>
                            <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                            <span class="list__duedate">2021.06.25~2021.07.25</span>
                        </a>
                    </li>
                    <li>
                        <a href="#none">
                            <figure><img src="resources/assets/image/@list_02.png" alt=""></figure>
                            <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                            <span class="list__duedate">2021.06.25~2021.07.25</span>
                        </a>
                    </li>
                    <li>
                        <a href="#none">
                            <figure><img src="resources/assets/image/@list_03.png" alt=""></figure>
                            <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                            <span class="list__duedate">2021.06.25~2021.07.25</span>
                        </a>
                    </li>
                    <li>
                        <a href="#none">
                            <figure><img src="resources/assets/image/@list_04.png" alt=""></figure>
                            <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                            <span class="list__duedate">2021.06.25~2021.07.25</span>
                        </a>
                    </li>
                    <li>
                        <a href="#none">
                            <figure><img src="resources/assets/image/@list_01.png" alt=""></figure>
                            <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                            <span class="list__duedate">2021.06.25~2021.07.25</span>
                        </a>
                    </li>--%>
                </ul>
            </div>
            <div class="list__paging">
                <div class="form__btn">
                    <button id="plus_event" class="btn btn-next">더보기 1/100</button>
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
    console.log('${eventContentVOList}')

    const a = function(event){
        return '<li>\n' +
    '   <a href="brd_event_detail?idx=' + event.idx_event_content + '"  >\n' +
    '       <figure><img src="'+ event.thumb_img_file_path   +'" alt="" class="thumb_list_item"></figure>\n' +
    '       <span class="list__title">' + event.subject + '</span>\n' +
    '       <span class="list__duedate">' + event.event_start_date + '~' +event.event_end_date + '</span>\n' +
    '   </a>\n' +
    '</li>'}

    var page = 2;
    $("#plus_event").click(function() {
            $.ajax({
                type: 'post',
                url :'plus_event', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(page),//보내는 데이터
                contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                dataType:'json',//받는 데이터 타입
                success: function(res){
                    for(var event of res){
                        $("#event_list").append(a(event));
                    }
                    page += 1;
                }
            })
    })


</script>
<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
</body>
</html>