<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
        <div>양식문서 관리</div>
    </h4>

    <div class="card">
        <h6 class="card-header with-elements">
            <div class="card-header-title">양식 문서 목록</div>
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
                                <th class="text-center px-2" style="width:auto">제목</th>
                                <th class="text-center sorting" style="width:20%">용도</th>
                                <th class="text-center sorting" style="width:7%">작성자</th>
                                <th class="text-center sorting" style="width:20%">파일이름</th>
                                <th class="text-center sorting" style="width:7%">파일형식</th>
                                <th class="text-center sorting" style="width:10%">등록일</th>
                            </tr>
                            </thead>
                            <tbody>
                                <c:choose>
                                    <c:when test="${fn:length(formfilelist)>0}">
                                        <c:forEach items="${formfilelist}" var="formfile" varStatus="status">
                                            <tr class="formfile-entity" id="${formfile.idx_form_file_info}">
                                                <td class="text-center">${status.count}</td>
                                                <td class="text-center">${formfile.subject}</td>
                                                <td class="text-center">${formfile.usage_detail}</td>
                                                <td class="text-center">${formfile.admin_name}</td>
                                                <td class="text-center">${formfile.file_name}</td>
                                                <td class="text-center">${formfile.extention}</td>
                                                <td class="text-center"><fmt:formatDate value="${formfile.reg_date}" pattern="yyyy년 MM월 dd일"/></td>
                                            </tr>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        <tr class="">
                                            <td colspan="8" class="text-center">등록된 양식문서가 없습니다</td>
                                        </tr>
                                    </c:otherwise>
                                </c:choose>
                            </tbody>
                        </table>
                    </div>
                </div>
                <c:if test="${total_count ne 0}">
                    <div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div class="dataTables_info" id="" role="status" aria-live="polite">총 ${total_count}개 중 ${list_amount*(cur_page-1)+1}에서 ${total_count}까지</div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                                <ul class="pagination">
                                    <c:set var="name" value="${total_count/list_amount}" />
                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('l11_document_form_mng',{cur_page:1},'양식 문서 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('l11_document_form_mng',{cur_page:${cur_page-1}},'양식 문서 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>
                                    <c:forEach var="i" begin="1" end="${page_amount}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('l11_document_form_mng',{cur_page:${(cur_sector-1)*page_amount+i}},'양식 문서 관리');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>
                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('l11_document_form_mng',{cur_page:${cur_page+1}},'양식 문서 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('l11_document_form_mng',{cur_page:${tot_page}},'양식 문서 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </c:if>
            </div>
        </div>
    </div>

    <div id="modals-rule-file" class="modal fade">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header bg-success">
                    <h5 class="modal-title text-white font-weight-bold">양식 문서 등록</h5>
                    <button id="modals-code-new-close" type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body">
                    <form>
                        <input type="hidden" name="idx_admin" value="${admin.idx_admin}">
                        <div class="form-group row" id="form_title">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">양식 제목</label>
                            <div class="col-md-10">
                                <input id="subject" type="text" class="form-control form-control-md">
                            </div>
                        </div>
                        <div class="form-group row" id="form_usage">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">양식 사용 용도</label>
                            <div class="col-md-10">
                                <textarea id="usage_detail" type="text" class="form-control form-control-md"></textarea>
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

<%@include file ="../layouts/frame_footer.jsp" %>
<%--<script src="resources/assets/js/bootstable.js"></script>--%>
<script>

    $('#btn_save_new').on('click', function() {

        if($("#subject").val() === ''){
            return alert('제목을 입력해 주세요.')
        }

        if($("#usage_detail").val() === ''){
            return alert('제목을 입력해 주세요.')
        }

        if(document.getElementById('file_upload').files[0] === null || document.getElementById('file_upload').files[0] === undefined){
            return alert('파일을 업로드 해주세요.')
        }


        let formData = new FormData();
        formData.append('subject', $("#subject").val());
        formData.append('usage_detail', $("#usage_detail").val());
        formData.append('idx_admin', $("input[name=idx_admin]").val());
        if (document.getElementById('file_upload').files.length > 0) {
            formData.append('file1', document.getElementById('file_upload').files[0]);
        }

        $.ajax({
            type: 'post',
            url: 'insert_form_file', //데이터를 주고받을 파일 주소 입력
            data: formData,//보내는 데이터
            cache: false,
            contentType: false,
            processData: false,
            success: function (result) {
                //작업이 성공적으로 발생했을 경우
                console.log(result);
                if (result.result_code === "SUCCESS") {
                    alert(result.result_str);
                    window.location.reload()
                } else {

                }
            },
            error: function (error) {
                //에러가 났을 경우 실행시킬 코드
            }
        });
    })


</script>
