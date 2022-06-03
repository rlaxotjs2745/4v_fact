<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
        <div>시스템 코드 관리</div>
    </h4>
    <div class="card">
        <h6 class="card-header with-elements">
            <div class="card-header-title">시스템 코드 목록</div>
            <div class="card-header-elements ml-auto">
                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modals-code-new">+ 코드 등록</button>
            </div>
        </h6>
        <div class="card-datatable table-responsive pt-0 pb-3">
            <div id="table-list" class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <table id="" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="" data-minimum-count-columns="10" >
                            <thead class="bg-success text-white font-weight-bold">
                            <tr role="row">
                                <th class="text-center px-2" style="width:10%">순서</th>
                                <th class="text-center px-2" style="width:20%">코드 이름</th>
                                <th class="text-center sorting" style="width:20%">코드값</th>
                                <th class="text-center sorting" style="width:40%">코드 설명</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:choose>
                                <c:when test="${fn:length(systemCodeList)>0}">
                                    <c:forEach items = "${systemCodeList}" var ="code">
                                        <tr class="">
                                            <td class="text-center">${code.order_num}</td>
                                            <td class="text-center">${code.code_name}</td>
                                            <td class="text-center">${code.code_value}</td>
                                            <td class="text-center">${code.detail}</td>
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
    <!-- new demo bs-->
    <div id="modals-code-new" class="modal fade">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header bg-success">
                    <h5 class="modal-title text-white font-weight-bold">코드 작성</h5>
                    <button id="modals-code-new-close" type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">코드 이름</label>
                            <div class="col-md-4">
                                <input id="code_name" type="text" class="form-control form-control-md">
                            </div>
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">코드 값</label>
                            <div class="col-md-4">
                                <input id="code_value" type="text" class="form-control form-control-md">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">코드 설명</label>
                            <div class="col-md-10">
                                <input id="detail" type="text" class="form-control form-control-md">
                            </div>
                        </div>

                        <div class="modal-footer justify-content-between">
                            <div>
                                <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                            </div>
                            <div>
                                <button id="btn_save_new" type="button" class="btn btn-primary">저장</button>
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
<script src="resources/assets/js/bootstable.js"></script>
<script>

    $('#btn_save_new').on('click', function() {

        var param = {
            code_name:$("#code_name").val(),
            code_value:$("#code_value").val(),
            detail:$("#detail").val()
        };

        $.ajax({
            type: 'post',
            url :'save_system_code', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                console.log(result);
                if(result.result_code=="SUCCESS"){
                    alert(result.result_str);
                    $('#modals-code-new-c').modal('toggle');
                    pageLoad('l20_code_mng',{page_num:1},'시스템 코드 관리');
                }
                else {

                }


            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
            }
        });
    });

</script>