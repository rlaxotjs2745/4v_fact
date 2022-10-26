<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>포털 팝업 관리</div>
        </h4>

        <!-- 등록된 팝업창 목록 테이블 -->
        <div class="card">
            <h6 class="card-header with-elements">
                <div class="card-header-title">등록된 팝업</div>
                <div class="card-header-elements ml-auto">
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modals-popup"  data-what="mode-new">+ 팝업 등록</button>
                </div>
            </h6>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-success text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center px-2"    >   No</th>
                                    <th class="text-center sorting" >   팝업 제목</th>
                                    <th class="text-center sorting" >   URL</th>
                                    <th class="text-center sorting" >   게시 기간</th>
                                    <th class="text-center sorting" >   게시 여/부</th>
                                    <th class="text-center px-2"    >   게시 상태</th>
                                    <th class="text-center px-2"    >   등록일</th>
                                    <th class="text-center px-2"    >   게시자</th>
                                    <th class="text-center px-2"    >   업로드 이미지</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="">
                                    <td class="text-center">1</td>
                                    <td class="text-center">
                                        <a href="#none" data-toggle="modal" data-target="#modals-popup" data-what="mode-view">축제 홍보 건</a>
                                    </td>
                                    <td class="text-center">http://www.insamfe…</td>
                                    <td class="text-center">2021년 10월 25일 오전 10:00 ~ 2021년 10월 26일 오후 10:00</td>
                                    <td class="text-center">숨김</td>
                                    <td class="text-center">진행중</td>
                                    <td class="text-center">2021년 10월 25일</td>
                                    <td class="text-center">minjeoing@4thevision.com</td>
                                    <td class="text-center">보기</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div class="dataTables_info" id="" role="status" aria-live="polite">Showing 1 to 10 of 50 entries</div>
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

        <!-- 등록된 메인 홈 브랜드 이미지 (3) 목록 테이블 -->
        <div class="card" style="margin-top: 32px">
            <h6 class="card-header with-elements">
                <div class="card-header-title">브랜드 이미지 (포털 홈의 상단 이미지, 3개)</div>
            </h6>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-success text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center px-2"    >   No</th>
                                    <th class="text-center px-2"    >   베너 순서</th>
                                    <th class="text-center px-2"    >   URL</th>
                                    <th class="text-center px-2"    >   등록일</th>
                                    <th class="text-center px-2"    >   게시자</th>
                                    <th class="text-center px-2"    >   업로드 이미지</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="">
                                    <td class="text-center">1</td>
                                    <td class="text-center">
                                        <a href="#none" data-toggle="modal" data-target="#modals-popup" data-what="mode-view">첫 번째</a>
                                    </td>
                                    <td class="text-center">http://www.insamfe…</td>
                                    <td class="text-center">2021년 10월 25일</td>
                                    <td class="text-center">minjeoing@4thevision.com</td>
                                    <td class="text-center">보기</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div class="dataTables_info" id="" role="status" aria-live="polite">Showing 1 to 10 of 50 entries</div>
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

        <!-- 등록된 팝업창 목록 [추가하기] 테이블 -->
        <div id="modals-popup" class="modal fade">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header bg-success">
                        <h5 class="modal-title text-white font-weight-bold mode-new">팝업 작성</h5>
                        <h5 class="modal-title text-white font-weight-bold mode-edit d-none">팝업 수정</h5>
                        <h5 class="modal-title text-white font-weight-bold mode-view d-none">팝업 내용</h5>
                        <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">제목</label>
                                <div class="col-md-10">
                                    <input type="text" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요">
                                    <div class="form-control-plaintext mode-view">공고문 제목제목제목제목 1</div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">게시 기간</label>
                                <div class="col-md-10">
                                    <div class="form-control-plaintext mode-view">2022-01-01 - 2022-02-01</div>

                                    <div id="datepicker-open" class="input-daterange input-group mode-edit mode-new">
                                        <input type="text" class="form-control" name="start">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">~</span>
                                        </div>
                                        <input type="text" class="form-control" name="end">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">내용</label>
                                <div class="col-md-10 mode-edit mode-new">
                                    <div class="summernote"></div>
                                </div>
                                <div class="col-md-10 mode-view">
                                    <div class="form-control-plaintext mode-view">자세히 보기</div>
                                </div>
                            </div>

                            <div class="modal-footer justify-content-between mode-new">
                                <div>
                                    <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                                    <button type="button" class="btn btn-secondary">미리보기</button>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-primary">저장</button>
                                </div>
                            </div>

                            <div class="modal-footer justify-content-between mode-edit d-none">
                                <div>
                                    <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                                    <button type="button" class="btn btn-secondary">미리보기</button>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-danger">삭제</button>
                                    <button type="button" class="btn btn-primary">저장&게시</button>
                                </div>
                            </div>

                            <div class="modal-footer justify-content-between mode-view">
                                <div>
                                    <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">닫기</button>
                                </div>

                                <div>
                                    <button id="btn_edit_mode" type="button" class="btn btn-primary">수정</button>
                                </div>

                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>

<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
<!-- / Layout footer -->
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
        $('#modals-popup').on('show.bs.modal', function (event) {
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
