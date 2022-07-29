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
                    <div class="location__deco">전북 김제 스마트팜 혁신밸리 실증단지의 다양한 홍보소식과 정보를 알려드립니다.</div>
                </div>
            </div>
        </div>
        <div class="page__cnt">

            <div class="board__head">
                <div class="board__total">${total_count} <strong>00</strong>개</div>
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
                <ul class="list__type--promo">
                    <c:forEach items="${prContentList}" var="promotion" varStatus="status">
                        <li>
                            <a href="brd_promotion_detail?idx=${promotion.idx_pr_content}" class=" btn-sm btn_content_modal">
                                <figure><img src="${promotion.thumb_img_file_path}" alt="" class="thumb_list_item"></figure>
                                <div class="caption">
                                    <span class="list__title">${promotion.subject}</span>
                                    <div class="list__file">
                                        <a href="${promotion.file_path}"><img src="resources/assets/image/ico_hwp.png" alt="hwp"></a>
                                        <img src="resources/assets/image/ico_pdf.png" alt="pdf">
                                    </div>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
                    <%--
                    <li>
                        <a href="brd_promotion_detail">
                            <figure><img src="resources/assets/image/@promo_02.png" alt=""></figure>
                            <div class="caption">
                                <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                                <div class="list__file">
                                    <a href="#"><img src="resources/assets/image/ico_png.png" alt="png"></a>
                                    <a href="#"><img src="resources/assets/image/ico_jpg.png" alt="jpg"></a>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="brd_promotion_detail">
                            <figure><img src="resources/assets/image/@promo_03.png" alt=""></figure>
                            <div class="caption">
                                <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                                <div class="list__file">
                                    <a href="#"><img src="resources/assets/image/ico_hwp.png" alt="hwp"></a>
                                    <a href="#"><img src="resources/assets/image/ico_pdf.png" alt="pdf"></a>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="brd_promotion_detail">
                            <figure><img src="resources/assets/image/@promo_04.png" alt=""></figure>
                            <div class="caption">
                                <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                                <div class="list__file">
                                    <a href="#"><img src="resources/assets/image/ico_hwp.png" alt="hwp"></a>
                                    <a href="#"><img src="resources/assets/image/ico_pdf.png" alt="pdf"></a>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="brd_promotion_detail">
                            <figure><img src="resources/assets/image/@promo_02.png" alt=""></figure>
                            <div class="caption">
                                <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                                <div class="list__file">
                                    <a href="#"><img src="resources/assets/image/ico_hwp.png" alt="hwp"></a>
                                    <a href="#"><img src="resources/assets/image/ico_pdf.png" alt="pdf"></a>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="brd_promotion_detail">
                            <figure><img src="resources/assets/image/@promo_03.png" alt=""></figure>
                            <div class="caption">
                                <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                                <div class="list__file">
                                    <a href="#"><img src="resources/assets/image/ico_hwp.png" alt="hwp"></a>
                                    <a href="#"><img src="resources/assets/image/ico_pdf.png" alt="pdf"></a>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="brd_promotion_detail">
                            <figure><img src="resources/assets/image/@promo_04.png" alt=""></figure>
                            <div class="caption">
                                <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                                <div class="list__file">
                                    <a href="#"><img src="resources/assets/image/ico_hwp.png" alt="hwp"></a>
                                    <a href="#"><img src="resources/assets/image/ico_pdf.png" alt="pdf"></a>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="brd_promotion_detail">
                            <figure><img src="resources/assets/image/@promo_01.png" alt=""></figure>
                            <div class="caption">
                                <span class="list__title">제26회 용스네 (용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹 용감한 스타트업 네트워킹)</span>
                                <div class="list__file">
                                    <a href="#"><img src="resources/assets/image/ico_hwp.png" alt="hwp"></a>
                                    <a href="#"><img src="resources/assets/image/ico_pdf.png" alt="pdf"></a>
                                </div>
                            </div>
                        </a>
                    </li>--%>
                </ul>
            </div>
            <div class="list__paging">
                <div class="form__btn">
                    <a href="brd_promotion?page=" class="btn btn-next">더보기 1/100</a>
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


</script>
</body>
</html>
