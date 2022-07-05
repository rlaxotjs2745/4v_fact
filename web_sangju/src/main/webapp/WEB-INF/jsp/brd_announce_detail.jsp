<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/10/05
  Time: 9:42 오후
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
                                <div class="edit--type"><em>게시자</em><span>이동우</span></div>
                                <div class="edit--type"><em>등록일</em><span>${announcementInfo.reg_date}</span></div>
                                <div class="edit--type"><em>조회수</em><span>${announcementInfo.view_count}</span></div>
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
                            </style>
                            <div class="edit__templete">
                                <div class="temp__cover">${announcementInfo.subject}</div>
                                <div class="temp__title">2021년 종자생명산업 맞춤형 인력양성 교육훈련생 선정 결과 알림</div>
                                <div class="temp__desc">${announcementInfo.bs_announcement_code}</div>
                                <div class="temp__signature">2021년 6월 22일<br>농업기술실용화재단 이사장</div>
                                <div class="temp__table">
                                    <table>
                                        <colgroup>
                                            <col style="width:80px">
                                            <col style="width:100px">
                                            <col style="width:200px">
                                            <col style="width:100px">
                                            <col style="width:280px">
                                        </colgroup>
                                        <thead>
                                        <tr>
                                            <th colspan="2">교육과정</th>
                                            <th>교육일정</th>
                                            <th>교육인원</th>
                                            <th>교육장소</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>1차</td>
                                            <td>종자산업가</td>
                                            <td>6.28(월) ~ 7.9(금) 10일간</td>
                                            <td>15명</td>
                                            <td class="td--left">원광대 농식품융합대학 66번동 101호</td>
                                        </tr>
                                        <tr>
                                            <td>2차</td>
                                            <td>미래육종가</td>
                                            <td>7.12(월) ~ 7.33(금) 10일간</td>
                                            <td>15명</td>
                                            <td class="td--left">정북대 농식품융합대학 본관 101호</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="temp__text">
                                    ${announcementInfo.announce_contents}
                                    □ 교육훈련생 선정 결과
                                    ○ 최종선발 교육생 : 총 30명(종자산업가 15, 미래육종가 15)   * 첨부파일 참조
                                    ○ 예비 교육생 : 총 4명(과정별 2명)
                                    ※ 예비생은 추후 선정된 교육생의 결원 발생 시, 순차적으로 안내할 예정입니다.

                                    □ 교육 등록안내
                                    ○ 등록대상 : 과정별 최종선발 교육생
                                    ○ 등록일시 : 해당 과정 개강일 8시 50분까지 입실
                                    ○ 준비물 : 신분증 지참
                                    □ 문의사항 : 농업기술실용화재단 종자산업진흥센터(☎ 063-219-8816)
                                </div>
                                <div class="temp__goal">${announcementInfo.memo} -</div>
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
                        <img src="resources/assets/image/ico_back.png" alt="이전글"> 이전글 <span>농업기술실용화재단 공고 제2021-121호</span>
                    </a>
                    <a href="#none" class="detail__anchor anchor__foword">
                        <span>농업기술실용화재단 공고 제2021-121호</span> 다음글 <img src="resources/assets/image/ico_foword.png" alt="다음글">
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