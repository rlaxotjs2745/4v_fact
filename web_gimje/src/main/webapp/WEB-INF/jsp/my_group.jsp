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

<div class="content" id="content">
    <div class="page__body">
        <div class="page__breadcrumbs--box">
            <div class="page__breadcrumbs--inner">
                <span>홈</span>
                <span>마이 페이지</span>
                <div class="under__depth">
                    <a href="#" class="under__depth--anchor">나의 상담 및 정보</a>
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
                <h2 class="page__title">나의 소속 정보</h2>
                <div class="page__location">
                    <div class="location__deco">나의 소속 정보입니다</div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">기업정보</h3>
            <div class="my__container">
                <div class="table__type ">
                    <table class="table__type--my">
                        <colgroup>
                            <col style="width:20%;">
                            <col style="width:80%;">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th class="th__left">기업 이름</th>
                            <td class="td__left">홍길동</td>
                        </tr>
<%--                        <tr>
                            <th class="th__left">홈페이지</th>
                            <td class="td__left">www.company.com</td>
                        </tr>--%>
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
                <h3 class="page__subject">사담당자 정보</h3>
                <div class="table__type">
                    <table class="table__type--my">
                        <colgroup>
                            <col style="width:20%;">
                            <col style="width:80%;">
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

        <!--기업(단체)일 경우-->
        <div id="popup_group" class="pop__detail ">
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
                                    <th class="th__left">기업(단체)명</th>
                                    <td class="td__modify">도레미기업 </td>
                                </tr>
<%--                                <tr>
                                    <th class="th__left">아이디</th>
                                    <td class="td__modify">HongXXXXX@company.com</td>
                                </tr>
                             <tr>
                                    <th class="th__left">비밀번호<span class="text__essential">*</span></th>
                                    <td class="td__modify is-alert"><input type="password" style="width:350px;">
                                        <br><span class="text--guide is-alert">비밀번호 규칙에 맞지 않습니다. 다시 입력해 주세요.</span>
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
                                </tr>--%>
                                <tr>
                                    <th class="th__left">사업자등록변경</th>
                                    <td class="td__modify">000-0000-0000</td>
                                </tr>
                                <tr>
                                    <th class="th__left">대표자명</th>
                                    <td class="td__modify">홍순이</td>
                                </tr>
                                <tr>
                                    <th class="th__left">업종/업태</th>
                                    <td class="td__modify">XXXX / XXXX
