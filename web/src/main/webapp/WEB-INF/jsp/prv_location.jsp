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
                    <div class="location__deco">스마트팜 혁신벨리 실증단지에서 이용하실 수 있는 시설입니다.</div>
                    <div class="location__link">
                        <a href="prv_use" class="location__link--anchor ">실증 온실</a>
                        <a href="prv_location" class="location__link--anchor is-selected">실증 장비</a>
                        <a href="prv_office" class="location__link--anchor ">기업 사무실</a>
                    </div>
                </div>
            </div>
        </div>
        <c:if test="${profile == 'sangju-prod'}">
            <div class="page__cnt">
                <h3 class="page__subject">실증 장비</h3>

                <div class="use__container">
                    <div class="cnt__text">실증장비의 경우 지역 특화분야 및. 기업수요에 따라 일부 변경될 수 있습니다.</div>

                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:10%"></col>
                                <col style="width:16%"></col>
                                <col style="width:36%"></col>
                                <col style="width:16%"></col>
                                <col style="width:10%"></col>
                                <col></col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>연번</th>
                                <th>분류</th>
                                <th>품명</th>
                                <th>위치</th>
                                <th>수량</th>
                                <th>비고</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td rowspan="13">기자재<br>실증장비</td>
                                <td>식물 생리상태 시험기(광합성)</td>
                                <td rowspan="21">실증장비실</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>식물 생육상태 시험기(엽면적)</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>서지 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>물성 시험기(1t)</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>생육측정시험기(RGB depth, LiDAR)</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>만능시험기(10t)</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>당도측정기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>색도측정기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>식물수분측정기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>엽록소측정기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>11</td>
                                <td>복합환경제어기 시험시스템</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>12</td>
                                <td>복합환경 모사장치</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>13</td>
                                <td>냉난방 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>14</td>
                                <td rowspan="4">농업용 로봇<br>실증장비</td>
                                <td>위치 추적 시험장치</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>15</td>
                                <td>전도 시험장치</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>16</td>
                                <td>통신 시험장치</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>17</td>
                                <td>수확성능 시험장치</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>18</td>
                                <td rowspan="4">신뢰성<br>실증장비</td>
                                <td>복합환경 챔버</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>19</td>
                                <td>열충격 챔버</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>20</td>
                                <td>더스트 챔버</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>21</td>
                                <td>살수 시험 챔버</td>
                                <td>1</td>
                                <td></td>
                            </tr>

                            <tr>
                                <td>22</td>
                                <td rowspan="3">가공장비</td>
                                <td>레이저커팅기</td>
                                <td rowspan="5" style="border-bottom: 1px solid #000;">공용제작실</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>23</td>
                                <td>샌드블라스팅기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>24</td>
                                <td>소형선반</td>
                                <td>1</td>
                                <td></td>
                            </tr>

                            <tr>
                                <td>25</td>
                                <td rowspan="2" style="border-bottom: 1px solid #000;">시제품<br>제작장비</td>
                                <td>3D 스캐너</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>26</td>
                                <td>3D 프린터</td>
                                <td>1</td>
                                <td></td>
                            </tr>


                            </tbody>
                        </table>
                    </div>

                </div>
                <!--//-->

            </div>
        </c:if>
        <c:if test="${profile == 'gimje-prod' or profile == 'local'}">
            <div class="page__cnt">
                <h3 class="page__subject">실증 장비</h3>

                <div class="use__container">
                    <div class="cnt__text">실증장비의 경우 지역 특화분야 및. 기업수요에 따라 일부 변경될 수 있습니다.</div>

                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:10%"></col>
                                <col style="width:16%"></col>
                                <col style="width:36%"></col>
                                <col style="width:16%"></col>
                                <col style="width:10%"></col>
                                <col></col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>연번</th>
                                <th>분류</th>
                                <th>품명</th>
                                <th>위치</th>
                                <th>수량</th>
                                <th>비고</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td rowspan="28">기자재<br>실증장비</td>
                                <td>식물 생리상태 시험기(광합성)</td>
                                <td rowspan="35">실증장비실</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>식물 생육상태 시험기(엽면적)</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>서지 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>물성 시험기(1t)</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>생육측정시험기(RGB depth, LiDAR)</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>만능시험기(10t)</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>당도측정기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>색도측정기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>식물수분측정기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>엽록소측정기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>11</td>
                                <td>풍향/풍속 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>12</td>
                                <td>CO<sub>2</sub> 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>13</td>
                                <td>pH센서 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>14</td>
                                <td>토양 함수율 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>15</td>
                                <td>일사 및 광양자 센서 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>16</td>
                                <td>내구성 시험기(AC)</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>17</td>
                                <td>내구성 시험기(DC)</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>18</td>
                                <td>양액 공급기 시험기(관수펌프, 밸브)</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>19</td>
                                <td>무게 측정기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>20</td>
                                <td>작물 샘플 제작기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>21</td>
                                <td>작물 정밀분석 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>

                            <tr>
                                <td>22</td>
                                <td>다목적 수질분석 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>23</td>
                                <td>시설온실용 공기투과율 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>24</td>
                                <td>시설온실용 차광율 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>

                            <tr>
                                <td>25</td>
                                <td>DO 측정기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>26</td>
                                <td>복합환경제어기 시험시스템</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>27</td>
                                <td>복합환경 모사장치</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>28</td>
                                <td>냉난방 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>29</td>
                                <td rowspan="7">신뢰성<br>실증장비</td>
                                <td>열관류율 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>30</td>
                                <td>복합 진동 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>31</td>
                                <td>열충격 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>32</td>
                                <td>강우 및 침수 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>33</td>
                                <td>온/습도 시험기(센서 연속시험기)</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>34</td>
                                <td>투습도 측정기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>35</td>
                                <td>EC 센서 시험기</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>36</td>
                                <td rowspan="2" style="border-bottom: 1px solid #000;">시제품<br>제작장비</td>
                                <td>3D 스캐너</td>
                                <td rowspan="2" style="border-bottom: 1px solid #000;">공용제작실</td>
                                <td>1</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>37</td>
                                <td>3D 프린터</td>
                                <td>1</td>
                                <td></td>
                            </tr>

                            </tbody>
                        </table>
                    </div>

                </div>
                <!--//-->

            </div>
        </c:if>
        <%--<c:if test="${profile == 'local'}">
            <div class="page__cnt">
                <h3 class="page__subject">실증 장비</h3>

                <div class="use__container">
                    <div class="cnt__text">실증장비의 경우 지역 특화분야 및. 기업수요에 따라 일부 변경될 수 있습니다.</div>

                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:12%"></col>
                                <col style="width:25%"></col>
                                <col style="width:19%"></col>
                                <col style="width:7%"></col>
                                <col style="width:9%"></col>
                                <col style="width:9%"></col>
                                <col style="width:9%"></col>
                                <col></col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>대분류</th>
                                <th>중분류</th>
                                <th>세분류</th>
                                <th>수량</th>
                                <th>제조사</th>
                                <th>모델명</th>
                                <th>제위</th>
                                <th>비고</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td rowspan="7">스마트팜 기자재<br>신뢰성 실증장비</td>
                                <td>온/습도 시험기(센서연속 시험기)</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>투습도 측정기</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>복합 진동 시험기</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>열충격 시험기</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>강우 및 침수 시험기</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>EC 센서 시험기</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>열관류율 시험기</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td rowspan="18">스마트팜 기자재<br>신뢰성 실증장비</td>
                                <td rowspan="4">육묘 자동 파종 시스템<br>(자동파종시스템, 순대포트제조기 등)</td>
                                <td>자동파종시스템</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td rowspan="18">육묘실</td>
                            </tr>
                            <tr>
                                <td>순대포트 제조기</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>육묘 생육 영상장치 시스템</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>에어 콤프</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td rowspan="14">스마트 육묘 시스템<br>(발아실, 접목활착실, 초정밀 접목로봇,<br>식물공장용 육묘시스템 등)</td>
                                <td>발아실</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>접목활착실</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>초정밀접목로봇</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>식물공장용 육묘시스템</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>RFID 입출력 시스템(생산이력)</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>선별출하 영상장치 시스템</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>관제실(CCTV)</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>육묘 무빙 베드</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>베드 레일 및 받침대</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>전동포크리프트(베드이송)</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>육묘베드 이송용 캐리어</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>자주식살수장치</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>전동회전대차</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>배관, 분전반 배선공사</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td rowspan="6">스마트팜 혁신밸리 실증단지<br>시제품제작장비</td>
                                <td rowspan="6">스마트팜혁신밸리실증단지시제품 제작장비<br>(3D프린터(메탈), 3D스캐너, 설계용 S/W,<br>설계용 PC, 재료비 등)</td>
                                <td>3D 프린터(대)</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td rowspan="6">공용제작실</td>
                            </tr>
                            <tr>
                                <td>3D 프린터(중)</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>3D 프린터(소)</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>3D스캐너</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>설계용 PC</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>설계 S/W</td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td rowspan="5">스마트팜 전시장비</td>
                                <td>스마트팜(복합제어, 구동기, 센서)</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td rowspan="5">전시실</td>
                            </tr>
                            <tr>
                                <td>양액공급기</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>온실골조/피복 등 자재</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>스마트 농기계</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>키오스크</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>체험형온실</td>
                                <td>체험형 온실 구축</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td rowspan="5" class="last-child">실증 보조장비</td>
                                <td>고소작업차(리프트)</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>농업용 동력운반차</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>동력 분무기</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>지게차</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>비닐피복기</td>
                                <td></td>
                                <td>1</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
                <!--//-->

            </div>
        </c:if>--%>


    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
</body>
</html>