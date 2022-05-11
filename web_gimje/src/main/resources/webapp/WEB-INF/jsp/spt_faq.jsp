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
                <span>고객 지원</span>
                <div class="under__depth">
                    <a href="#" class="under__depth--anchor">FAQ</a>
                    <div class="under__depth--list">
                        <a href="spt_faq">FAQ</a>
                        <a href="spt_consulting">상담 신청</a>
                        <%--<a href="spt_email?page=1">온라인 문의</a>--%>
                        <a href="spt_visit">견학 신청</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">FAQ</h2>
                <div class="page__location">
                    <div class="location__deco">한국농업기술진흥원 홈페이지에서 자주 문의하시는 질문을 모았습니다.</div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <div class="spt__container">
                <div class="faq__banner">
                    <div class="faq__banner--title">자주 묻는 질문</div>
                </div>

                <div class="faq__list">
                    <dl>
                        <dt class="is-fold"><a href="#"><span class="faq__list--q">Q</span> 최신 농식품 분야 특허정보를 자세히 알 수 있는 방법이 있나요?</a></dt>
                        <dd class="is-fold">한국농업기술진흥원에서는 농림축산식품 기술사업화 종합정보망(NATI)를 통해 농식품 분야 최신 특허정보(실용신안 포함)를 제공하고있습니다.
                            [홈페이지 이용방법] 농림축산식품 기술사업화 종합정보망(NATI) 접속 (www.nati.or.kr)->지식정보->특허정보 클릭, 검색기능을 통해 `알고 싶어하는 특허`를 손쉽게 찾을 수 있습니다.
                            [전화 문의] 또한, 위와 같이 홈페이지 이용방법이 어려우신분들께서는 기술분야별 담당자가 있으니 연락 주시면 특허자료를 검색해서 보내드리겠습니다.
                            ★ 문 의 : 한국농업기술진흥원 기술창출이전팀 분야별 담당자
                            - 기능성,곤충, 원예/  비국유특허 중개(지자체, 대학, 민간 등): 김찬주(cjkim@efact.or.kr, 063-919-1311)
                            - 식품, 식량 : 백정선(jsbaek@efact.or.kr, 063-919-1319)
                            - 스마트팜, 농기계, 농자재: 김준기(jkkim100@efact.or.kr, 063-919-1322)
                            - 축 산 : 노재성(no062420@efact.or.kr, 063-919-1321)</dd>

                        <dt class="is-fold"><a href="#"><span class="faq__list--q">Q</span> 상표출원비용도 지원해주나요?</a></dt>
                        <dd class="is-fold">★ 문 의 : 한국농업기술진흥원 기술창출이전팀 분야별 담당자
                            - 기능성,곤충, 원예/  비국유특허 중개(지자체, 대학, 민간 등): 김찬주(cjkim@efact.or.kr, 063-919-1311)
                            - 식품, 식량 : 백정선(jsbaek@efact.or.kr, 063-919-1319)
                            - 스마트팜, 농기계, 농자재: 김준기(jkkim100@efact.or.kr, 063-919-1322)
                            - 축 산 : 노재성(no062420@efact.or.kr, 063-919-1321)</dd>

                        <dt class="is-fold"><a href="#"><span class="faq__list--q">Q</span> 결제 내역 확인하는 방법을 알려주세요.</a></dt>
                        <dd class="is-fold">- 기능성,곤충, 원예/  비국유특허 중개(지자체, 대학, 민간 등): 김찬주(cjkim@efact.or.kr, 063-919-1311)
                            - 식품, 식량 : 백정선(jsbaek@efact.or.kr, 063-919-1319)
                            - 스마트팜, 농기계, 농자재: 김준기(jkkim100@efact.or.kr, 063-919-1322)
                            - 축 산 : 노재성(no062420@efact.or.kr, 063-919-1321)</dd>

                        <dt class="is-fold"><a href="#"><span class="faq__list--q">Q</span> 저는 개인발명가입니다. 제게 좋은 기술이 있는데 이를 권리화하고 싶습니다. 어떻게 하면 좋을까요?</a></dt>
                        <dd class="is-fold">한국농업기술진흥원에서는 농림축산식품 기술사업화 종합정보망(NATI)를 통해 농식품 분야 최신 특허정보(실용신안 포함)를 제공하고있습니다.
                            [홈페이지 이용방법] 농림축산식품 기술사업화 종합정보망(NATI) 접속 (www.nati.or.kr)->지식정보->특허정보 클릭, 검색기능을 통해 `알고 싶어하는 특허`를 손쉽게 찾을 수 있습니다.
                            [전화 문의] 또한, 위와 같이 홈페이지 이용방법이 어려우신분들께서는 기술분야별 담당자가 있으니 연락 주시면 특허자료를 검색해서 보내드리겠습니다.
                            ★ 문 의 : 한국농업기술진흥원 기술창출이전팀 분야별 담당자
                        </dd>

                        <dt class="is-fold"><a href="#"><span class="faq__list--q">Q</span> 국유특허의 기술이전 시 계약기간은 어떻게 되나요?</a></dt>
                        <dd class="is-fold">국유특허의 기술이전 시 계약기간 국유특허의 기술이전 시 계약기간 국유특허의 기술이전 시 계약기간
                            국유특허의 기술이전 시 계약기간 국유특허의 기술이전 시 계약기간
                            국유특허의 기술이전 시 계약기간
                        </dd>

                        <dt class="is-fold"><a href="#"><span class="faq__list--q">Q</span> 농촌진흥청 연구자가 특허출원에 필요한 업무처리 프로그램은 어디서 받을 수 있나요?</a></dt>
                        <dd class="is-fold">특허출원에 필요한 업무처리 프로그램
                            특허출원에 필요한 업무처리 프로그램 받는곳은 특허출원에 필요한 업무처리 프로그램
                            특허출원에 필요한 업무처리 프로그램
                        </dd>
                    </dl>
                </div>

                <!--//-->

                <div class="page__btn">
                    <div class="btn__group">
                        <a href="#" class="btn__part bg--cs"><img src="resources/assets/image/img_consultation.png" alt=""><strong>상세한 내용을 상담받고 싶으세요?</strong> 사전상담에서 알려드리겠습니다.<em>1:1 상담 바로가기</em></a>
                    </div>
                </div>
                <!--//-->

                <div class="faq__notice">
                    <img src="resources/assets/image/img_faq_notice_02.png" alt="서로를 존중하는 말로 상담 부탁드립니다. 한국농업기술진흥원 고객지원센터는 산업안전보건법에 따라 상담원 보호조치를 시행 중입니다.">
                    <a href="#none" class="btn default">산업안전보건법 및 시행령</a>
                </div>

                <!--//-->
            </div>
        </div>

    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>

</div>
</body>
</html>