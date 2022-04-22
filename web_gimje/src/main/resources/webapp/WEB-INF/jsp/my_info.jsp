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
                <span>마이 페이지</span>
                <div class="under__depth">
                    <a href="#" class="under__depth--anchor">나의 정보</a>
                    <div class="under__depth--list">
                        <a href="my_info">나의 정보</a>
                        <a href="my_business">나의 사업</a>
                        <%--<a href="my_group">나의 상담 및 정보</a>--%>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">나의 정보</h2>
                <div class="page__location">
                    <div class="location__deco">개인 정보를 확인해 주세요</div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <div class="my__container">
                <div class="table__type no--head">
                    <table class="table__type--my" >
                        <colgroup>
                            <col style="width:20%;">
                            <col style="width:80%;">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th class="th__left">이름</th>
                            <td class="td__left">${user.user_name}</td>
                        </tr>
                        <tr>
                            <th class="th__left">아이디</th>
                            <td class="td__left">${user.user_id}</td>
                        </tr>
                        <tr>
                            <th class="th__left">집주소</th>
                            <td class="td__left">${user.addr}</td>
                        </tr>
                        <tr>
                            <th class="th__left">휴대전화번호</th>
                            <td class="td__left">${user.mphone_num}</td>
                        </tr>
                        <tr>
                            <th class="th__left">집전화번호</th>
                            <td class="td__left">${user.tel_num}</td>
                        </tr>
                        <tr>
                            <th class="th__left">소속</th>
                            <td class="td__left" style="white-space: nowrap;">
                                <c:choose>
                                    <c:when test="${user.is_corporate_member eq 0}">없음</c:when>
                                    <c:when test="${user.is_corporate_member eq 1}">${corp.corp_name_kor}</c:when>
                                </c:choose>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">회사전화번호</th>
                            <td class="td__left" style="white-space: nowrap;">
                                <c:choose>
                                    <c:when test="${user.is_corporate_member eq 0}">없음</c:when>
                                    <c:when test="${user.is_corporate_member eq 1}">${corp.tel_num}</c:when>
                                </c:choose>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">정보수신동의</th>
                            <td class="td__left" style="white-space: nowrap;">
                                <c:choose>
                                    <c:when test="${user.is_maketing_agree eq 0}">동의안함</c:when>
                                    <c:when test="${qna.is_maketing_agree eq 1}">동의함</c:when>
                                </c:choose>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">가입방식</th>
                            <td class="td__left" style="white-space: nowrap;">
                                <c:choose>
                                <c:when test="${user.sign_in_type eq 0}">웹가입</c:when>
                                <c:when test="${user.sign_in_type eq 1}">모바일 웹가입</c:when>
                                <c:when test="${user.sign_in_type eq 2}">관리기관 가입</c:when>
                                <c:when test="${user.sign_in_type eq 3}">재단 가입</c:when>
                                <c:when test="${user.sign_in_type eq 4}">관계기간 가입</c:when>
                                </c:choose>
                            </td>
                        <tr>
                            <th class="th__left">SMS 수신동의</th>
                            <td class="td__left" style="white-space: nowrap;">
                                <c:choose>
                                <c:when test="${user.is_sms_agree eq 0}">동의안함</c:when>
                                <c:when test="${qna.is_sms_agree eq 1}">동의함</c:when>
                                </c:choose>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">이메일 수신동의</th>
                            <td class="td__left" style="white-space: nowrap;">
                                <c:choose>
                                <c:when test="${user.is_email_agree eq 0}">동의안함</c:when>
                                <c:when test="${qna.is_email_agree eq 1}">동의함</c:when>
                                </c:choose>
                            </td>
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

        <!--개인일 경우-->
        <div id="popup_info" class="pop__detail ">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="<%=request.getContextPath()%>/static/assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">정보변경</h5>
                    <div class="popup__scroll--area">
                        <div class="table__type">
                            <table class="table__type--my">
                                <colgroup>
                                    <col style="width:20%;">
                                    <col style="width:80%;">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th class="th__left">이름</th>
                                    <td class="td__modify"><input type="text" value="${user.user_name}" placeholder="이름" style="width:180px;" />  <span class="text__dash"></span></td>
                                </tr>
                                <tr>
                                    <th class="th__left">아이디</th>
                                    <td class="td__modify">HongXXXXX@company.com</td>
                                </tr>
                                <tr>
                                    <th class="th__left">비밀번호<span class="text__essential">*</span></th>
                                    <td class="td__modify is-alert"><input type="password" style="width:350px;">
                                        <br><span class="text--guide is-alert" style="display: none">비밀번호 규칙에 맞지 않습니다. 다시 입력해 주세요.</span>
                                        <div class="text__message">
                                            <ul>
                                                <li>비밀번호는 10~15 자 입력 가능합니다.</li>
                                                <li>영문소문자 / 숫자 / 특수문자 필수 혼합 입력</li>
                                                <li>비밀번호는 동일한 문자열을 3 회 이상 반복할 수 없습니다.</li>
                                                <li>비밀번호는 연속된 문자열을 3 회 이상 사용할 수 없습니다.</li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">비밀번호 확인<span class="text__essential">*</span></th>
                                    <td class="td__modify"><input type="password" placeholder="사용자 비밀번호 입력" style="width:350px;"></td>
                                </tr>
                                <tr>
                                    <th class="th__left">주소</th>
                                    <td class="td__modify"><input type="text" placeholder="우편번호" style="width:180px;" /> <span class="text__zipcode"><a href="#" class="btn modify btn-lg">주소검색</a></span>
                                        <input type="text" placeholder="상세주소">
                                        <input type="text" placeholder="나머지 주소">
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">휴대전화번호</th>
                                    <td class="td__modify"><input type="tel" class="tel" value="010" style="width:80px;" /><span class="text__dash">-</span><input type="tel" class="tel" style="width:80px;" /><span class="text__dash">-</span><input type="tel" class="tel" style="width:80px;" /></td>
                                </tr>
                                <tr>
                                    <th class="th__left">집전화번호</th>
                                    <td class="td__modify"><input type="tel" class="" style="width:273px;" /></td>
                                </tr>
                                <tr>
                                    <th class="th__left">회사전화번호</th>
                                    <td class="td__modify"><input type="tel" class="" style="width:273px;" /></td>
                                </tr>
                                <tr>
                                    <th class="th__left">소속</th>
                                    <td class="td__modify"><input type="text" class="" placeholder="소속없음" style="width:273px;" /><span class="text__dash"><a href="#popup_company" class="btn modify btn-lg  js-modal-detail">찾기</a></span><span class="text--guide">실증센터에 등록된 기업/단체만 검색이 됩니다.</span></td>
                                </tr>
                                <tr>
                                    <th class="th__left">정보수신동의<span class="text__essential">*</span></th>
                                    <td class="td__modify">전북 김제 스마트팜 실증밸리 실증단지의 정보를 &nbsp; &nbsp;
                                        <div class="radio radio--inline">
                                            <input type="radio" id="ad-1" name="ad-range">
                                            <label for="ad-1">네에 받습니다.</label>
                                        </div>
                                        <div class="radio radio--inline">
                                            <input type="radio" id="ad-2" name="ad-range">
                                            <label for="ad-2">아니오 받지 않습니다.</label>
                                        </div></td>
                                </tr>
                                <tr>
                                    <th class="th__left">매체</th>
                                    <td class="td__modify">
                                        <div class="checkbox checkbox--inline">
                                            <input type="checkbox" id="type-1" name="type">
                                            <label for="type-1">이메일</label>
                                        </div>
                                        <div class="checkbox checkbox--inline">
                                            <input type="checkbox" id="type-2" name="type">
                                            <label for="type-2">SMS</label>
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
                <a href="#none" class="js-modal-close"><img src="<%=request.getContextPath()%>/static/assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">기업 검색</h5>
                    <div class="popup__search">
                        <input type="text" class="" placeholder="기업명을 입력하세요." style="width:365px;" /><span class="text__dash"><a href="#popup_company" class="btn modify btn-lg  js-modal-detail">찾기</a></span>
                        <br>
                        <span class="popup--guide">실증센터에 등록된 기업/단체만 검색이 됩니다.</span>

                        <!--검색후-->
                        <div class="search__none">
                            <strong>검색 결과가 없습니다.</strong>
                            <span>기업 회원으로 가입을 했으나, 심사가 완료되지 않을 수 있습니다.<br>
                  가입 통보를 받은 후 다시 확인<br>
                  해 주십시오.</span>
                        </div>

                        <!--검색후-->
                        <div class="search__none">
                            <strong>검색 결과</strong>
                            <div class="table__type">
                                <table class="table__type--my">
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
                                        <td class="td__modify">홍길동 <span class="text__dash"><a href="#" class="btn modify submit btn-lg">선택</a></span></td>
                                    </tr>
                                    <tr>
                                        <td>꿈꾸는농장</td>
                                        <td>000-00-0000</td>
                                        <td class="td__modify">홍길동 <span class="text__dash"><a href="#" class="btn modify submit btn-lg">선택</a></span></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="popup__btn">
                    <a href="#" class="btn light btn-lg  js-btn-close">취소</a>
                </div>
            </div>
        </div>

    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
</body>
</html>