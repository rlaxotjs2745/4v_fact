<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/08/30
  Time: 6:02 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--제외페이지 : 메인, 로그인, 회원가입, 탈퇴화면-->
<c:if test="${is_main eq null}">
    <div class="charge__part">
        <div class="part__inner">
            <div class="part__message">본 콘텐츠의 담당자를 안내해 드립니다.  문의사항이 있는 경우, 여기를 눌러 상담신청을 하시거나 연락을 주십시오.</div>
            <div class="part__member">
                <em>담당자</em><strong>홍길동 (XXXXXX팀)</strong>
                <em>연락처</em><strong>000-0000-0000</strong>
            </div>
        </div>
    </div>
</c:if>
    <div class="btn_top"><a href="#wrapper">▲<br>TOP</a></div>
    <div class="footer">
        <div class="footer__box">
            <ul class="footer__anchor">
                <li><a href="#none">서비스이용약관</a></li>
                <li><a href="#none">개인정보처리방침</a></li>
                <li><a href="#none">부패신고바로하기</a></li>
                <%--<li><a href="#none">홈페이지 개선의견</a></li>--%>
                <li><a href="#none">사이트 맵</a></li>
            </ul>
            <div class="footer__info">
                <h3 class="footer__logo"><img src="<%=request.getContextPath()%>/static/assets/image/logo_footer.svg" alt=""></h3>
                <div class="footer__address">54667 전라북도 익산시 평동로 457 (송학동 381) TEL 063-919-1000 FAX 063-919-1269</div>
                <div class="footer__copyright">Copyright(c) 2010 The Foundation of AG. Tech, Commercialization and Transfer. All Rights Reserved.</div>
            </div>
            <div class="footer__site">
                <span><img src="<%=request.getContextPath()%>/static/assets/image/footer_mark.png" alt=""></span>
                <select name="a" id="a">
                    <option value="1">관련부처 사이트</option>
                </select>
            </div>
        </div>
    </div>






