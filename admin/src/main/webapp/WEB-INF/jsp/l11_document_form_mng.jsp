<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
        <div>양식문서 관리</div>
    </h4>

    <div class="card">
        <h6 class="card-header with-elements">
            <div class="card-header-title">양식 문서 목록</div>
            <div class="card-header-elements ml-auto">
                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modals-default">+ 서식 등록</button>
            </div>
        </h6>
        <div class="card-datatable table-responsive pt-0 pb-3">
            <div id="table-list" class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <table id="" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="" data-minimum-count-columns="10" >
                            <thead class="bg-success text-white font-weight-bold">
                            <tr role="row">
                                <th class="text-center px-2" style="width:6%">순서</th>
                                <th class="text-center px-2" style="width:4%">표시</th>
                                <th class="text-center sorting" style="width:10%">소속</th>
                                <th class="text-center sorting" style="width:10%">성명</th>
                                <th class="text-center sorting" style="width:auto">담당 업무</th>
                                <th class="text-center sorting" style="width:10%">직위</th>
                                <th class="text-center sorting" style="width:16%">전화번호</th>
                                <th class="text-center px-2" style="width:16%">이메일</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%--<c:choose>
                                <c:when test="${fn:length(coWorkerVOList)>0}">
                                    <c:forEach items = "${coWorkerVOList}" var ="coworker">
                                        <tr class="">
                                            <td class="text-center">${coworker.co_worker_oder}</td>
                                            <td class="text-center" name="checkbox">
                                                <label class="form-check">
                                                    <input type="checkbox" class="form-check-input" <c:if test="${coworker.is_show eq 1}">checked</c:if>>
                                                </label>
                                            </td>
                                            <td class="text-center">${coworker.devision}</td>
                                            <td class="text-center">${coworker.coworker_name}</td>
                                            <td class="text-center">${coworker.job_role}</td>
                                            <td class="text-center">${coworker.job_title}</td>
                                            <td class="text-center">${coworker.tel_num}</td>
                                            <td class="text-center">${coworker.email}</td>

                                        </tr>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>

                                    <tr class="">
                                        <td colspan="8" class="text-center">아이템이 없어요</td>
                                    </tr>



                                </c:otherwise>




                            </c:choose>--%>

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
                                <li class="paginate_button page-item previous disabled" id="article-list_previous"><a href="#" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li>
                                <li class="paginate_button page-item active"><a href="#" aria-controls="article-list" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                                <li class="paginate_button page-item next" id="article-list_next"><a href="#" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</div>
<!-- Layout footer -->

<%@include file ="layouts/frame_footer.jsp" %>
<script src="resources/assets/js/bootstable.js"></script>
<script>
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
        });


    });

    $('#btn_save_homepage_info').on('click', function() {

        var param = {homepage_admin:$("#homepage_admin").val(),
            homepage_admin_pnum:$("#homepage_admin_pnum").val(),
            email:$("#email").val()};
        console.log(param);
        $.ajax({
            type: 'post',
            url :'save_homepage_info', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                console.log(result);
                if(result.result_code=="SUCCESS"){

                }
                else {

                }
                alert(result.result_str);

            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
            }
        });
    });

</script>
