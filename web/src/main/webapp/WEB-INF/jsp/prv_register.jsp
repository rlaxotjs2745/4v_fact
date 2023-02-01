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
                        <a href="prv_fee">실증서비스 이용료 예시</a>
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
                        <a href="prv_prepare" class="location__link--anchor ">작성 안내</a>
                        <a href="prv_register" class="location__link--anchor is-selected">신청서 등록</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">신청서 등록/보완</h3>
            <div class="cnt__text">아래 "신청서 등록" 버튼을 선택하면 신청서 작성이 시작됩니다.<br>
                신청 전에 아래의 제출 서류 중, 4~9번 서류를 준비해 주십시오.<br>
                4~9번 서류는 지원자의 상황에 따라 다르며, 사업 공고에 따라 추가되는 서류가 있습니다.<br>
                4~9번 서류와 기타 추가할 서류는 PDF로 준비해 주십시오.<br><br>

                <strong>신청서 마감은 사업공고별로 표시된 마감일 시각이며, 마감일 전에는 등록한 신청서의 수정이 가능합니다.<br>
                    신청서 수정은 포털 사이트 “마이 페이지 / 나의 사업’에서 지원한 사업별로 수정이 가능합니다.</strong></div>

            <div class="fee__container">

                <div class="cnt__title">실증단지 이용 신청서 제출 서류</div>
                <div class="cnt__text">사업별로 제출 서류는 일부 다를 수 있습니다.</div>
                <div class="application__document">
                    <ol>
                        <li>실증단지 이용신청서 1부(필수)</li>
                        <li>실증계획서 1부 (필수)</li>
                        <li>개인정보 수집·이용·제공에 관한 동의서 1부(필수)</li>
                        <li>사업자등록증 사본1부(해당자에 한함)</li>
                        <li>법인등기부등본 1부(해당자에 한함)</li>
                        <li>법인인감증명서 1부(해당자에 한함)</li>
                        <li>4대보험 완납증명서 1부(해당자에 한함)</li>
                        <li>최근 2년간 재무제표 또는 회계감사 보고서 1부(해당자에 한함)</li>
                        <li>기타(가점서류 및 기업역량을 보여줄 수 있는 자료(자유 양식)</li>
                    </ol>
                </div>

                <div class="cnt__btn">
                    <div class="btn__group">
                        <c:if test="${is_login eq true}"><a href="app_step1" class="btn submit btn-jumbo  js-modal-detail">신청서 작성과 등록하기<br></a></c:if>
                        <c:if test="${is_login eq false}"><button id="btn_fileupload" href="void(0);" id="consulting_warning" class="btn submit btn-jumbo  js-modal-detail">신청서 작성과 등록하기<br></button></c:if>

                    </div>
                    <div class="btn__alert"><i class="ico ico-alert"></i>신청서 등록, 보완을 위해서는 로그인 후 이용할 수 있습니다.</div>
                </div>

            </div>
            <!--//-->
        </div>

        <div id="popup_fileupload" class="pop__detail">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>


                <div class="popup__cnt">

                    <h5 class="popup__title">신청서 제출 서류 등록</h5>
                    <br>
                    <div class="popup__scroll--area">
                        <select id="sel_demo_bs" class="drop__down">
                            <option value="0">사업을 선택하세요..</option>
                            <c:forEach items="${demoBsList}" var="item" varStatus="status">
                                <option value="${item.idx_demo_business}">${item.demo_subject}</option>
                            </c:forEach>
                        </select>
                        <div class="table__matter"><span class="text__essential">* 표시는 필수사항 입니다.</span></div>
                        <div class="table__type">

                            <table class="table__type--normal">
                                <colgroup>
                                    <col style="width:30%"></col>
                                    <col style="width:70%"></col>
                                </colgroup>
                                <thead>
                                <tr>
                                    <th>항목</th>
                                    <th>파일</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th class="th__left">[서식 1호] 실증단지 이용신청서 1부<span class="text__essential">*</span></th>
                                    <td class="td__left"><input id="file1" type="file" class="fileupload" accept=".hwp, .pdf, .doc, .ppt"> <span class="text__check">HWP, PDF, DOC, PPT 파일 첨부 가능</span></td>
                                </tr>
                                <tr>
                                    <th class="th__left">[서식 2호] 실증계획서 1부<span class="text__essential">*</span></th>
                                    <td class="td__left"><input id="file2" type="file" class="fileupload" accept=".hwp, .pdf, .doc, .ppt"> <span class="text__check">HWP, PDF, DOC, PPT 파일 첨부 가능</span></td>
                                </tr>
                                <tr>
                                    <th class="th__left">[서식 3호] 개인정보 수집·이용·제공에 <br>관한 동의서 1부<span class="text__essential">*</span></th>
                                    <td class="td__left"><input id="file3" type="file" class="fileupload" accept=".hwp, .pdf, .doc, .ppt"> <span class="text__check">HWP, PDF, DOC, PPT 파일 첨부 가능</span></td>
                                </tr>
                                <tr>
                                    <th class="th__left">사업자등록증 사본1부<span class="text__comment">(해당자에 한함)</span></th>
                                    <td class="td__left"><input id="file4" type="file" class="fileupload" accept=".hwp, .pdf, .doc, .ppt"> <span class="text__check">PDF, JPG, JPEG, PNG 파일 첨부 가능</span></td>
                                </tr>
                                <tr>
                                    <th class="th__left">법인등기부등본 1부<span class="text__comment">(해당자에 한함)</span></th>
                                    <td class="td__left"><input id="file5" type="file" class="fileupload" accept=".hwp, .pdf, .doc, .ppt"> <span class="text__check">PDF, JPG, JPEG, PNG 파일 첨부 가능</span></td>
                                </tr>
                                <tr>
                                    <th class="th__left">법인인감증명서 1부<span class="text__comment">(해당자에 한함)</span></th>
                                    <td class="td__left"><input id="file6" type="file" class="fileupload" accept=".hwp, .pdf, .doc, .ppt"> <span class="text__check">PDF, JPG, JPEG, PNG 파일 첨부 가능</span></td>
                                </tr>
                                <tr>
                                    <th class="th__left">4대보험 완납증명서 1부<span class="text__comment">(해당자에 한함)</span></th>
                                    <td class="td__left"><input id="file7" type="file" class="fileupload" accept=".hwp, .pdf, .doc, .ppt"> <span class="text__check">PDF, JPG, JPEG, PNG 파일 첨부 가능</span></td>
                                </tr>
                                <tr>
                                    <th class="th__left">최근 2년간 재무제표 또는 회계감사 <br>보고서 1부<span class="text__comment">(해당자에 한함)</span></th>
                                    <td class="td__left"><input id="file8" type="file" class="fileupload" accept=".hwp, .pdf, .doc, .ppt"> <span class="text__check">PDF, JPG, JPEG, PNG 파일 첨부 가능</span></td>
                                </tr>
                                <tr>
                                    <th class="th__left">기타(가점서류 및 기업역량을 <br>보여줄 수 있는 자료)<span class="text__comment">(자유 양식)</span></th>
                                    <td class="td__left"><input id="file9" type="file" class="fileupload" accept=".hwp, .pdf, .doc, .ppt"> <span class="text__check">HWP, PDF, DOC, PPT 파일 첨부 가능</span></td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="table__desc">
                                <ul>
                                    <li>서류 등록 후, 변경이 필요한 경우는 ‘실증 안내/신청 > 신청서 작성 > 신청서 등록/보완’ 메뉴 화면의 ‘신청서 보완’ 버튼을 통해 변경하실 수 있습니다.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="popup__btn">
                    <a href="#" class="btn light btn-lg  js-btn-close">제출 취소</a>
                    <button id="btn_file_upload" onclick="upload()" class="btn submit btn-lg" disabled="true">신청서 제출</button>
                </div>

                <!--<div class="form__btn">
                  <a href="#none" class="btn-line js-btn-close">이벤트 참여하기</a>
                </div>-->

            </div>
        </div>

    </div>
</div>

<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>
<script src="resources/assets/js/lib/pace.min.js"></script>
<script>
    $("#btn_fileupload").click(function() {
        var result = confirm('신청하려면 로그인이 필요합니다. 로그인 페이지로 이동하시겠습니까');
        if(result) {
            location.replace('login?redirect=prv_register');
        } else {

        }
    }); //file upload popup

    $("#sel_demo_bs").change(function (){
        if($("#sel_demo_bs option:selected").val()==0){
            $("#btn_file_upload").attr('disabled', true);
        }
        else {

            $.ajax({
                type: 'post',
                url :'join_confirm', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(param),//보내는 데이터
                contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                dataType:'json',//받는 데이터 타입
                success: function(result){
                    //작업이 성공적으로 발생했을 경우
                    if(result.result_code=="SUCCESS"){
                        location.href='join_welcome'
                    }
                    else {
                        alert(result.result_str);
                    }
                },
                error:function(){
                    //에러가 났을 경우 실행시킬 코드
                }
            });






            $("#btn_file_upload").attr('disabled', false);
        }
    });





    // 파일 현재 필드 숫자 totalCount랑 비교값
    var fileCount = 0;
    // 해당 숫자를 수정하여 전체 업로드 갯수를 정한다.
    var totalCount = 8;
    // 파일 고유넘버
    var fileNum = 0;
    // 첨부파일 배열
    var form = $("form")[0];
    const formData = new FormData();
    formData.append('sender', 0);
    formData.append('sender_name', 'abek');
    formData.append('type', 1);


    function upload() {

        if(!$('#file1').val() || !$('#file2').val() || !$('#file3').val()){
            alert("필수 제출 서류가 선택되지 않았습니다");
            return;
        }

        for(var i=1;i<totalCount+1;i++){


            if(!$('#file'+i).value){

            }
            else {
                formData.append('file'+i, $('#file'+i)[0].files[0]);
            }

        }
        $.ajax({
            type:"POST",
            url: "/uploadMultipleFiles",
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            data: formData,
            success: function(rtn){

                alert("신청이 완료되었습니다. 재등록 및 변경은 마이페이지 > 사업관리에서 할수 있습니다.");
                $(".dimed").remove();
                $("#popup_fileupload").removeClass("is-on");
                $('html').css({
                    'overflow': 'auto'
                });
            },
            err: function(err){
                console.log("err:", err);
            }
        })
    }
</script>

</div>
</body>
</html>