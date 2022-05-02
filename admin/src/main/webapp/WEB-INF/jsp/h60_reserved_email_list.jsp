<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">
    <h4 class="font-weight-bold py-3 mb-4">예약된 이메일</h4>

    <div class="card mt-4">
        <h6 class="card-header font-weight-bold with-elements">
            <div class="card-header-title">예약 이메일 총 00건</div>
            <div class="card-header-elements ml-auto">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modals-business" data-what="mode-new">삭제</button>
            </div>
        </h6>
        <div class="card-datatable table-responsive pt-0 pb-3">
            <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <table id="table_demo_bs" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                            <thead class="bg-success text-white font-weight-bold">
                            <tr role="row">
                                <th class="" style="width:3%; vertical-align: center"><input class="text-center" type="checkbox" value=""></th>
                                <th class="text-center" style="max-width:5% !important;">번호</th>
                                <th class="text-center" style="max-width:10% !important;">받는사람</th>
                                <th class="text-center" style="max-width:7% !important;">상태</th>
                                <th class="text-center" style="max-width:15% !important;">보낸 시간</th>
                                <th class="text-center" style="max-width:20% !important;">제목</th>
                                <th class="text-center" style="max-width:35% !important;">내용</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${reservedMails}" var="mail" varStatus="status">
                                <tr class="">
                                    <td class=""><input class="text-center" type="checkbox" value=""></td>
                                    <td class="text-center">${status.count}</td>
                                    <td class="">${mail.receiver}</td>
                                    <td class="text-center">${mail.status}</td>
                                    <td class="text-left">${mail.sendTime}</td>
                                    <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-business" data-what="mode-view">${mail.title}</a></td>
                                    <td class="text-center">${mail.content.length() > 20 ? mail.content.substring(0,20) + "..." : mail.content}</td>
                                </tr>
                            </c:forEach>
                            <tr class="">
                                <td class=""><input class="text-center" type="checkbox" value=""></td>
                                <td class="text-center">1</td>
                                <td class="">1</td>
                                <td class="text-center">1</td>
                                <td class="text-left">1</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-business" data-what="mode-view">1</a></td>
                                <td class="text-center">1</td>
                            </tr>
                            <tr class="">
                                <td class=""><input class="text-center" type="checkbox" value=""></td>
                                <td class="text-center">2</td>
                                <td class="">taeseon@4thevision.com</td>
                                <td class="text-center">발송대기</td>
                                <td class="text-left">2022.04.26 00:00</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-business" data-what="mode-view">제목을 무엇으로 정하는 것이 좋을지 묻는 것에 관한 건</a></td>
                                <td class="text-center">제목을 무엇으로 정해야할 지 모르겠다면 대답해드리는 것이 인지 상정! 이세계의 파괴를 막기 위해! 이세계의 평화를 지키기 위해! 사랑과 진실, 어둠을 뿌리고 다니는 포켓몬의 감초 귀업둥이 악당! 나 로사! 나 로이! 우주를 뛰어다니는 우리 로켓단들에겐! 아름다운 미래, 밝은 내일이 기다리고 있다! 난 나옹이다옹! 마자~용!</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-5">
                        <div class="dataTables_info" id="article-list_info" role="status" aria-live="polite">총 50개 중 1에서 10까지</div>
                    </div>
                    <div class="col-sm-12 col-md-7">
                        <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                            <ul class="pagination">
                                <li class="paginate_button page-item previous disabled" id="article-list_previous"><a href="javascript:load('h60_reserved_email_list?tag=1','예약된 이메일');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li>
                                <li class="paginate_button page-item active"><a href="javascript:load('h60_reserved_email_list?tag=1','예약된 이메일');" aria-controls="article-list" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
                                <li class="paginate_button page-item "><a href="javascript:load('h60_reserved_email_list?tag=2','예약된 이메일');" aria-controls="article-list" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                <li class="paginate_button page-item "><a href="javascript:load('h60_reserved_email_list?tag=3','예약된 이메일');" aria-controls="article-list" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
                                <li class="paginate_button page-item "><a href="javascript:load('h60_reserved_email_list?tag=4','예약된 이메일');" aria-controls="article-list" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                                <li class="paginate_button page-item "><a href="javascript:load('h60_reserved_email_list?tag=5','예약된 이메일');" aria-controls="article-list" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                                <li class="paginate_button page-item next" id="article-list_next"><a href="#" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<div class="modal fade" id="modals-business">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header bg-success">
                <h5 class="modal-title text-white font-weight-bold mode-view">예약 이메일</h5>
                <h5 class="modal-title text-white font-weight-bold mode-edit d-none">예약 이메일 수정</h5>
                <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
            </div>
            <div class="modal-body">
                <form>
                    <!-- 제목 -->
                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">제목</label>
                        <div class="col-md-10">
                            <div class="form-control-plaintext mode-view">제목제목제목제목 1</div>
                            <input type="text" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">받는 사람</label>
                        <div class="col-md-10 mode-view">
                            <div class="form-control-plaintext mode-view">자세히 보기</div>
                        </div>
                    </div>

                    <div class="form-row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">파일 첨부</label>
                        <div class="form-group col col-md-10 mode-edit mode-new">
                            <input type="file" class="form-control-file d-block py-1">
                        </div>
                        <div class="form-group col col-md-10 col-form-label mode-view">
                            <a href="file.doc">공고문.pdf</a>
                            <a href="file.doc">공고문 상세.pdf</a>
                        </div>
                    </div>

                    <div class="form-row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">보내는 시간</label>
                        <div class="form-group col col-md-10">
                            <div class="form-control-plaintext mode-view">22.12.12 12:12:12</div>

                            <div id="datepicker-show" class="input-daterange input-group mode-edit mode-new">
                                <input type="text" class="form-control mr-1" name="start">
                                <input type="text" class="form-control" placeholder="9:00 AM" id="flatpickr-time-start">
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">내용</label>
                        <div class="form-group col col-md-10 mode-view" style="min-height: 150px; border: 1px solid #f5f5f5; border-radius: 2px">
                            내용
                        </div>
                        <div class="col-md-10 mode-edit mode-new">
                            <div class="summernote"></div>
                        </div>
                    </div>

                    <div class="modal-footer justify-content-between mode-view">
                        <div>
                            <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">닫기</button>
                            <button type="button" class="btn btn-secondary">지금 보내기</button>
                        </div>

                        <div>
                            <button id="btn_edit_mode" type="button" class="btn btn-primary">수정</button>
                        </div>

                    </div>

                    <div class="modal-footer justify-content-between mode-edit d-none">
                        <div>
                            <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">변경 취소</button>
                            <button type="button" class="btn btn-secondary">지금 보내기</button>
                        </div>
                        <div>
                            <button type="button" class="btn btn-primary">저장</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
