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
                    <a href="#" class="under__depth--anchor">신청서 작성</a>
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
                <h2 class="page__title">신청서 작성</h2>
                <div class="page__location">
                    <div class="location__deco">안내된 절차와 양식에 따라서 신청해주시기 바랍니다.</div>
                    <div class="location__link">
                        <a href="prv_application" class="location__link--anchor ">절차 안내 및 다운로드</a>
                        <a href="prv_prepare" class="location__link--anchor is-selected">작성 안내</a>
                        <a href="prv_register" class="location__link--anchor ">신청서 등록/보완</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">작성 안내</h3>
            <div class="cnt__text">실증 단지 이용을 위해서 아래의 작성 예시를 참고바랍니다.</div>
            <div class="cnt__comment">작성에 어려움이 있거나 궁금한 사항은상단의 "고객지원 > 상담신청" 통해 문의 바라며,
                제출된 계획서 등은 목적 이외에는 사용하지 않으며, 제출된 서류는 반환하지 않습니다.
            </div>

            <div class="fee__container">

                <div class="exam__layout">
                    <div class="cnt__title">'실증단지 이용신청서' 작성 예시</div>
                    <div class="exam__figure">
                        <img src="<%=request.getContextPath()%>/static/assets/image/img_sample01.png" alt="">

                        <div class="cnt__title">‘실증계획서’ 작성 예시</div>
                        <img src="<%=request.getContextPath()%>/static/assets/image/img_sample02.png" alt="">
                    </div>
                    <div class="exam__note">
                        <span class="exam__title">아래 조건 중 1가지 이상 해당되는 기업인지 확인 必</span>
                        <ol>
                            <li>「농촌진흥법」에 정한 농업ᆞ농업인ᆞ농촌과 관련된 과학기술의 연구개발ᆞ보급, 농촌지도, 교육훈련 및 국제협력에 관한 업무를 수행하는 농업진흥기관</li>
                            <li>「중소기업기본법」상 중소기업에 해당하는 기업</li>
                            <li>중견기업 이상의 경우 실증시설을 이용하는 다른 실증단지이용자를 선도 또는 지원할 수 있는 기업</li>
                            <li>국내의 기관이나 단체 또는 사업자와 공동으로 연구개발 및 기술이전을 주목적 으로 설립한 외국연구기관</li>
                            <li>「특정연구기관 육성법」의 적용을 받는 연구기관</li>
                            <li>「정부출연연구기관 등의 설립·운영 및 육성에 관한 법률」에 따라 설립된 정부출연연구기관 또는「과학기술분야 정부출연연구기관 등의 설립·운영 및 육성에 관한 법률」에 따라 설립된 과학기술분야 정부출연연구기관</li>
                            <li>「기초연구진흥 및 기술개발지원에 관한 법률」제14조제1항제2호에 따른 기업 부설연구소 중 스마트팜 관련 기업부설연구소 보유기업</li>
                            <li>스마트팜 관련 자재, 장비, 시설공법, 영농기술 등을 개발하는 사업자 또는 대학 </li>
                            <li>농업 및 스마트팜 관련 서비스 분야의 7년 이내 창업·벤처기업</li>
                            <li>스마트팜 및 농업분야의 사업화를 위한 예비창업자</li>
                            <li>「농지법」또는「농어업·농어촌 및 식품산업 기본법」에 따른 농업인</li>
                            <li>기타 실증센터장이 인정하는 기관이나 단체 또는 사업자</li>
                        </ol>

                        <span class="exam__title">모집 대상 결격 사유</span>
                        <ul>
                            <li>신청서 및 사업계획서 중 일부가 미비하거나, 허위로 기재한 경우</li>
                            <li>모집대상 자격을 충족하지 못한 경우</li>
                            <li>기타 공고내용의 기본목적에 부합하지 않는 경우</li>
                        </ul>
                    </div>
                </div>
                <div class="exam__btn">
                    <a href="#" class="btn submit"><i class="ico ico-download"></i>예시 파일 내려받기</a>
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