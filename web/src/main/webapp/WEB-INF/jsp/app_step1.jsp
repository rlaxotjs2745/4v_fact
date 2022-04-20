<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/11/04
  Time: 11:17 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko" class="html-popup">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SMART FARM</title>
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/assets/image/favicon_16.ico">
    <link rel="icon" href="<%=request.getContextPath()%>/static/assets/image/favicon_16.png">
    <link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/static/assets/image/favicon_152.png">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/assets/css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/assets/css/style.css">
</head>
<body>
<div class="wrapper" id="wrapper">
    <header class="header_app">
        <a href="#none" class="close_window" onclick="javascript:window.close();"><img src="<%=request.getContextPath()%>/static/assets/image/ico_close.svg" alt=""></a>
        <h1><a href="main.html"><img src="<%=request.getContextPath()%>/static/assets/image/h1_logo_gimje.png" alt="스마트팜 실증센터"></a></h1>
        <h2>신청서 작성</h2>
        <div class="app__step">
            <div class="step is-active">
                <em>1.</em>
                <span>지원사업 선택</span>
            </div>
            <div class="step ">
                <em>2.</em>
                <span>이용신청서 작성</span>
            </div>
            <div class="step ">
                <em>3.</em>
                <span>실증계획서 작성</span>
            </div>
            <div class="step ">
                <em>4.</em>
                <span>개인정보 수집 동의서 작성</span>
            </div>
            <div class="step ">
                <em>5.</em>
                <span>기타 서류등록</span>
            </div>
            <div class="step ">
                <em>6.</em>
                <span>신청서 확인 및 등록</span>
            </div>
        </div>
        <div class="app__business">
            <label for="select-business">지원사업 선택</label>
            <select name="business" id="select-business">
                <option value="0">지원사업 선택</option>
                <c:forEach items="${demoBusinessVOs}" var="demoBs" varStatus="status">
                    <option value="${demoBs.idx_demo_business}">${demoBs.demo_subject}</option>
                </c:forEach>


<%--                <option value="">사업공고명</option>
                <option value="">사업공고명</option>
                <option value="">사업공고명</option>
                <option value="">사업공고명</option>
                <option value="">사업공고명</option>--%>

            </select>
        </div>
    </header>
    <div class="content_app" id="content_app">
        <!--//-->
        <div class="app__body">
            <div class="app__cnt">
                <div class="desc__text">
                    - 마감된 사업은 목록에서 보이지 않습니다.<br>
                    - 마감된 사업의 공고를 확인하실 분은 '열린마당 > 사업공고'에서 확인하실 수 있습니다
                </div>

                <div class="cnt__title">사업 개요</div>
                <div class="application__document">
                    <ol>
                        <li>[서식 1호]실증단지 이용신청서 1부(필수)</li>
                        <li>[서식 2호]실증계획서 1부 (필수)</li>
                        <li>[서식 3호]개인정보 수집·이용·제공에 관한 동의서 1부(필수)</li>
                        <li>사업자등록증 사본1부(해당자에 한함)</li>
                        <li>법인등기부등본 1부(해당자에 한함)</li>
                        <li>법인인감증명서 1부(해당자에 한함)</li>
                        <li>4대보험 완납증명서 1부(해당자에 한함)</li>
                        <li>최근 2년간 재무제표 또는 회계감사 보고서 1부(해당자에 한함)</li>
                        <li>기타(가점서류 및 기업역량을 보여줄 수 있는 자료(자유 양식)</li>
                    </ol>
                </div>
                <div class="cnt__title">실증단지 이용 신청서 제출 서류</div>
                <div class="cnt__text">사업별로 제출 서류는 일부 다를 수 있습니다.</div>
                <div class="application__document">
                    <ol>
                        <li>[서식 1호]실증단지 이용신청서 1부(필수)</li>
                        <li>[서식 2호]실증계획서 1부 (필수)</li>
                        <li>[서식 3호]개인정보 수집·이용·제공에 관한 동의서 1부(필수)</li>
                        <li>사업자등록증 사본1부(해당자에 한함)</li>
                        <li>법인등기부등본 1부(해당자에 한함)</li>
                        <li>법인인감증명서 1부(해당자에 한함)</li>
                        <li>4대보험 완납증명서 1부(해당자에 한함)</li>
                        <li>최근 2년간 재무제표 또는 회계감사 보고서 1부(해당자에 한함)</li>
                        <li>기타(가점서류 및 기업역량을 보여줄 수 있는 자료(자유 양식)</li>
                    </ol>
                </div>

            </div>
        </div>
    </div>
    <div class="footer_app">
        <div class="footer__btn">
            <button href="btn_app_step1_save_new" class="btn dark btn-lg fl-left" disabled>신규작성</button>
            <%--<a href="#" class="btn info btn-lg ">이전</a>--%>
            <button id="btn_app_step2" class="btn submit btn-lg " disabled >다음</button>
        </div>
    </div>
</div>

<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/ui.common.js" type="text/javascript"></script>

<script>
    $("#btn_app_step2").click(function(){

        var param  = {
            "idx_user":${user.idx_user},
            "idx_demo_business":$("#select-business option:selected").val()
        };

        if($("#select-business option:selected").val()!=0){
            $.ajax({
                type: 'post',
                url :'app_step1_save_new', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(param),//보내는 데이터
                contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                dataType:'json',//받는 데이터 타입
                success: function(result){
                    //작업이 성공적으로 발생했을 경우
                    if(result.result_code!="SUCCESS"){
                        //alert("신청할 수 있습니다");
                        alert(result.result_str);
                        return;
                    }
                },
                error:function(){
                    //에러가 났을 경우 실행시킬 코드
                    return;
                }
            });
        }
        location.href='app_step2?demobs='+$("#select-business option:selected").val();
    });

    $("#select-business").change(function (){
        console.log($(this).val());

        var param  = {
            "idx_user":${user.idx_user},
            "idx_user_demo_bs":$(this).val()
        };

        if($(this).val()!=0){
            $.ajax({
                type: 'post',
                url :'user_demo_bs_check', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(param),//보내는 데이터
                contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                dataType:'json',//받는 데이터 타입
                success: function(result){
                    //작업이 성공적으로 발생했을 경우
                    if(result.result_code=="STATUS_001"){
                        //alert("신청할 수 있습니다");
                        $('#btn_app_step2').attr('disabled', false);
                    }
                    else {
                        alert(result.result_str);
                    }
                    //STATUS_001 : 신청한 사업 없음 -> 신규신청 가능
                    //STATUS_002 : 신청을 위해 저장한 사업 있고 신청하지는 않음  -> 변경 가능/신규 생성 가능(기존것 삭제)
                    //STATUS_003 : 신청을 완료한 상태이지만 수정 변경을 요청한 경우 -> 변경 가능/신규 생성 불가
                    //STATUS_004 : 이미 신청완료 되었고 내용 수정 완료됨, 협약 체결 단계-> 변경, 삭제 불가/신규 불가
                },
                error:function(){
                    //에러가 났을 경우 실행시킬 코드
                }
            });
        }
        else
            $('#btn_app_step2').attr('disabled', true);
    });

</script>

</body>
</html>
