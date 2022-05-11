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


<div class="page__h1">조직과 직원</div>
</header>
<div class="content" id="content">
    <div class="page__body">
        <div class="page__cnt">
            <h3 class="page__subject">조직도</h3>
            <div class="organize__container">
                <div class="organize__diagram">
                    <div class="diagram__header">
                        <div class="header__chairman">이사장</div>
                        <div class="header__director">이사회</div>
                        <div class="header__audit">감사</div>
                        <div class="header__relations">홍보실</div>
                        <div class="header__audit--office">감사실</div>
                        <div class="header__total">총괄본부장</div>
                        <div class="header__support">농산업활력지원센터</div>
                    </div>
                    <div class="diagram__office">
                        <ul class="diagram__office--lists">
                            <li class="diagram__office--item item--01">
                                <span class="office__director">기획운영본부</span>
                                <ul class="office__director--lists">
                                    <li class="office__director--item"><a href="#team-01" class="office__team">기획예산실</a></li>
                                    <li class="office__director--item"><a href="#team-02" class="office__team">사회가치전략실</a></li>
                                    <li class="office__director--item"><a href="#none" class="office__team">창의인재실</a></li>
                                    <li class="office__director--item"><a href="#none" class="office__team">운영정보실</a>
                                        <ul class="office__team--lists">
                                            <li class="office__team--item">기획예산실</li>
                                            <li class="office__team--item">사회가치전략실</li>
                                            <li class="office__team--item">창의인재실</li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <!--//-->
                            <li class="diagram__office--item item--02">
                                <span class="office__director">기술사업본부</span>
                                <ul class="office__director--lists">
                                    <li class="office__director--item"><a href="#team-03" class="office__team">기술창출전략팀</a></li>
                                    <li class="office__director--item"><a href="#none" class="office__team">기술성과확신팀</a></li>
                                    <li class="office__director--item"><a href="#none" class="office__team">사원지원팀</a></li>
                                    <li class="office__director--item"><a href="#none" class="office__team">기술평가팀</a></li>
                                </ul>
                            </li>
                            <!--//-->
                            <li class="diagram__office--item item--03">
                                <span class="office__director">벤쳐창업본부</span>
                                <ul class="office__director--lists">
                                    <li class="office__director--item"><a href="#team-04" class="office__team">벤처기획팀</a>
                                        <ul class="office__team--lists">
                                            <li class="office__team--item">청년창업지원센터</li>
                                        </ul>
                                    </li>
                                    <li class="office__director--item"><a href="#none" class="office__team">창업육성팀</a>
                                        <ul class="office__team--lists">
                                            <li class="office__team--item">농식품벤처창업센터:7개소<br>(서울/부산/세종/경기/강원/전남/경북)</li>
                                        </ul>
                                    </li>
                                    <li class="office__director--item"><a href="#none" class="office__team">글로벌사업팀</a></li>
                                </ul>
                            </li>
                            <!--//-->
                            <li class="diagram__office--item item--04">
                                <span class="office__director">종자사업본부</span>
                                <ul class="office__director--lists">
                                    <li class="office__director--item"><a href="#team-05" class="office__team">종자사업팀</a></li>
                                    <li class="office__director--item"><a href="#none" class="office__team">종자생산팀</a>
                                        <ul class="office__team--lists">
                                            <li class="office__team--item">종자종합처리센터:3개소<br>(중부권/호남권/영남권)</li>
                                        </ul>
                                    </li>
                                    <li class="office__director--item"><a href="#none" class="office__team">종묘생산팀</a></li>
                                    <li class="office__director--item"><a href="#none" class="office__team">종자산업진흥센터</a>
                                        <ul class="office__team--lists">
                                            <li class="office__team--item">국제종자박람회 사무국</li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <!--//-->
                            <li class="diagram__office--item item--05">
                                <span class="office__director">디지털농업본부</span>
                                <ul class="office__director--lists">
                                    <li class="office__director--item"><a href="#team-06" class="office__team">디지털농업확산팀</a></li>
                                    <li class="office__director--item"><a href="#none" class="office__team">농기계검정팀</a></li>
                                    <li class="office__director--item"><a href="#none" class="office__team">ICT신뢰성평가팀</a></li>
                                    <li class="office__director--item"><a href="#none" class="office__team">농업환경에너지팀</a></li>
                                </ul>
                            </li>
                            <!--//-->
                            <li class="diagram__office--item item--06">
                                <span class="office__director">시험분석본부</span>
                                <ul class="office__director--lists">
                                    <li class="office__director--item"><a href="#team-07" class="office__team">농자재분석팀</a></li>
                                    <li class="office__director--item"><a href="#none" class="office__team">농식품분석팀</a></li>
                                    <li class="office__director--item"><a href="#none" class="office__team">치유농업지원팀</a></li>
                                </ul>
                            </li>
                            <!--//-->
                        </ul>
                    </div>
                </div>

                <h3 class="page__subject">직원소개</h3>
                <div class="table__type team--table is-active" id="team-01">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:30%"></col>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:30%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>소속</th>
                            <th>성명</th>
                            <th>담당업무</th>
                            <th>직위</th>
                            <th>전화번호</th>
                            <th>이메일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>기획예산실</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>기획예산실</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>기획예산실</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>기획예산실</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>기획예산실</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>기획예산실</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="table__type team--table" id="team-02">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:30%"></col>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:30%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>소속</th>
                            <th>성명</th>
                            <th>담당업무</th>
                            <th>직위</th>
                            <th>전화번호</th>
                            <th>이메일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>사회가치전략실</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>사회가치전략실</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>사회가치전략실</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>사회가치전략실</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="table__type team--table" id="team-03">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:30%"></col>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:30%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>소속</th>
                            <th>성명</th>
                            <th>담당업무</th>
                            <th>직위</th>
                            <th>전화번호</th>
                            <th>이메일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>기술창출전략팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>기술창출전략팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>기술창출전략팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>기술창출전략팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>기술창출전략팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>기술창출전략팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="table__type team--table" id="team-04">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:30%"></col>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:30%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>소속</th>
                            <th>성명</th>
                            <th>담당업무</th>
                            <th>직위</th>
                            <th>전화번호</th>
                            <th>이메일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>벤처기획팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>벤처기획팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>벤처기획팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="table__type team--table" id="team-05">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:30%"></col>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:30%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>소속</th>
                            <th>성명</th>
                            <th>담당업무</th>
                            <th>직위</th>
                            <th>전화번호</th>
                            <th>이메일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>종자사업팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>종자사업팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>종자사업팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>종자사업팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>종자사업팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>종자사업팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>종자사업팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>종자사업팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>종자사업팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="table__type team--table" id="team-06">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:30%"></col>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:30%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>소속</th>
                            <th>성명</th>
                            <th>담당업무</th>
                            <th>직위</th>
                            <th>전화번호</th>
                            <th>이메일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>디지털농업확산팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>디지털농업확산팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>디지털농업확산팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>디지털농업확산팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>디지털농업확산팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="table__type team--table" id="team-07">
                    <table class="table__type--normal">
                        <colgroup>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:30%"></col>
                            <col style="width:15%"></col>
                            <col style="width:15%"></col>
                            <col style="width:30%"></col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>소속</th>
                            <th>성명</th>
                            <th>담당업무</th>
                            <th>직위</th>
                            <th>전화번호</th>
                            <th>이메일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>농자재분석팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>농자재분석팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>농자재분석팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>농자재분석팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        <tr>
                            <td>농자재분석팀</td>
                            <td>홍길동</td>
                            <td>가나다라도레미파솔라시도</td>
                            <td>차장</td>
                            <td>063-1234-5678</td>
                            <td>asfdasfd@fdsafdsa.com</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
</div>
<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
<%@include file ="footer.jsp" %>
