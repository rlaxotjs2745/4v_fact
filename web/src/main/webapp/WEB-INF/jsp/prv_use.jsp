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
                <span>실증 안내/신청</span>
                <div class="under__depth">
                    <a href="#" class="under__depth--anchor">이용가능시설</a>
                    <div class="under__depth--list">
                        <a href="prv_part">실증 분야</a>
                        <a href="prv_step">실증 절차</a>
                        <a href="prv_use">이용가능시설</a>
                        <a href="prv_fee">실증서비스 이용료</a>
                        <a href="prv_application">신청서 작성</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">이용가능시설</h2>
                <div class="page__location">
                    <div class="location__deco">스마트팜 혁신밸리 실증단지에서 이용하실 수 있는 시설입니다.</div>
                    <div class="location__link">
                        <a href="prv_use" class="location__link--anchor is-selected">실증 온실</a>
                        <a href="prv_location" class="location__link--anchor ">실증 장비</a>
                        <a href="prv_office" class="location__link--anchor ">기업 사무실</a>
                    </div>
                </div>
            </div>
        </div>
        <c:if test="${profile == 'sangju-prod'}">
            <div class="page__cnt">
                <h3 class="page__subject">실증 온실 소개</h3>

                <div class="use__container">
                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:34%"></col>
                                <col style="width:33%"></col>
                                <col></col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>구분</th>
                                <th>전북 김제</th>
                                <th class="highlight">경북 상주</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>실증특화분야</td>
                                <td><strong>주력분야 : ICT 기자재</strong><br>
                                    ① ICT기자재      ② 신품종(아열대 제외)<br>
                                    ③ 기능성 물질    ④ 약용작물</td>
                                <td  class="highlight"><strong>주력분야 : 농업용 로봇</strong><br>
                                    ① 농업용 로봇      ② 병해충 연구<br>
                                    ③ 수출플랜트</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--//-->

                    <div class="cnt__title">실증온실 세부 소개</div>
                    <div class="use__image">
                            <%--<figure><img src="resources/assets/image/img_greenhouse_gimje.png" alt="김제 실증온실 세부"></figure>--%>
                        <figure><img src="resources/assets/image/img_greenhouse_sangju.png" alt="상주 실증온실 세부"></figure>
                    </div>
                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:5%"></col>
                                <col style="width:15%"></col>
                                <col style="width:20%"></col>
                                <col style="width:15%"></col>
                                <col style="width:15%"></col>
                                <col style="width:15%"></col>
                                <col style="width:15%"></col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>번호</th>
                                <th>위치</th>
                                <th>명칭</th>
                                <th>형태</th>
                                <th>시설</th>
                                <th>전용면적m²(평)</th>
                                <th>임대료(원/월)</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>실증온실</td>
                                <td>육묘장</td>
                                <td>유리</td>
                                <td>-</td>
                                <td>1,200m²</td>
                                <td>1,163,429</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>실증온실</td>
                                <td>과채류C</td>
                                <td>비닐</td>
                                <td>행잉거터</td>
                                <td>1,080m²</td>
                                <td>1,090,341</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>실증온실</td>
                                <td>과채류C</td>
                                <td>비닐</td>
                                <td>행잉거터</td>
                                <td>1,080m²</td>
                                <td>1,085,098</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>실증온실</td>
                                <td>엽채류C</td>
                                <td>비닐</td>
                                <td>행잉거터</td>
                                <td>1,080m²</td>
                                <td>1,068,060</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>실증온실</td>
                                <td>온실</td>
                                <td>비닐</td>
                                <td>EBB BED</td>
                                <td>240m²</td>
                                <td>238,802</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>실증온실</td>
                                <td>온실</td>
                                <td>비닐</td>
                                <td>EBB BED</td>
                                <td>240m²</td>
                                <td>235,016</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>실증온실</td>
                                <td>온실</td>
                                <td>비닐</td>
                                <td>행잉거터</td>
                                <td>480m²</td>
                                <td>479,934</td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>실증온실</td>
                                <td>엽채류B</td>
                                <td>유리</td>
                                <td>행잉거터</td>
                                <td>1,320m²</td>
                                <td>1,367,880</td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>실증온실</td>
                                <td>엽채류B</td>
                                <td>유리</td>
                                <td>행잉거터</td>
                                <td>1,320m²</td>
                                <td>1,348,658</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>실증온실</td>
                                <td>과채류B</td>
                                <td>유리</td>
                                <td>행잉거터</td>
                                <td>660m²</td>
                                <td>659,912</td>
                            </tr>
                            <tr>
                                <td>11</td>
                                <td>실증온실</td>
                                <td>과채류B</td>
                                <td>유리</td>
                                <td>행잉거터</td>
                                <td>660m²</td>
                                <td>659,912</td>
                            </tr>
                            <tr>
                                <td>12</td>
                                <td>실증온실</td>
                                <td>온실</td>
                                <td>유리</td>
                                <td>행잉거터</td>
                                <td>180m²</td>
                                <td>236,107</td>
                            </tr>
                            <tr>
                                <td>13</td>
                                <td>실증온실</td>
                                <td>기본형과채류F</td>
                                <td>유리</td>
                                <td>행잉거터</td>
                                <td>180m²</td>
                                <td>233,267</td>
                            </tr>
                            <tr>
                                <td>14</td>
                                <td>실증온실</td>
                                <td>온실</td>
                                <td>유리</td>
                                <td>EBB BED</td>
                                <td>180m²</td>
                                <td>181,062</td>
                            </tr>
                            <tr>
                                <td>15</td>
                                <td>실증온실</td>
                                <td>온실</td>
                                <td>유리</td>
                                <td>EBB BED</td>
                                <td>180m²</td>
                                <td>178,222</td>
                            </tr>
                            <tr>
                                <td>16</td>
                                <td>실증온실</td>
                                <td>온실</td>
                                <td>유리</td>
                                <td>행잉거터</td>
                                <td>360m²</td>
                                <td>363,878</td>
                            </tr>
                            <tr>
                                <td>17</td>
                                <td>실증온실</td>
                                <td>병해충</td>
                                <td>SP</td>
                                <td>-</td>
                                <td>840m²</td>
                                <td>849,056</td>
                            </tr>
                            <tr>
                                <td>18</td>
                                <td>실증온실</td>
                                <td>과체류A</td>
                                <td>유리</td>
                                <td>행잉거터</td>
                                <td>1,800m²</td>
                                <td>1,865,290</td>
                            </tr>
                            <tr>
                                <td>19</td>
                                <td>실증온실</td>
                                <td>과채류A</td>
                                <td>유리</td>
                                <td>행잉거터</td>
                                <td>1,800m²</td>
                                <td>1,839,077</td>
                            </tr>
                            <tr>
                                <td>20</td>
                                <td>실증온실</td>
                                <td>플랜트</td>
                                <td>유리</td>
                                <td>행잉거터</td>
                                <td>600m²</td>
                                <td>613,019</td>
                            </tr>
                            <tr>
                                <td>21</td>
                                <td>실증온실</td>
                                <td>농기계 전시</td>
                                <td>유리</td>
                                <td>-</td>
                                <td>600m²</td>
                                <td>581,711</td>
                            </tr>
                            <tr>
                                <td>28</td>
                                <td>1층</td>
                                <td>나대지</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>93,284</td>
                            </tr>

                            </tbody>
                        </table>
                    </div>

                    <div class="cnt__title">실증온실 설비 현황</div>
                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:33%"></col>
                                <col style="width:33%"></col>
                                <col style="width:33%"></col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>품목</th>
                                <th>내용</th>
                                <th>비고</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>온실구조</td>
                                <td>철골</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>온식피복</td>
                                <td>벽체, 지붕</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>행인거터</td>
                                <td>배지설치</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>스크린</td>
                                <td>수평, 수직 스크린</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>튜브레일</td>
                                <td>운반구 레일</td>
                                <td class="last-child" rowspan="11">전력 사용량에 따라 별도<br>비용 발생 및 청구</td>
                            </tr>
                            <tr>
                                <td>복합환경제어</td>
                                <td>구역별 환경제어</td>
                            </tr>
                            <tr>
                                <td>유동휀</td>
                                <td>실내 공기조화</td>
                            </tr>
                            <tr>
                                <td>FCU</td>
                                <td>온실 냉난방</td>
                            </tr>
                            <tr>
                                <td>포그설비</td>
                                <td>습도조절</td>
                            </tr>
                            <tr>
                                <td>양액재처리시설</td>
                                <td>양액재활용</td>
                            </tr>
                            <tr>
                                <td>양액설비</td>
                                <td>양액공급장치</td>
                            </tr>
                            <tr>
                                <td>양액배관</td>
                                <td>양액공급배관</td>
                            </tr>
                            <tr>
                                <td>CO2 배관</td>
                                <td>실내CO2량 조절</td>
                            </tr>
                            <tr>
                                <td>천 창</td>
                                <td>천창 모터, 개폐장치</td>
                            </tr>
                            <tr>
                                <td>냉난방</td>
                                <td>냉난방 열원공급</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="table__desc">
                            <ul>
                                <li>위 설비 현황은 실증온실 구축 진행상황에 따라 일부 변경될 수 있습니다.</li>
                            </ul>
                        </div>
                    </div>

                    <div class="cnt__title">실증온실 시설 사진 예시</div>
                    <div class="use__house">
                        <ul>
                            <li><figure><img src="resources/assets/image/img_use_house_a_01.png" alt=""></figure><span>벤로형 온실</span></li>
                            <li><figure><img src="resources/assets/image/img_use_house_a_02.png" alt=""></figure><span>행잉거터</span></li>
                            <li><figure><img src="resources/assets/image/img_use_house_a_03.png" alt=""></figure><span>육묘 벤치</span></li>
                            <li><figure><img src="resources/assets/image/img_use_house_a_04.png" alt=""></figure><span>단동온실</span></li>
                            <li><figure><img src="resources/assets/image/img_use_house_a_05.png" alt=""></figure><span>EBB베드(저면관수베드)</span></li>
                            <li><figure><img src="resources/assets/image/img_use_house_06.jpg" alt=""></figure><span>포그(fog) 설비</span></li>
                        </ul>
                    </div>
                </div>
                <!--//-->

            </div>
        </c:if>
        <c:if test="${profile == 'gimje-prod' or profile == 'local'}">
            <div class="page__cnt">
                <h3 class="page__subject">실증 온실 소개</h3>

                <div class="use__container">
                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:34%"></col>
                                <col style="width:33%"></col>
                                <col></col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>구분</th>
                                <th class="highlight">전북 김제</th>
                                <th>경북 상주</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>실증특화분야</td>
                                <td class="highlight"><strong>주력분야 : ICT 기자재</strong><br>
                                    ① ICT기자재      ② 신품종(아열대 제외)<br>
                                    ③ 기능성 물질    ④ 약용작물</td>
                                <td><strong>주력분야 : 농업용 로봇</strong><br>
                                    ① 농업용 로봇      ② 병해충 연구<br>
                                    ③ 수출플랜트</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--//-->

                    <div class="cnt__title">실증온실 세부 소개</div>
                    <div class="use__image">
                        <figure><img src="resources/assets/image/img_greenhouse_gimje.png" alt="김제 실증온실 세부"></figure>
                        <!--<figure><img src="resources/assets/image/img_greenhouse_sangju.png" alt="상주 실증온실 세부"></figure>-->
                    </div>
                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:5%"></col>
                                <col style="width:15%"></col>
                                <col style="width:20%"></col>
                                <col style="width:15%"></col>
                                <col style="width:15%"></col>
                                <col style="width:15%"></col>
                                <col style="width:15%"></col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>번호</th>
                                <th>위치</th>
                                <th>명칭</th>
                                <th>형태</th>
                                <th>시설</th>
                                <th>전용면적m²(평)</th>
                                <th>임대료(원/월)</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>실증온실</td>
                                <td>수경엽채류A</td>
                                <td>비닐</td>
                                <td>EDD배드 9Line(30m)</td>
                                <td>840m²(254)</td>
                                <td>742,867</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>실증온실</td>
                                <td>기본형엽채류A</td>
                                <td>유리</td>
                                <td>H배드 12Line(30m)</td>
                                <td>840m²(254)</td>
                                <td>970,939</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>실증온실</td>
                                <td>수경엽채류B</td>
                                <td>유리</td>
                                <td>H배드 12Line(30m)</td>
                                <td>840m²(254)</td>
                                <td>970,939</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>실증온실</td>
                                <td>육묘장</td>
                                <td>유리</td>
                                <td> - </td>
                                <td>1,260m²(381)</td>
                                <td>1,427,904</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>실증온실</td>
                                <td>기본형과채류G</td>
                                <td>비닐</td>
                                <td>행잉거터 15Line(30m)</td>
                                <td>840m²(254)</td>
                                <td>742,867</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>실증온실</td>
                                <td>기본형엽채류B</td>
                                <td>유리</td>
                                <td>H배드 6Line(30m)</td>
                                <td>420m²(127)</td>
                                <td>487,583</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>실증온실</td>
                                <td>기본형엽채류C</td>
                                <td>유리</td>
                                <td>H배드 6Line(30m)</td>
                                <td>420m²(127)</td>
                                <td>487,583</td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>실증온실</td>
                                <td>기본형과채류A</td>
                                <td>유리</td>
                                <td>행잉거터 9Line(30m)</td>
                                <td>420m²(127)</td>
                                <td>487,583</td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>실증온실</td>
                                <td>기본형과채류B</td>
                                <td>유리</td>
                                <td>행잉거터 9Line(30m)</td>
                                <td>420m²(127)</td>
                                <td>487,583</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>실증온실</td>
                                <td>기본형과채류C</td>
                                <td>유리</td>
                                <td>행잉거터 9Line(30m)</td>
                                <td>420m²(127)</td>
                                <td>487,583</td>
                            </tr>
                            <tr>
                                <td>11</td>
                                <td>실증온실</td>
                                <td>기본형과채류D</td>
                                <td>비닐</td>
                                <td>행잉거터 15Line(30m)</td>
                                <td>840m²(254)</td>
                                <td>742,867</td>
                            </tr>
                            <tr>
                                <td>12</td>
                                <td>실증온실</td>
                                <td>기본형과채류E</td>
                                <td>유리</td>
                                <td>행잉거터 24Line(30m)</td>
                                <td>1,260m²(381)</td>
                                <td>1,462,749</td>
                            </tr>
                            <tr>
                                <td>13</td>
                                <td>실증온실</td>
                                <td>기본형과채류F</td>
                                <td>유리</td>
                                <td>행잉거터 24Line(30m)</td>
                                <td>1,260m²(381)</td>
                                <td>1,462,749</td>
                            </tr>
                            <tr>
                                <td>14</td>
                                <td>단동온실</td>
                                <td>단동온실</td>
                                <td>비닐</td>
                                <td>고설배드 5Line(24m)</td>
                                <td>217m²(12×2)</td>
                                <td>180,722</td>
                            </tr>
                            <tr>
                                <td>15</td>
                                <td>단동온실</td>
                                <td>단동온실</td>
                                <td>비닐</td>
                                <td>고설배드 5Line(24m)</td>
                                <td>217m²(56)</td>
                                <td>180,722</td>
                            </tr>
                            <tr>
                                <td>16</td>
                                <td>단동온실</td>
                                <td>단동온실</td>
                                <td>비닐</td>
                                <td>단동비닐온실</td>
                                <td>217m²(56)</td>
                                <td>164,853</td>
                            </tr>
                            <tr>
                                <td>17</td>
                                <td>단동온실</td>
                                <td>단동온실</td>
                                <td>비닐</td>
                                <td>단동비닐온실</td>
                                <td>185m²(65)</td>
                                <td>132,426</td>
                            </tr>
                            <tr>
                                <td>18</td>
                                <td>단동온실</td>
                                <td>단동온실</td>
                                <td>비닐</td>
                                <td>단동비닐온실</td>
                                <td>185m²(65)</td>
                                <td>132,426</td>
                            </tr>
                            <tr>
                                <td>19</td>
                                <td>지원센터</td>
                                <td>식물 연구실1</td>
                                <td>-</td>
                                <td>다단배드</td>
                                <td>51m²</td>
                                <td>164,045</td>
                            </tr>
                            <tr>
                                <td>20</td>
                                <td>지원센터</td>
                                <td>식물 연구실2</td>
                                <td>-</td>
                                <td>다단배드</td>
                                <td>51m²</td>
                                <td>164,045</td>
                            </tr>
                            <tr>
                                <td>21</td>
                                <td>저수지옆</td>
                                <td>나대지</td>
                                <td>-</td>
                                <td>-</td>
                                <td>(500평)</td>
                                <td>37,124</td>
                            </tr>
                            <tr>
                                <td>22</td>
                                <td>연동옆</td>
                                <td>나대지</td>
                                <td>-</td>
                                <td>-</td>
                                <td>(600평)</td>
                                <td>41,263</td>
                            </tr>
                            <tr>
                                <td>23</td>
                                <td>연동옆</td>
                                <td>나대지</td>
                                <td>-</td>
                                <td>-</td>
                                <td>(100평)</td>
                                <td>6,867</td>
                            </tr>
                            <tr>
                                <td>24</td>
                                <td>연동옆</td>
                                <td>나대지</td>
                                <td>-</td>
                                <td>-</td>
                                <td>(300평)</td>
                                <td>20,642</td>
                            </tr>
                            <tr>
                                <td>25</td>
                                <td>연동옆</td>
                                <td>나대지</td>
                                <td>-</td>
                                <td>-</td>
                                <td>(100평)</td>
                                <td>6,867</td>
                            </tr>
                            <tr>
                                <td>26</td>
                                <td>단동옆</td>
                                <td>나대지</td>
                                <td>-</td>
                                <td>-</td>
                                <td>(500평)</td>
                                <td>34,396</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="cnt__title">실증온실 설비 현황</div>
                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:33%"></col>
                                <col style="width:33%"></col>
                                <col style="width:33%"></col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>품목</th>
                                <th>내용</th>
                                <th>비고</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>온실구조</td>
                                <td>철골</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>온실피복</td>
                                <td>벽체, 지붕</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>행잉거터</td>
                                <td>배지설치</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>스크린</td>
                                <td>수평, 수직 스크린</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>튜브레일</td>
                                <td>난방, 작업차 레일</td>
                                <td class="last-child" rowspan="11">전력 사용량에 따라 별도<br>비용 발생 및 청구</td>
                            </tr>
                            <tr>
                                <td>복합환경제어</td>
                                <td>구역별 환경제어</td>
                            </tr>
                            <tr>
                                <td>유동팬</td>
                                <td>실내 공기순환</td>
                            </tr>
                            <tr>
                                <td>FCU</td>
                                <td>온실 냉난방</td>
                            </tr>
                            <tr>
                                <td>포그설비</td>
                                <td>습도조절</td>
                            </tr>
                            <tr>
                                <td>배액살균순환설비</td>
                                <td>양액재활용</td>
                            </tr>
                            <tr>
                                <td>양액설비</td>
                                <td>양액공급장치</td>
                            </tr>
                            <tr>
                                <td>양액배관</td>
                                <td>양액공급배관</td>
                            </tr>
                            <tr>
                                <td>CO<sub>2</sub> 공급설비</td>
                                <td>실내 CO<sub>2</sub> 농도제어</td>
                            </tr>
                            <tr>
                                <td>천 창</td>
                                <td>천창 모터, 개폐장치</td>
                            </tr>
                            <tr>
                                <td>냉난방</td>
                                <td>냉난방 열원공급</td>
                            </tr>
                            </tbody>
                        </table>
                        <%--<div class="table__desc">
                            <ul>
                                <li>위 설비 현황은 실증온실 구축 진행상황에 따라 일부 변경될 수 있습니다.</li>
                            </ul>
                        </div>--%>
                    </div>

                    <div class="cnt__title">실증온실 시설 사진 예시</div>
                    <div class="use__house">
                        <ul>
                            <li><figure><img src="resources/assets/image/img_use_house_a_01.png" alt=""></figure><span>벤로형 온실</span></li>
                            <li><figure><img src="resources/assets/image/img_use_house_a_02.png" alt=""></figure><span>행잉거터</span></li>
                            <li><figure><img src="resources/assets/image/img_use_house_a_03.png" alt=""></figure><span>육묘 벤치</span></li>
                            <li><figure><img src="resources/assets/image/img_use_house_a_04.png" alt=""></figure><span>단동온실</span></li>
                            <li><figure><img src="resources/assets/image/img_use_house_a_05.png" alt=""></figure><span>EBB베드(저면관수베드)</span></li>
                            <li><figure><img src="resources/assets/image/img_use_house_06.jpg" alt=""></figure><span>포그(fog) 설비</span></li>
                        </ul>
                    </div>
                </div>
                <!--//-->

            </div>
        </c:if>
        <%--
        <c:if test="${profile == 'local'}">
            <div class="page__cnt">
                <h3 class="page__subject">실증 온실 소개</h3>

                <div class="use__container">
                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:34%"></col>
                                <col style="width:33%"></col>
                                <col></col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>구분</th>
                                <th class="highlight">전북 김제</th>
                                <th>경북 상주</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>실증특화분야</td>
                                <td class="highlight"><strong>주력분야 : ICT 기자재</strong><br>
                                    ① ICT기자재      ② 신품종(아열대 제외)<br>
                                    ③ 기능성 물질    ④ 약용작물</td>
                                <td><strong>주력분야 : 농업용 로봇</strong><br>
                                    ① 농업용 로봇      ② 병해충 연구<br>
                                    ③ 수출플랜트</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--//-->

                    <div class="cnt__title">실증온실 세부 소개</div>
                    <div class="use__image">
                        <figure><img src="resources/assets/image/img_greenhouse_gimje.png" alt="김제 실증온실 세부"></figure>
                        <!--<figure><img src="resources/assets/image/img_greenhouse_sangju.png" alt="상주 실증온실 세부"></figure>-->
                    </div>
                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:5%"></col>
                                <col style="width:15%"></col>
                                <col style="width:20%"></col>
                                <col style="width:15%"></col>
                                <col style="width:15%"></col>
                                <col style="width:15%"></col>
                                <col style="width:15%"></col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>번호</th>
                                <th>위치</th>
                                <th>명칭</th>
                                <th>형태</th>
                                <th>시설</th>
                                <th>전용면적m²(평)</th>
                                <th>임대료(원/월)</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>실증온실</td>
                                <td>수경엽채류A</td>
                                <td>비닐</td>
                                <td>EDD배드 9Line(30m)</td>
                                <td>840m²(254)</td>
                                <td>742,867</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>실증온실</td>
                                <td>기본형엽채류A</td>
                                <td>유리</td>
                                <td>H배드 12Line(30m)</td>
                                <td>840m²(254)</td>
                                <td>970,939</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>실증온실</td>
                                <td>수경엽채류B</td>
                                <td>유리</td>
                                <td>H배드 12Line(30m)</td>
                                <td>840m²(254)</td>
                                <td>970,939</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>실증온실</td>
                                <td>육묘장</td>
                                <td>유리</td>
                                <td> - </td>
                                <td>1,260m²(381)</td>
                                <td>1,427,904</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>실증온실</td>
                                <td>기본형과채류G</td>
                                <td>비닐</td>
                                <td>행잉거터 15Line(30m)</td>
                                <td>840m²(254)</td>
                                <td>742,867</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>실증온실</td>
                                <td>기본형엽채류B</td>
                                <td>유리</td>
                                <td>H배드 6Line(30m)</td>
                                <td>420m²(127)</td>
                                <td>487,583</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>실증온실</td>
                                <td>기본형엽채류C</td>
                                <td>유리</td>
                                <td>H배드 6Line(30m)</td>
                                <td>420m²(127)</td>
                                <td>487,583</td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>실증온실</td>
                                <td>기본형과채류A</td>
                                <td>유리</td>
                                <td>행잉거터 9Line(30m)</td>
                                <td>420m²(127)</td>
                                <td>487,583</td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>실증온실</td>
                                <td>기본형과채류B</td>
                                <td>유리</td>
                                <td>행잉거터 9Line(30m)</td>
                                <td>420m²(127)</td>
                                <td>487,583</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>실증온실</td>
                                <td>기본형과채류C</td>
                                <td>유리</td>
                                <td>행잉거터 9Line(30m)</td>
                                <td>420m²(127)</td>
                                <td>487,583</td>
                            </tr>
                            <tr>
                                <td>11</td>
                                <td>실증온실</td>
                                <td>기본형과채류D</td>
                                <td>비닐</td>
                                <td>행잉거터 15Line(30m)</td>
                                <td>840m²(254)</td>
                                <td>742,867</td>
                            </tr>
                            <tr>
                                <td>12</td>
                                <td>실증온실</td>
                                <td>기본형과채류E</td>
                                <td>유리</td>
                                <td>행잉거터 24Line(30m)</td>
                                <td>1,260m²(381)</td>
                                <td>1,462,749</td>
                            </tr>
                            <tr>
                                <td>13</td>
                                <td>실증온실</td>
                                <td>기본형과채류F</td>
                                <td>유리</td>
                                <td>행잉거터 24Line(30m)</td>
                                <td>1,260m²(381)</td>
                                <td>1,462,749</td>
                            </tr>
                            <tr>
                                <td>14</td>
                                <td>단동온실</td>
                                <td>단동온실</td>
                                <td>비닐</td>
                                <td>고설배드 5Line(24m)</td>
                                <td>217m²(12×2)</td>
                                <td>180,722</td>
                            </tr>
                            <tr>
                                <td>15</td>
                                <td>단동온실</td>
                                <td>단동온실</td>
                                <td>비닐</td>
                                <td>고설배드 5Line(24m)</td>
                                <td>217m²(56)</td>
                                <td>180,722</td>
                            </tr>
                            <tr>
                                <td>16</td>
                                <td>단동온실</td>
                                <td>단동온실</td>
                                <td>비닐</td>
                                <td>단동비닐온실</td>
                                <td>217m²(56)</td>
                                <td>164,853</td>
                            </tr>
                            <tr>
                                <td>17</td>
                                <td>단동온실</td>
                                <td>단동온실</td>
                                <td>비닐</td>
                                <td>단동비닐온실</td>
                                <td>185m²(65)</td>
                                <td>132,426</td>
                            </tr>
                            <tr>
                                <td>18</td>
                                <td>단동온실</td>
                                <td>단동온실</td>
                                <td>비닐</td>
                                <td>단동비닐온실</td>
                                <td>185m²(65)</td>
                                <td>132,426</td>
                            </tr>
                            <tr>
                                <td>19</td>
                                <td>지원센터</td>
                                <td>식물 연구실1</td>
                                <td>-</td>
                                <td>다단배드</td>
                                <td>51m²</td>
                                <td>164,045</td>
                            </tr>
                            <tr>
                                <td>20</td>
                                <td>지원센터</td>
                                <td>식물 연구실2</td>
                                <td>-</td>
                                <td>다단배드</td>
                                <td>51m²</td>
                                <td>164,045</td>
                            </tr>
                            <tr>
                                <td>21</td>
                                <td>저수지옆</td>
                                <td>나대지</td>
                                <td>-</td>
                                <td>-</td>
                                <td>(500평)</td>
                                <td>37,124</td>
                            </tr>
                            <tr>
                                <td>22</td>
                                <td>연동옆</td>
                                <td>나대지</td>
                                <td>-</td>
                                <td>-</td>
                                <td>(600평)</td>
                                <td>41,263</td>
                            </tr>
                            <tr>
                                <td>23</td>
                                <td>연동옆</td>
                                <td>나대지</td>
                                <td>-</td>
                                <td>-</td>
                                <td>(100평)</td>
                                <td>6,867</td>
                            </tr>
                            <tr>
                                <td>24</td>
                                <td>연동옆</td>
                                <td>나대지</td>
                                <td>-</td>
                                <td>-</td>
                                <td>(300평)</td>
                                <td>20,642</td>
                            </tr>
                            <tr>
                                <td>25</td>
                                <td>연동옆</td>
                                <td>나대지</td>
                                <td>-</td>
                                <td>-</td>
                                <td>(100평)</td>
                                <td>6,867</td>
                            </tr>
                            <tr>
                                <td>26</td>
                                <td>단동옆</td>
                                <td>나대지</td>
                                <td>-</td>
                                <td>-</td>
                                <td>(500평)</td>
                                <td>34,396</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="cnt__title">실증온실 설비 현황</div>
                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:33%"></col>
                                <col style="width:33%"></col>
                                <col style="width:33%"></col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>품목</th>
                                <th>내용</th>
                                <th>비고</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>온실구조</td>
                                <td>철골</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>온식피복</td>
                                <td>벽체, 지붕</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>행인거터</td>
                                <td>배지설치</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>스크린</td>
                                <td>수평, 수직 스크린</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>튜브레일</td>
                                <td>운반구 레일</td>
                                <td class="last-child" rowspan="11">전력 사용량에 따라 별도<br>비용 발생 및 청구</td>
                            </tr>
                            <tr>
                                <td>복합환경제어</td>
                                <td>구역별 환경제어</td>
                            </tr>
                            <tr>
                                <td>유동휀</td>
                                <td>실내 공기조화</td>
                            </tr>
                            <tr>
                                <td>FCU</td>
                                <td>온실 냉난방</td>
                            </tr>
                            <tr>
                                <td>포그설비</td>
                                <td>습도조절</td>
                            </tr>
                            <tr>
                                <td>양액재처리시설</td>
                                <td>양액재활용</td>
                            </tr>
                            <tr>
                                <td>양액설비</td>
                                <td>양액공급장치</td>
                            </tr>
                            <tr>
                                <td>양액배관</td>
                                <td>양액공급배관</td>
                            </tr>
                            <tr>
                                <td>CO2 배관</td>
                                <td>실내CO2량 조절</td>
                            </tr>
                            <tr>
                                <td>천 창</td>
                                <td>천창 모터, 개폐장치</td>
                            </tr>
                            <tr>
                                <td>냉난방</td>
                                <td>냉난방 열원공급</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="table__desc">
                            <ul>
                                <li>위 설비 현황은 실증온실 구축 진행상황에 따라 일부 변경될 수 있습니다.</li>
                            </ul>
                        </div>
                    </div>

                    <div class="cnt__title">실증온실 시설 사진 예시</div>
                    <div class="use__house">
                        <ul>
                            <li><figure><img src="resources/assets/image/img_use_house_a_01.png" alt=""></figure><span>벤로형 온실</span></li>
                            <li><figure><img src="resources/assets/image/img_use_house_a_02.png" alt=""></figure><span>행잉거터</span></li>
                            <li><figure><img src="resources/assets/image/img_use_house_a_03.png" alt=""></figure><span>육묘 벤치</span></li>
                            <li><figure><img src="resources/assets/image/img_use_house_a_04.png" alt=""></figure><span>단동온실</span></li>
                            <li><figure><img src="resources/assets/image/img_use_house_a_05.png" alt=""></figure><span>EBB베드(저면관수베드)</span></li>
                            <li><figure><img src="resources/assets/image/img_use_house_06.jpg" alt=""></figure><span>포그(fog) 설비</span></li>
                        </ul>
                    </div>
                </div>
                <!--//-->

            </div>
        </c:if>
--%>

    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
</body>
</html>