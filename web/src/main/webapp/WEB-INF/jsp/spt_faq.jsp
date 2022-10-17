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
                        <dd classㅏ="is-fold">한국농업기술진흥원에서는 농림축산식품 기술사업화 종합정보망(NATI)를 통해 농식품 분야 최신 특허정보(실용신안 포함)를 제공하고있습니다.
                            [홈페이지 이용방법] 농림축산식품 기술사업화 종합정보망(NATI) 접속 (www.nati.or.kr)->지식정보->특허정보 클릭, 검색기능을 통해 `알고 싶어하는 특허`를 손쉽게 찾을 수 있습니다.
                            [전화 문의] 또한, 위와 같이 홈페이지 이용방법이 어려우신분들께서는 기술분야별 담당자가 있으니 연락 주시면 특허자료를 검색해서 보내드리겠습니다.
                            ★ 문 의 : 한국농업기술진흥원 기술창출이전팀 분야별 담당자
                        </dd>

                        <dt class="is-fold"><a href="#"><span class="faq__list--q">Q</span> 국유특허의 기술이전 시 계약기간은 어떻게 되나요?</a></dt>
                        <dd class="is-fold">
                            농촌진흥청, 농림축산검역본부 등 국가가 보유한 특허 등의 기술이전은 통상실시권 또는 전용실시 형태로 계약이 체결됩니다.
                            이 경우 원칙적으로는 계약일로부터 3년 이내에서 계약을 하고 있습니다(재계약 가능).
                            다만, 다음에 해당하는 경우에는 해당 기간을 고려해 최대 5년까지 계약가능합니다.
                            - 해당 특허를 실시하는 데 필요한 준비기간이 1년 이상 걸리는 경우에 그 준비기간
                            - 해당 특허의 존속기간이 계약일로부터 4년 이내에 만료되는 경우에는 그 존속기간 만료 시까지의 남은 기간
                        </dd>

                        <dt class="is-fold"><a href="#"><span class="faq__list--q">Q</span> 농촌진흥청 연구자가 특허출원에 필요한 업무처리 프로그램은 어디서 받을 수 있나요?</a></dt>
                        <dd class="is-fold">
                            지식재산권 창출지원은 한국농업기술진흥원에서 온/오프라인으로 컨설팅이 가능합니다.
                            현장맞춤형으로 찾아가는 지식재산권 교육지원과 만건 우수기술 사업화 지원(IP출원)이 가능합니다.
                            * 온라인 시
                                1. 온라인 특허상담요청
                                2. 상담내용 등록
                                3. 선행시기술, 침해회피방안 등 조사
                                4. On line 또는 전화 컨설팅 진행
                                5. 절차, 등록가능성, 침해회피방안, 기술이전 등
                                <br>
                            * 오프라인 시
                                1. 업무담당자에게 유선, 이메일 상담신청
                                2. 선행시기술, 침해회피방안 등 조사
                                3. 전화 후 방문컨설팅 진행
                                4. 절차, 등록가능성, 침해회피방안, 기술이전 등
                            <a class="btn btn-anchor" href="https://www.koat.or.kr" target="_blank">
                                한국농업기술진흥원 사이트
                            </a>
                            (사이트 내 상단 메뉴 중 기술진흥정보 > 지식재산권 창출지원)

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