<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h5 class="d-flex justify-content-between align-items-center w-100 mt-2">
        <div><i class="pe-7s-notebook text-success-custom"></i>관련규정 관리</div>
    </h5>

    <%--        <div class="card px-4 pt-4 mb-4">--%>
    <%--            <div class="form-row mb-4">--%>
    <%--                <div class="col-md-3 ">--%>
    <%--                    <label class="form-label text-muted">상담 구분</label>--%>
    <%--                    <div class="form-inline mt-2">--%>
    <%--                        <label class="custom-control custom-checkbox mr-2">--%>
    <%--                            <input type="checkbox" class="custom-control-input">--%>
    <%--                            <span class="custom-control-label">전체</span>--%>
    <%--                        </label>--%>
    <%--                        <label class="custom-control custom-checkbox mr-2">--%>
    <%--                            <input type="checkbox" class="custom-control-input">--%>
    <%--                            <span class="custom-control-label">사전상담</span>--%>
    <%--                        </label>--%>
    <%--                        <label class="custom-control custom-checkbox mr-2">--%>
    <%--                            <input type="checkbox" class="custom-control-input">--%>
    <%--                            <span class="custom-control-label">사용승인 후 상담</span>--%>
    <%--                        </label>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--                <div class="col-md-2 ">--%>
    <%--                    <label class="form-label text-muted">상담 접수</label>--%>
    <%--                    <div class="form-inline">--%>
    <%--                        <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons">--%>
    <%--                            <label class="btn btn-secondary">--%>
    <%--                                <input type="radio" name="btn-radio" checked="">전체--%>
    <%--                            </label>--%>
    <%--                            <label class="btn btn-secondary">--%>
    <%--                                <input type="radio" name="btn-radio"> 신규--%>
    <%--                            </label>--%>
    <%--                            <label class="btn btn-secondary ">--%>
    <%--                                <input type="radio" name="btn-radio"> 해결--%>
    <%--                            </label>--%>
    <%--                        </div>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--                <div class="col-md-5 ">--%>
    <%--                    <label class="form-label text-muted">상담 접수일</label>--%>
    <%--                    <div class="form-inline">--%>
    <%--                        <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons">--%>
    <%--                            <label class="btn btn-secondary">--%>
    <%--                                <input type="radio" name="btn-radio" checked="">오늘--%>
    <%--                            </label>--%>
    <%--                            <label class="btn btn-secondary">--%>
    <%--                                <input type="radio" name="btn-radio"> 1주일--%>
    <%--                            </label>--%>
    <%--                            <label class="btn btn-secondary ">--%>
    <%--                                <input type="radio" name="btn-radio"> 1개월--%>
    <%--                            </label>--%>
    <%--                            <label class="btn btn-secondary ">--%>
    <%--                                <input type="radio" name="btn-radio"> 3개월--%>
    <%--                            </label>--%>
    <%--                            <label class="btn btn-secondary ">--%>
    <%--                                <input type="radio" name="btn-radio"> 6개월--%>
    <%--                            </label>--%>
    <%--                            <label class="btn btn-secondary ">--%>
    <%--                                <input type="radio" name="btn-radio"> 1년이상--%>
    <%--                            </label>--%>
    <%--                        </div>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--                <div class="col-md-2 text-right">--%>
    <%--                    <label class="form-label d-none d-md-block">&nbsp;</label>--%>
    <%--                    <button type="button" class="btn btn-outline-default">초기화</button>--%>
    <%--                    <button type="button" class="btn btn-success">조회</button>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </div>--%>

    <div class="card">
        <h6 class="card-header with-elements">
            <div class="card-header-title">규정 목록</div>
        </h6>
        <div class="card-datatable table-responsive pt-0 pb-3">
            <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
                <%--                    <div class="row p-3">--%>
                <%--                        <div class="col-sm-12 col-md-12">--%>
                <%--                            <label class="mr-3  mb-0">총 : <strong>999</strong>건</label><label class="mr-3  mb-0">신규 : <strong>70</strong>건</label><label class="mr-3  mb-0">추가 : <strong>70</strong>건</label><label class="mr-3  mb-0">해결 : <strong>70</strong>건</label>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <div class="row">
                    <div class="col-sm-12">
                        <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                            <thead class="bg-success text-white font-weight-bold">
                            <tr role="row">
                                <th class="text-center px-2" style="width:30px">No</th>
                                <th class="text-center sorting" style="width:300px">규정 제목</th>
                                <th class="text-center sorting" style="width:300px">용도</th>
                                <th class="text-center sorting" style="width:70px">등록일</th>
                                <th class="text-center sorting" style="width:30px">문서 버전</th>
                                <th class="text-center sorting" style="width:50px">파일</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${rulefilelist}" var="rulefile" varStatus="status">
                                <tr class="formfile-entity" id="${rulefile.idx_rule_file_info}" onclick="modalShow({
                                        idx_rule_file_info: '${rulefile.idx_rule_file_info}',
                                        subject: '${rulefile.subject}',
                                        usage_detail: '${rulefile.usage_detail}',
                                        file_path: '${rulefile.file_path}',
                                        reg_date: '${rulefile.reg_date}',
                                        row_num: '${rulefile.row_num}',
                                        order_num: '${rulefile.order_num}'
                                        }, event.target);">
                                    <td class="text-center" >${status.count}</td>
                                    <td class="text-center">${rulefile.subject}</td>
                                    <td class="text-center">${rulefile.usage_detail}</td>
                                    <td class="text-center"><fmt:formatDate value="${rulefile.reg_date}" pattern="yyyy-MM-dd"/></td>
                                    <td class="text-center">${rulefile.order_num}</td>
                                    <td class="text-center"><a href="${rulefile.file_path}" aria-controls="article-list" data-dt-idx="1" tabindex="0" id="file_path_button" class="btn btn-outline-default  btn-sm">다운로드</a></td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-5">
                        <%--                            <div class="dataTables_info" role="status" aria-live="polite">Showing 1 to 10 of 50 entries</div>--%>
                    </div>
                    <div class="col-sm-12 col-md-7">
                        <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                            <ul class="pagination">
                                <c:if test="${cur_page == 1}">
                                    <li class="paginate_button page-item previous disabled" id="article-list_previous"><a href="javascript:pageLoad('c72_site_rule_doc_mng',{cur_page: '${cur_page - 1}'},'상담');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li>
                                </c:if>
                                <c:if test="${cur_page != 1}">
                                    <li class="paginate_button page-item previous" id="article-list_previous"><a href="javascript:pageLoad('c72_site_rule_doc_mng',{cur_page: '${cur_page - 1}'},'상담');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li>
                                </c:if>
                                <%--                                    <li class="paginate_button page-item active"><a href="#" aria-controls="article-list" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>--%>
                                <%--                                    <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>--%>
                                <%--                                    <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>--%>
                                <%--                                    <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>--%>
                                <%--                                    <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>--%>
                                <c:if test="${cur_page < max_cur_page / 10}">
                                    <li class="paginate_button page-item next" id="article-list_next"><a href="javascript:pageLoad('c72_site_rule_doc_mng',{cur_page: '${cur_page + 1}'},'상담');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li>
                                </c:if>
                                <c:if test="${cur_page >= max_cur_page / 10}">
                                    <li class="paginate_button page-item next disabled" id="article-list_next"><a href="javascript:pageLoad('c72_site_rule_doc_mng',{cur_page: '${cur_page + 1}'},'상담');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li>
                                </c:if>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal template -->
    <div class="modal show" id="modals-counsel-view">
        <div class="modal-dialog modal-lg">
            <form class="modal-content" id="modal_view_mode">
                <div class="modal-header">
                    <h5 class="modal-title">규정 편집</h5>
                    <button type="button" class="close" onclick="modalFade();" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body pb-2">
                    <div class="form-row">
                        <div class="form-group col col-md-4">
                            <label class="form-label d-block text-muted">규정 제목</label>
                            <span id="modal_view_subject"></span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">규정 용도</label>
                            <span id="modal_view_usage_detail"></span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">문서 버전</label>
                            <span id="modal_view_order_num"></span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">업로드 파일</label>
                            <a id="modal_view_form_file"></a>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" onclick="modalFade();" data-dismiss="modal">취소</button>
                    <div>
                        <button type="button" class="btn btn-default" onclick="deleteEntity();" data-dismiss="modal">삭제</button>
                        <button type="button" class="btn btn-primary" onclick="switchModal();">변경</button>
                    </div>
                </div>
            </form>

            <form class="modal-content" id="modal_edit_mode">
                <div class="modal-header">
                    <h5 class="modal-title">규정 편집</h5>
                    <button type="button" class="close" onclick="modalFade();" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body pb-2">
                    <div class="form-row">
                        <div class="form-group col col-md-4">
                            <label class="form-label d-block text-muted">규정 제목</label>
                            <input id="modal_edit_subject" onchange="changeFormFileInfo(this.value, 'subject');"/>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">규정 용도</label>
                            <input id="modal_edit_usage_detail" onchange="changeFormFileInfo(this.value, 'usage_detail');" />
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">문서 버전</label>
                            <input id="modal_edit_order_num" onchange="changeFormFileInfo(this.value, 'order_num');" />
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">업로드 파일</label>
                            <input type="file" id="modal_edit_form_file" />
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" onclick="modalFade();" data-dismiss="modal">취소</button>
                    <div>
                        <button type="button" class="btn btn-default" onclick="deleteEntity();" data-dismiss="modal">삭제</button>
                        <button type="button" class="btn btn-primary" onclick="modifyFormFile();">저장</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</div>
