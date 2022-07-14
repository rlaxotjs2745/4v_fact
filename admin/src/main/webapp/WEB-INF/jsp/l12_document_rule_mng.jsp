
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
        <div>규정 문서 관리</div>
    </h4>

    <div class="card">
        <h6 class="card-header with-elements">
            <div class="card-header-title">규정 문서 목록</div>
            <div class="card-header-elements ml-auto">
                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modals-rule-file">+ 서식 등록</button>
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
                                <th class="text-center px-2" style="width:16%">제목</th>
                                <th class="text-center sorting" style="width:36%">용도</th>
                                <th class="text-center sorting" style="width:10%">관련 조직</th>
                                <th class="text-center sorting" style="width:14%">파일이름</th>
                                <th class="text-center sorting" style="width:6%">파일형식</th>
                                <th class="text-center sorting" style="width:12%">등록일</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:choose>
                                <c:when test="${fn:length(rulefileinfolist)>0}">
                                    <c:forEach items="${rulefileinfolist}" var="rulefile">
                                        <tr class="rulefile-entity" id="${rulefile.idx_rule_file_info}">
                                            <td class="text-center">${rulefile.order_num}</td>
                                            <td class="text-center">${rulefile.subject}</td>
                                            <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-counsel-view" class="btn btn-outline-default  btn-sm">${rulefile.usage_detail}</a></td>
                                            <td class="text-center">${rulefile.depart_name}</td>
                                            <td class="text-center"><fmt:formatDate value="${rulefile.reg_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
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
    <div id="modals-rule-file" class="modal fade">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header bg-success">
                    <h5 class="modal-title text-white font-weight-bold">규정 문서 등록</h5>
                    <button id="modals-code-new-close" type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group row" id="form_title">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">규정 제목</label>
                            <div class="col-md-10">
                                <input id="subject" type="text" class="form-control form-control-md">
                            </div>

                        </div>
                        <div class="form-group row" id="form_usage">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">규정 사용 용도</label>
                            <div class="col-md-10">
                                <textarea id="usage_detail" type="text" class="form-control form-control-md"></textarea>
                            </div>
                        </div>
                        <div class="form-group row" id="form_corp_name">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">관련조직 이름</label>
                            <div class="col-md-10">
                                <input id="detail" type="text" class="form-control form-control-md">
                            </div>
                        </div>
                        <div class="form-group row" id="file">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold" for="file_upload">파일 업로드</label>
                            <div class="col-md-10">
                                <input id="file_upload" name="file_upload" type="file" class="form-control form-control-md" multiple>
                            </div>
                        </div>

                        <div class="modal-footer justify-content-between">
                            <div>
                                <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                            </div>
                            <div>
                                <button id="btn_save_new" type="button" class="btn btn-primary" onclick="saveForm();">저장</button>
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
<script>

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
        $('#modals-rule-file').on('show.bs.modal', function (event) {
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

    $('#btn_save_rule_file_info').on('click', function() {

        var param = {
            subject:$("#subject").val(),
            usage_detail:$("#usage_detail").val(),
            depart_name:$("#depart_name").val(),
            idx_file_info:$("#idx_file_info").val()*1.0
        };
        console.log(param);
        $.ajax({
            type: 'post',
            url :'save_rule_file_info', //데이터를 주고받을 파일 주소 입력
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



    var saveNewBtn = document.querySelectorAll('.btn_save_new');
    saveNewBtn.forEach(btn=>btn.addEventListener('click', saveForm));

    function saveForm(){
        event.preventDefault();
        var fileForm = new FormData();
        fileForm.append("subject",document.querySelector('#subject').value);
        fileForm.append("usage_detail",document.querySelector('#usage_detail').value);

        var files = document.querySelector('#file_upload').files;


        for(var i = 0; i < files.length; i++){
            var num = i + 1;
            fileForm.append("files" + num, files[i]);
        }
        fileForm.append("fileLength", files.length);

        $.ajax({
            type: 'post',
            url :'upload_rule_file', //데이터를 주고받을 파일 주소 입력
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
