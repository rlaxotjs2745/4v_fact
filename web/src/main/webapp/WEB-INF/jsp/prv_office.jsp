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
                        <a href="prv_fee">실증서비스 이용료 예시</a>
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
                        <a href="prv_use" class="location__link--anchor ">실증 온실</a>
                        <a href="prv_location" class="location__link--anchor ">실증 장비</a>
                        <a href="prv_office" class="location__link--anchor is-selected">기업 사무실</a>
                    </div>
                </div>
            </div>
        </div>
        <c:if test="${profile == 'sangju-prod'}">
        <div class="page__cnt">
            <h3 class="page__subject">기업 사무실 소개</h3>

            <div class="use__container">
                <!--//-->
                <div class="use__image">
                    <ul>
                        <li><figure><img src="resources/assets/image/img_office_sangju1.png" alt="상주 입주사무실 세부"></figure></li>
                        <li><figure><img src="resources/assets/image/img_office_sangju2.png" alt="상주 입주사무실 세부"></figure></li>
                    </ul>
                </div>
                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:8%"></col>
                            <col style="width:14%"></col>
                            <col style="width:14%"></col>
                            <col style="width:26%"></col>
                            <col style="width:12%"></col>
                            <col style="width:12%"></col>
                            <col style="width:14%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>번호</th>
                            <th>사용공간</th>
                            <th>위치</th>
                            <th>내부 시설</th>
                            <th>수용가능<br>입주기업 수</th>
                            <th>면적(m<sup>2</sup>)</th>
                            <th>자리별<br>이용료(원/년)</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>기업사무실 1</td>
                            <td rowspan="6" style="border-bottom: 1px solid #000;">지원센터 2F</td>
                            <td>입주기업별 책상1, 의자1, 파티션</td>
                            <td>4</td>
                            <td>41m<sup>2</sup></td>
                            <td>190,688</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>기업사무실 2</td>
                            <td>입주기업별 책상1, 의자1, 파티션</td>
                            <td>4</td>
                            <td>41m<sup>2</sup></td>
                            <td>190,688</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>기업사무실 3</td>
                            <td>입주기업별 책상1, 의자1, 파티션</td>
                            <td>4</td>
                            <td>41m<sup>2</sup></td>
                            <td>190,688</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>기업사무실 4</td>
                            <td>입주기업별 책상1, 의자1, 파티션</td>
                            <td>4</td>
                            <td>41m<sup>2</sup></td>
                            <td>190,688</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>기업사무실 5</td>
                            <td>입주기업별 책상1, 의자1, 파티션</td>
                            <td>4</td>
                            <td>41m<sup>2</sup></td>
                            <td>190,688</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>기업사무실 6</td>
                            <td>입주기업별 책상1, 의자1, 파티션</td>
                            <td>4</td>
                            <td>41m<sup>2</sup></td>
                            <td>190,688</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
                <!--//-->
        </c:if>
        <c:if test="${profile == 'gimje-prod' or profile == 'local' }">
        <div class="page__cnt">
            <h3 class="page__subject">기업 사무실 소개</h3>

            <div class="use__container">
                <div class="use__image">
                    <ul>
                        <li><figure><img src="resources/assets/image/img_office_gimje1.png" alt="김제 입주사무실 세부"></figure></li>
                        <li><figure><img src="resources/assets/image/img_office_gimje2.png" alt="김제 입주사무실 세부"></figure></li>
                    </ul>
                </div>
                <div class="table__type">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:8%"></col>
                            <col style="width:14%"></col>
                            <col style="width:14%"></col>
                            <col style="width:26%"></col>
                            <col style="width:12%"></col>
                            <col style="width:12%"></col>
                            <col style="width:14%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>번호</th>
                            <th>사용공간</th>
                            <th>위치</th>
                            <th>내부 시설</th>
                            <th>수용가능<br>입주기업 수</th>
                            <th>면적(m<sup>2</sup>)</th>
                            <th>자리별<br>이용료(원/년)</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>기업사무실 1</td>
                            <td rowspan="4" style="border-bottom: 1px solid #000;">지원센터 1F</td>
                            <td>입주기업별 책상2, 의자2</td>
                            <td>2</td>
                            <td>42m<sup>2</sup></td>
                            <td>738,460</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>기업사무실 2</td>
                            <td>입주기업별 책상2, 의자2</td>
                            <td>2</td>
                            <td>37m<sup>2</sup></td>
                            <td>650,550</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>기업사무실 3</td>
                            <td>입주기업별 책상2, 의자2</td>
                            <td>3</td>
                            <td>49m<sup>2</sup></td>
                            <td>574,357</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>기업사무실 4</td>
                            <td>입주기업별 책상2, 의자2</td>
                            <td>3</td>
                            <td>49m<sup>2</sup></td>
                            <td>574,357</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <!--//-->

        </div>
        </c:if>


    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
</body>
</html>