<script>
    var ruleFileModalInfo = {};

    function modalShow(formfile, node){
        if($(node).attr('id')){
            return;
        }
        $('#modals-counsel-view').show();
        $('#modal_view_mode').hide();
        $('#modal_edit_mode').show();

        ruleFileModalInfo = formfile;
        fillModalInfo();
    }

    function modalFade(){
        $('#modals-counsel-view').hide();
    }

    function switchModal(){
        $('#modal_view_mode').hide();
        $('#modal_edit_mode').show();
    }

    function fillModalInfo(){
        $('#modal_view_subject').text(ruleFileModalInfo.subject);
        $('#modal_view_usage_detail').text(ruleFileModalInfo.usage_detail);
        $('#modal_view_form_file').attr('href', ruleFileModalInfo.file_path).text(ruleFileModalInfo.subject);

        $('#modal_edit_subject').val(ruleFileModalInfo.subject);
        $('#modal_edit_usage_detail').val(ruleFileModalInfo.usage_detail);
        $('#modal_edit_order_num').val(ruleFileModalInfo.row_num);
        $('#modal_edit_form_file').val('');
        $('#modal_edit_form_file').replaceWith($('#modal_edit_form_file').clone(true));
    }

    function deleteEntity(){
        $.ajax({
            type: 'post',
            url: 'delete_rule_file', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(ruleFileModalInfo),//보내는 데이터
            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
            dataType: 'text',//받는 데이터 타입
            success: function (result) {
                //작업이 성공적으로 발생했을 경우
                result = JSON.parse(result);
                alert(result.result_str);
                if(result.result_code === 'SUCCESS'){
                    pageLoad('c72_site_rule_doc_mng',{cur_page:1},'상담');
                }
            },
            error: function () {
                //에러가 났을 경우 실행시킬 코드
            }
        });
    }

    function changeFormFileInfo(val, category){
        ruleFileModalInfo[category] = val;
    }

    function modifyFormFile(){
        var formdata = new FormData();

        if(!document.querySelector('#modal_edit_form_file').files[0]){
            return alert('변경할 파일이 없습니다.');
        }

        formdata.append('subject', ruleFileModalInfo.subject);
        formdata.append('usage_detail', ruleFileModalInfo.usage_detail);
        formdata.append('fileVersion', ruleFileModalInfo.order_num);
        formdata.append('files1', document.querySelector('#modal_edit_form_file').files[0]);
        formdata.append('fileIndex', ruleFileModalInfo.idx_rule_file_info);
        formdata.append('idx_admin', '${admin.idx_admin}');

        $.ajax({
            type: 'post',
            url :'modify_rule_file', //데이터를 주고받을 파일 주소 입력
            data: formdata,//보내는 데이터
            contentType: false,//보내는 데이터 타입
            processData: false,//Jquery 내부에서 파일을 queryString 형태로 전달하는 것을 방지
            dataType:'json',//받는 데이터 타입
            enctype: 'multipart/form-data',
            success: function(result){
                alert(result.result_str);
                if(result.result_code === 'SUCCESS'){
                    pageLoad('c72_site_rule_doc_mng',{cur_page:1},'상담');
                }
            },
            error:function(err){
                console.log(err);
                // returnObj.bool = 0;
            }
        });
    }




</script>
<!-- Layout footer -->
<%@include file ="../layouts/frame_footer.jsp" %>
<!-- / Layout footer -->

<!-- / Page content -->
