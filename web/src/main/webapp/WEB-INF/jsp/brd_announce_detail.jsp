<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/10/05
  Time: 9:42 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

            <div class="table__type no--head">
                <table class="table__type--detail">
                    <colgroup>
                        <col style="width:47px"></col>
                        <col></col>
                    </colgroup>
                    <thead>
                    <tr>
                        <th><a href="brd_notice"><img src="resources/assets/image/ico_list.png" alt="리스트"></a></th>
                        <th class="th__edit">
                            <div class="detail__edit">
                                <div class="edit--type"><em>게시자</em><span>${bsAnnouns.author}</span></div>
                                <fmt:formatDate value="${bsAnnouns.reg_date}" var="reg_date" pattern="yyyy.MM.dd."/>
                                <div class="edit--type"><em>등록일</em><span>${reg_date}</span></div>
                                <div class="edit--type"><em>조회수</em><span>${bsAnnouns.view_count}</span></div>
                                <div class="edit--print"><img src="resources/assets/image/ico_print.png" alt="인쇄하기" onclick="window.print()"></div>
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
                            </style>
                            <div class="edit__templete">
                                <div class="temp__cover">${bsAnnouns.bs_announcement_code}</div>
                                <div class="temp__title">${bsAnnouns.subject}</div>
<%--                                <div class="temp__desc"> [2021년 종자생명산업 맞춤형 인력양성] 교육과정 별 교육훈련생 선정결과를 첨부와 같이 알려드리며, <br>선정된 교육생들은 향후 일정이 원활히 진행될 수 있도록 협조하여 주시기 바랍니다.</div>--%>
<%--                                <div class="temp__signature">2021년 6월 22일<br>한국농업기술진흥원 이사장</div>--%>
<%--                                <div class="temp__table">--%>
<%--                                    <table>--%>
<%--                                        <colgroup>--%>
<%--                                            <col style="width:80px">--%>
<%--                                            <col style="width:100px">--%>
<%--                                            <col style="width:200px">--%>
<%--                                            <col style="width:100px">--%>
<%--                                            <col style="width:280px">--%>
<%--                                        </colgroup>--%>
<%--                                        <thead>--%>
<%--                                        <tr>--%>
<%--                                            <th colspan="2">교육과정</th>--%>
<%--                                            <th>교육일정</th>--%>
<%--                                            <th>교육인원</th>--%>
<%--                                            <th>교육장소</th>--%>
<%--                                        </tr>--%>
<%--                                        </thead>--%>
<%--                                        <tbody>--%>
<%--                                        <tr>--%>
<%--                                            <td>1차</td>--%>
<%--                                            <td>종자산업가</td>--%>
<%--                                            <td>6.28(월) ~ 7.9(금) 10일간</td>--%>
<%--                                            <td>15명</td>--%>
<%--                                            <td class="td--left">원광대 농식품융합대학 66번동 101호</td>--%>
<%--                                        </tr>--%>
<%--                                        <tr>--%>
<%--                                            <td>2차</td>--%>
<%--                                            <td>미래육종가</td>--%>
<%--                                            <td>7.12(월) ~ 7.33(금) 10일간</td>--%>
<%--                                            <td>15명</td>--%>
<%--                                            <td class="td--left">정북대 농식품융합대학 본관 101호</td>--%>
<%--                                        </tr>--%>
<%--                                        </tbody>--%>
<%--                                    </table>--%>
<%--                                </div>--%>
                                <div class="temp__text">
                                    ${bsAnnouns.announce_contents}
                                </div>
                                <div class="temp__goal">- 본 교육과정에 관심을 가지고 지원하신 모든 분들께 감사드립니다. -</div>
                                <div class="temp__notice--box"> ※ 코로나19 지역발생 상황에 따라 교육과정이 연기·변동될 수 있음을 알려드리며,
                                    이 경우 별도로 개별통보(전화, SMS 등)를 통하여 안내할 예정입니다.
                                    <strong>< 교육생들은 주말행사·모임 자제 및 다중 이용시설 방문을 삼가해주시기 바랍니다. ></strong></div>
                            </div>
                            <!--//-->
                        </td>
                    </tr>

                    </tbody>
                </table>
                <!--//-->
                <div class="detail__nav">
                    <a href="#none" class="detail__anchor anchor--back">
                        <img src="resources/assets/image/ico_back.png" alt="이전글"> 이전글 <span>한국농업기술진흥원 공고 제2021-121호</span>
                    </a>
                    <a href="#none" class="detail__anchor anchor__foword">
                        <span>한국농업기술진흥원 공고 제2021-121호</span> 다음글 <img src="resources/assets/image/ico_foword.png" alt="다음글">
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
</body>
</html>
