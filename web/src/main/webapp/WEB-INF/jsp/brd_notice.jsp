<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/07/30
  Time: 4:56 오후
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
                    <div class="location__deco">담당자는 해당 게시물 작성자 및 전화번호 참고 부탁드립니다.</div>
                </div>
            </div>
        </div>
        <div class="page__cnt">

            <div class="board__head">
                <div class="board__total">검색 결과 총 <strong>${total_count}</strong>개</div>
                <div class="board__search">
                    <select name="" id="" class="select-sm">
                        <option value="">제목</option>
                        <option value="">작성자</option>
                        <option value="">내용</option>
                        <option value="">제목+내용</option>
                    </select>
                    <input type="text" class="search" placeholder="검색어를 입력해주세요."><a href="#none" class="btn btn__board--search">검색</a></div>
            </div>
            <div class="table__type">
                <table class="table__type--board">
                    <colgroup>
                        <col style="width:6%"></col>
                        <col style="width:54%"></col>
                        <col style="width:10%"></col>
                        <col style="width:10%"></col>
                        <col style="width:10%"></col>
                        <col style="width:10%"></col>
                    </colgroup>
                    <thead>
                    <tr>
                        <th>번호</th>
                        <th class="th__left">제목</th>
                        <th>첨부파일</th>
                        <th>게시자</th>
                        <th>등록일</th>
                        <th>조회수</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${noticeList}" var="notice" varStatus="status">
                        <tr>
                            <td>${notice.notice_num}</td>
                            <td class="td__left"><a href="brd_notice_detail?idx=${notice.idx_notice}" class="td__link">${notice.subject}<c:if test="${notice.is_new eq 1}"><img src="resources/assets/image/ico_new.png" alt="NEW" class="board__badge"></c:if></a></td>
                            <td class="td__data"><img src="resources/assets/image/ico_file-present.png" alt=""></td>
                            <td class="td__data">${notice.author}</td>
                            <td class="td__data">${notice.last_upd_date}</td>
                            <td class="td__data">${notice.view_count}</td>
                        </tr>
                    </c:forEach>
                    <%--
                    <tr>
                        <td>671</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link">농업기술실용화재단 규제개선 현황(`21.6월)</a></td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_jpg.png" alt=""></a></td>
                        <td class="td__data">XXXX</td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                    </tr>
                    <tr>
                        <td>672</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link">농업기술실용화재단 정보보안 및 개인정보처리방침 변경 알림</a></td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_hwp.png" alt=""></a></td>
                        <td class="td__data">XXXX</td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                    </tr>
                    <tr>
                        <td>673</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link">종자생명산업 맞춤형 인력양성_교육훈련생_신청 </a></td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_pdf.png" alt=""></a><a href="#none"><img src="resources/assets/image/ico_png.png" alt=""></a><a href="#none"><img src="resources/assets/image/ico_hwp.png" alt=""></a></td>
                        <td class="td__data">XXXX</td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                    </tr>
                    <tr>
                        <td>674</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link">2021년 종자생명산업  맞춤형 인력양성」 교육훈련생 선정 결과 알림</a></td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_ppt.png" alt=""></a></td>
                        <td class="td__data">XXXX</td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                    </tr>
                    <tr>
                        <td>675</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link"> 창업기업제품 공공기관 우선구매제도 안내</a></td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_xls.png" alt=""></a><a href="#none"><img src="resources/assets/image/ico_hwp.png" alt=""></a></td>
                        <td class="td__data">XXXX</td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                    </tr>
                    <tr>
                        <td>676</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link">실증단지</em>2021년 혁신도시 공공기관연계육성 스마트팜 기업지원사업(비R&D) 온라인 신청 2021년 혁신도시 공공기관연계육성 스마트팜 기업지원사업(비R&D) </a></td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_hwp.png" alt=""></a></td>
                        <td class="td__data">XXXX</td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                    </tr>
                    <tr>
                        <td>677</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link"> 창업기업제품 공공기관 우선구매제도 안내</a></td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_hwp.png" alt=""></a></td>
                        <td class="td__data">XXXX</td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                    </tr>
                    <tr>
                        <td>678</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link"> 창업기업제품 공공기관 우선구매제도 안내</a></td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_hwp.png" alt=""></a></td>
                        <td class="td__data">XXXX</td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                    </tr>
                    <tr>
                        <td>679</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link"> 창업기업제품 공공기관 우선구매제도 안내</a></td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_hwp.png" alt=""></a></td>
                        <td class="td__data">XXXX</td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                    </tr>--%>
                    </tbody>
                </table>
                <!--//-->
                <div class="table__paging">
                    <c:set var="name" value="${total_count/amount}" />

                    <c:if test="${is_past eq true}"><a href="brd_notice?page=1" class="paging__prev2"><img src="resources/assets/image/ico_paging_prev_02.png" alt=""></a></c:if>
                    <c:if test="${is_prev eq true}"><a href="brd_notice?page=${cur_page-1}" class="paging__prev"><img src="resources/assets/image/ico_paging_prev.png" alt=""></a></c:if>
                    <c:forEach var="i" begin="1" end="${page_amount}">
                        <a href="brd_notice?page=${(cur_sector-1)*page_amount+i}" <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">class="is-active"</c:if>>${(cur_sector-1)*page_amount+i}</a>
                    </c:forEach>
                    <c:if test="${is_next eq true}"><a href="brd_notice?page=${cur_page+1}" class="paging__next"><img src="resources/assets/image/ico_paging_next.png" alt=""></a></c:if>
                    <c:if test="${is_last eq true}"><a href="brd_notice?page=${tot_page}" class="paging__next2"><img src="resources/assets/image/ico_paging_next_02.png" alt=""></a></c:if>
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