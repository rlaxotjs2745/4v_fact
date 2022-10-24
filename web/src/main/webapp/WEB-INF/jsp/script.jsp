<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/10/27
  Time: 5:33 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/evo-calendar.min.js" type="text/javascript"></script>

<script>
    $("#login_console").on('click',function (){
        <c:if test="${sessionScope.idx_user ne null}">
        let param = {
            idx_user:${sessionScope.idx_user},
        };

        //console.log(param);

        $.ajax({
            type: 'post',
            url :'console_login', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                if(result.result_code=="SUCCESS"){

                    //alert(result.result_str);
                    //console.log(result.element);
                    //var authVO = JSON.parse(result.element);


                    //var authVO = data["auth_code"];

                    setCookie("auth_code",result.element.auth_code,"1"); //변수, 변수값, 저장기간
                    setCookie("idx_console_user",result.element.idx_console_user,"1"); //변수, 변수값, 저장기간

                    //쿠키값 "Ck_01"에 on값을 저장합니다. 1은 Day 하루 동안을 의미합니다.



                    /***

                     EX) Ck_01의 값을 on이 아닌 1,2,3,4,5,6..... a,b,c,d,e,f등 원하는 문자 숫자등을 사용하실 수 있습니다.

                     각각의 값에 따라 if() elseif() else() 조건문 또는 swich case문등을 통해 입력변수 실행을 하실 수 있습니다.

                     ***/



                    var checkEvent = getCookie("Ck_01");

                    //checkEvent 라는 변수를 만들어 브라우져 쿠키 "Ck_01" 값을 가져 옵니다.



                    if(checkEvent == "on") {

                        //쿠키값에 on이 저장되었을 경우

                    } else {

                        //쿠키값이 없을 경우

                    }



                    window.open(href="http://localhost:10003" ,"FACT User Console");


                }
                else {
                    alert(result.result_str);
                }
                //STATUS_001 :
            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
            }
        });


        </c:if>


    });



    // 쿠키 생성 함수
    function setCookie(cName, cValue, cDay){
        var expire = new Date();
        expire.setDate(expire.getDate() + cDay);
        cookies = cName + '=' + escape(cValue) + '; path=/ '; // 한글 깨짐을 막기위해 escape(cValue)를 합니다.
        if(typeof cDay != 'undefined') cookies += ';expires=' + expire.toGMTString() + ';';
        document.cookie = cookies;
    }



    // 쿠키 가져오기 함수
    function getCookie(cName) {
        cName = cName + '=';
        var cookieData = document.cookie;
        var start = cookieData.indexOf(cName);
        var cValue = '';
        if(start != -1){
            start += cName.length;
            var end = cookieData.indexOf(';', start);
            if(end == -1)end = cookieData.length;
            cValue = cookieData.substring(start, end);
        }
        return unescape(cValue);
    }

</script>