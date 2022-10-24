<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>실증사업 관리</div>
        </h4>

        <div class="row">
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <button id="btn_filter1" class="card-body btn btn-white" onclick="javascript:pageLoad('b00_demo_bs_mng',{page_num:1,filter1:9999,filter2:9998},'실증사업 목록');">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="resources/assets/img/img_business_all.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">전체</div>
                                <div class="text-large">${adminDemoBsFilter.tot_count}</div>
                            </div>
                        </div>
                    </button>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <button id="btn_filter2" class="card-body  btn btn-white" onclick="javascript:pageLoad('b00_demo_bs_mng',{page_num:1,filter1:3,filter2:4},'실증사업 목록');">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="resources/assets/img/img_business_on.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">모집중 & 모집종료</div>
                                <div class="text-large">${adminDemoBsFilter.appl_count}</div>
                            </div>
                        </div>
                    </button>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <button id="btn_filter3" class="card-body btn btn-white" onclick="javascript:pageLoad('b00_demo_bs_mng',{page_num:1,filter1:5,filter2:6},'실증사업 목록');">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="resources/assets/img/img_business_week.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">심사중 & 심사종료</div>
                                <div class="text-large">${adminDemoBsFilter.revuiew_count}</div>
                            </div>
                        </div>
                    </button>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <button id="btn_filter4" class="card-body btn btn-white" onclick="javascript:pageLoad('b00_demo_bs_mng',{page_num:1,filter1:7,filter2:8},'실증사업 목록');">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="resources/assets/img/img_business_off.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">이용계획 조정</div>
                                <div class="text-large">${adminDemoBsFilter.agree_count}</div>
                            </div>
                        </div>
                    </button>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <button id="btn_filter5" class="card-body btn btn-white" onclick="javascript:pageLoad('b00_demo_bs_mng',{page_num:1,filter1:9,filter2:10},'실증사업 목록');">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="resources/assets/img/img_business_off.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">협약중 & 협약완료</div>
                                <div class="text-large">${adminDemoBsFilter.demo_count}</div>
                            </div>
                        </div>
                    </button>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <button id="btn_filter6" class="card-body btn btn-white" onclick="javascript:pageLoad('b00_demo_bs_mng',{page_num:1,filter1:11,filter2:12},'실증사업 목록');">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="resources/assets/img/img_business_off.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">사업중 & 사업종료</div>
                                <div class="text-large">${adminDemoBsFilter.result_count}</div>
                            </div>
                        </div>
                    </button>
                </div>
            </div>
        </div>

        <hr class="mt-0">

        <div class="card mt-4">
            <h6 class="card-header font-weight-bold with-elements">
                <div class="card-header-title">실증사업 목록</div>
                <div class="card-header-elements ml-auto">
                    <button type="button" id="btn_new_domo_bs" class="btn btn-primary" data-toggle="modal" data-target="#modals-business" data-what="mode-new">+ 신규 사업 등록</button>
                </div>
            </h6>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="table_demo_bs" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-success text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center" style="width:60px">사업 상태</th>
                                    <th class="text-center" style="width:100px">사업 번호</th>
                                    <th class="text-center" style="width:300px">사업 제목</th>
                                    <th class="text-center" style="width:80px">모집 수</th>
                                    <th class="text-center" style="width:110px">사업 시작일,시간</th>
                                    <th class="text-center" style="width:110px">사업 종료일,시간</th>
                                    <th class="text-center" style="width:80px">사업공고 게시여부</th>
                                </tr>
                                </thead>
                                <tbody>
<c:if test="${total_count eq 0}">
                                    <tr class="">
                                        <td class="text-center" colspan="7" rowspan="3">내용이 없습니다</td>
                                    </tr>
                                    <tr class="">
                                    </tr>
                                    <tr class="">
                                    </tr>
                                    <tr class="">
                                    </tr>
</c:if>
<c:if test="${total_count ne 0}">
                                <c:forEach items="${demoBusinessVOList}" var="demoBs" varStatus="status">
                                    <tr class="">
                                        <td class="text-center">
                                            <c:choose>
                                                <c:when test="${demoBs.demo_bs_status eq 0}">임시저장</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 1}">작성완료</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 2}">승인완료</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 3}">모집중</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 4}">모집종료</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 5}">심사중</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 6}">심사완료</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 7}">이용계획조정</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 8}">이용계획확정</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 9}">협약중</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 10}">협약완료</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 11}">사업시작</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 12}">사업종료</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 13}">결산중</c:when>
                                                <c:when test="${demoBs.demo_bs_status eq 14}">결산완료</c:when>
                                             </c:choose>
                                        </td>
                                        <td class="text-center">${demoBs.demo_bs_code}</td>
                                        <td class="demo_entity" id="demo_${demoBs.idx_demo_business}"><a href="#none" data-toggle="modal" data-target="#modals-business" data-what="mode-view" >${demoBs.demo_subject}</a></td>
                                        <td class="text-right">${demoBs.recruit_count_limit}</td>
                                        <fmt:formatDate value="${demoBs.start_date}" var="dstart_date" pattern="yyyy-MM-dd"/>
                                        <fmt:formatDate value="${demoBs.end_date}" var="dend_date" pattern="yyyy-MM-dd"/>
                                        <td class="text-center">${dstart_date}</td>
                                        <td class="text-center">${dend_date}</td>
                                        <td class="text-center">
                                            <c:choose>
                                                <c:when test="${demoBs.is_announce eq 0}">아니오</c:when>
                                                <c:when test="${demoBs.is_announce eq 1}">예</c:when>
                                            </c:choose>
                                        </td>
                                    </tr>
                                </c:forEach>
