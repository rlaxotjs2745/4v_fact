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


<div class="page__h1">나의 정보</div>
</header>
<div class="content" id="content">
    <div class="page__body">
        <div class="page__cnt">
            <div class="my__container">
                <div class="table__type ">
                    <table class="table__type--my table__fixed">
                        <colgroup>
                            <col style="width:40%;">
                            <col style="width:60%;">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th class="th__left">이름</th>
                            <td class="td__left">홍길동</td>
                        </tr>
                        <tr>
                            <th class="th__left">아이디</th>
                            <td class="td__left">HongXXXXX@company.com</td>
                        </tr>
                        <tr>
                            <th class="th__left">비밀번호</th>
                            <td class="td__left">XXXXXXXXXXXXXXX</td>
                        </tr>
                        <tr>
                            <th class="th__left">주소</th>
                            <td class="td__left">(우편번호) 전라남도 XXXXXX XXXXXXX XXXXXXXX</td>
                        </tr>
                        <tr>
                            <th class="th__left">휴대전화번호</th>
                            <td class="td__left">010-1200-5600</td>
                        </tr>
                        <tr>
                            <th class="th__left">집전화번호</th>
                            <td class="td__left">02-1200-5600</td>
                        </tr>
                        <tr>
                            <th class="th__left">회사전화번호</th>
                            <td class="td__left">02-1200-5600</td>
                        </tr>
                        <tr>
                            <th class="th__left">소속</th>
                            <td class="td__left">없음</td>
                        </tr>
                        <tr>
                            <th class="th__left">정보수신동의</th>
                            <td class="td__left">동의</td>
                        </tr>
                        <tr>
                            <th class="th__left">매체</th>
                            <td class="td__left">이메일 SMS</td>
                        </tr>
                        </tbody>
                    </table>
                    <!--//-->
                </div>
                <!--//-->
                <div class="btn__wrap">
                    <a href="#popup_info" class="btn info btn-jumbo  js-modal-detail">정보 수정</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!--개인일 경우-->
<div id="popup_info" class="pop__detail ">
    <div class="section">
        <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
        <div class="popup__cnt">
            <h5 class="popup__title">정보변경</h5>
            <div class="popup__scroll--area">
                <div class="table__type">
                    <table class="table__type--my table__fixed">
                        <colgroup>
                            <col style="width:100%;">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">이름</div>
                                <div class="td__block">홍길동 <span class="text__dash"><a href="#" class="btn modify btn-lg">변경</a></span></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">아이디</div>
                                <div class="td__block">HongXXXXX@company.com</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">비밀번호</div>
                                <div class="td__block is-alert"><input type="password" > <span class="text--guide is-alert">비밀번호 규칙에 맞지 않습니다. 다시 입력해 주세요.</span>
                                    <div class="text__message">
                                        <ul>
                                            <li>비밀번호는 10~15 자 입력 가능합니다.</li>
                                            <li>영문소문자 / 숫자 / 특수문자 필수 혼합 입력</li>
                                            <li>비밀번호는 동일한 문자열을 3 회 이상 반복할 수 없습니다.</li>
                                            <li>비밀번호는 연속된 문자열을 3 회 이상 사용할 수 없습니다.</li>
                                        </ul>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">비밀번호 확인</div>
                                <div class="td__block"><input type="password" placeholder="사용자 비밀번호 입력"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">주소</div>
                                <div class="td__block"><input type="text" placeholder="우편번호" style="width:80px" /> <span class="text__zipcode"><a href="#" class="btn modify btn-lg">주소검색</a></span>
                                    <input type="text" placeholder="상세주소">
                                    <input type="text" placeholder="나머지 주소"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">휴대전화번호</div>
                                <div class="td__block"><input type="tel" class="tel" value="010" style="width:80px;" /><span class="text__dash">-</span><input type="tel" class="tel" style="width:70px;" /><span class="text__dash">-</span><input type="tel" class="tel" style="width:70px;" /></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">집전화번호</div>
                                <div class="td__block"><input type="tel" class="" /></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">회사전화번호</div>
                                <div class="td__block"><input type="tel" class="" /></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">소속</div>
                                <div class="td__block"><input type="text" class="" placeholder="소속없음" style="width:110px;" /><span class="text__dash"><a href="#popup_company" class="btn modify btn-lg  js-modal-detail">찾기</a></span><span class="text--guide">실증센터에 등록된 기업/단체만 검색이 됩니다.</span></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">정보수신동의<span class="text__essential">*</span></div>
                                <div class="td__block">전북 김제 스마트팜 실증밸리 실증단지의 정보를 &nbsp; &nbsp;
                                    <div class="radio radio--inline">
                                        <input type="radio" id="ad-1" name="ad-range">
                                        <label for="ad-1">네에 받습니다.</label>
                                    </div>
                                    <div class="radio radio--inline">
                                        <input type="radio" id="ad-2" name="ad-range">
                                        <label for="ad-2">아니오 받지 않습니다.</label>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">매체</div>
                                <div class="td__block"><div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="type-1" name="type">
                                    <label for="type-1">이메일</label>
                                </div>
                                    <div class="checkbox checkbox--inline">
                                        <input type="checkbox" id="type-2" name="type">
                                        <label for="type-2">SMS</label>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="popup__btn">
            <a href="#" class="btn light btn-lg  js-btn-close">취소</a>
            <a href="#"  class="btn submit btn-lg">정보변경</a>
        </div>
    </div>
</div>

<!--popup / in popup-->
<div id="popup_company" class="pop__mini ">
    <div class="section">
        <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
        <div class="popup__cnt">
            <h5 class="popup__title">기업 검색</h5>
            <div class="popup__search">
                <input type="text" class="" placeholder="기업명을 입력하세요." style="width:70%;" /><span class="text__dash"><a href="#popup_company" class="btn modify btn-lg  js-modal-detail">찾기</a></span>
                <br>
                <span class="popup--guide">실증센터에 등록된 기업/단체만 검색이 됩니다.</span>

                <!--검색후-->
                <div class="search__none">
                    <strong>검색 결과가 없습니다.</strong>
                    <span>기업 회원으로 가입을 했으나, 심사가 완료되지 않을 수 있습니다.<br>
                  가입 통보를 받은 후 다시 확인해 주십시오.</span>
                </div>

                <!--검색후-->
                <div class="search__none">
                    <strong>검색 결과</strong>
                    <div class="table__type">
                        <table class="table__type--my table__fixed">
                            <colgroup>
                                <col style="width:35%;">
                                <col style="width:30%;">
                                <col style="width:35%;">
                            </colgroup>
                            <thead>
                            <tr>
                                <th>기업명</th>
                                <th>사업자 등록 번호</th>
                                <th>대표자</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>꿈꾸는농장</td>
                                <td>000-00-0000</td>
                                <td class="">홍길동 <span class="text__dash"><a href="#" class="btn modify submit ">선택</a></span></td>
                            </tr>
                            <tr>
                                <td>꿈꾸는농장</td>
                                <td>000-00-0000</td>
                                <td class="">홍길동 <span class="text__dash"><a href="#" class="btn modify submit ">선택</a></span></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="popup__btn align__right">
            <a href="#" class="btn w-auto light btn-lg  js-btn-close">취소</a>
        </div>
    </div>
</div>

<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>

<%@include file ="footer.jsp" %>