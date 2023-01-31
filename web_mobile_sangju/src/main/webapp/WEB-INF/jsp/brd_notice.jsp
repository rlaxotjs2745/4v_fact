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
                    <input type="text" class="search" placeholder="검색어를 입력해주세요."><a href="#none" class="btn btn__board--search">검색</a></div>
                <div class="board__total">총 <strong>00</strong>개</div>
            </div>
            <div class="table__type">
                <table class="table__type--board ">
                    <colgroup>
                        <col style="width:10%"></col>
                        <col style="width:45%"></col>
                        <col style="width:15%"></col>
                        <col style="width:15%"></col>
                        <col style="width:15%"></col>
                        <col></col>
                    </colgroup>
                    <thead>
                    <tr>
                        <th>번호</th>
                        <th class="th__left">제목</th>
                        <th>등록일</th>
                        <th>조회수</th>
                        <th>첨부파일</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>670</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link">종자생명산업 맞춤형 인력양성」 교육훈련생 선정 결과 알림<img src="resources/assets/image/ico_new.png" alt="NEW" class="board__badge"></a></td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_doc.png" alt=""></a></td>
                    </tr>
                    <tr>
                        <td>671</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link">한국농업기술진흥원 규제개선 현황(`21.6월)</a></td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_jpg.png" alt=""></a></td>
                    </tr>
                    <tr>
                        <td>672</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link">농업기술실용화재단 정보보안 및 개인정보처리방침 변경 알림</a></td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_hwp.png" alt=""></a></td>
                    </tr>
                    <tr>
                        <td>673</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link">종자생명산업 맞춤형 인력양성_교육훈련생_신청 </a></td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_pdf.png" alt=""></a><a href="#none"><img src="resources/assets/image/ico_png.png" alt=""></a><a href="#none"><img src="resources/assets/image/ico_hwp.png" alt=""></a></td>
                    </tr>
                    <tr>
                        <td>674</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link">2021년 종자생명산업  맞춤형 인력양성」 교육훈련생 선정 결과 알림</a></td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_ppt.png" alt=""></a></td>
                    </tr>
                    <tr>
                        <td>675</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link">창업기업제품 공공기관 우선구매제도 안내</a></td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_xls.png" alt=""></a><a href="#none"><img src="resources/assets/image/ico_hwp.png" alt=""></a></td>
                    </tr>
                    <tr>
                        <td>676</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link">2021년 혁신도시 공공기관연계육성 스마트팜 기업지원사업(비R&D) 온라인 신청 2021년 혁신도시 공공기관연계육성 스마트팜 기업지원사업(비R&D) </a></td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_hwp.png" alt=""></a></td>
                    </tr>
                    <tr>
                        <td>677</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link">창업기업제품 공공기관 우선구매제도 안내</a></td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_hwp.png" alt=""></a></td>
                    </tr>
                    <tr>
                        <td>678</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link"> 창업기업제품 공공기관 우선구매제도 안내</a></td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_hwp.png" alt=""></a></td>
                    </tr>
                    <tr>
                        <td>679</td>
                        <td class="td__left"><a href="brd_notice_detail" class="td__link"> 창업기업제품 공공기관 우선구매제도 안내</a></td>
                        <td class="td__data">2021-00-00</td>
                        <td class="td__data">0,000</td>
                        <td class="td__data"><a href="#none"><img src="resources/assets/image/ico_hwp.png" alt=""></a></td>
                    </tr>
                    </tbody>
                </table>
                <!--//-->
                <div class="table__paging">
                    <a href="#none" class="paging__prev2 disabled"><img src="resources/assets/image/ico_paging_prev_02.png" alt=""></a>
                    <a href="#none" class="paging__prev disabled"><img src="resources/assets/image/ico_paging_prev.png" alt=""></a>
                    <a href="#none" class="is-active">1</a>
                    <a href="#none">2</a>
                    <a href="#none">3</a>
                    <a href="#none" class="paging__next"><img src="resources/assets/image/ico_paging_next.png" alt=""></a>
                    <a href="#none" class="paging__next2"><img src="resources/assets/image/ico_paging_next_02.png" alt=""></a>
                </div>
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