</c:if>


                               </tbody>
                            </table>
                        </div>
                    </div>
<c:if test="${total_count ne 0}">
                    <div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div class="dataTables_info" id="article-list_info" role="status" aria-live="polite">총 ${total_count}개 중 ${list_amount*(cur_page-1)+1}에서 ${list_amount*page_amount}까지</div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                                <ul class="pagination">

                                    <c:set var="name" value="${total_count/amount}" />


                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('b00_demo_bs_mng',{page_num:1,filter1:parseInt('${filter1}'),filter2:parseInt('${filter2}')},'실증사업 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('b00_demo_bs_mng',{page_num:parseInt('${cur_page-1}'),filter1:parseInt('${filter1}'),filter2:parseInt('${filter2}')},'실증사업 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>



<%--                                    <c:forEach var="i" begin="1" end="${page_amount}">--%>
<%--                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('b00_demo_bs_mng?page=${(cur_sector-1)*page_amount+i}&filter1=${filter1}&filter2=${filter2}','실증사업 관리');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>--%>
<%--                                    </c:forEach>--%>

                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('b00_demo_bs_mng',{page_num:parseInt('${cur_page+1}'),filter1:parseInt('${filter1}'),filter2:parseInt('${filter2}')},'실증사업 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('b00_demo_bs_mng',{page_num:parseInt('${tot_page}'),filter1:parseInt('${filter1}'),filter2:parseInt('${filter2}')},'실증사업 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
</c:if>
                </div>
            </div>

        </div>
<%--        <div class="d-flex justify-content-end align-items-end w-100 mt-2">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modals-business-write">신규 공고문 작성</button>
        </div>--%>
    </div>











    <!-- new demo bs-->
    <div class="modal fade" id="modals-business">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header bg-success">
                    <h5 class="modal-title text-white font-weight-bold mode-new">실증사업 등록</h5>
                    <h5 class="modal-title text-white font-weight-bold mode-edit d-none">실증사업 수정</h5>
                    <h5 class="modal-title text-white font-weight-bold mode-view">실증사업 내용</h5>
                    <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body">
                    <form>
                        <!-- 사업번호 / 사업 상태-->
                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업번호</label>
                            <div class="form-control-plaintext col-md-4 mode-edit mode-view" id="demo_bs_code_view"></div>
                            <div class="input-group col-md-4 mode-new">
                                <input id="demo_bs_code" type="text" class="form-control form-control-md" placeholder="사업번호를 입력해 주세요...">
                                <span class="input-group-append">
                                        <button id="btn_bs_code_dupl_check" class="btn btn-md btn-outline-dark" type="button">중복체크</button>
                                </span>
                            </div>

                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업상태</label>
                            <div class="form-control-plaintext col-md-4 mode-edit mode-view" id="demo_bs_status_view"></div>
                            <div class="input-group col-md-4 mode-new">

                                <select id="demo_bs_status" class="custom-select form-control" style="width: 100%;">
                                    <option value="0">임시 작성</option>
                                    <option value="1">작성완료</option>
                                    <option value="2">승인완료</option>
                                    <option value="3">모집중</option>
                                    <option value="4">모집 종료</option>
                                    <option value="5">심사중</option>
                                    <option value="6">심사완료</option>
                                    <option value="7">이용계획 조정</option>
                                    <option value="8">이용계획 확정</option>
                                    <option value="9">협약중</option>
                                    <option value="10">협약완료</option>
                                    <option value="11">사업 시작</option>
                                    <option value="12">사업 종료</option>
                                    <option value="13">결산중</option>
                                    <option value="14">결산 완료</option>
                                </select>
                            </div>
                        </div>

                        <!-- 사업 분류-->
                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">대분류</label>
                            <div class="col-md-2">
                                <input type="text" class="form-control form-control-md mode-edit mode-new" id="demo_bs_main_type" placeholder="대분류..." >
                                <div class="form-control-plaintext mode-view" id="demo_bs_main_type_view"></div>
                            </div>
                            <label class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">중분류</label>
                            <div class="col-md-2">
                                <input type="text" class="form-control form-control-md mode-edit mode-new" id="demo_bs_sub_type" placeholder="중분류...">
                                <div class="form-control-plaintext mode-view" id="demo_bs_sub_type_view"></div>
                            </div>
                            <label class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">소분류</label>
                            <div class="col-md-2">
                                <input type="text" class="form-control form-control-md mode-edit mode-new" id="demo_bs_detail_type" placeholder="소분류..." >
                                <div class="form-control-plaintext mode-view" id="demo_bs_detail_type_view"></div>
                            </div>
                        </div>
                        <!-- 사업 제목-->
                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업제목</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control form-control-md mode-edit mode-new" id="demo_subject" placeholder="제목을 입력해 주세요">
                                <div class="form-control-plaintext mode-view" id="demo_subject_view"></div>
                            </div>
                        </div>

<%--                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업내용</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요" value="${demobs.demo_subject}">
                                <div class="form-control-plaintext mode-view">${demobs.demo_subject}</div>
                            </div>
                        </div>--%>

                        <hr>

                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업 기간</label>
                            <div class="col-md-10">
                                <div class="form-control-plaintext mode-view" id="demo_dur"></div>

                                <div class="input-daterange input-group mode-edit mode-new datepicker-open">
                                    <input type="text" class="form-control" id="demo_start" name="start">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">~</span>
                                    </div>
                                    <input type="text" class="form-control" id="demo_end" name="end">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">모집 기간</label>
                            <div class="col-md-10">
                                <div class="form-control-plaintext mode-view" id="demo_appl_dur"></div>

                                <div class="input-daterange input-group mode-edit mode-new datepicker-open">
                                    <input type="text" class="form-control" id="demo_appl_start" name="start">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">~</span>
                                    </div>
                                    <input type="text" class="form-control" id="demo_appl_end" name="end">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">심사 기간</label>
                            <div class="col-md-10">
                                <div class="form-control-plaintext mode-view" id="demo_eval_dur"></div>

                                <div class="input-daterange input-group mode-edit mode-new datepicker-open">
                                    <input type="text" class="form-control" id="demo_eval_start" name="start">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">~</span>
                                    </div>
                                    <input type="text" class="form-control" id="demo_eval_end" name="end">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">이용계획 조정기간</label>
                            <div class="col-md-10">
                                <div class="form-control-plaintext mode-view" id="demo_modify_dur"></div>

                                <div class="input-daterange input-group mode-edit mode-new datepicker-open">
                                    <input type="text" class="form-control" id="demo_modify_start" name="start">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">~</span>
                                    </div>
                                    <input type="text" class="form-control" id="demo_modify_end" name="end">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">협약 기간</label>
                            <div class="col-md-10">
                                <div class="form-control-plaintext mode-view" id="demo_arrange_dur"></div>

                                <div class="input-daterange input-group mode-edit mode-new datepicker-open">
                                    <input type="text" class="form-control" id="demo_arrange_start" name="start">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">~</span>
                                    </div>
                                    <input type="text" class="form-control" id="demo_arrange_end" name="end">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit mode-new">모집 수</label>
                            <div class="form-inline col-md-4 mode-edit mode-new">
                                <input type="text" class="form-control form-control-md text-md-right" id="recruit_count_limit" style="width: 50%;" placeholder="0">
                                <small class="form-text text-muted">
                                    명(기업)
                                </small>
                            </div>
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit mode-new">게시여부</label>
                            <div class="col-md-4 mode-edit mode-new">
                                <div class="form-control-plaintext mode-view" id="is_announce">아니오</div>
                            </div>

                        </div>

                        <hr>
                        <div class="form-row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업 내용</label>
                            <div class="form-group col col-md-10">
                                <div class="form-control-plaintext mode-view" id="bs_content"></div>
                                <textarea class="form-control summernote mode-edit mode-new" id="bs_content_edit" rows="3"></textarea>
                            </div>
                        </div>

                        <div class="form-row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">파일 첨부</label>
                            <div class="form-group col col-md-10 mode-edit mode-new">
                                <input type="file" class="form-control-file d-block py-1" id="demo_files" multiple>
                            </div>
                            <div class="form-group col col-md-10 col-form-label mode-view">
                                <a id="demo_bs_file" href="#"></a>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit mode-new">등록자</label>
                            <div class="col-md-4 mode-edit mode-new">
                                <div class="form-control-plaintext mode-view" id="author_name">${demobs.author_name}</div>
                                <div class="form-control-plaintext mode-new" id="new_author_name">${admin.admin_name}</div>
                            </div>
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit">승인여부</label>
                            <div class="col-md-2 mode-edit">
                                <div class="form-control-plaintext mode-edit" id="confirm_message">
                                </div>
                            </div>
                            <div class="col-md-2 mode-edit">
                                <button type="button" class="btn btn-primary" id="is_confirm">승인하기</button>
                            </div>

                        </div>


                        <div class="modal-footer justify-content-between mode-new">
                            <div>
                                <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                            </div>
                            <div>
                                <button type="button" class="btn btn-outline-primary mr-2">임시저장</button>
                                <button type="button" class="btn btn-primary" id="demo_new_submit">작성완료</button>
                            </div>
                        </div>

                        <div class="modal-footer justify-content-between mode-edit d-none">
                            <div>
                                <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                            </div>
                            <div>
                                <button type="button" class="btn btn-primary" id="demo_edit_submit">저장</button>
                            </div>
                        </div>

                        <div class="modal-footer justify-content-between mode-view">
                            <div>
                                <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">닫기</button>
                            </div>

                            <div>
                                <button id="btn_edit_mode" type="button" class="btn btn-primary" >수정</button>
                            </div>

                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
<%--
    <div class="modal fade" id="modals-business-view2">
        <div class="modal-dialog modal-lx">
            <form class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">사업 공고 현황</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body">

                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">문서번호</label>
                            <span>XX-0000-00000</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">공고 제목</label>
                            <span>도레미파솔라시도 도레미 도미솔도 솔솔라라솔솔미 솔솔미미레 솔솔라라솔솔미 솔미레미도</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">게시기간</label>
                            <span>2021.00. ~ 2021.00.00. (총 00일)</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">모집기간</label>
                            <span>2021.00. ~ 2021.00.00. (총 00일)</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">지원 현황</label>
                            <span class="d-inline-block mb-2">경쟁률 000:1</span>
                            <div class="progress">
                                <div class="text-muted align-middle d-inline-block mr-2">모집 수</div>
                                <div class="progress-bar" style="width: 35%;"></div>
                                <div class="text-primary align-middle d-inline-block ml-2">600</div>
                            </div>
                            <div class="progress">
                                <div class="text-muted align-middle d-inline-block mr-2">지원 수</div>
                                <div class="progress-bar" style="width: 45%;"></div>
                                <div class="text-primary align-middle d-inline-block ml-2">900</div>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">공고 내용</label>
                            <a href="#none" class="btn btn-underline">자세히 보기</a>
                        </div>
                    </div>

                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                </div>
            </form>
        </div>
    </div>--%>
<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>

    <!-- / Layout footer -->
    <script>

        // $(document).ready(function() {
        //     initSummerNote();
        // });
        var demoArr = [];
        var curEntity = null;
        var duplBool = false;
        var demo_bs_main_typeBool = 0;
        var demo_bs_sub_typeBool = 0;
        var demo_bs_detail_typeBool = 0;
        var demo_subjectBool = 0;
        var start_dateBool = 0;
        var end_dateBool = 0;
        var recruit_start_dateBool = 0;
        var recruit_end_dateBool = 0;
        var exam_startBool = 0;
        var exam_endBool = 0;
        var plan_review_startBool = 0;
        var plan_review_endBool = 0;
        var convention_startBool = 0;
        var convention_endBool = 0;
        var convention_endBool = 0;
        var recruit_count_limitBool = 0;
        var demo_bs_contents_init = '';


        <c:forEach items="${demoBusinessVOList}" var="demo" varStatus="status">
        <%--var content = "${fn:replace(demo.demo_bs_contents, '\n', '<br/>')}";--%>
        demoArr.push({
            idx_demo_business: "${demo.idx_demo_business}",
            demo_bs_code: "${demo.demo_bs_code}",
            demo_subject: "${demo.demo_subject}",
            <%--demo_bs_contents: `${demo.demo_bs_contents}`,--%>
            demo_bs_contents: "${demo.demo_bs_contents}",
            // demo_bs_contents: content,
            demo_bs_main_type: "${demo.demo_bs_main_type}",
            demo_bs_sub_type: "${demo.demo_bs_sub_type}",
            demo_bs_detail_type: "${demo.demo_bs_detail_type}",
            demo_bs_status: "${demo.demo_bs_status}",
            applicant_count: "${demo.applicant_count}",
            applicant_count_limit: "${demo.applicant_count_limit}",
            <fmt:formatDate value="${demo.start_date}" var="start_date" pattern="yyyy-MM-dd"/>
            <fmt:formatDate value="${demo.end_date}" var="end_date" pattern="yyyy-MM-dd"/>
            <fmt:formatDate value="${demo.recruit_start_date}" var="rstart_date" pattern="yyyy-MM-dd"/>
            <fmt:formatDate value="${demo.recruit_end_date}" var="rend_date" pattern="yyyy-MM-dd"/>
            <fmt:formatDate value="${demo.exam_start}" var="estart_date" pattern="yyyy-MM-dd"/>
            <fmt:formatDate value="${demo.exam_end}" var="eend_date" pattern="yyyy-MM-dd"/>
            <fmt:formatDate value="${demo.plan_review_start}" var="pstart_date" pattern="yyyy-MM-dd"/>
            <fmt:formatDate value="${demo.plan_review_end}" var="pend_date" pattern="yyyy-MM-dd"/>
            <fmt:formatDate value="${demo.convention_start}" var="cstart_date" pattern="yyyy-MM-dd"/>
            <fmt:formatDate value="${demo.convention_end}" var="cend_date" pattern="yyyy-MM-dd"/>
            start_date: "${start_date}",
            end_date: "${end_date}",
            recruit_start_date: "${rstart_date}",
            recruit_end_date: "${rend_date}",
            exam_start: "${estart_date}",
            exam_end: "${eend_date}",
            plan_review_start: "${pstart_date}",
            plan_review_end: "${pend_date}",
            convention_start: "${cstart_date}",
            convention_end: "${cend_date}",
            recruit_count_limit: "${demo.recruit_count_limit}",
            memo: "${demo.memo}",
            idx_admin: "${demo.idx_admin}",
            idx_conform_admin: "${demo.idx_conform_admin}",
            is_announce: "${demo.is_announce}",
            reg_date: "${demo.reg_date}",
            last_upd_date: "${demo.last_upd_date}",
        })
        </c:forEach>


        $(".demo_entity").on("click", function(){
            var selectedIdx = $(this).attr("id").split("_")[1];

            demoArr.forEach(function(demo){
                if(demo.idx_demo_business == selectedIdx){
                    $('#demo_bs_code_view').text(demo.demo_bs_code);
                    var demoStatus = '';
                    switch (demo.demo_bs_status){
                        case '0':
                            demoStatus = '임시';
                            break;
                        case '1':
                            demoStatus = '설계 완료';
                            break;
                        case '2':
                            demoStatus = '승인 완료';
                            break;
                        case '3':
                            demoStatus = '모집 중';
                            break;
                        case '4':
                            demoStatus = '모집 종료';
                            break;
                        case '5':
                            demoStatus = '심사 중';
                            break;
                        case '6':
                            demoStatus = '심사 완료';
                            break;
                        case '7':
                            demoStatus = '협약 중';
                            break;
                        case '8':
                            demoStatus = '협약 완료';
                            break;
                        case '9':
                            demoStatus = '사업 시작';
                            break;
                        case '10':
                            demoStatus = '사업 종료';
                            break;
                        case '11':
                            demoStatus = '결산 중';
                            break;
                        case '12':
                            demoStatus = '결산 완료';
                            break;
                        default:
                            demoStatus = '확인 불가';
                    }
                    $('#demo_bs_status_view').text(demoStatus);
                    $('#demo_bs_main_type_view').text(demo.demo_bs_main_type);
                    $('#demo_bs_sub_type_view').text(demo.demo_bs_sub_type);
                    $('#demo_bs_detail_type_view').text(demo.demo_bs_detail_type);
                    $('#demo_subject_view').text(demo.demo_subject);
                    $('#demo_dur').text(demo.start_date + ' ~ ' + demo.end_date);
                    $('#demo_eval_dur').text(demo.exam_start + ' ~ ' + demo.exam_end);
                    $('#demo_appl_dur').text(demo.recruit_start_date + ' ~ ' + demo.recruit_end_date);
                    $('#demo_modify_dur').text(demo.plan_review_start + ' ~ ' + demo.plan_review_end);
                    $('#demo_arrange_dur').text(demo.convention_start + ' ~ ' + demo.convention_end);
                    $('#bs_content').html(demo.demo_bs_contents);
                    if(demo.idx_conform_admin == '0'){
                        $('#confirm_message').text('미승인')
                        $('#is_confirm').show();
                    } else {
                        $('#confirm_message').text('승인됨');
                        $('#is_confirm').hide();
                    }

                    if(demo.idx_admin == '${admin.idx_admin}'){
                        $('#is_confirm').hide();
                    }
                    $(".summernote").summernote('destroy');
                    curEntity = demo;
                }
            })


            $.ajax({
                url: 'demo_bs_file?idx_demo_bs=' + selectedIdx,
                method: 'get',
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'json',//받는 데이터 타입
                success: function (result) {
                    if(result != null){
                        $('#demo_bs_file').attr('href', result.file_path).text(result.file_name);
                    }
                }
            })
        })

        $('#is_confirm').click(function(){
            var param = {
                idx_demo_business: curEntity.idx_demo_business,
                idx_conform_admin: '${admin.idx_admin}'
            }

            if(curEntity.idx_admin == param.idx_conform_admin){
                return alert('본인이 등록한 사업은 직접 승인할 수 없습니다.');
            }

            $.ajax({
                url: 'confirm_demo_bs',
                method: 'post',
                data: JSON.stringify(param),//보내는 데이터
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'json',//받는 데이터 타입
                success: function (result) {
                    if (result.result_code == "SUCCESS") {
                        alert('승인되었습니다.')
                        $('#is_confirm').hide();
                        $('#confirm_message').text('승인');

                    } else {
                        console.log(result);
                    }
                }
            })
        })

        $('#btn_new_domo_bs').click(function(){
            initSummerNote();
        })


        function initSummerNote(){
            $('.summernote')
                .summernote({
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
                height: 300,             // 에디터 높이

            })
            .summernote('code', '');

        }


        $(function() {
            var isRtl = $('html').attr('dir') === 'rtl';

            $('#datepicker-show, .datepicker-open').datepicker({
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
            if($('.mode-view').hasClass('d-none') == false){
                $('.mode-view').addClass('d-none');
            }

            if($('.mode-edit').hasClass('d-none') == false){
                $('.mode-edit').addClass('d-none');
            }

            if($('.mode-new').hasClass('d-none') == false){
                $('.mode-new').addClass('d-none');
            }

            $('.mode-edit').removeClass('d-none');
            initSummerNote();
            initEditMode(curEntity);
        });

        function initEditMode(demo){
            $('#demo_bs_main_type').val(demo.demo_bs_main_type);
            $('#demo_bs_sub_type').val(demo.demo_bs_sub_type);
            $('#demo_bs_detail_type').val(demo.demo_bs_detail_type);
            $('#demo_subject').val(demo.demo_subject);
            $('#demo_start').datepicker('setDate', demo.start_date);
            $('#demo_end').datepicker('setDate', demo.end_date);
            $('#demo_appl_start').datepicker('setDate', demo.recruit_start_date);
            $('#demo_appl_end').datepicker('setDate', demo.recruit_end_date);
            $('#demo_eval_start').datepicker('setDate', demo.exam_start);
            $('#demo_eval_end').datepicker('setDate', demo.exam_end);
            $('#demo_modify_start').datepicker('setDate', demo.plan_review_start);
            $('#demo_modify_end').datepicker('setDate', demo.plan_review_end);
            $('#demo_arrange_start').datepicker('setDate', demo.convention_start);
            $('#demo_arrange_end').datepicker('setDate', demo.convention_end);
            $('#demo_arrange_end').datepicker('setDate', demo.convention_end);
            $('#recruit_count_limit').val(demo.recruit_count_limit);
            var newContent = demo.demo_bs_contents.replace(/(<br>|<br\/>|<br \/>)/g, '\r\n');
            $('.summernote').summernote('pasteHTML', demo.demo_bs_contents);
            demo_bs_contents_init = $('.summernote').summernote('code');
        }



        $("#demo_bs_code").change(function(){
            duplBool = false;
        })

            $('#demo_bs_main_type').change(function(){
                if(curEntity != null){
                    if($(this).val() != curEntity.demo_bs_main_type){
                        demo_bs_main_typeBool = 1;
                    } else {
                        demo_bs_main_typeBool = 0;
                    }
                }
            })

            $('#demo_bs_sub_type').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.demo_bs_sub_type) {
                        demo_bs_sub_typeBool = 1;
                    } else {
                        demo_bs_sub_typeBool = 0;
                    }
                }
            })

            $('#demo_bs_detail_type').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.demo_bs_detail_type) {
                        demo_bs_detail_typeBool = 1;
                    } else {
                        demo_bs_detail_typeBool = 0;
                    }
                }
            })

            $('#demo_subject').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.demo_subject) {
                        demo_subjectBool = 1;
                    } else {
                        demo_subjectBool = 0;
                    }
                }
            })

            $('#demo_start').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.start_date) {
                        start_dateBool = 1;
                    } else {
                        start_dateBool = 0;
                    }
                }
            })

            $('#demo_end').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.end_date) {
                        end_dateBool = 1;
                    } else {
                        end_dateBool = 0;
                    }
                }
            })

            $('#demo_appl_start').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.recruit_start_date) {
                        recruit_start_dateBool = 1;
                    } else {
                        recruit_start_dateBool = 0;
                    }
                }
            })

            $('#demo_appl_end').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.recruit_end_date) {
                        recruit_end_dateBool = 1;
                    } else {
                        recruit_end_dateBool = 0;
                    }
                }
            })

            $('#demo_eval_start').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.exam_start) {
                        exam_startBool = 1;
                    } else {
                        exam_startBool = 0;
                    }
                }
            })

            $('#demo_eval_end').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.exam_end) {
                        exam_endBool = 1;
                    } else {
                        exam_endBool = 0;
                    }
                }
            })

            $('#demo_modify_start').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.plan_review_start) {
                        plan_review_startBool = 1;
                    } else {
                        plan_review_startBool = 0;
                    }
                }
            })

            $('#demo_modify_end').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.plan_review_end) {
                        plan_review_endBool = 1;
                    } else {
                        plan_review_endBool = 0;
                    }
                }
            })

            $('#demo_arrange_start').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.convention_start) {
                        convention_startBool = 1;
                    } else {
                        convention_startBool = 0;
                    }
                }
            })

            $('#demo_arrange_end').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.convention_end) {
                        convention_endBool = 1;
                    } else {
                        convention_endBool = 0;
                    }
                }
            })

            $('#demo_arrange_end').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.convention_end) {
                        convention_endBool = 1;
                    } else {
                        convention_endBool = 0;
                    }
                }
            })

            $('#recruit_count_limit').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.recruit_count_limit) {
                        recruit_count_limitBool = 1;
                    } else {
                        recruit_count_limitBool = 0;
                    }
                }
            })





        $("#btn_bs_code_dupl_check").click(function (){
            var code = $("#demo_bs_code").val();
            if(code.length < 1){
                alert('사업번호가 비어있습니다.');
            }
            else if(code.match(/[^a-z|A-Z|0-9|ㄱ-ㅎ|가-힣\s]/g)){
                alert('특수문자는 포함할 수 없습니다.')
            }
            else {
                $.ajax({
                    url: 'bs_code_dupl_check',
                    method: 'post',
                    data: JSON.stringify({user_id: code}),//보내는 데이터
                    contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                    dataType: 'json',//받는 데이터 타입
                    success: function (result) {
                        if (result.result_code == "SUCCESS") {
                            if(confirm("신규 사용이 가능한 사업번호입니다. 사용하시겠습니까?")){
                                duplBool = true;
                                $("#demo_bs_code").attr('disabled', 'true');
                                initSummerNote();
                            }
                        } else {
                            alert("이미 사용 중이거나 사용이 불가능한 사업 m번호입니다.");
                        }
                    }
                })
            }
        })

        $('#demo_edit_submit').click(function(){
            var param = {
                idx_demo_business: curEntity.idx_demo_business
            }

            if(demo_bs_main_typeBool == 1){
                param.demo_bs_main_type = $('#demo_bs_main_type').val();
            }
            if(demo_bs_sub_typeBool == 1){
                param.demo_bs_sub_type = $('#demo_bs_sub_type').val();
            }
            if(demo_bs_detail_typeBool == 1){
                param.demo_bs_detail_type = $('#demo_bs_detail_type').val();
            }
            if(demo_subjectBool == 1){
                param.demo_subject = $('#demo_subject').val();
            }
            if(start_dateBool == 1){
                param.start_date = $('#demo_start').val();
            }
            if(end_dateBool == 1){
                param.end_date = $('#demo_end').val();
            }
            if(recruit_start_dateBool == 1){
                param.recruit_start_date = $('#demo_appl_start').val();
            }
            if(recruit_end_dateBool == 1){
                param.recruit_end_date = $('#demo_appl_end').val();
            }
            if(exam_startBool == 1){
                param.exam_start = $('#demo_eval_start').val();
            }
            if(exam_endBool == 1){
                param.exam_end = $('#demo_eval_end').val();
            }
            if(plan_review_startBool == 1){
                param.plan_review_start = $('#demo_modify_start').val();
            }
            if(plan_review_endBool == 1){
                param.plan_review_end = $('#demo_modify_end').val();
            }
            if(convention_startBool == 1){
                param.convention_start = $('#convention_start').val();
            }
            if(convention_startBool == 1){
                param.convention_start = $('#demo_arrange_start').val();
            }
            if(convention_endBool == 1){
                param.convention_end = $('#demo_arrange_end').val();
            }
            if(recruit_count_limitBool == 1){
                param.recruit_count_limit = $('#recruit_count_limit').val();
            }
            if($('.summernote').summernote('code') != demo_bs_contents_init){
                param.demo_bs_contents = $('.summernote').summernote('code');
            }



            for(let prop in param){
                if(!param[prop]){
                    param[prop] = null;
                }
            }


            $.ajax({
                url: 'update_bs_content',
                method: 'post',
                data: JSON.stringify(param),//보내는 데이터
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'json',//받는 데이터 타입
                success: function (result) {
                    if (result.result_code == "SUCCESS") {
                        alert('수정이 완료되었습니다.');
                        $('#modals-business').hide();
                        $('#demo_bs_main_type, #demo_bs_sub_type, #demo_bs_detail_type, #demo_subject, #demo_start, #demo_end, #demo_appl_start, #demo_appl_end, #demo_eval_start, #demo_eval_end, #demo_modify_start, #demo_modify_end, #demo_arrange_start, #demo_arrange_end, #recruit_count_limit, #memo').val('');
                        $('#bs_content_edit').summernote('code', '');
                    } else {
                        alert("이미 사용 중이거나 사용이 불가능한 사업 m번호입니다.");
                    }
                }
            })

        })

        $('#demo_new_submit').click(function(){
            if(!duplBool){
                alert('사업번호 중복체크 후 작성이 가능합니다.');
                return;
            }
            else if(
                $('#demo_bs_code').val() == "" ||
                $("#demo_bs_status").val() == "" ||
                $('#demo_bs_main_type').val() == "" ||
                $('#demo_bs_sub_type').val() == "" ||
                $('#demo_bs_detail_type').val() == "" ||
                $('#demo_subject').val() == "" ||
                $('#demo_start').val() == "" ||
                $('#demo_end').val() == "" ||
                $('#demo_appl_start').val() == "" ||
                $('#demo_appl_end').val() == "" ||
                $('#demo_eval_start').val() == "" ||
                $('#demo_eval_end').val() == "" ||
                $('#demo_modify_start').val() == "" ||
                $('#demo_modify_end').val() == "" ||
                $('#demo_arrange_start').val() == "" ||
                $('#demo_arrange_end').val() == "" ||
                $('#recruit_count_limit').val() == ""
            ){
                alert('모든 데이터를 입력해야 합니다.');
                return;
            }

            var fileForm = new FormData();
            fileForm.append("demo_bs_code", $('#demo_bs_code').val());
            fileForm.append("demo_bs_status", $("#demo_bs_status").val());
            fileForm.append("demo_bs_main_type", $('#demo_bs_main_type').val());
            fileForm.append("demo_bs_sub_type", $('#demo_bs_sub_type').val());
            fileForm.append("demo_bs_detail_type", $('#demo_bs_detail_type').val());
            fileForm.append("demo_subject", $('#demo_subject').val());
            fileForm.append("start_date", new Date($('#demo_start').val()));
            fileForm.append("end_date", new Date($('#demo_end').val()));
            fileForm.append("recruit_start_date", new Date($('#demo_appl_start').val()));
            fileForm.append("recruit_end_date", new Date($('#demo_appl_end').val()));
            fileForm.append("exam_start", new Date($('#demo_eval_start').val()));
            fileForm.append("exam_end", new Date($('#demo_eval_end').val()));
            fileForm.append("plan_review_start", new Date($('#demo_modify_start').val()));
            fileForm.append("plan_review_end", new Date($('#demo_modify_end').val()));
            fileForm.append("convention_start", new Date($('#demo_arrange_start').val()));
            fileForm.append("convention_end", new Date($('#demo_arrange_end').val()));
            fileForm.append("recruit_count_limit", $('#recruit_count_limit').val());
            fileForm.append("memo", $('#memo').val());
            fileForm.append("idx_admin", "${admin.idx_admin}");
            fileForm.append("demo_bs_contents", $('#bs_content_edit').summernote('code'));
            document.querySelector('#demo_files').files[0] ? fileForm.append("file", document.querySelector('#demo_files').files[0]) : '';

            $.ajax({
                url: 'insert_new_demobs',
                method: 'post',
                data: fileForm,//보내는 데이터
                contentType: false,//보내는 데이터 타입
                processData: false,//Jquery 내부에서 파일을 queryString 형태로 전달하는 것을 방지
                dataType:'json',//받는 데이터 타입
                enctype: 'multipart/form-data',
                success: function (result) {
                    if (result.result_code == "SUCCESS") {
                        alert("실증 사업이 등록되었습니다.");
                        $('#modals-business').modal('hide');
                        $(".summernote").summernote('destroy');
                        $('#demo_bs_code, #demo_bs_status, #demo_bs_main_type, #demo_bs_sub_type, #demo_bs_detail_type, #demo_subject, #demo_start, #demo_end, #demo_appl_start, #demo_appl_end, #demo_eval_start, #demo_eval_end, #demo_modify_start, #demo_modify_end, #demo_arrange_start, #demo_arrange_end, #recruit_count_limit, #memo').val('');
                        $('#bs_content_edit').summernote('code', '');
                    } else {
                        alert("이미 사용 중이거나 사용이 불가능한 사업번호입니다.");
                    }
                }
            })
        })



        //Filter
        //$('#btn_filter1').on('click', function() {

            //load('b00_demo_bs_mng?page=1&filter1=9999&filter2=9998','실증사업 목록');
            /*
            let param = {
                page_num:1,
                amount:10,
                order_field:"IDX_DEMO_BUSINESS",
                filter1:9999,
                filter2:9998,
            }
            $.ajax({
                type: 'post',
                url :'demo_bs_list_by_filter', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(param),//보내는 데이터
                contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                dataType:'text',//받는 데이터 타입
                success: function(result){
                    //작업이 성공적으로 발생했을 경우


                        $("#table_demo_bs").html(result);

                    //STATUS_001 :
                },
                error:function(){
                    //에러가 났을 경우 실행시킬 코드
                }
            });*/
        //});


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
                }



                // 모달 팝업에 데이터 집어넣기
                //var modal = $(this);
                //modal.find('.modal-title').text('New message to ' + what)
                //modal.find('.modal-body input').val(what)
            })
        });



    </script>

<!-- / Page content -->