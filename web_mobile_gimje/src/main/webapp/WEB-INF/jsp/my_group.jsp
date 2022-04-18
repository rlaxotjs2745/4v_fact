<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:48 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="header.jsp" %>


<div class="page__h1">나의 상담 및 정보</div>
</header>
<div class="content" id="content">
    <div class="page__body">
        <div class="page__cnt">
            <h3 class="page__subject">기업정보</h3>
            <div class="my__container">
                <div class="table__type ">
                    <table class="table__type--my table__fixed">
                        <colgroup>
                            <col style="width:30%;">
                            <col style="width:70%;">
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
                            <th class="th__left">사업자등록번호</th>
                            <td class="td__left">000-0000-0000</td>
                        </tr>
                        <tr>
                            <th class="th__left">대표자명</th>
                            <td class="td__left">홍순이</td>
                        </tr>
                        <tr>
                            <th class="th__left">업종/업태</th>
                            <td class="td__left">XXXXXX / XXXXXXXX</td>
                        </tr>
                        <tr>
                            <th class="th__left">주소</th>
                            <td class="td__left">(우편번호) 전라남도 XXXXXX XXXXXXX XXXXXXXX</td>
                        </tr>
                        <tr>
                            <th class="th__left">홈페이지</th>
                            <td class="td__left">www.doremi.com</td>
                        </tr>
                        <tr>
                            <th class="th__left">전화번호</th>
                            <td class="td__left">02-1200-5600</td>
                        </tr>
                        <tr>
                            <th class="th__left">팩스번호</th>
                            <td class="td__left">02-1200-5600</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <h3 class="page__subject">담당자정보</h3>
                <div class="table__type">
                    <table class="table__type--my table__fixed">
                        <colgroup>
                            <col style="width:30%;">
                            <col style="width:70%;">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th class="th__left">이름</th>
                            <td class="td__left">홍길동</td>
                        </tr>
                        <tr>
                            <th class="th__left">이메일</th>
                            <td class="td__left">XXXXXXXXX@company.com</td>
                        </tr>
                        <tr>
                            <th class="th__left">휴대폰 번호</th>
                            <td class="td__left">000-0000-0000</td>
                        </tr>
                        <tr>
                            <th class="th__left">전화번호</th>
                            <td class="td__left">000-0000-0000 (내선:0000)</td>
                        </tr>
                        </tbody>
                    </table>
                    <!--//-->
                </div>
                <!--//-->
                <div class="btn__wrap">
                    <a href="#popup_group" class="btn info btn-jumbo  js-modal-detail">정보 수정</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!--기업(단체)일 경우-->
<div id="popup_group" class="pop__detail ">
    <div class="section">
        <a href="#none" class="js-modal-close"><img src="<%=request.getContextPath()%>/static/assets/image/ico_close.png" alt="닫기"></a>
        <div class="popup__cnt">
            <h5 class="popup__title">정보변경</h5>
            <div class="popup__scroll--area">
                <div class="table__hat">기본 정보
                </div>
                <div class="table__type">
                    <table class="table__type--my table__fixed">
                        <colgroup>
                            <col style="width:100%;">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">기업(단체)명</div>
                                <div class="td__block">도레미기업</div>
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
                                <div class="th__block">비밀번호<span class="text__essential">*</span></div>
                                <div class="td__block is-alert">
                                    <input type="password" > <span class="text--guide is-alert">비밀번호 규칙에 맞지 않습니다. 다시 입력해 주세요.</span>
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
                                <div class="th__block">비밀번호 확인<span class="text__essential">*</span></div>
                                <div class="td__block"><input type="password" placeholder="사용자 비밀번호 입력" ></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">사업자등록변경</div>
                                <div class="td__block">000-0000-0000</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">대표자명</div>
                                <div class="td__block">홍순이</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">업종/업태</div>
                                <div class="td__block"><input type="text" placeholder="XXXX / XXXX" > <span class="text--guide">사업자등록증의 첫 번째 업종/업태를 입력해 주세요.</span></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">주소</div>
                                <div class="td__block"><input type="text" placeholder="우편번호" style="width:80px;" /> <span class="text__zipcode"><a href="#" class="btn modify btn-lg">주소검색</a></span>
                                    <input type="text" placeholder="상세주소">
                                    <input type="text" placeholder="나머지 주소"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">홈페이지</div>
                                <div class="td__block">www.doremi.com</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">회사전화번호</div>
                                <div class="td__block">000-0000-0000</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">팩스번호</div>
                                <div class="td__block">000-0000-0000</div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="table__hat">담당자 정보
                    <span class="hat--notice">담당자 정보 변경시, 정확한 정보를 입해 주십시오. <br>
              실증단지의 업무 연락은 담당자에게 연락을 드립니다.</span>
                </div>
                <div class="table__type">
                    <table class="table__type--my table__fixed">
                        <colgroup>
                            <col style="width:100%;">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">이름</div>
                                <div class="td__block"><input type="tel" class="" /></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">이메일</div>
                                <div class="td__block"><input type="text" style="width:100%;margin-bottom:5px;" /><br>
                                    <span class="text__dash">@</span><input type="tel" style="width:120px;" />
                                    <select name="" id="">
                                        <option value="">직접입력</option>
                                        <option value="">naver.com</option>
                                        <option value="">naver.com</option>
                                        <option value="">naver.com</option>
                                        <option value="">naver.com</option>
                                        <option value="">naver.com</option>
                                    </select><span class="text--guide">확인 메일 및 결과를 메일로 알려드립니다.<br>정확히 입력해주세요.</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">휴대폰 번호</div>
                                <div class="td__block"><input type="tel" style="width:70px;" /><span class="text__dash">-</span><input type="tel" style="width:70px;" /><span class="text__dash">-</span><input type="tel" style="width:70px;" /></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">회사전화번호</div>
                                <input type="tel" class="" style="width:40%;" /> <span class="text--cell"> 내선번호</span><input type="tel" class="" style="width:30%;" />
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
<div id="popup_upload" class="pop__mini ">
    <div class="section">
        <a href="#none" class="js-modal-close"><img src="<%=request.getContextPath()%>/static/assets/image/ico_close.png" alt="닫기"></a>
        <div class="popup__cnt">
            <h5 class="popup__title">사업자 등록증 첨부</h5>
            <div class="popup__upload">
                <div class="upload__title">사업자 등록증 첨부</div>
                <input type="file" class="fileupload" /><span class="text__upload">변경된 사업자 등록증 사본을 첨부해 주세요.</span>

                <div class="upload__title">변경된 대표자 성함을 입력해 주세요.</div>
                <input type="text" placeholder="대표자 성함">
            </div>
        </div>
        <div class="popup__btn">
            <a href="#" class="btn light btn-lg  js-btn-close">취소</a>
        </div>
    </div>
</div>


<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/ui.common.js" type="text/javascript"></script>

<%@include file ="footer.jsp" %>