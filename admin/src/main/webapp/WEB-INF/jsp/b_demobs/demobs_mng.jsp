<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h5 class="d-flex justify-content-between align-items-center w-100 mt-2">
            <div><i class="pe-7s-portfolio text-success-custom"></i>&nbsp;&nbsp;실증사업 등록 및 관리</div>
        </h5>

        <div class="card px-4 pt-2 mb-2 bg-">
            <div class="form-row mb-4">

                <div class="col-md-5 ">
                    <label class="form-label text-body">실증사업 상태</label>

                    <div class="form-inline">
                        <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons" id="category_change">
                            <label class="btn btn-secondary <c:if test="${filter1 eq 9999}">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value="0" checked onclick="javascript:pageLoad('demobs_mng',{cur_page:1,filter1:9999,filter2:9998},'실증사업 목록');">전체
                            </label>
                            <label class="btn btn-secondary <c:if test="${filter1 >= 0 && filter1 < 3 }">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value="0" onclick="javascript:pageLoad('demobs_mng',{cur_page:1,filter1:0,filter2:9998},'실증사업 목록');">등록
                            </label>
                            <label class="btn btn-secondary <c:if test="${filter1 >= 3 && filter1 < 5}">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value="1" onclick="javascript:pageLoad('demobs_mng',{cur_page:1,filter1:3,filter2:9998},'실증사업 목록');">모집
                            </label>
                            <label class="btn btn-secondary <c:if test="${filter1 >= 5 && filter1 < 7}">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value="2" onclick="javascript:pageLoad('demobs_mng',{cur_page:1,filter1:5,filter2:9998},'실증사업 목록');">심사
                            </label>
                            <label class="btn btn-secondary <c:if test="${filter1 >= 7 && filter1 < 11}">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value="2" onclick="javascript:pageLoad('demobs_mng',{cur_page:1,filter1:7,filter2:9998},'실증사업 목록');">협약
                            </label>
                            <label class="btn btn-secondary <c:if test="${filter1 eq 11}">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value="2" onclick="javascript:pageLoad('demobs_mng',{cur_page:1,filter1:11,filter2:9998},'실증사업 목록');">사업중
                            </label>
                            <label class="btn btn-secondary <c:if test="${filter1 >= 12 && filter1 <= 14}">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value="2" onclick="javascript:pageLoad('demobs_mng',{cur_page:1,filter1:12,filter2:9998},'실증사업 목록');"> 결산 및 종료
                            </label>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="card mt-2">
            <div class="card-header font-weight-bold with-elements text-white bg-success">
                <div>실증사업 목록</div>
                <div class="card-header-elements ml-auto">
                    <button type="button" id="btn_new_domo_bs" class="btn btn-sm btn-outline-white font-weight-bold" data-toggle="modal" data-target="#modals-business" data-what="mode-new">+ 신규 사업 등록</button>
                </div>
            </div>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="table_demo_bs" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-light-dark text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center px-2" style="width:6%">No.</th>

                                    <th class="text-center" style="width:10%">사업번호</th>

                                    <th class="text-center" style="width:30%">사업 제목</th>
                                    <th class="text-center" style="width:8%">단계</th>
                                    <th class="text-center" style="width:4%">모집수</th>

                                    <th class="text-center" style="width:12%">모집기간</th>

                                    <th class="text-center" style="width:12%">선정시작 및 협약완료일</th>

                                    <th class="text-center" style="width:12%">사업기간</th>


                                    <th class="text-center" style="width:6%">게시여부</th>
                                </tr>
                                </thead>
                                <tbody>
                        <c:choose>
                            <c:when test="${demoBusinessVOList eq null or demoBusinessVOList.size() eq 0}">

                                <c:forEach var = "i" begin = "1" end = "4">
                                    <tr><td class="text-center empty-list" colspan="9"></td></tr>
                                </c:forEach>
                                    <tr class=""><td class="text-center empty" colspan="9">내용이 없습니다</td></tr>
                                <c:forEach var = "i" begin = "1" end = "5">
                                    <tr><td class="text-center empty-list" colspan="9"></td></tr>
                                </c:forEach>

                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${demoBusinessVOList}" var="demoBs" varStatus="status">
                                    <tr class="">



                                    <td class="text-center">${demoBs.idx_demo_business}</td>
                                    <td class="text-center">${demoBs.demo_bs_code}</td>
                                    <td class="demo_entity" id="demo_${demoBs.idx_demo_business}">
                                        <a href="#none" data-toggle="modal" data-target="#modals-business" data-what="mode-view" >${demoBs.demo_subject}</a>
                                    </td>
                                <c:choose>
                                    <c:when test="${demoBs.demo_bs_status eq 0}"><td class="text-center">임시</td></c:when>
                                    <c:when test="${demoBs.demo_bs_status eq 1}"><td class="text-center">작성완료</td></c:when>
                                    <c:when test="${demoBs.demo_bs_status eq 2}"><td class="text-center">승인완료</td></c:when>
                                    <c:when test="${demoBs.demo_bs_status eq 3}"><td class="text-center">모집중</td></c:when>
                                    <c:when test="${demoBs.demo_bs_status eq 4}"><td class="text-center">모집 종료</td></c:when>
                                    <c:when test="${demoBs.demo_bs_status eq 5}"><td class="text-center">심사중</td></c:when>
                                    <c:when test="${demoBs.demo_bs_status eq 6}"><td class="text-center">심사완료</td></c:when>
                                    <c:when test="${demoBs.demo_bs_status eq 7}"><td class="text-center">이용계획 조정</td></c:when>
                                    <c:when test="${demoBs.demo_bs_status eq 8}"><td class="text-center">이용계획 확정</td></c:when>
                                    <c:when test="${demoBs.demo_bs_status eq 9}"><td class="text-center">협약중</td></c:when>
                                    <c:when test="${demoBs.demo_bs_status eq 10}"><td class="text-center">협약완료</td></c:when>
                                    <c:when test="${demoBs.demo_bs_status eq 11}"><td class="text-center">사업 시작</td></c:when>
                                    <c:when test="${demoBs.demo_bs_status eq 12}"><td class="text-center">사업 종료</td></c:when>
                                    <c:when test="${demoBs.demo_bs_status eq 13}"><td class="text-center">결산중</td></c:when>
                                    <c:when test="${demoBs.demo_bs_status eq 14}"><td class="text-center">결산 완료</td></c:when>
                                </c:choose>
                                    <td class="text-right">${demoBs.recruit_count_limit}</td>

                                    <fmt:formatDate value="${demoBs.recruit_start_date}" var="appl_start" pattern="yyyy-MM-dd"/>
                                    <fmt:formatDate value="${demoBs.recruit_end_date}" var="apple_end" pattern="yyyy-MM-dd"/>
                                    <td class="text-center">${appl_start}~${apple_end}</td>

                                    <fmt:formatDate value="${demoBs.exam_start}" var="exam_start" pattern="yyyy-MM-dd"/>
                                    <fmt:formatDate value="${demoBs.convention_end}" var="convention_end" pattern="yyyy-MM-dd"/>
                                    <td class="text-center">${exam_start}~${convention_end}</td>

                                    <fmt:formatDate value="${demoBs.start_date}" var="start_date" pattern="yyyy-MM-dd"/>
                                    <fmt:formatDate value="${demoBs.end_date}" var="end_date" pattern="yyyy-MM-dd"/>
                                    <td class="text-center">${start_date}~${end_date}</td>

                                    <fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowDate" />             <%-- 오늘날짜 --%>
                                <c:choose>
                                    <c:when test="${demoBs.is_announce eq 0}"><td class="text-center <c:if test="${apple_start < nowDate && apple_end > nowDate}">text-danger</c:if>">게시전</td></c:when>
                                    <c:when test="${demoBs.is_announce eq 1}"><td class="text-center  <c:if test="${apple_end < nowDate}">text-danger</c:if> ">게시 중</td></c:when>
                                    <c:when test="${demoBs.is_announce eq 1}"><td class="text-center">게시 종료</td></c:when>
                                </c:choose>

                                    </tr>
                                </c:forEach>
                                <c:forEach var = "i" begin = "${demoBusinessVOList.size()}" end = "9">
                                    <tr><td class="text-center empty-list" colspan="9"></td></tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
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

                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('demobs_mng',{cur_page:1,filter1:'${filter1}', filter2:'${filter2}'},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('demobs_mng',{cur_page:'${cur_page-1}',filter1:'${filter1}',filter2:'${filter2}'},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>

                                    <c:forEach var="i" begin="1" end="${remain_page}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('demobs_mng',{cur_page:'${(cur_sector-1)*page_amount+i}',filter1:'${filter1}',filter2:'${filter2}'},'사업공고문 관리');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>

                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('demobs_mng',{cur_page:'${cur_page+1}',filter1:'${filter1}',filter2:'${filter2}'},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('demobs_mng',{cur_page:'${tot_page}',filter1:'${filter1}',filter2:'${filter2}'},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
</c:if>
                </div>
            </div>
        </div>
    </div>

    <!-- new demo bs-->
    <div class="modal fade" id="modals-business">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header bg-success">
                    <h5 class="modal-title text-white font-weight-bold mode-new">실증사업 등록</h5>
                    <h5 class="modal-title text-white font-weight-bold mode-edit d-none">실증사업 수정</h5>
                    <h5 class="modal-title text-white font-weight-bold mode-view">실증사업 내용</h5>
                    <button type="button" id="close_button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body">
                    <form>

                        <!-- 사업번호 / 사업 상태-->
                        <div class="callout callout-primary callout-sm mb-1">

                            <div class="form-row border-bottom boder-success">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업번호 :</label>

                                <div class="form-control-plaintext col-md-4 mode-view" id="demo_bs_code_view"></div>
                                <div class="input-group col-md-4 mode-new mode-edit">
                                    <input id="demo_bs_code" type="text" class="form-control" placeholder="사업번호를 입력해 주세요...">
                                    <span class="input-group-append">
                                            <button id="btn_bs_code_dupl_check" class="btn btn-sm btn-outline-dark form-control" type="button">중복체크</button>
                                    </span>
                                </div>

                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업상태 :</label>
                                <div class="form-control-plaintext col-md-4 mode-view" id="demo_bs_status_view"></div>

                                <div class="input-group col-md-4 mode-edit d-none">
                                    <select id="demo_bs_status" class="custom-select form-control" style="width: 100%;">
                                        <option value='0'>임시 작성</option>
                                        <option value='1'>작성 완료</option>
                                        <option value='2'>승인 완료</option>
                                        <option value='3'>모집중</option>
                                        <option value='4'>모집 종료</option>
                                        <option value='5'>심사중</option>
                                        <option value='6'>심사완료</option>
                                        <option value='7'>이용계획 조정</option>
                                        <option value='8'>이용계획 확정</option>
                                        <option value='9'>협약중</option>
                                        <option value='10'>협약완료</option>
                                        <option value='11'>사업 시작</option>
                                        <option value='12'>사업 종료</option>
                                        <option value='13'>결산중</option>
                                        <option value='14'>결산 완료</option>
                                    </select>
                                </div>
                            </div>


                            <!-- 사업 분류-->
                            <div class="form-row border-bottom boder-success">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">대분류 :</label>
                                <div class="col-md-2">
                                    <input type="text" class="form-control form-control-md mode-edit mode-new" id="demo_bs_main_type" placeholder="대분류..." >
                                    <div class="form-control-plaintext mode-view" id="demo_bs_main_type_view"></div>
                                </div>
                                <label class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">중분류 :</label>
                                <div class="col-md-2">
                                    <input type="text" class="form-control form-control-md mode-edit mode-new" id="demo_bs_sub_type" placeholder="중분류...">
                                    <div class="form-control-plaintext mode-view" id="demo_bs_sub_type_view"></div>
                                </div>
                                <label class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">소분류 :</label>
                                <div class="col-md-2">
                                    <input type="text" class="form-control form-control-md mode-edit mode-new" id="demo_bs_detail_type" placeholder="소분류..." >
                                    <div class="form-control-plaintext mode-view" id="demo_bs_detail_type_view"></div>
                                </div>
                            </div>
                            <!-- 사업 제목-->
                            <div class="form-row border-bottom boder-success">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업제목 :</label>
                                <div class="col-md-10">
                                    <input type="text" class="form-control form-control-md mode-edit mode-new" id="demo_subject" placeholder="제목을 입력해 주세요">
                                    <div class="form-control-plaintext mode-view" id="demo_subject_view"></div>
                                </div>
                            </div>

                        </div>
                        <div class="callout callout-warning callout-sm mb-1">


                            <div class="form-row border-bottom boder-success">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업 기간 :</label>
                                <div class="col-md-4">
                                    <div class="form-control-plaintext mode-view" id="demo_dur"></div>

                                    <div class="input-daterange input-group mode-edit mode-new datepicker-open">
                                        <input type="text" class="form-control" id="demo_start" name="start">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">~</span>
                                        </div>
                                        <input type="text" class="form-control" id="demo_end" name="end">
                                    </div>
                                </div>
<%--                            </div>

                            <div class="form-row border-bottom boder-success">--%>
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">모집 기간 :</label>
                                <div class="col-md-4">
                                    <div class="form-control-plaintext mode-view" id="recruit_dur"></div>

                                    <div class="input-daterange input-group mode-edit mode-new datepicker-open">
                                        <input type="text" class="form-control" id="recruit_start" name="start">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">~</span>
                                        </div>
                                        <input type="text" class="form-control" id="recruit_end" name="end">
                                    </div>
                                </div>
                            </div>

                            <div class="form-row border-bottom boder-success">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">심사 기간 :</label>
                                <div class="col-md-4">
                                    <div class="form-control-plaintext mode-view" id="exam_dur"></div>

                                    <div class="input-daterange input-group mode-edit mode-new datepicker-open">
                                        <input type="text" class="form-control" id="exam_start" name="start">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">~</span>
                                        </div>
                                        <input type="text" class="form-control" id="exam_end" name="end">
                                    </div>
                                </div>
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">협약 기간 :</label>
                                <div class="col-md-4">
                                    <div class="form-control-plaintext mode-view" id="convention_dur"></div>

                                    <div class="input-daterange input-group mode-edit mode-new datepicker-open">
                                        <input type="text" class="form-control" id="convention_start" name="start">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">~</span>
                                        </div>
                                        <input type="text" class="form-control" id="convention_end" name="end">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="callout callout-info callout-sm mb-1">

                            <div class="form-row border-bottom boder-success">

                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">모집 수 :</label>

                                <div class="form-inline col-md-4">
                                    <input type="text" class="form-control form-control-md text-md-right mode-new mode-edit" oninput="this.value=this.value.replace(/[^-0-9]/g,'');" id="recruit_count_limit" style="width: 50%;" placeholder="0">
                                    <div class="form-control-plaintext mode-view" id="recruit_count_limit_view"></div>
                                    <label class="form-text text-muted mr-1">
                                        명(기업)
                                    </label>
                                </div>
                               <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit mode-new">게시여부</label>
                                <div class="col-md-4 mode-edit mode-new">
                                    <div class="form-control-plaintext mode-view" id="is_announce">아니오</div>
                                </div>

                            </div>

                        </div>

                        <div class="callout callout-secondary callout-sm mb-1">

                            <div class="form-row border-bottom boder-success">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업 내용 :</label>
                                <div class="form-group col col-md-10">
                                    <div class="form-control-plaintext mode-view" id="bs_content"></div>
                                    <textarea class="form-control summernote mode-edit mode-new" id="bs_content_edit" rows="3"></textarea>
                                </div>
                            </div>

                            <div class="form-row border-bottom boder-success">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">파일 첨부 :</label>
                                <div class="form-group col col-md-10 mode-edit mode-new">
                                    <input type="file" class="form-control-file d-block py-1" id="demo_files" multiple>
                                </div>
                                <div class="form-group col col-md-10 col-form-label mode-view">
                                    <a id="demo_bs_file" href="#"></a>
                                </div>
                            </div>
                        </div>

                        <div class="callout callout-danger callout-sm mode-view">
                            <div class="form-row border-bottom boder-success">

                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">등록자 :</label>
                                <div class="col-md-4">
                                    <div class="form-control-plaintext mode-view" id="author_name"></div>
                                </div>

                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit">승인자 :</label>
                                <div class="col-md-2">
                                    <div class="form-control-plaintext mode-view" id="confirm_admin"></div>
                                </div>
                                <div class="col-md-1">
                                    <button type="button" class="btn btn-sm btn-outline-primary form-control" id="is_confirm">승인하기</button>
                                </div>

                            </div>

                        </div>


                    </form>
                </div>
                <div class="modal-footer justify-content-between mode-new">
                    <div>
                        <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">&nbsp;&nbsp;<span class=""></span>&nbsp;&nbsp;취소&nbsp;&nbsp;</button>
                    </div>
                    <div>
                        <button type="button" class="btn btn-outline-primary mr-2"><span class="pe-7s-stopwatch"></span>&nbsp;&nbsp;임시저장</button>
                        <button type="button" class="btn btn-primary" id="demo_new_submit"><span class="pe-7s-stopwatch"></span>&nbsp;&nbsp;작성완료</button>
                    </div>
                </div>

                <div class="modal-footer justify-content-between mode-edit d-none">
                    <div>
                        <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal"><span class="pe-7s-close-circle"></span>&nbsp;&nbsp;취소</button>
                    </div>
                    <div>
                        <button type="button" class="btn btn-primary" id="demo_edit_submit"><span class="pe-7s-diskette"></span>&nbsp;&nbsp;저장</button>
                    </div>
                </div>

                <div class="modal-footer justify-content-between mode-view">
                    <div>
                        <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal"><span class="lnr lnr-exit"></span>&nbsp;&nbsp;닫기</button>
                    </div>

                    <div>
                        <button id="btn_edit_mode" type="button" class="btn btn-primary" ><span class="lnr lnr-pencil"></span>&nbsp;&nbsp;수정</button>
                    </div>

                </div>
            </div>
        </div>
    </div>

<!-- Layout footer -->
<%@include file ="../layouts/frame_footer.jsp" %>

    <!-- / Layout footer -->
    <script>

        function chkOnlyNum(event) {
            let regExp = /[^0-9]/g;
            let ele = event.target;
            if (regExp.test(ele.value)) {
                ele.value = ele.value.replace(regExp, '');
            }
        };

        function chkEmail(event) {
            let phoneRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/g;
            let ele = event.target;
            if (!phoneRegex.test(ele.value)) {
                console.log(ele.value)
                ele.value = ele.value.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/gi, '');
            }
        };

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
        var statusBool = 0;
        var demo_bs_contents_init = '';
        var confirmBool = 0;


        <c:forEach items="${demoBusinessVOList}" var="demo" varStatus="status">
        <%--var content = "${fn:replace(demo.demo_bs_contents, '\n', '<br/>')}";--%>
        demoArr.push({
            idx_demo_business: "${demo.idx_demo_business}",
            demo_bs_code: "${demo.demo_bs_code}",
            demo_subject: "${demo.demo_subject}",
            <%--demo_bs_contents: `${demo.demo_bs_contents}`,--%>
            demo_bs_contents: '${demo.demo_bs_contents}',
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
            idx_admin: '${demo.idx_admin}',
            admin_name:"${demo.admin_name}",

            idx_conform_admin: '${demo.idx_conform_admin}',
            confirm_admin:"${demo.confirm_admin}",

            is_announce: "${demo.is_announce}",
            reg_date: "${demo.reg_date}",
            last_upd_date: "${demo.last_upd_date}"
        })
        </c:forEach>


        $(".demo_entity").on("click", function(){
            var selectedIdx = $(this).attr("id").split("_")[1];

            if($('.mode-view').hasClass('d-none') == false){
                $('.mode-view').addClass('d-none');
            }

            if($('.mode-edit').hasClass('d-none') == false){
                $('.mode-edit').addClass('d-none');
            }

            if($('.mode-new').hasClass('d-none') == false){
                $('.mode-new').addClass('d-none');
            }

            $('.mode-view').removeClass('d-none');


            $('#btn_edit_mode').hide();

            demoArr.forEach(function(demo){
                if(demo.idx_demo_business == selectedIdx){
                    $('#demo_bs_code_view').text(demo.demo_bs_code);
                    $('#demo_bs_code').val(demo.demo_bs_code);

                    $('#demo_bs_status').val(demo.demo_bs_status).text();
                    $('#demo_bs_status').val(demo.demo_bs_status).prop("selected", true);

                    $('#demo_bs_status_view').text($('#demo_bs_status option:selected').val(demo.demo_bs_status).text());

                    $('#demo_bs_main_type_view').text(demo.demo_bs_main_type);
                    $('#demo_bs_main_type').val(demo.demo_bs_main_type);

                    $('#demo_bs_sub_type_view').text(demo.demo_bs_sub_type);
                    $('#demo_bs_sub_type').val(demo.demo_bs_sub_type);

                    $('#demo_bs_detail_type_view').text(demo.demo_bs_detail_type);
                    $('#demo_bs_detail_type').val(demo.demo_bs_detail_type);

                    $('#demo_subject_view').text(demo.demo_subject);
                    $('#demo_subject').val(demo.demo_subject);

                    $('#demo_dur').text(demo.start_date + ' ~ ' + demo.end_date);
                    $('#demo_start').val(demo.start_date);
                    $('#demo_end').val(demo.end_date);

                    $('#recruit_dur').text(demo.recruit_start_date + ' ~ ' + demo.recruit_end_date);
                    $('#recruit_start').val(demo.recruit_start_date);
                    $('#recruit_end').val(demo.recruit_end_date);

                    $('#exam_dur').text(demo.exam_start + ' ~ ' + demo.exam_end);
                    $('#exam_start').val(demo.exam_start);
                    $('#exam_end').val(demo.exam_end);

                    $('#convention_dur').text(demo.convention_start + ' ~ ' + demo.convention_end);
                    $('#convention_start').val(demo.convention_start);
                    $('#convention_end').val(demo.convention_end);

                    $('#recruit_count_limit_view').html(demo.recruit_count_limit);
                    $('#recruit_count_limit').val(demo.recruit_count_limit);


                    $('#bs_content').html(demo.demo_bs_contents);

                    $('#author_name').html(demo.admin_name);


                    if(demo.demo_bs_status>0){
                        if(demo.demo_bs_status < 2) {
                            $('#confirm_admin').html('미승인');
                            $('#is_confirm').show();
                        }
                        else {
                            console.log("confirm_amid : "+demo.confirm_admin);
                            $('#confirm_admin').html(demo.confirm_admin);
                            $('#is_confirm').hide();
                        }

                    } else {
                        $('#confirm_admin').html('미승인');
                        $('#is_confirm').hide();
                    }

                    if(demo.demo_bs_status < 4){
                        $('#btn_edit_mode').show();
                    }

                    if(demo.idx_admin == '${admin.idx_admin}'){
                        //$('#is_confirm').hide();
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

/*            if(curEntity.idx_admin == param.idx_conform_admin){
                return alert('본인이 등록한 사업은 직접 승인할 수 없습니다.');
            }*/

            $.ajax({
                url: 'confirm_demo_bs',
                method: 'post',
                data: JSON.stringify(param),//보내는 데이터
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'json',//받는 데이터 타입
                success: function (result) {
                    if (result.result_code == "SUCCESS") {
                        $('#close_button').click();

                        alert('승인되었습니다.');
                        pageLoad('demobs_mng',{cur_page:1,filter1:'${filter1}', filter2:'${filter2}'});

                    } else {
                        console.log(result);
                    }
                }
            })
        })

        $('#btn_new_domo_bs').click(function(){

            if($('.mode-view').hasClass('d-none') == false){
                $('.mode-view').addClass('d-none');
            }

            if($('.mode-edit').hasClass('d-none') == false){
                $('.mode-edit').addClass('d-none');
            }

            if($('.mode-new').hasClass('d-none') == false){
                $('.mode-new').addClass('d-none');
            }

            $('.mode-new').removeClass('d-none');


            $('#demo_bs_code').val("");

            $('#demo_bs_status').val('0').prop("selected", true);
            $('#demo_bs_main_type').val("");
            $('#demo_bs_sub_type').val("");
            $('#demo_bs_detail_type').val("");
            $('#demo_subject').val("");
            var now = new Date();

            $('#demo_start').val(formatDate(new Date()));
            $('#demo_end').val(formatDate(new Date()));

            $('#recruit_start').val(formatDate(new Date()));
            $('#recruit_end').val(formatDate(new Date()));

            $('#exam_start').val(formatDate(new Date()));
            $('#exam_end').val(formatDate(new Date()));

            $('#convention_start').val(formatDate(new Date()));
            $('#convention_end').val(formatDate(new Date()));

            $('#recruit_count_limit').val(0);

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
            $('#recruit_start').datepicker('setDate', demo.recruit_start_date);
            $('#recruit_end').datepicker('setDate', demo.recruit_end_date);
            $('#exam_start').datepicker('setDate', demo.exam_start);
            $('#exam_end').datepicker('setDate', demo.exam_end);

            $('#convention_start').datepicker('setDate', demo.convention_start);
            $('#convention_end').datepicker('setDate', demo.convention_end);

            $('#recruit_count_limit').val(demo.recruit_count_limit);
            $('#demo_bs_status option[value=' + demo.demo_bs_status + ']').prop('selected', 'selected')
            $('.summernote').summernote('pasteHTML', demo.demo_bs_contents);
            demo_bs_contents_init = $('.summernote').summernote('code');
            demo_bs_main_typeBool, demo_bs_sub_typeBool, demo_bs_detail_typeBool, demo_subjectBool, start_dateBool, end_dateBool, recruit_start_dateBool, recruit_end_dateBool, exam_startBool, exam_endBool, plan_review_startBool, plan_review_endBool, convention_startBool, convention_endBool, convention_endBool, recruit_count_limitBool, statusBool = 0;
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

            $('#recruit_start').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.recruit_start_date) {
                        recruit_start_dateBool = 1;
                    } else {
                        recruit_start_dateBool = 0;
                    }
                }
            })

            $('#recruit_end').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.recruit_end_date) {
                        recruit_end_dateBool = 1;
                    } else {
                        recruit_end_dateBool = 0;
                    }
                }
            })

            $('#exam_start').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.exam_start) {
                        exam_startBool = 1;
                    } else {
                        exam_startBool = 0;
                    }
                }
            })

            $('#exam_end').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.exam_end) {
                        exam_endBool = 1;
                    } else {
                        exam_endBool = 0;
                    }
                }
            })

            $('#convention_start').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.convention_start) {
                        convention_startBool = 1;
                    } else {
                        convention_startBool = 0;
                    }
                }
            })

            $('#convention_end').change(function(){
                if(curEntity != null) {
                    if ($(this).val() != curEntity.convention_end) {
                        convention_endBool = 1;
                    } else {
                        convention_endBool = 0;
                    }
                }
            })

            $('#convention_end').change(function(){
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

            $('#demo_bs_status').change(function (){
                if(curEntity != null){
                    if($(this).val() != curEntity.demo_bs_status){
                        statusBool = 1;
                    } else {
                        statusBool = 0;
                    }
                }
            })






        $("#btn_bs_code_dupl_check").click(function (){
            var code = $("#demo_bs_code").val();
            if(code.length < 1){
                alert('사업번호가 비어있습니다.');
            }
            else if(code.match(/[^a-z|A-Z|0-9|ㄱ-ㅎ|가-힣\s]/g)){
                alert('특수문자는 포함할 수 없습니다.');
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
                            alert("이미 사용 중이거나 사용이 불가능한 사업 번호입니다.");
                        }
                    }
                })
            }
        })

        $('#demo_edit_submit').click(function(){

            var param = {
                idx_demo_business: curEntity.idx_demo_business,
                idx_admin:curEntity.idx_admin,
                idx_conform_admin:curEntity.idx_conform_admin
            }
            if(duplBool){

                if(!($('#demo_bs_status option:selected').val()==0 || $('#demo_bs_status option:selected').val()==1)){
                    alert("승인이 완료되어 변경할 수 없습니다.");
                    return;
                }
                param.demo_bs_code = $('#demo_bs_code').val();
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
                param.recruit_start_date = $('#recruit_start').val();
            }
            if(recruit_end_dateBool == 1){
                param.recruit_end_date = $('#recruit_end').val();
            }
            if(exam_startBool == 1){
                param.exam_start = $('#exam_start').val();
            }
            if(exam_endBool == 1){
                param.exam_end = $('#exam_end').val();
            }
            if(convention_startBool == 1){
                param.convention_start = $('#convention_start').val();
            }
            if(convention_startBool == 1){
                param.convention_start = $('#convention_start').val();
            }
            if(convention_endBool == 1){
                param.convention_end = $('#convention_end').val();
            }
            if(recruit_count_limitBool == 1){
                param.recruit_count_limit = $('#recruit_count_limit').val();
            }
            if($('.summernote').summernote('code') != demo_bs_contents_init){
                param.demo_bs_contents = $('.summernote').summernote('code');
            }

            if(curEntity.idx_admin == 0){
                console.log("=="+curEntity.idx_admin +"  , admin_idx :"+${admin.idx_admin});
                param.idx_admin = '${admin.idx_admin}';
            }

            if(statusBool == 1){
                param.demo_bs_status = $('#demo_bs_status').val();

                if(curEntity.idx_conform_admin == '0' && param.demo_bs_status == 2){
                    param.idx_conform_admin = '${admin.idx_admin}';
                }
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



                        $('#close_button').click();

                        $('#demo_bs_main_type, #demo_bs_sub_type, #demo_bs_detail_type, #demo_subject, #demo_start, #demo_end, #recruit_start, #recruit_end, #exam_start, #exam_end, #convention_start, #convention_end, #recruit_count_limit, #memo').val('');
                        $('#bs_content_edit').summernote('code', '');

                        alert('수정이 완료되었습니다.');
                        pageLoad('demobs_mng',{cur_page:1,filter1:'${filter1}', filter2:'${filter2}'});

                    } else {
                        alert("이미 사용 중이거나 사용이 불가능한 사업 번호입니다.");
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
                $('#recruit_start').val() == "" ||
                $('#recruit_end').val() == "" ||
                $('#exam_start').val() == "" ||
                $('#exam_end').val() == "" ||
/*                $('#demo_modify_start').val() == "" ||
                $('#demo_modify_end').val() == "" ||*/
                $('#convention_start').val() == "" ||
                $('#convention_end').val() == "" ||
                $('#recruit_count_limit').val() == ""
            ){
                alert('모든 데이터를 입력해야 합니다.');
                return;
            }

            var newDemoBs = new FormData();
            newDemoBs.append("demo_bs_code", $('#demo_bs_code').val());
            newDemoBs.append("demo_bs_status", 0);
            newDemoBs.append("demo_bs_main_type", $('#demo_bs_main_type').val());
            newDemoBs.append("demo_bs_sub_type", $('#demo_bs_sub_type').val());
            newDemoBs.append("demo_bs_detail_type", $('#demo_bs_detail_type').val());
            newDemoBs.append("demo_subject", $('#demo_subject').val());
            newDemoBs.append("start_date", new Date($('#demo_start').val()));
            newDemoBs.append("end_date", new Date($('#demo_end').val()));
            newDemoBs.append("recruit_start_date", new Date($('#recruit_start').val()));
            newDemoBs.append("recruit_end_date", new Date($('#recruit_end').val()));
            newDemoBs.append("exam_start", new Date($('#exam_start').val()));
            newDemoBs.append("exam_end", new Date($('#exam_end').val()));
/*            newDemoBs.append("plan_review_start", new Date($('#demo_modify_start').val()));
            newDemoBs.append("plan_review_end", new Date($('#demo_modify_end').val()));*/
            newDemoBs.append("convention_start", new Date($('#convention_start').val()));
            newDemoBs.append("convention_end", new Date($('#convention_end').val()));
            newDemoBs.append("recruit_count_limit", $('#recruit_count_limit').val());
            newDemoBs.append("memo", $('#memo').val());
            newDemoBs.append("idx_admin", '${admin.idx_admin}');
            console.log(${admin.idx_admin});
            newDemoBs.append("demo_bs_contents", $('#bs_content_edit').summernote('code'));
            document.querySelector('#demo_files').files[0] ? newDemoBs.append("file", document.querySelector('#demo_files').files[0]) : '';

            $.ajax({
                url: 'insert_new_demobs',
                method: 'post',
                data: newDemoBs,//보내는 데이터
                contentType: false,//보내는 데이터 타입
                processData: false,//Jquery 내부에서 파일을 queryString 형태로 전달하는 것을 방지
                dataType:'json',//받는 데이터 타입
                enctype: 'multipart/form-data',
                success: function (result) {
                    if (result.result_code == "SUCCESS") {

                        $('#modals-business').modal('hide');
                        $(".summernote").summernote('destroy');
                        $('#demo_bs_code, #demo_bs_status, #demo_bs_main_type, #demo_bs_sub_type, #demo_bs_detail_type, #demo_subject, #demo_start, #demo_end, #recruit_start, #recruit_end, #exam_start, #exam_end, #convention_start, #convention_end, #recruit_count_limit, #memo').val('');
                        $('#bs_content_edit').summernote('code', '');

                        alert("실증 사업이 등록되었습니다.");
                        pageLoad('demobs_mng',{cur_page:1,filter1:'${filter1}', filter2:'${filter2}'});

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
                cur_page:1,
                list_amount:10,
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