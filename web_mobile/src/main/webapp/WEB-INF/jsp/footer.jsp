<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/08/30
  Time: 6:02 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--<div class="btn_top"><a href="#wrapper">▲<br>TOP</a></div>-->
<div class="footer">
    <div class="footer__box">
        <ul class="footer__anchor">
            <li><a href="#none">서비스이용약관</a></li>
            <li><a href="#none">개인정보처리방침</a></li>
            <li><a href="#none">부패신고바로하기</a></li>
            <%--<li><a href="#none">홈페이지 개선의견</a></li>--%>
            <li><a href="#none">사이트 맵</a></li>
        </ul>
        <div class="footer__site">
            <select name="a" id="a">
                <option value="1">관련부처 사이트</option>
            </select>
            <div class="footer__bar">
                <span><img src="resources/assets/image/footer_mark.png" alt=""></span>
            </div>
        </div>
        <div class="footer__info">
            <h3 class="footer__logo"><img src="resources/assets/image/logo_footer.png" alt=""></h3>
            <div class="footer__address">54667 전라북도 익산시 평동로 457 (송학동 381) <br>TEL 063-919-1000 FAX 063-919-1269</div>
            <div class="footer__copyright">Copyright(c) 2010 The Foundation of AG. Tech, Commercialization and Transfer. All Rights Reserved.</div>
        </div>
    </div>
</div>
</div>
<!-- Initialize Swiper -->
<script>
    var swiperMain = new Swiper(".swiper__main", {
        centeredSlides: true,
        loop: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
    });
    $(".swiper-main-button-pause").click(function(){
        swiperMain.autoplay.stop();
        $(".swiper-main-button-play").show();
        $(".swiper-main-button-pause").hide();
    });
    $(".swiper-main-button-play").click(function(){
        swiperMain.autoplay.start();
        $(".swiper-main-button-pause").show();
        $(".swiper-main-button-play").hide();
    });


</script>
</body>
</html>