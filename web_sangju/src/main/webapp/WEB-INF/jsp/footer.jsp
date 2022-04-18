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
            <div class="part__message">본 콘텐츠의 담당자를 안내해 드립니다.  문의사항이 있는 경우, <a href="/spt_prevent?page=1">여기</a>를 눌러 상담신청을 하시거나 연락을 주십시오.</div>
            <div class="part__member">
                <em>담당자</em><strong>${homepageInfo.homepage_admin}</strong>
                <em>연락처</em><strong>${homepageInfo.homepage_admin_pnum}</strong>
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
                <h3 class="footer__logo"><img src="<%=request.getContextPath()%>/static/assets/image/logo-footer-s.png" alt=""></h3>
                <div class="footer__address">37127 경상북도 상주시 사벌국면 청룡길 302-96</div>
                <div class="footer__copyright">Copyright(c) 2021 Korea Agriculture Technology Promotion Agency. All Rights Reserved.</div>
            </div>
            <div class="footer__site">
                <span><img src="<%=request.getContextPath()%>/static/assets/image/footer_mark.png" alt=""></span>
                <select name="a" id="a_link" onchange="moveurl(this.value);">
                    <option value="1">관련부처 사이트</option>
                    <option value="https://www.mafra.go.kr">농림축산식품부</option>
                    <option value="https://www.gb.go.kr/">경상북도</option>
                    <option value="https://www.sangju.go.kr/">상주시</option>
                    <option value="https://www.koat.or.kr/">한국농업기술 진흥원</option>
                </select>
            </div>
        </div>
    </div>
<script>
    // 넘어오는 변수으로 페이지 이동하기
    function moveurl(url) {
        location.href = url;
    }
    //-->
</script>