<%@include file ="layouts/frame_footer.jsp" %>
<script>
    console.log("${reservedMails}")
    // $(document).ready(() => {
    //     $.ajax({
    //         type: 'get',
    //         url :'/reserved_mail', //데이터를 주고받을 파일 주소 입력
    //         dataType:'json',//받는 데이터 타입
    //         success: function(result){
    //             console.log(result);
    //             // alert("메일 전송이 완료되었습니다.", () => window.redirect("/"))
    //         },
    //         error:function(err){
    //             console.log(err);
    //         }
    //     });
    // })
    <%--$('tbody').append(--%>
    <%--    $('tr')--%>
    <%--        .append($('td').append($('input').addClass('text-center').attr("type", "checkbox").attr("value", "")))--%>
    <%--        .append($('td').addClass("text-center")).append(i+1) //번호--%>
    <%--        .append($('td')).append(${reservedMails}[i].receiver) //받는 사람--%>
    <%--        .append($('td').addClass("text-center")).append(${reservedMails}[i].status) // 상태--%>
    <%--        .append($('td').addClass("text-left")).append(${reservedMails}[i].sendTime) // 보낸 시간--%>
    <%--        .append($('td').addClass("text-center").append($('a').attr("href", "#none").attr("data-toggle", "modal").attr("data-target", "#modals-business").attr("data-what", "mode-view").append(${reservedMails}[i].title))) //제목--%>
    <%--        .append($('td').addClass("text-center")).append(${reservedMails}[i].constent) //내용--%>
    <%--)--%>




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
        height: 300                 // 에디터 높이
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
    $('#btn_edit_mode').on('click', function() {

        //$('.mode-edit').removeClass('d-non');
        //$('.mode-view').addClass('d-non');
        if($('.mode-view').hasClass('d-none') == false){
            $('.mode-view').addClass('d-none');
        }

        if($('.mode-edit').hasClass('d-none') == false){
            console.log("실행했어요..")
            $('.mode-edit').addClass('d-none');
        }

        if($('.mode-new').hasClass('d-none') == false){
            $('.mode-new').addClass('d-none');
        }

        $('.mode-edit').removeClass('d-none');
    });

    $(function() {

        /*$('#btn_mode_new').on('click', function() {

            if($('.mode-view').hasClass('d-non') === false){
                $('.mode-view').addClass('d-non');
            }
            if($('.mode-edit').hasClass('d-non') === false){
                $('.mode-edit').addClass('d-non');
            }
            if($('.mode-new').hasClass('d-non') === true){
                $('.mode-new').removeClass('d-non');
            }

            $('#modals-business').modal('show');


        });*/

        // 모달 팝업 띄울 시 발생하는 이벤트 (이벤트명 : show.bs.modal)
        $('#modals-business').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget);
            var what = button.data('what');
            if(what=='mode-view' || what=='mode-edit'||what=='mode-new'){
                console.log("시작");
                if($('.mode-view').hasClass('d-none') == false){
                    $('.mode-view').addClass('d-none');
                }

                if($('.mode-edit').hasClass('d-none') == false){
                    console.log("실행했어요..")
                    $('.mode-edit').addClass('d-none');
                }

                if($('.mode-new').hasClass('d-none') == false){
                    $('.mode-new').addClass('d-none');
                }

                $('.'+what+'').removeClass('d-none');
                console.log(what);
            }



            // 모달 팝업에 데이터 집어넣기
            //var modal = $(this);
            //modal.find('.modal-title').text('New message to ' + what)
            //modal.find('.modal-body input').val(what)
        })
    });



</script>
<!-- / Page content -->
