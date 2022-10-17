<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form id="email_form">
    <div class="container-fluid flex-grow-1 container-p-y">
        <h4 class="font-weight-bold py-3 mb-4">이메일 발송</h4>
    </div>

    <div class="form-group row">
        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">받는 사람</label>
        <div class="col-md-10">
            <input type="text" id="email_receiver" name="email_receiver" class="form-control form-control-md mode-edit mode-new" placeholder="받는 분의 이메일을 입력해주세요.">
        </div>
    </div>

    <div class="form-group row">
        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold" ">제목</label>
        <div class="col-md-10">
            <input type="text" id="email_title" name="email_title" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요">
        </div>
    </div>

    <div class="form-row">
        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold" for="email_file">파일 첨부</label>
        <div class="form-group col col-md-10 mode-edit mode-new">
            <input type="file" name="email_file" id="email_file" class="form-control-file d-block py-1" multiple>
            <div>최대 5개 파일, 200MB까지 첨부가 가능합니다.</div>
            <%--                <input type="file" class="form-control-file d-block py-1">--%>
        </div>
        <%--                <div class="form-group col col-md-10 col-form-label mode-view">--%>
        <%--                <a href="file.doc">공고문 상세.pdf</a>--%>
        <%--                    </div>--%>
    </div>

    <div class="form-group row">
        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">내용</label>
        <div class="col-md-10 mode-edit mode-new">
            <div style="background-color: #ffffff">
                <textarea id="email_content" name="email_content" class="summernote"></textarea>
            </div>
        </div>
        <div class="col-md-10 mode-view">
            <%--                <div class="form-control-plaintext mode-view">자세히 보기</div>--%>
        </div>
    </div>


    <div class="modal-footer justify-content-between mode-new">
        <div>
            <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
            <button type="button" class="btn btn-outline-primary mr-2">보내기 예약</button>
            <button type="submit" class="btn btn-primary send_mail" >바로 보내기</button>
<%--            <button type="submit" class="btn btn-primary send_mail" >바로 보내기<img src="https://acegif.com/wp-content/uploads/loading-34.gif" style="width: 20px"></button>--%>
        </div>

        <div>
        </div>
    </div>
</form>
<%@include file ="layouts/frame_footer.jsp" %>
<script>
    var sendMailBtn = document.querySelectorAll('.send_mail');
    sendMailBtn.forEach(btn=>btn.addEventListener('click', sendMailNow));

    var send = 0;

    function sendMailNow(){
        if(send){
            return alert('메일 전송 중입니다.');
        }
        send = 1;
        event.preventDefault();
        var fileForm = new FormData();
        fileForm.append("receiver",document.querySelector('#email_receiver').value);
        fileForm.append("title",document.querySelector('#email_title').value);
        fileForm.append("content", document.querySelector('#email_content').value);

        var files = document.querySelector('#email_file').files;
        for(var i = 0; i < files.length; i++){
            var num = i + 1;
            fileForm.append("files" + num, files[i]);
        }
        fileForm.append("fileLength", files.length);

        $.ajax({
            type: 'post',
            url :'send_mail', //데이터를 주고받을 파일 주소 입력
            data: fileForm,//보내는 데이터
            contentType: false,//보내는 데이터 타입
            processData: false,//Jquery 내부에서 파일을 queryString 형태로 전달하는 것을 방지
            dataType:'json',//받는 데이터 타입
            enctype: 'multipart/form-data',
            success: function(result){
                console.log(result);
                send = 0;
                alert("메일 전송이 완료되었습니다.", () => window.redirect("index"))
            },
            error:function(err){
                console.log(err);
                send = 0;
            }
        });
    }
    $('.summernote').summernote({
        toolbar: [
            // [groupName, [list of button]]
            ['fontname', ['fontname']],
            ['fontsize', ['fontsize']],
            ['style', ['bold', 'italic', 'underline']],
            ['color', ['color']],
            ['table', ['table']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['height', ['height']],
            ['insert',['picture','link']],
            ['view', ['fullscreen','codeview']],
        ],
        fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
        fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
        height: 300,               // 에디터 높이
        lang: "ko-KR"
    });

    $(function() {
        var isRtl = $('html').attr('dir') === 'rtl';

        $('#datepicker-show,#datepicker-open').datepicker({
            orientation: isRtl ? 'auto right' : 'auto left',
            format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
            startDate: '-10d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
            language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
        });


    });
    $(function () {
        // Time
        $('#flatpickr-time-start,#flatpickr-time-end').flatpickr({
            enableTime: true,
            noCalendar: true,
            altInput: true,
            static:true
        });
    });

    $(function() {

    })
</script>