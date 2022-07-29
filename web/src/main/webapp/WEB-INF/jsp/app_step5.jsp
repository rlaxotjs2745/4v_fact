<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/12/14
  Time: 11:19 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko" class="html-popup">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SMART FARM</title>
    <link rel="shortcut icon" href="resources/assets/image/favicon_16.ico">
    <link rel="icon" href="resources/assets/image/favicon_16.png">
    <link rel="apple-touch-icon-precomposed" href="resources/assets/image/favicon_152.png">
    <link rel="stylesheet" type="text/css" href="resources/assets/css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="resources/assets/css/style.css">
</head>
<body>
<div class="wrapper" id="wrapper">
    <header class="header_app">
        <a href="/prv_application" class="close_window" onclick="javascript:window.close();"><img src="resources/assets/image/ico_close.svg" alt=""></a>
<%--        <h1><a href="/"><img src="resources/assets/image/img-logo-s.png" alt="스마트팜 실증센터"></a></h1>--%>
        <h1><a href="/"><img src="resources/assets/image/h1_logo_gimje.png" alt="스마트팜 실증센터"></a></h1>
        <h2>신청서 작성</h2>
        <div class="app__step">
            <div class="step is-passed">
                <em>1.</em>
                <span>지원사업 선택</span>
            </div>
            <div class="step is-passed">
                <em>2.</em>
                <span>이용신청서 작성</span>
            </div>
            <div class="step is-passed">
                <em>3.</em>
                <span>실증계획서 작성</span>
            </div>
            <div class="step is-passed">
                <em>4.</em>
                <span>개인정보 수집 동의서 작성</span>
            </div>
            <div class="step is-active">
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
            <select name="business" id="select-business" disabled>
                <option value="">${demoBs.demo_subject}</option>
            </select>
        </div>
    </header>
    <div class="content_app" id="content_app">
        <!--//-->
        <div class="app__body">
            <div class="app__cnt">
                <h3>기타 서류 등록</h3>
                <div class="app__etc">
                    <p class="etc__title">안내</p>
                    <ul>
                        <li>- 기타 서류는 해당자에 한하거나, 신청자의 필요에 따라 등록할 수 있습니다.</li>
                        <li>- 사업 공고를 확인하셔서 해당되는 서류는 첨부해 주십시오.</li>
                        <li>- 첨부 파일의 항목이 없는 경우는 “기타” 항목으로 올려주십시오.</li>
                        <li>- 기타 항목에 첨부할 파일이 여러 파일인 경우는 ZIP파일로 올려주십시오.</li>
                        <li>- 모든 파일은 PDF로 등록해 주십시오.</li>
                    </ul>
                </div>

                <div class="app__fileupload">
                    <div class="fileupload__title" >사업자등록증 사본 (해당자에 한함)</div>
                    <input type="file" id="bs_license" class="fileupload" value="">
                    <a id="bs_license_title" class="text-info"></a>
                </div>
                <div class="app__fileupload">
                    <div class="fileupload__title">등기부등본 사본 (해당자에 한함, 원본은 차후 요청시,제출해 주십시오.)</div>
                    <input type="file" id="corp_register" class="fileupload">
                    <a id="corp_register_title" class="text-info"></a>
                </div>
                <div class="app__fileupload">
                    <div class="fileupload__title">법인인감증명서 (해당자에 한함, 원본은 차후 요청시,제출해 주십시오.)</div>
                    <input type="file" id="corp_sign" class="fileupload">
                    <a id="corp_sign_title" class="text-info"></a>
                </div>
                <div class="app__fileupload">
                    <div class="fileupload__title">4대보험 완납증명서 (해당자에 한함, 원본은 차후 요청시,제출해 주십시오.)</div>
                    <input type="file" id="insure_cert" class="fileupload">
                    <a id="insure_cert_title" class="text-info"></a>
                </div>
                <div class="app__fileupload">
                    <div class="fileupload__title" >최근 2년간 재무제표 또는 회계감사 보고서 (해당자에 한함, 원본은 차후 요청시,제출해 주십시오.)</div>
                    <input type="file" id="fine_state" class="fileupload">
                    <a id="fine_state_title" class="text-info"></a>
                </div>
                <div class="app__fileupload">
                    <div class="fileupload__title" >기타 (가점서류 및 기업역량을 보여줄 수 있는 자료, 자유 양식)</div>
                    <input type="file" id="other_data" class="fileupload">
                    <a id="other_data_title" class="text-info"></a>
                </div>

            </div>
        </div>
    </div>
    <div class="footer_app">
        <div class="footer__btn">
            <button id="btn_app_step4" class="btn info btn-lg fl-left">이전</button>
            <button id="btn_save" class="btn dark btn-lg">임시저장</button>
            <button id="btn_app_step6" class="btn submit btn-lg" disabled>다음</button>
        </div>
    </div>
</div>

