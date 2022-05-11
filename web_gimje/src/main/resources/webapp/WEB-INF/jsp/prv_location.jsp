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
                        <a href="prv_office" class="location__link--anchor ">입주 사무실</a>
                    </div>
                </div>
            </div>
        </div>
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

    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
</body>
</html>