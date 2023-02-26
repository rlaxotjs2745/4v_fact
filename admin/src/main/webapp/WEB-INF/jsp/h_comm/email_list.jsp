<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">
    <h5 class="d-flex justify-content-between align-items-center w-100 mt-2">
        <div><i class="pe-7s-way text-success-custom"></i>&nbsp;&nbsp;이메일 목록</div>
    </h5>
    <div class="card px-4 pt-2 mb-2 bg-">
        <div class="form-row mb-4">

            <div class="col-md-5 ">
                <label lass="form-label text-body">전송 상태</label>

                <div class="form-inline">
                    <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons" id="category_change">
                        <label class="btn btn-secondary <c:if test="${filter1 eq 9999}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="0" checked onclick="javascript:pageLoad('email_list',{cur_page:1,filter1:9999,filter2:9998},'이메일 목록');">전체
                        </label>
                        <label class="btn btn-secondary <c:if test="${filter1 eq 1}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="0" onclick="javascript:pageLoad('email_list',{cur_page:1,filter1:0,filter2:9998},'이메일 목록');">전송예약
                        </label>
                        <label class="btn btn-secondary <c:if test="${filter1 eq 2}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="0" onclick="javascript:pageLoad('email_list',{cur_page:1,filter1:0,filter2:9998},'이메일 목록');">전송완료
                        </label>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="card mt-2">
        <div class="card-header font-weight-bold with-elements text-white bg-success">
            <div>이메일 관리</div>
            <div class="card-header-elements ml-auto">
                <button type="button" class="btn btn-sm btn-outline-white font-weight-bold" data-toggle="modal" data-target="#modals-business" data-what="mode-new">삭제</button>
            </div>
        </div>
        <div class="card-datatable table-responsive pt-0 pb-3">
            <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <table id="table_demo_bs" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                            <thead class="bg-light-dark text-white font-weight-bold">
                            <tr role="row">

                                <th class="text-center" style="max-width:5% !important;">번호</th>
                                <th class="text-center" style="max-width:10% !important;">받는사람</th>
                                <th class="text-center" style="max-width:7% !important;">상태</th>
                                <th class="text-center" style="max-width:15% !important;">보낸 시간</th>
                                <th class="text-center" style="max-width:20% !important;">제목</th>
                                <th class="text-center" style="max-width:35% !important;">내용</th>
                                <th class="" style="width:3%; vertical-align: center"><input class="text-center" type="checkbox" value=""></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${reservedMails}" var="mail" varStatus="status">
                                <tr class="" name="${mail.idx_mail_reserved}">
                                    <td class="text-center">${status.count}</td>
                                    <td class="">${mail.receiver}</td>
                                    <td class="text-center">${mail.status}</td>
                                    <td class="text-left">${mail.sendTime}</td>
                                    <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-business" data-what="mode-view">${mail.title}</a></td>
                                    <td class="text-center">${mail.content.length() > 20 ? mail.content.substring(0,20) + "..." : mail.content}</td>
                                    <td class=""><input class="text-center" type="checkbox" value=""></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <c:if test="${total_count ne 0}">
                    <div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div class="dataTables_info" role="status" aria-live="polite">총 ${total_count}개
                                중 ${list_amount*(cur_page-1)+1}에서 <c:choose><c:when
                                        test="${(list_amount*(cur_page-1)+list_amount)>total_count}">${total_count}</c:when><c:otherwise>${(list_amount*(cur_page-1)+list_amount)}</c:otherwise></c:choose>까지
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                                <ul class="pagination">
                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('email_list',{cur_page:1,filter1:'${filter1}', filter2:'${filter2}'},'이메일 목록');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('email_list',{cur_page:'${cur_page-1}',filter1:'${filter1}',filter2:'${filter2}'},'이메일 목록');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>

                                    <c:forEach var="i" begin="1" end="${remain_page}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('email_list',{cur_page:'${(cur_sector-1)*page_amount+i}',filter1:'${filter1}',filter2:'${filter2}'},'이메일 목록');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>

                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('email_list',{cur_page:'${cur_page+1}',filter1:'${filter1}',filter2:'${filter2}'},'이메일 목록');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('email_list',{cur_page:'${tot_page}',filter1:'${filter1}',filter2:'${filter2}'},'이메일 목록');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </c:if>
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
                            <div class="form-control-plaintext mode-view modal-title-view">제목제목제목제목 1</div>
                            <input type="text" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">받는 사람</label>
                        <div class="col-md-10 mode-view">
                            <div class="form-control-plaintext mode-view modal-receiver-view">자세히 보기</div>
                        </div>
                    </div>

                    <div class="form-row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">파일 첨부</label>
                        <div class="form-group col col-md-10 mode-edit mode-new">
                            <input type="file" class="form-control-file d-block py-1">
                        </div>
                        <div class="form-group col col-md-10 col-form-label mode-view modal-file-view">
                            <a href="file.doc">공고문.pdf</a>
                            <a href="file.doc">공고문 상세.pdf</a>
                        </div>
                    </div>

                    <div class="form-row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">보내는 시간</label>
                        <div class="form-group col col-md-10">
                            <div class="form-control-plaintext mode-view modal-date-view">22.12.12 12:12:12</div>

                            <div id="datepicker-show" class="input-daterange input-group mode-edit mode-new">
                                <input type="text" class="form-control mr-1" name="start">
                                <input type="text" class="form-control" placeholder="9:00 AM" id="flatpickr-time-start">
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">내용</label>
                        <div class="form-group col col-md-10 mode-view modal-content-view" style="min-height: 150px; border: 1px solid #f5f5f5; border-radius: 2px">
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
<%@include file ="../layouts/frame_footer.jsp" %>
<script>
    var modelReservedMails = '${reservedMails}';
    // console.log(modelReservedMails);
    var modelArr = [];
    <c:forEach items="${reservedMails}" var="mail">
    modelArr.push({
        idx_mail_reserved: "${mail.idx_mail_reserved}",
        receiver: "${mail.receiver}",
        status: "${mail.status}",
        sendTime:"${mail.sendTime}",
        title: "${mail.title}",
        content: "${mail.content}",
        idx_mail_template: "${mail.idx_mail_template}"
    })
    </c:forEach>

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


        $('#datepicker-show,#datepicker-open').datepicker({
            orientation: 'auto left',
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