<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>
<script>
    var fileArr = [];

    <c:forEach items="${fileArr}" var="file">
    if("${file.file_type}" == "3") {
        $("#bs_license_title").text("제출 완료: ${file.fileInfoVO.file_name}").attr("href", "${file.fileInfoVO.file_path}");
    }
    if("${file.file_type}" == "4") {
        $("#corp_register_title").text("제출 완료: ${file.fileInfoVO.file_name}").attr("href", "${file.fileInfoVO.file_path}");
    }
    if("${file.file_type}" == "5") {
        $("#corp_sign_title").text("제출 완료: ${file.fileInfoVO.file_name}").attr("href", "${file.fileInfoVO.file_path}");
    }
    if("${file.file_type}" == "6") {
        $("#insure_cert_title").text("제출 완료: ${file.fileInfoVO.file_name}").attr("href", "${file.fileInfoVO.file_path}");
    }
    if("${file.file_type}" == "7") {
        $("#fine_state_title").text("제출 완료: ${file.fileInfoVO.file_name}").attr("href", "${file.fileInfoVO.file_path}");
    }
    if("${file.file_type}" == "8") {
        $("#other_data_title").text("제출 완료: ${file.fileInfoVO.file_name}").attr("href", "${file.fileInfoVO.file_path}");
    }
    </c:forEach>


    $("#btn_app_step6").click(function(){
        var param  = {
            "idx_user":${userDemoBs.idx_user},
            "idx_demo_business":${userDemoBs.idx_demo_business}
        };
        goNextStep(param,'app_step6');
    });

    $("#btn_app_step4").click(function(){
        var param  = {
            "idx_user":${userDemoBs.idx_user},
            "idx_demo_business":${userDemoBs.idx_demo_business}
        };
        goNextStep(param,'app_step4');
    });

    $("#btn_save").click(function(){

        if (!confirm("저장하시겠습니까.")) {
            // 취소(아니오) 버튼 클릭 시 이벤트

        } else {
            // 확인(예) 버튼 클릭 시 이벤트
            save_temp();
            $('#btn_app_step6').attr('disabled', false);

        }


    });

    function save_temp(){
        var fileForm = new FormData();
        fileForm.append("sender", "${userDemoBs.idx_user}");
        fileForm.append("bs_idx", "${userDemoBs.idx_user_demo_bs}");
        if(document.querySelector('#bs_license').files[0]){
            fileForm.append("file1", document.querySelector('#bs_license').files[0]);
        }
        if(document.querySelector('#corp_register').files[0]){
            fileForm.append("file2", document.querySelector('#corp_register').files[0]);
        }
        if(document.querySelector('#corp_sign').files[0]){
            fileForm.append("file3", document.querySelector('#corp_sign').files[0]);
        }
        if(document.querySelector('#insure_cert').files[0]){
            fileForm.append("file4", document.querySelector('#insure_cert').files[0]);
        }
        if(document.querySelector('#fine_state').files[0]){
            fileForm.append("file5", document.querySelector('#fine_state').files[0]);
        }
        if(document.querySelector('#other_data').files[0]){
            fileForm.append("file6", document.querySelector('#other_data').files[0]);
        }

        $.ajax({
            type: 'post',
            url :'app_step5_save_docs', //데이터를 주고받을 파일 주소 입력
            data: fileForm,//보내는 데이터
            contentType: false,//보내는 데이터 타입
            processData: false,//Jquery 내부에서 파일을 queryString 형태로 전달하는 것을 방지
            dataType:'json',//받는 데이터 타입
            enctype: 'multipart/form-data',
            success: function(result){
                alert(result.result_str);
            },
            error:function(err){
                console.log(err);
            }
        });
    }


    function goNextStep(param,location){
        let f = document.createElement('form');

        let input_idx_user;
        input_idx_user = document.createElement('input');
        input_idx_user.setAttribute('type', 'hidden');
        input_idx_user.setAttribute('name', 'idx_user');
        input_idx_user.setAttribute('value', param.idx_user);

        f.appendChild(input_idx_user);

        let input_idx_demo_business;
        input_idx_demo_business = document.createElement('input');
        input_idx_demo_business.setAttribute('type', 'hidden');
        input_idx_demo_business.setAttribute('name', 'idx_demo_business');
        input_idx_demo_business.setAttribute('value', param.idx_demo_business);

        f.appendChild(input_idx_demo_business);


        f.setAttribute('method', 'post');
        f.setAttribute('action', location);
        document.body.appendChild(f);
        f.submit();
    }

    var saveNewBtn = document.querySelectorAll('.btn_save_new');
    saveNewBtn.forEach(btn=>btn.addEventListener('click', saveForm));

    function saveForm(){
        event.preventDefault();
        var fileForm = new FormData();
        fileForm.append("subject",document.querySelector('#subject').value);


        var files = document.querySelector('#file_upload').files;


        for(var i = 0; i < files.length; i++){
            var num = i + 1;
            fileForm.append("files" + num, files[i]);
        }
        fileForm.append("fileLength", files.length);

        $.ajax({
            type: 'post',
            url :'upload_app_step5_file', //데이터를 주고받을 파일 주소 입력
            data: fileForm,//보내는 데이터
            contentType: false,//보내는 데이터 타입
            processData: false,//Jquery 내부에서 파일을 queryString 형태로 전달하는 것을 방지
            dataType:'json',//받는 데이터 타입
            enctype: 'multipart/form-data',
            success: function(result){
                console.log(result);
                alert("업로드에 성공했습니다", () => window.redirect("/"))
            },
            error:function(err){
                console.log(err);
                alert("업로드에 실패했습니다")
            }
        });
        // event.preventDefault();
    }


</script>
</body>
</html>