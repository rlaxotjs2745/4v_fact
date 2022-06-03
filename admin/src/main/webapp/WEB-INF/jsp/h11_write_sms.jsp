<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">
    <h4 class="font-weight-bold py-3 mb-4">SMS 작성</h4>
    <div class="card px-4 pt-4 mb-4">
        <div>
            <form name="smssend" method="post" >
                <div class="form-row">
                    <span id="counter">글자수:###</span>
                    <br>
                    <div class="form-group col col-md-10">
                        <input id="subject" type="text" class="form-control form-control-md mode-edit mode-new" placeholder="제목">
                    </div>
                </div>
                <div class="form-row">
                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold" id="sms"></label>
                    <div class="form-group col col-md-10">
                        <textarea id="sms_msg" maxlength="80" class="form-control mode-edit mode-new" rows="3"></textarea>
                        <%--    <textarea style="height:300px; resize: none;" maxlength="200" placeholder="텍스트를 입력하세요."> </textarea>--%>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit mode-new">보내는 전화번호</label>
                    <div class="col-md-6 mode-edit mode-new">
                        <input id="callback" type="text" class="form-control form-control-md text-md-right" placeholder="010부터작성">
                    </div>
                </div>
                <br>
                <div class="form-group row">
                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit mode-new">보내는 사람</label>
                    <div class="col-md-6 mode-edit mode-new">
                        <label for="user_id"></label><input id="user_id" type="text" class="form-control form-control-md text-md-right" placeholder="보내는사람">
                    </div>
                </div>
                <br>
                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit mode-new">예약여부</label>
                <label><input id="send_now" type="checkbox" name="sendtype" value="1" > 바로보내기</label>
                <label><input id="send_reserve" type="checkbox" name="sendtype" value="2" > 보내기 예약</label>
                <br>
                <div class="form-group row">
                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit mode-new">예약일시</label>
                    <div class="col-md-10">
                        <div id="datepicker-show" class="input-daterange input-group mode-edit mode-new">
                            <input id ="date" type="text" class="form-control mr-1" name="start">
                            <input type="text" class="form-control" placeholder="9:00 AM" id="flatpickr-time-start">

                        </div>
                    </div>
                </div>
                <div>
                    <button type="button" class="btn btn-outline-dark mr-2 sms_cancel" data-dismiss="modal">취소</button>
                    <button type="button" class="btn btn-primary sms_send" id ="send" onclick="event_pass();">보내기예약 여기서 이벤트 발생</button>
                </div>
                <div class="col-md ">
                    <label class="form-label text-muted">받는사람 선택</label>
                    <div class="form-inline">
                        <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio" checked="">직접입력
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio"> 조건 검색
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio"> 고객 명단 검색
                            </label>
                            <div class="form-group col col-md-10">
                                <input id="dest_info" type="text" class="form-control form-control-md mode-edit mode-new" placeholder="받는사람">
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <script>


                $(function() {
                    var isRtl = $('html').attr('dir') === 'rtl';

                    $('#datepicker-show,#datepicker-open').datepicker({
                        orientation: isRtl ? 'auto right' : 'auto left',
                        format: "yyyymmdd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
                        startDate: '-10d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
                        language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
                    });


                });
                $(function () {
                    // Time
                    $('#flatpickr-time-start').flatpickr({
                        dateFormat: "Hi",
                        enableTime: true,
                        noCalendar: true,
                        altInput: true,
                        static:true
                    });
                });

                // $.ajax({
                //     url: '/sms',
                //     type: 'post',
                //     data: {"": "값"},
                //     success: function (data) {
                //         alert("데이터전송 성공");
                //     },
                //     error: function (error) {
                //         alert("에러");
                //     }
                // })

                $(document).ready(function() {
                    $('input[type="checkbox"][name="sendtype"]').click(function(){
                        if($(this).prop('checked')){
                            $('input[type="checkbox"][name="sendtype"]').prop('checked',false);
                            $(this).prop('checked',true);
                        }
                    });
                });


                $(function() {
                    $('#sms_msg').keyup(function (e){
                        var sms_msg = $(this).val();
                        $(this).height(((sms_msg.split('\n').length + 1) * 1.5) + 'em');
                        $('#counter').html(sms_msg.length + '/80');
                    });
                    $('#sms_msg').keyup();
                });

                // var smsSendBtn =document.querySelectorAll('.sms_send');
                // smsSendBtn.forEach(btn => btn.addEventListener('click',smsSendBtn));
                // $(document).ready(function())
                function event_pass() {
                    //      var f = document.sms_send;
                    var regExp_tel = /^01\d-?\d{3,4}-?\d{4}$/;
                    //      var user_id =$(".user_id").val();
                    //      var schedule_type =$("#send_now").val();
                    //      var subject =$("#subject").val();
                    //      var now_date =$("#date").val()+$("#flatpickr-time-start");
                    //      var send_date =$("#send_date").val();
                    //      var callback =$("#callback").val();
                    //      var dest_count =$("#dest_count").val();
                    //      var dest_info =$("#dest_info").val();
                    //      var sms_msg = $("#sms_msg").val();


                    var user_id =$('#user_id').val();
                    var schedule_type =$('#send_now').val();
                    var subject =$('#subject').val();
                    var now_date = $('#now_date').val();
                    var send_date =$('#date').val() +$('#flatpickr-time-start').val();
                    var callback =$('#callback').val();
                    //     var dest_count =$('#dest_count').val();
                    var dest_info =$('#dest_info').val();
                    var sms_msg =$('#sms_msg').val();


                    $.ajax({
                        type: "POST",
                        url: "/sms",
                        data:JSON.stringify( {
                            "user_id": user_id,
                            "schedule_type": schedule_type,
                            "subject": subject,
                            "now_date": now_date,
                            "send_date": send_date,
                            "callback": callback,
                            //  "dest_count": dest_count,
                            "dest_info": dest_info,
                            "sms_msg": sms_msg,
                        }),
                        contentType:"application/json; charset=utf-8",
                        //  contentType: "application/json",
                        dataType: "json",
                        success: function (json) {
                            if (json) {
                                if (json.result === true) {
                                    alert("성공.");
                                    f.reset();
                                }
                            }
                            console.log(JSON.stringify( {
                                "user_id": user_id,
                                "schedule_type": schedule_type,
                                "subject": subject,
                                "now_date": now_date,
                                "send_date": send_date,
                                "callback": callback,
                                //  "dest_count": dest_count,
                                "dest_info": dest_info,
                                "sms_msg": sms_msg,
                            }));
                            console.log(schedule_type)
                        }
                    });
                }
            </script>


            <!-- Layout footer -->
            <%@include file ="layouts/frame_footer.jsp" %>
            <!-- / Layout footer -->
            <!-- / Page content -->