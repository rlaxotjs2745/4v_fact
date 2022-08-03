<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2022/04/16
  Time: 3:33 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- Layout content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
        <div>홈페이지 정보 관리</div>
    </h4>

    <div class="card px-4 pt-4 mb-4">
        <h6 class="card-header with-elements">
            <div class="card-header-title">푸터 정보</div>
        </h6>
        <form>
        <div class="form-group row mb-4">
            <div class="col-md-3 ">
                <label class="form-label text-muted">담당자</label>
                <div class="">
                    <input id="homepage_admin" type="text" class="form-control form-control-md" value="${homepageInfo.homepage_admin}">
                    <%--<input class="mr-sm-4 mb-2 mb-sm-0" value="${homepageInfo.homepage_admin}">--%>
                </div>
            </div>
            <div class="col-md-3 ">
                <label class="form-label text-muted">연락처</label>
                <div class="">
                    <input id="homepage_admin_pnum" type="text" class="form-control form-control-md" value="${homepageInfo.homepage_admin_pnum}">
                    <%--<input class="mr-sm-4 mb-2 mb-sm-0" value="${homepageInfo.homepage_admin_pnum}">--%>
                </div>
            </div>
            <div class="col-md-3 ">
                <label class="form-label text-muted">이메일</label>
                <div class="">
                    <input id="email" type="text" class="form-control form-control-md" value="${homepageInfo.email}">
                    <%--<input class="mr-sm-4 mb-2 mb-sm-0" value="${homepageInfo.homepage_admin_pnum}">--%>
                </div>
            </div>
            <div class="ml-auto">
                <%--<label class="form-label d-none d-md-block">&nbsp;</label>--%>
                    <label class="form-label text-muted"></label>
                <div class="card-header-elements ml-auto">
                    <button id="btn_save_homepage_info" type="button" class="btn btn-success float-right">저장</button>
                </div>

            </div>
        </div>
        </form>
        <div class="card-datatable table-responsive pt-0 pb-3">
            <div id="table-list" class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <table id="" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="" data-minimum-count-columns="10" >
                            <thead class="bg-success text-white font-weight-bold">
                            <tr role="row">
                                <th class="text-center sorting" style="width:10%">성명</th>
                                <th class="text-center sorting" style="width:auto">전화번호</th>
                                <th class="text-center sorting" style="width:10%">이메일</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:choose>
                                <c:when test="${fn:length(homepageInfoList)>0}">
                                    <c:forEach items = "${homepageInfoList}" var ="homepageinfo">
                                        <tr class="homepageinfo_entity" id="${homepageInfo.idx_homepage_info}">
                                            <td class="text-center">${homepageinfo.homepage_admin}</td>
                                            <td class="text-center">${homepageinfo.homepage_admin_pnum}</td>
                                            <td class="text-center">${homepageinfo.email}</td>
                                        </tr>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>

                                    <tr class="">
                                        <td colspan="8" class="text-center">아이템이 없어요</td>
                                    </tr>



                                </c:otherwise>




                            </c:choose>

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

    <hr class="container-m-nx mt-4 mb-4 ml-2 mr-2">

    <div class="card">
        <h6 class="card-header with-elements">
            <div class="card-header-title">홈페이지 조직도에 표시할 직원 목록</div>
            <div class="card-header-elements ml-auto">
                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modals-default">+ 직원 등록</button>
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
                            <c:choose>
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
                           
                            

                                
                            </c:choose>

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

    <div class="modal fade" id="modals-default">
        <div class="modal-dialog modal-lg">
            <form class="modal-content"  action="insert_coworker" method="post">
                <div class="modal-header">
                    <h5 class="modal-title">직원 정보 등록</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body pb-2">
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <table class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info">
                                <tbody>
                                <tr class="">
                                    <th class="text-center align-middle bg-light" rowspan="3" style="width:12%">개인정보</th>
                                    <th class="text-center bg-light" style="width:12%">이름</th>
                                    <td class="text-center" style="width:24%"><input type="text" class="form-control form-control-sm" value="" id="coworker_name"></td>
                                    <th class="text-center bg-light" style="width:13%">일반전화번호</th>
                                    <td class="text-center" style="width:29%"><input type="text" class="form-control form-control-sm" value="" id="tel_num"></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">휴대폰 번호</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="" id="mphone_num"></td>
                                    <th class="text-center bg-light">순서 번호</th>
                                    <td class="text-center">
                                        <input type="text" class="form-control form-control-sm" value="" id="co_worker_oder">
                                    </td>
                                </tr>

                                <tr>
                                    <th class="text-center bg-light">직책</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" id="job_title" value=""></td>
                                    <th class="text-center bg-light">담당 권한</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" id="job_role" value=""></td>
                                </tr>

                                <tr>
                                    <th class="text-center bg-light">소속정보</th>
                                    <th class="text-center bg-light">부서</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="" id="devision"></td>
                                    <th class="text-center bg-light">소속</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="" id="department"></td>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">센터정보</th>
                                    <th class="text-center bg-light">소속부서</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="" id="main_part"></td>
                                    <th class="text-center bg-light">담당업무</th>
                                    <td class="text-center"><input type="text" class="form-control form-control-sm" value="" id="manage_num"></td>
                                </tr>
                                </tbody>
                            </table>
                            <table class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                <tbody>
                                <tr>
                                    <th class="text-center align-middle bg-light" style="width: 4.5%" rowspan="2">시스템 정보</th>
                                    <th class="text-center bg-light" style="width: 4.5%; vertical-align: middle;" >웹ID</th>
                                    <td class="" style="width: 25%" colspan="3">
                                        <input type="text" id="web_id" class="form-control form-control-sm d-inline-block align-middle mr-1" value="" style="width: 100px" name="email">
                                        @
                                        <input type="text" id="web_id2" class="form-control form-control-sm d-inline-block align-middle mr-1" value="" style="width: 100px" name="">
                                        <select id="admin_id_select_box" class="form-control form-control-sm d-inline-block align-middle mr-1" style="width: 100px">
                                            <option value="" selected>직접입력</option>
                                            <option value="naver.com">naver.com</option>
                                            <option value="gmail.com">gmail.com</option>
                                            <option value="hanmail.net">hanmail.net</option>
                                            <option value="daum.net">daum.net</option>
                                            <option value="nate.com">nate.com</option>
                                        </select>

                                        <br>
                                        <small id="web_id_guide"></small>
                                    </td>
                                    <%--                                    <th class="text-center bg-light" style="width:13%">비밀번호</th>--%>
                                    <%--                                    <td class="" colspan="2" style="width:34%"><small>등록한 이메일로 초기 비밀번호가 발송됩니다.</small></td>--%>
                                </tr>
                                <tr>
                                    <th class="text-center bg-light">보이기</th>
                                    <td class="" colspan="5">
                                        <select id="is_show" class="custom-select custom-select-sm w-auto">
                                            <option value="1">보임</option>
                                            <option value="0">안보임</option>
                                        </select>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                    <button type="button" id="btn-coworker" class="btn btn-primary" >저장</button>
                </div>
            </form>
        </div>
    </div>

    <div class="modal fade" id="modal-staff-upload">
        <div class="modal-dialog ">
            <form class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">직원정보 일괄등록</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body pb-2">

                    <div class="form-row">
                        <div class="form-group col col-md-12 text-right">
                            <a href="#none" class="btn btn-underline">일괄등록 양식 템플릿 다운로드</a>
                        </div>
                    </div>
                    <hr class="mt-0">
                    <div class="form-row">
                        <div class="form-group col col-md-12 ">
                            <label class="form-label d-block text-muted">파일등록</label>
                            <input type="file" class="custom-file">
                            <small class="text-muted">정보를 입력한 템플릿 XLS 파일을 등록하세요.</small>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                    <button type="button" class="btn btn-primary"  >저장</button>
                </div>
            </form>
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

    $('#admin_id_select_box').change(function(){
        $('#web_id2').val($(this).val());
    })

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


    function isValid(string){
        var val = '';
        if(string.length < 2){ //2글자 초과
            val += 2;
        }
        if(string.match(/[^a-z|A-Z|ㄱ-ㅎ|가-힣|0-9\s]/g)){ // 특수문자
            val += 3;
        }
        if(string.match(/[0-9]/g)){ //숫자
            val += 4;
        }
        if(string.match(/^[0-9]/g)){ //숫자 시작
            val += 5;
        }
        if(string.match(/\s/g)){ // 공백
            val += 6;
        }
        return val;
    }

    $('#btn-coworker').on('click',function() {

        if(isValid($("#coworker_name").val()).match('2')){
            alert("관리자의 이름이 너무 짧습니다.");
            return;
        }
        if(isValid($("#coworker_name").val()).match('3')){
            alert("관리자 이름에는 특수문자가 포함될 수 없습니다.");
            return;
        }
        if(isValid($("#coworker_name").val()).match('4')){
            alert("관리자 이름에는 숫자가 포함될 수 없습니다.");
            return;
        }
        if(isValid($("#coworker_name").val()).match('6')){
            alert("관리자 이름에는 공백이 포함될 수 없습니다.");
            return;
        }
        if(isValid($("#devision").val()).match('2')){
            alert("관리자의 이름이 너무 짧습니다.");
            return;
        }

        if(isValid($("#devision").val()).match('3')){
            alert("부서에는 특수문자가 포함될 수 없습니다.");
            return;
        }
        if(isValid($("#devision").val()).match('5')){
            alert("부서이름은 숫자로 시작될 수 없습니다.");
            return;
        }
        if(isValid($("#devision").val()).match('2')){
            alert("부서이름이 너무 짧습니다.");
            return;
        }
        if(isValid($("#devision").val()).match('6')){
            alert("부서이름은 공백이 포함될 수 없습니다.");
            return;
        }

        if(isValid($("#job_role").val()).match('5')){
            alert("담당업무는 숫자로 시작될 수 없습니다.");
            return;
        }
        if(isValid($("#job_role").val()).match('2')){
            alert("담당업무의 이름이 너무 짧습니다.");
            return;
        }
        if(isValid($("#job_role").val()).match('3')){
            alert("담당업무는 특수문자가 포함될 수 없습니다.");
            return;
        }

        if(isValid($("#job_title").val()).match('5')){
            alert("직위는 숫자로 시작될 수 없습니다.");
            return;
        }
        if(isValid($("#job_title").val()).match('2')){
            alert("직위가 너무 짧습니다.");
            return;
        }


        if(isValid($("#mphone_num").val()).match('2')){
            alert("휴대폰 번호가 너무 짧습니다.");
            return;
        }

        if($("#web_id").val().length == 0 || $("#web_id2").val().length == 0){
            alert("이메일 형식에 맞지 않는 이메일입니다.")
            return;
        }

        var param ={
            idx_co_worker:$("#idx_co_worker").val(),
            co_worker_oder:$("#co_worker_oder").val(),
            coworker_name:$("#coworker_name").val(),
            devision:$("#devision").val(),
            department:$("#department").val(),
            department_sub:$("#department_sub").val(),
            job_title:$("#job_title").val(),
            job_role:$("#job_role").val(),
            tel_num:$("#tel_num").val(),
            mphone_num:$("#mphone_num").val(),
            email:$("#web_id").val() + "@" + $("#web_id2").val(),
            is_show:$("#is_show").val()
        }

        $.ajax({
            type: 'post',
            url: 'insert_coworker', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
            dataType: 'json',//받는 데이터 타입
            success: function (result) {
                console.log(result)
                if (result.result_code === "SUCCESS") {
                    alert("상태 변경에 성공하였습니다");
                    pageLoad('c80_site_mng',{page_num:1},'사이트 정보관리');
                } else {
                    alert("상태 변경에 실패하였습니다")
                    console.log(result)
                }

            },
            error: function (res) {
                console.log(res)
            }
        });
    })
</script>

<!-- / Layout footer -->