<%--                                        <input type="text" placeholder="XXXX / XXXX" style="width:350px;">
                                        <br>
                                        <span class="text--guide">사업자등록증의 첫 번째 업종/업태를 입력해 주세요.</span>--%>

                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">주소</th>
                                    <td class="td__modify"><input type="text" placeholder="우편번호" style="width:180px;" /> <span class="text__zipcode"><a href="#" class="btn modify btn-lg">주소검색</a></span>
                                        <input type="text" placeholder="상세주소">
                                        <input type="text" placeholder="나머지 주소">
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">홈페이지</th>
                                    <td class="td__modify">www.doremi.com </td>
                                </tr>
                                <tr>
                                    <th class="th__left">회사전화번호</th>
                                    <td class="td__modify"><input type="text" placeholder="000-0000-0000" style="width:350px;"></td>
                                </tr>
                                <tr>
                                    <th class="th__left">팩스번호</th>
                                    <td class="td__modify"><td class="td__modify"><input type="text" placeholder="000-0000-0000" style="width:350px;"></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="table__hat">담당자 정보
                            <span class="hat--desc">담당자 정보 변경시, 정확한 정보를 입해 주십시오. 실증단지의 업무 연락은 담당자에게 연락을 드립니다.</span>
                        </div>
                        <div class="table__type">
                            <table class="table__type--my">
                                <colgroup>
                                    <col style="width:20%;">
                                    <col style="width:80%;">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th class="th__left">이름</th>
                                    <td class="td__modify"><input type="tel" class="" style="width:273px;" /></td>
                                </tr>
                                <tr>
                                    <th class="th__left">이메일</th>
                                    <td class="td__modify"><input type="text" style="width:150px;" /><span class="text__dash">@</span><input type="tel" style="width:150px;" />
                                        <select name="" id="">
                                            <option value="">직접입력</option>
                                            <option value="">naver.com</option>
                                            <option value="">naver.com</option>
                                            <option value="">naver.com</option>
                                            <option value="">naver.com</option>
                                            <option value="">naver.com</option>
                                        </select>
                                        <br><span class="text--guide">확인 메일 및 결과를 메일로 알려드립니다. 정확히 입력해주세요.</span>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">휴대폰 번호</th>
                                    <td class="td__modify"><input type="tel" style="width:80px;" /><span class="text__dash">-</span><input type="tel" style="width:80px;" /><span class="text__dash">-</span><input type="tel" style="width:80px;" /></td>
                                </tr>
                                <tr>
                                    <th class="th__left">회사전화번호</th>
                                    <td class="td__modify"><input type="tel" class="" style="width:273px;" /> <span class="text--cell"> 내선번호</span><input type="tel" class="" style="width:100px;" /></td>
                                </tr>
                                <tr>
                                    <th class="th__left">소속부서</th>
                                    <td class="td__modify"><input type="tel" class="" style="width:273px;" /></td>
                                </tr>
                                <tr>
                                    <th class="th__left">직위</th>
                                    <td class="td__modify"><input type="tel" class="" style="width:273px;" /></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="popup__btn">
                    <a href="#popup_withdrawal" class="btn danger btn-lg fl-left js-modal-detail">회원탈퇴</a>
                    <a href="#" class="btn light btn-lg  js-btn-close">취소</a>
                    <a href="#"  class="btn submit btn-lg">정보변경</a>
                </div>
            </div>
        </div>

        <!-- 회원탈퇴 -->
        <div id="popup_withdrawal" class="pop__detail ">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="../assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">회원탈퇴</h5>
                    <div class="popup__scroll--area">
                        <div class="table__hat">가입정보</div>
                        <div class="table__type">
                            <table class="table__type--my">
                                <colgroup>
                                    <col style="width:20%;">
                                    <col style="width:80%;">
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
                                    <th class="th__left">회사전화번호</th>
                                    <td class="td__left">02-1200-5600</td>
                                </tr>
                                <tr>
                                    <th class="th__left">팩스번호</th>
                                    <td class="td__left">02-1200-5600</td>
                                </tr>
                                <tr>
                                    <th class="th__left">가입일시</th>
                                    <td class="td__left">YYYY.MM.DD, HH:MM</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="table__hat">회원 탈퇴시, 유의사항</div>
                        <div class="table__desc">
                            <!--개인이력 없음-->
                            <ul>
                                <li>회원님은 실증서비스에 참가한 이력이 없습니다.</li>
                                <li>실증서비스에 참가한 이력이 없는 회원은 바로 탈퇴가 진행이 되며, 회원님의 정보는 모두 삭제가 됩니다.</li>
                                <li>동일한 ID로 제 가입은 30일 이후에 가능하며 이전 활동을 사용할 수 없습니다.</li>
                            </ul>
                            <!--개인이력 있음-->
                            <ul>
                                <li class="cl-red">회원님은 실증서비스에 참가한 이력이 있습니다.</li>
                                <li class="cl-red">탈퇴 이후에는 실증서비스 콘솔에 로그인할 수 없습니다.</li>
                                <li class="cl-red">실증서비스에 참가한 이력이 있는 회원은 포털 사이트의 회원 탈퇴는 즉시 처리되나 실증서비스 관련 정보는 만 5년간 회원정보가 유지가 됩니다.</li>
                                <li class="cl-red">유지되는 회원정보 범위는 아래와 같습니다.<br>- 개인정보, 실증서비스 참가 이력, 실증 데이터, 기타 실증서비스의 행정정보</li>
                                <li>동일한 ID로 제 가입은 30일 이후에 가능하며 이전 활동을 사용할 수 없습니다.</li>
                            </ul>
                        </div>
                        <div class="checkbox ">
                            <input type="checkbox" id="withdrawal-1" name="withdrawal">
                            <label for="withdrawal-1">회원 탈퇴시의 유의사항을 모두 확인을 했으며, '지역명 스마트팜 혁신밸리 실증단지 통합 운영시스템' 온라인 회원에서 탈퇴합니다.</label>
                        </div>
                    </div>
                </div>
                <div class="popup__btn">
                    <a href="#" class="btn light btn-lg  js-btn-close">취소</a>
                    <a href="#popup_withdrawal_1" class="btn danger btn-lg js-modal-detail">회원탈퇴</a>
                </div>
            </div>
        </div>

        <!--popup / in popup-->
        <div id="popup_withdrawal_1" class="pop__mini ">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="../assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">스마트팜 혁신밸리 실증단지</h5>
                    <p class="popup__text">회원 탈퇴를 하겠습니까?</p>
                </div>
                <div class="popup__btn">
                    <a href="#" class="btn light btn-lg  js-btn-close">취소</a>
                    <a href="#popup_withdrawal_2" class="btn submit btn-lg  js-modal-detail">예</a>
                </div>
            </div>
        </div>

        <!--popup / in popup-->
        <div id="popup_withdrawal_2" class="pop__mini ">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="../assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">스마트팜 혁신밸리 실증단지</h5>
                    <p class="popup__text">YYYY년 MM월 DD일 HH:MM에 <br>탈퇴되었습니다.</p>
                </div>
                <div class="popup__btn">
                    <a href="#" class="btn submit btn-lg  js-btn-close">확인</a>
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

    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
</body>
</html>