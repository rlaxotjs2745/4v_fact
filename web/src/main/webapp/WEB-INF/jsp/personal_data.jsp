<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:25 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="header.jsp" %>

<div class="content" id="content">
    <div class="page__body">
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">개인정보 처리 방침</h2>
                <div class="page__location">
                    <div class="location__deco">고객님의 개인정보를 소중히 다루고 있습니다.</div>
                </div>
            </div>
        </div>
        <%-- content --%>
        <div class="page__cnt p_personal-data">
            <div class="join__agree">
                <div class="join__terms">
                    <div class="terms-box">
                        <div class="cont pri" style="display:block;" id="new_person">
                            <div class="cont pri">
                                <!-- 개인정보처리방침 Start -->
                                <p>한국농업기술진흥원은 개인정보보호법 제30조에 따라 정보주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리지침을 수립·공개합니다.</p><br>
                                <h3>제1조(개인정보의 처리목적)</h3>
                                <p>① &lt;한국농업기술진흥원&gt;은 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 개인정보 보호법 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.</p>
                                <br>
                                <ul>
                                    <li>
                                        <b>홈페이지 회원 가입 및 관리</b>
                                        <br>
                                        회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 제한적 본인확인제 시행에 따른 본인확인, 서비스 부정이용 방지, 만 14세 미만 아동의 개인정보 처리시 법정대리인의 동의여부 확인, 각종 고지·통지 등을 목적으로 개인정보를 처리합니다.
                                    </li>
                                    <li>
                                        <b>민원사무 처리</b>
                                        <br>
                                        민원인의 신원 확인, 민원사항 확인, 사실조사를 위한 연락·통지, 처리결과 통보 등의 목적으로 개인정보를 처리합니다.
                                    </li>
                                    <li>
                                        <b>개인정보 처리업무</b>
                                        <br>
                                        &lt;한국농업기술진흥원&gt;은 기술이전 및 기술평가, 농업관련 특허정보, 분석검정 서비스, 정보자료 제공, 본인인증, 부가 서비스 등의 서비스 제공에 관련한 목적으로 개인정보를 처리합니다.
                                    </li>
                                </ul>
                                <p>
                                    ② &lt;한국농업기술진흥원&gt;이 개인정보보호법 제32조에 따라 등록·공개하는 개인정보파일 처리목적은 다음과 같습니다.&nbsp;
                                    <br>
                                    &nbsp;
                                </p>
                                <table class="tmp01" style="width: 100%; font-size: 12px;" border="1" cellspacing="0" cellpadding="0" summary="개인정보보호법 제32조에 따라 등록,공개하는 개인정파일 처리목적표">
                                    <colgroup>
                                        <col width="20">
                                        <col width="120">
                                        <col width="240">
                                        <col width="120">
                                        <col width="80">
                                    </colgroup>
                                    <thead>
                                    <tr style="font-size: 12px;">
                                        <th>순번</th>
                                        <th>개인정보파일의 명칭</th>
                                        <th>운영근거 / 처리목적</th>
                                        <th>
                                            개인정보파일에 기록되는&nbsp;<br>
                                            개인정보의 항목
                                        </th>
                                        <th style="line-height: 15px; font-size: 12px;">보유기간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td align="center">1</td>
                                        <td style="text-align: left; padding-left: 5px">지식재산관리 DB</td>
                                        <td style="text-align: left; padding-left: 5px">
                                            1. 특허와 관련된 개인정보 및 고유식별정보의 처리<br>
                                            농촌진흥법 제33조(한국농업기술진흥원의 설립 · 운영)<br>
                                            제3항 제1호(연구개발 성과의 실용화를 위한 중개와 알선)<br>
                                            농촌진흥법 제33조(한국농업기술진흥원의 설립 · 운영)<br>
                                            제3항 제5호 (특허 등 지식재산권의 위탁관리 업무)<br><br>
                                            ※ 공무원 직무발명의 처분 · 관리 및 보상 등에 관한 규정<br>
                                            제25조(고유식별정보의 처리)<br>
                                            &nbsp;&nbsp;1. 제5조에 따른 발명의 신고에 관한 사무<br>
                                            &nbsp;&nbsp;2. 제9조에 따른 국유특허권의 등록에 관한 사무<br>
                                            &nbsp;&nbsp;3. 제10조 또는 제11조에 따른 국유특허권의 처분에 관한 사무<br>
                                            &nbsp;&nbsp;4. 그 밖에 법 및 이 영에 따른 공무원 직무발명과 관련된 신청 또는 신고에 관한 사무<br><br>
                                            2. 소관 업무의 수행<br>
                                            개인정보보호법 제15조(개인정보의 수집이용)<br>
                                            제1항 제3호 공공기관이 법령 등에서 정하는 소관 업무의 수행을 위하여 불가피한 경우<br>
                                            개인정보보호법 제15조(개인정보의 수집이용)<br>
                                            제1항 제4호 정보주체와의 계약의 체결 및 이행을 위하여 불가피하게 필요한 경우
                                            /농촌진흥청 지식재산 관리 및 농촌진흥청이 개발한 특허기술의 민간 기술이전 계약 중개·관리<br><br>
                                            ※ 발명의 신고 - 국유특허권 출원 및 등록 - 국유특허권의 처분에 관한 사무(20년)
                                        </td>
                                        <td style="text-align: left; padding-left: 5px">주민등록번호, 이름, 전화번호, 핸드폰번호, 주소, 이메일, 소속, 부서, 직급</td>
                                        <td style="text-align: left; padding-left: 5px">20년</td>
                                    </tr>
                                    <tr>
                                        <td align="center">2</td>
                                        <td style="text-align: left; padding-left: 5px">분석검정시스템 고객DB</td>
                                        <td style="text-align: left; padding-left: 5px">고객 동의/분석검정에 필요한 업무 목적</td>
                                        <td style="text-align: left; padding-left: 5px">상세주소, 메일주소, 핸드폰번호, 전화번호, 이름, 회사명 업체대표</td>
                                        <td style="text-align: left; padding-left: 5px">3년/매년 갱신 동의</td>
                                    </tr>
                                    <tr>
                                        <td align="center">3</td>
                                        <td style="text-align: left; padding-left: 5px">웹사이트 회원정보 DB</td>
                                        <td style="text-align: left; padding-left: 5px">고객 동의/농진원 웹사이트의 서비스 제공<br>※대표홈페이지(koat.or.kr)는 회원가입 없음</td>
                                        <td style="text-align: left; padding-left: 5px">이름, 주소, E-MAIL, 전화번호, 핸드폰번호</td>
                                        <td style="text-align: left; padding-left: 5px">3년/매년 갱신 동의</td>
                                    </tr>
                                    <tr>
                                        <td align="center">4</td>
                                        <td style="text-align: left; padding-left: 5px">종자·종묘생산자 및 고객DB</td>
                                        <td style="text-align: left; padding-left: 5px">고객 동의/ 종자·종묘 사업에 필요한 업무 목적</td>
                                        <td style="text-align: left; padding-left: 5px">이름, 전화번호, 핸드폰번호, 주소, 이메일, 기관(업체)명, 기관(업체)대표</td>
                                        <td style="text-align: left; padding-left: 5px">3년/매년 갱신 동의</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <p>
                                    ※ 좀더 상세한 &lt;한국농업기술진흥원&gt;의 개인정보파일 등록사항 공개는 행정자치부 개인정보보호 종합지원 포털(<a href="http://www.privacy.go.kr/" target="_blank">www.privacy.go.kr</a>) → 개인정보민원 → 개인정보열람등 요구 → 개인정보파일 목록검색 메뉴를 활용하기 바랍니다.
                                </p>
                                <br>
                                <h3>제2조(개인정보의 처리 및 보유기간) </h3>
                                <p>
                                    ① &lt;한국농업기술진흥원&gt;은 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집시에 동의받은 개인정보 보유·이용기간 내에서 개인정보를 처리·보유합니다.&nbsp;
                                    <br>
                                    ② 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.
                                </p>
                                <ul>
                                    <li>
                                        홈페이지 회원 가입 및 관리 : 한국농업기술진흥원 홈페이지 탈퇴시까지&nbsp;<br>
                                        다만, 다음의 사유에 해당하는 경우에는 해당 사유 종료시까지&nbsp;<br>
                                        1) 관계 법령 위반에 따른 수사·조사 등이 진행중인 경우에는 해당 수사·조사 종료시까지&nbsp;<br>
                                        2) 홈페이지 이용에 따른 채권·채무관계 잔존시에는 해당 채권·채무관계 정산시까지&nbsp;<br>
                                        3) 예외 사유 발생시에는 별도로 정하여 공지함
                                    </li>
                                    <li>「정보통신망 이용촉진 및 정보보호 등에 관한 법률」시행령 제29조에 따른 본인확인정보 보관 : 게시판에 정보 게시가 종료된 후 6개월 </li>
                                    <li>이 외, 개인정보처리를 위한 경우는 제1조2항에 따른다. </li>
                                </ul>
                                <br>
                                <h3>제3조(개인정보의 제3자 제공)</h3>
                                <p>① &lt;한국농업기술진흥원&gt;은 정보주체의 개인정보를 수집·이용 목적으로 명시한 범 위 내에서 처리하며, 다음의 경우를 제외하고는 정보주체의 사전 동의 없이는 본래 의 목적 범위를 초과하여 처리하거나 제3자에게 제공하지 않습니다.<br>
                                    1. 정보주체로부터 별도의 동의를 받는 경우&nbsp;<br>
                                    2. 다른 법률에 특별한 규정이 있는 경우&nbsp;<br>
                                    3. 정보주체 또는 법정대리인이 의사표시를 할 수 없는 상태에 있거나 주소불명 등으로 사전 동의를 받을 수 없는 경우로서 명백히 정보주체 또는 제3자의 급박한 생명, 신체,재산의 이익을 위하여 필요하다고 인정되는 경우&nbsp;<br>
                                    4. 통계작성 및 학술연구 등의 목적을 위하여 필요한 경우로서 특정 개인을 알아 볼 수 없는 형태로 개인정보를 제공하는 경우&nbsp;<br>
                                    5. 개인정보를 목적 외의 용도로 이용하거나 이를 제3자에게 제공하지 아니하면 다른 법률에서 정하는 소관 업무를 수행할 수 없는 경우로서 개인정보보호위원회의 심의·의결을 거친 경우&nbsp;<br>
                                    6. 조약, 그 밖의 국제협정의 이행을 위하여 외국정보 또는 국제기구에 제공하기 위하여 필요한 경우&nbsp;<br>
                                    7. 범죄의 수사와 공소의 제기 및 유지를 위하여 필요한 경우&nbsp;<br>
                                    8. 법원의 재판업무 수행을 위하여 필요한 경우&nbsp;<br>
                                    9. 형(形) 및 감호, 보호처분의 집행을 위하여 필요한 경우
                                </p>
                                <br>
                                <h3>제4조(개인정보처리의 위탁)</h3>
                                <p>
                                    ① &lt;한국농업기술진흥원&gt;은 관련홈페이지 운영,회원관리 등을 위하여 개인정보 처리업무 일부를 개인정보보호법 제26조(업무위탁에 따른 개인정보의 처리 제한)에 따라 위탁하고 있으며 다음 각 호의 내용을 위탁문서에 명시하여 수탁자가 위탁받은 해당 업무범위를 초과하여 개인정보를 이용하거나 제3자에게 무단제공 하지 않도록 하고 있습니다.<br>
                                    <br>
                                    1. 위탁업무 수행 목적외 개인정보의 처리 금지에 관한 사항<br>
                                    2. 개인정보의 기술적ㆍ관리적 보호조치에 관한 사항<br>
                                    3. 위탁하는 사무의 목적과 범위<br>
                                    4. 재위탁 제한에 관한 사항<br>
                                    5. 개인정보에 대한 접근 제한 등 안전성 확보조치에 관한 사항<br>
                                    6. 개인정보의 관리현황 점검 및 수탁자 소속 직원의 교육에 관한 사항<br>
                                    7. 수탁자가 준수하여야 할 의무를 위반한 경우의 손해배상 등에 관한 사항.<br>
                                    <br>
                                    한국농업기술진흥원은 개인정보 업무처리를 위하여 위탁하고 있습니다.<br>
                                    ○ 개인정보 업무 총관 관리부서 : 운영정보실<br>
                                </p><table class="tmp01" style="width: 100%; font-size: 12px;" border="1" cellspacing="0" cellpadding="0" summary="개인정보 위탁업무 정보">
                                <colgroup>
                                    <col width="120">
                                    <col width="120">
                                    <col width="180">
                                    <col width="120">
                                    <col width="120">
                                    <col width="80">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th style="text-align: left; padding-left: 5px">위탁 사업명</th>
                                    <th style="text-align: left; padding-left: 5px">위탁기관</th>
                                    <th style="text-align: left; padding-left: 5px">위탁기간</th>
                                    <th style="text-align: left; padding-left: 5px">위탁업무내용</th>
                                    <th style="text-align: left; padding-left: 5px">위탁개인정보내역</th>
                                    <th style="text-align: left; padding-left: 5px">담당부서</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td style="text-align: left; padding-left: 5px">정보시스템<br>통합 유지보수</td>
                                    <td style="text-align: left; padding-left: 5px">(주)애니스마트</td>
                                    <td style="text-align: left; padding-left: 5px">'18. 10. 1 ~ '19. 12. 31</td>
                                    <td style="text-align: left; padding-left: 5px">정보시스템<br>통합 유지보수</td>
                                    <td style="text-align: left; padding-left: 5px">정보시스템 내<br> 개인정보</td>
                                    <td style="text-align: left; padding-left: 5px">운영정보실</td>
                                </tr>
                                </tbody>
                            </table>
                                <br>
                                <h3>제5조(정보주체의 권리·의무 및 행사방법)</h3>
                                <p>① 정보주체는 &lt;한국농업기술진흥원&gt;에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.&nbsp;<br>
                                    1. 개인정보 열람요구<br>
                                    2. 오류 등이 있을 경우 정정 요구<br>
                                    3. 삭제요구&nbsp;<br>
                                    4. 처리정지 요구&nbsp;<br>
                                    <br>
                                    ② 제1항에 따른 권리 행사는 &lt;한국농업기술진흥원&gt;에 대해 개인정보보호법 시행규칙 별지 제8호 서식에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 &lt;한국농업기술진흥원&gt;은 이에 대해 지체없이 조치하겠습니다.&nbsp;<br>
                                    <br>
                                    ③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 &lt;한국농업기술진흥원&gt;은 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.&nbsp;<br>
                                    <br>
                                    ④ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.</p>
                                <br>
                                <h3>제6조(처리하는 개인정보 항목)</h3>
                                <p>
                                    &lt;한국농업기술진흥원&gt;은 개인정보의 처리목적을 위해 최소한의 개인정보를 수집하며, 수집하는 개인정보 항목은 다음과 같습니다.<br>
                                    1. 필수항목 : 아이디, 성명, 생년월일, 비밀번호, 직업, 이메일, 전화번호(자택), 주소(자택)<br>
                                    2. 선택항목 : 휴대전화, 직장명, 전화번호(직장), 주소(직장), 자기소개
                                </p>
                                <br>
                                <h3>제7조(개인정보의 파기)</h3>
                                <p>
                                    ① &lt;한국농업기술진흥원&gt;은 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체없이 해당 개인정보를 파기합니다.&nbsp;<br>
                                    ② 정보주체로부터 동의받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도 불구하고 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는, 해당 개인정보(또는 개인정보파일)을 별도의 데이터베이스(DB)로 옮기거나 보관장소를 달리하여 보존합니다.&nbsp;<br>
                                    ③ 개인정보 파기의 절차 및 방법은 다음과 같습니다.
                                </p>
                                <ul>
                                    <li>
                                        <b>파기절차</b>
                                        <br>
                                        &lt;한국농업기술진흥원&gt;은 파기하여야 하는 개인정보(또는 개인정보파일)에 대해 개인정보 파기계획을 수립하여 파기합니다. &lt;한국농업기술진흥원&gt;은 파기 사유가 발생한 개인정보(또는 개인정보파일)을 선정하고, &lt;한국농업기술진흥원&gt;의 개인정보 보호책임자의 승인을 받아 개인정보파일을 파기합니다.
                                    </li>
                                    <li>
                                        <b>파기방법</b><br>
                                        &lt;한국농업기술진흥원&gt;은 전자적 파일 형태로 기록·저장된 개인정보는 기록을 재생할 수 없도록 파기하며, 종이 문서에 기록·저장된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다.
                                    </li>
                                </ul>
                                <br>
                                <h3>제8조(개인정보의 안전성 확보조치)</h3>
                                <p>①&lt;한국농업기술진흥원&gt;은 개인정보의 안전성 확보를 위해 다음과 같은 조치를 취하고 있습니다.</p>
                                <ul>
                                    <li>개인정보의 안전한 처리를 위한 내부 관리계획의 수립 및 시행 </li>
                                    <li>개인정보에 대한 접근 통제 및 접근 권한의 제한 조치 </li>
                                    <li>개인정보를 안전하게 저장·전송할 수 있는 암호화 기술의 적용 또는 이에 상응하는 조치 </li>
                                    <li>개인정보 침해사고 발생에 대응 하기 위한 접속기록의 보관 및 위조·변조 방지를 위한 조치 </li>
                                    <li>개인정보에 대한 보안프로그램의 설치 및 갱신 </li>
                                    <li>개인정보의 안전한 보관을 위한 보관시설의 마련 또는 잠금장치의 설치 등 물리적 조치 </li>
                                </ul>
                                <br>
                                <h3>제9조(정보보안·개인정보 보호책임자)</h3>
                                <table class="tmp01" border="1" cellspacing="0" cellpadding="0" summary="안내문구">
                                    <caption>관리와 관련한 안내 문구</caption>
                                    <tbody><tr>
                                        <td style="font-weight:bold;line-height:16px;font-size:1.1em;"> 개인정보보호 업무는 운영정보실에서 총괄
                                        </td>
                                    </tr>
                                    </tbody></table>
                                <p>① &lt;한국농업기술진흥원&gt;은 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.</p>
                                <dl>
                                    <dt>정보보안·개인정보 보호책임자 </dt>
                                    <dd>기획운영본부&nbsp;전영걸본부장 </dd>
                                    <dd>전화번호 : 063-919-1200, 이메일 : <a href="mailto:young@koat.or.kr">young@koat.or.kr</a>, FAX : 063-919-1219 </dd>
                                </dl>
                                <dl>
                                    <dt>정보보안·개인정보보호 실무책임자 </dt>
                                    <dd>기획운영본부 김옥일 운영정보실장 </dd>
                                    <dd>전화번호 : 063-919-1250, 이메일 : okilkim@koat.or.kr, FAX : 063-919-1269 </dd>
                                </dl>
                                <dl>
                                    <dt>정보보안 담당자 </dt>
                                    <dd>부서명 : 운영정보실  정보관리센터 </dd><dd>담당자 : 이승용 </dd>
                                    <dd>전화번호 : 063-919-1282, 이메일 : dragon@koat.or.kr, Fax : 063-919-1269&nbsp;</dd>
                                </dl>
                                <dl>
                                    <dt>개인정보보호 담당자 </dt>
                                    <dd>부서명 : 운영정보실  정보관리센터 </dd>
                                    <dd>담당자 : 김재남 </dd>
                                    <dd>전화번호 : 063-919-1284, 이메일 : bambabo@koat.or.kr, Fax : 063-919-1269&nbsp;
                                        <!-- <br />
                                        ※ 각 웹 사이트는 각 사이트별 개인정보보호 담당자를 지정 및 운영하고 있습니다.&nbsp;<img width="77" height="20" id="manage_list1" style="cursor: hand;" alt="담당자 보기" src="/html/images/front/simages/common/bt_manageView.png" /> -->
                                    </dd>
                                </dl>
                                <p>② 정보주체께서는 &lt;한국농업기술진흥원&gt;의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. &lt;한국농업기술진흥원&gt;은 정보주체의 문의에 대해 지체없이 답변 및 처리해드릴 것입니다.</p>
                                <br>
                                <h3>제10조(개인정보 열람청구)</h3>
                                <p>
                                    ① 정보주체는 개인정보보호법 제35조에 따른 개인정보의 열람 청구를 아래의 부서에 할 수 있습니다. &lt;한국농업기술진흥원&gt;은 정보주체의 개인정보 열람청구가 신속(10일내)하게 처리되도록 노력하겠습니다.
                                </p>
                                <dl>
                                    <dt>개인정보 열람청구 접수·처리부서 </dt>
                                    <dd>부서명 : 정보관리센터 </dd><dd>담당자 : 김재남 </dd>
                                    <dd>전화번호 : 063-919-1284, 이메일 : bambabo@koat.or.kr, Fax : 063-919-1269&nbsp;
                                        <!-- <br />
                                    ※ 각 웹 사이트는 각 사이트별 개인정보보호 담당자를 지정 및 운영하고 있습니다.&nbsp; <img width="77" height="20" id="manage_list2" style="cursor: hand;" alt="담당자 보기" src="/html/images/front/simages/common/bt_manageView.png" /> -->
                                    </dd>
                                    <dd>
                                        개인정보 열람청구 : <a href="https://www.koat.or.kr/action.do?action=privacy%24list" style="font-weight:bold;color:rgba(114,114,255,1);" title="개인정보 열람신청게시판 바로가기">개인정보 열람신청게시판 </a>
                                    </dd>
                                </dl>
                                <p>② 정보주체께서는 제1항의 열람청구 접수·처리부서 이외에, 행정자치부의 ‘개인정보보호 종합지원 포털’ 웹사이트(<a href="http://www.privacy.go.kr/" target="_blank">www.privacy.go.kr</a>)를 통하여서도 개인정보 열람청구를 하실 수 있습니다.</p><dl><dt>행정자치부&nbsp;개인정보보호 종합지원 포털 → 개인정보 민원 → 개인정보 열람등 요구
                                <br>
                                (본인확인을 위하여 아이핀(I-PIN)이 있어야 함) </dt></dl>
                                <br>
                                <h3>제11조(권익침해 구제방법)</h3>
                                <p>정보주체는 아래의 기관에 대해 개인정보 침해에 대한 피해구제, 상담 등을 문의하실 수 있습니다.</p>
                                <p>&lt;아래의 기관은 &lt;한국농업기술진흥원&gt;과는 별개의 기관으로서, &lt;한국농업기술진흥원&gt;의 자체적인 개인정보 불만처리, 피해구제 결과에 만족하지 못하시거나 보다 자세한 도움이 필요하시면 문의하여 주시기 바랍니다.&gt;</p><dl><dt>개인정보 침해신고센터 (한국인터넷진흥원 운영) </dt><dd>소관업무 : 개인정보 침해사실 신고, 상담 신청 </dd><dd>홈페이지 :&nbsp;<a title="KISA개인정보보호 새창으로 이동" href="http://privacy.kisa.or.kr/" target="_balnk">privacy.kisa.or.kr</a> </dd><dd>전화 : (국번없이) 118 </dd><dd>주소 : 05717 서울시 송파구 중대로 135 (가락동) 한국인터넷진흥원 개인정보침해신고센터 </dd></dl><dl><dt>개인정보 분쟁조정위원회 (한국인터넷진흥원 운영) </dt><dd>소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결) </dd><dd>홈페이지 :&nbsp;<a title="KISA개인정보보호 새창으로 이동" href="http://privacy.kisa.or.kr/" target="_balnk">privacy.kisa.or.kr</a> </dd><dd>전화 : (국번없이) 118 </dd><dd>주소 : 05717 서울시 송파구 중대로 135 (가락동) 한국인터넷진흥원 개인정보침해신고센터 </dd></dl><dl><dt>대검찰청 사이버범죄수사단 : 02-3480-3573 (<a title="대검찰청 사이버범죄수사단 새창으로 이동" href="http://www.spo.go.kr/" target="_blank">www.spo.go.kr</a>) </dt></dl><dl><dt>경찰청 사이버테러대응센터 : 1566-0112 (<a title="경찰청 사이버테러대응센터 새창으로 이동" href="http://www.netan.go.kr/" target="_blank">www.netan.go.kr</a>) </dt></dl>
                                <br>
                                <h3>제12조(개인정보 자동 수집 장치의 설치 · 운영 및 거부에 관한 사항)&nbsp;</h3>
                                <p>우리기관은 이용자에게 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는 '쿠키(cookie)'를 사용하며, 접속IP주소, 서비스 이용기록 등을 수집합니다. 쿠키는 웹사이트를 운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.<br>
                                    ① 쿠키의 사용목적 : 이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 보안접속 여부등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다.<br>
                                    ② 쿠키의 설치 · 운영 및 거부 : 웹브라우저 상단의 도구 &gt; 인터넷 옵션 &gt; 개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부 할 수 있습니다.<br>
                                    ③ 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.
                                </p>
                                <br>
                                <h3>제13조(개인정보 처리방침 변경)&nbsp;</h3>
                                <p>
                                    ① 이 개인정보 처리방침은 2019. 7. 01일부터 적용됩니다.<br>
                                    ② 이전의 개인정보 처리방침은 아래에서 확인하실 수 있습니다.<br>
                                    ※ 본 개인정보처리방침의 내용 추가, 삭제 및 수정이 있을 경우 개정 최소 7일 전에 '공지사항'을 통해 사전 공지를 할 것 입니다. 단, 수집하는 개인정보의 항목, 이용목적의 변경 등과 같이 이용자의 권리의 중대한 변경이 발생할 때에는 최소 30일 전에 공지하며, 필요 시 이용자 동의를 다시 받을 수도 있습니다.

                                </p><br>
                                <!-- 개인정보처리방침 End -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>
    <%@include file="script.jsp" %>

</div>
<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
</body>
</html>