<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:47 오전
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

            <div class="table__type no--head">
                <table class="table__type--detail">
                    <colgroup>
                        <col style="width:47px"></col>
                        <col></col>
                    </colgroup>
                    <thead>
                    <tr>
                        <th><a href="#none"></a><img src="resources/assets/image/ico_list.png" alt="리스트"></th>
                        <th class="th__edit">
                            <div class="detail__edit">
                                <div class="edit--type"><em>게시자</em><span>${pr.author}</span></div>
                                <fmt:formatDate value="${pr.reg_date}" var="reg_date" pattern="yyyy.MM.dd."/>
                                <div class="edit--type"><em>등록일</em><span>${reg_date}</span></div>
                                <div class="edit--type"><em>조회수</em><span>${pr.view_count}</span></div>
                                <div class="edit--print"><a href="#none"><img src="resources/assets/image/ico_print.png" alt="인쇄하기"></a></div>
                            </div>
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td colspan="2">
                            <!--//-->
                            <style>
                                .edit__templete{
                                    padding:20px 0 0 0;
                                    text-align: left;
                                }
                                .edit__templete .temp__cover{
                                    color: #939398;
                                    font-size: 14px;
                                    line-height: 1.5;
                                    margin-bottom: 5px;
                                }
                                .edit__templete .temp__title{
                                    color: #000;
                                    font-size: 34px;
                                    line-height: 1.5;
                                    margin-bottom:10px;
                                }
                                .edit__templete .temp__desc{
                                    color: #161616;
                                    font-size: 15px;
                                    line-height: 1.5;
                                    margin-bottom: 20px;
                                }
                                .edit__templete .temp__signature{
                                    color: #575757;
                                    font-size: 13px;
                                    line-height: 1.5;
                                    margin-bottom: 30px;
                                }
                                .edit__templete .temp__table table{
                                    width: auto !important;
                                    border-collapse: collapse !important;
                                    border-spacing: 0 !important;
                                }
                                .edit__templete .temp__table thead th{
                                    border:1px solid rgba(16, 19, 20, 0.2) !important;
                                    background: rgba(16, 19, 20, 0.1) !important;
                                    text-align: center !important;
                                    padding: 5px 0 !important;
                                    color:#161616 !important;
                                    font-size: 15px !important;
                                    font-weight: 400 !important;
                                }
                                .edit__templete .temp__table tbody td{
                                    border:1px solid rgba(16, 19, 20, 0.2) !important;
                                    padding:5px 10px !important;
                                    color: #161616 !important;
                                }
                                .temp__table tbody td.td--left{
                                    text-align: left !important;
                                    padding:5px 15px !important;
                                }
                                .edit__templete .temp__text{
                                    word-break: keep-all !important;
                                    white-space: pre-line !important;
                                    color:#161616 !important;
                                }
                                .edit__templete .temp__goal{
                                    color:#161616 !important;
                                    font-size: 15px !important;
                                    font-weight: 600 !important;
                                    margin: 30px 0 10px 0 !important;
                                }
                                .edit__templete .temp__notice--box{
                                    background: #f8f8f8 !important;
                                    padding: 15px !important;
                                    word-break: keep-all !important;
                                    white-space: pre-line !important;
                                    font-size: 13px !important;
                                    line-height: 1.5 !important;
                                }
                                .edit__templete .temp__notice--box strong{
                                    color:#ff0000 !important;
                                    font-weight: 400 !important;
                                }
                                .edit__templete .temp__download--box{
                                    background: #f8f8f8 !important;
                                    padding: 15px !important;
                                    font-size: 14px !important;
                                    line-height: 1.5 !important;
                                    border-radius: 8px !important;
                                    margin:10px 0 !important;
                                }
                                .edit__templete .temp__download--box ul{
                                    margin:10px 0 0 0 !important;
                                }
                                .edit__templete .temp__download--box ul li{
                                    margin:5px 0 !important;
                                }
                                .edit__templete .temp__download--box ul li img{
                                    width: 20px !important;
                                    margin-right:5px !important;
                                }
                            </style>
                            <div class="edit__templete">
                                <div class="temp__title">${pr.subject}</div>
                                <div class="tem__photo"><img src="" alt=""></div>
                                <div class="temp__text">${pr.pr_contents}

                                    ${pr.memo}
                                </div>
                                <div class="temp__download--box"><strong>첨부파일</strong>
                                    ${pr.file_path}
                                    <ul>
                                        <li><img src="resources/assets/image/ico_hwp.png" alt=""><a href="#none">파일명 파일명.hwp</a></li>
                                        <li><img src="resources/assets/image/ico_pdf.png" alt=""><a href="#none">파일명 파일명.png</a></li>
                                        <li><img src="resources/assets/image/ico_jpg.png" alt=""><a href="#none">파일명 파일명.jpg</a></li>
                                    </ul>
                                </div>

                            </div>
                            <!--//-->
                        </td>
                    </tr>

                    </tbody>
                </table>
                <!--//-->
                <div class="detail__nav">
                    <a href="brd_promotion_detail?idx=${pr.idx_pr_content-1}" class="detail__anchor anchor--back">
                        <img src="resources/assets/image/ico_back.png" alt="이전글"> 이전글
                    </a>
                    <a href="brd_promotion_detail?idx=${pr.idx_pr_content+1}" class="detail__anchor anchor__foword">
                       다음글 <img src="resources/assets/image/ico_foword.png" alt="다음글">
                    </a>
                    <a href="#none" class="detail__anchor anchor__list"><img src="resources/assets/image/ico_list.png" alt="리스트"></a>
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

</script>
</body>
</html>