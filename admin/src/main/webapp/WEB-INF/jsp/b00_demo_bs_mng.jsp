<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>실증사업 관리</div>
        </h4>

        <div class="row">
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <button id="btn_filter1" class="card-body btn btn-white" onclick="javascript:load('b00_demo_bs_mng?page=1&filter1=9999&filter2=9998','실증사업 목록');">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="/static/assets/img/img_business_all.png" alt=""></div>
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
                    <button id="btn_filter2" class="card-body  btn btn-white" onclick="javascript:load('b00_demo_bs_mng?page=1&filter1=3&filter2=4','실증사업 목록');">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="/static/assets/img/img_business_on.png" alt=""></div>
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
                    <button id="btn_filter3" class="card-body btn btn-white" onclick="javascript:load('b00_demo_bs_mng?page=1&filter1=5&filter2=6','실증사업 목록');">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="/static/assets/img/img_business_week.png" alt=""></div>
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
                    <button id="btn_filter4" class="card-body btn btn-white" onclick="javascript:load('b00_demo_bs_mng?page=1&filter1=7&filter2=8','실증사업 목록');">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="/static/assets/img/img_business_off.png" alt=""></div>
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
                    <button id="btn_filter5" class="card-body btn btn-white" onclick="javascript:load('b00_demo_bs_mng?page=1&filter1=9&filter2=10','실증사업 목록');">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="/static/assets/img/img_business_off.png" alt=""></div>
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
                    <button id="btn_filter6" class="card-body btn btn-white" onclick="javascript:load('b00_demo_bs_mng?page=1&filter1=11&filter2=12','실증사업 목록');">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="/static/assets/img/img_business_off.png" alt=""></div>
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
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modals-business" data-what="mode-new">+ 신규 사업 등록</button>
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
                                        <td class=""><a href="#none" data-toggle="modal" data-target="#modals-business" data-what="mode-view">${demoBs.demo_subject}</a></td>
                                        <td class="text-right">${demoBs.recruit_count_limit}</td>
                                        <td class="text-center">${demoBs.start_date}</td>
                                        <td class="text-center">${demoBs.end_date}</td>
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
                            <div class="dataTables_info" id="article-list_info" role="status" aria-live="polite">총 ${total_count}개 중 ${list_amount*(cur_page-1)+1}에서 ${list_amount*page_amount}까지까지</div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                                <ul class="pagination">

                                    <c:set var="name" value="${total_count/amount}" />


                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:load('b00_demo_bs_mng?page=1&filter1=${filter1}&filter2=${filter2}','실증사업 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:load('b00_demo_bs_mng?page=${cur_page-1}&filter1=${filter1}&filter2=${filter2}','실증사업 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>



                                    <c:forEach var="i" begin="1" end="${page_amount}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:load('b00_demo_bs_mng?page=${(cur_sector-1)*page_amount+i}&filter1=${filter1}&filter2=${filter2}','실증사업 관리');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>

                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:load('b00_demo_bs_mng?page=${cur_page+1}&filter1=${filter1}&filter2=${filter2}','실증사업 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:load('b00_demo_bs_mng?page=${tot_page}&filter1=${filter1}&filter2=${filter2}','실증사업 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
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
                        <!-- 문서버전 / 중요 -->
                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">문서버전</label>

                            <div class="col-md-2">
                                <div class="form-control-plaintext">1</div>
                            </div>
                            <div class="col-md-2 mode-view">
                                <div class="form-control-plaintext">전시전</div>
                            </div>
                            <div class="col-md-4 mode-new mode-edit">
                                <label class="col-form-label form-check">
                                    <input class="form-check-input" type="checkbox" value>
                                    <div class="form-check-label">
                                        중요
                                    </div>
                                </label>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">문서번호</label>
                            <div class="col-md-10">
                                <div class="form-control-plaintext mode-edit mode-view">12345678901234</div>
                                <div class="input-group mode-new">
                                    <input type="text" class="form-control form-control-md" placeholder="문서번호를 입력해 주세요...">
                                    <span class="input-group-append">
                                        <button id="btn_demobs_code_dupl_check" class="btn btn-md btn-outline-dark" type="button">번호 중복체크</button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">모집 기간</label>
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
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">게시 기간</label>
                            <div class="col-md-10">
                                <div class="form-control-plaintext mode-view">2022-01-01 9:00 AM - 2022-02-01 6:00 PM</div>

                                <div id="datepicker-show" class="input-daterange input-group mode-edit mode-new">
                                    <input type="text" class="form-control mr-1" name="start">
                                    <input type="text" class="form-control" placeholder="9:00 AM" id="flatpickr-time-start">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">~</span>
                                    </div>
                                    <input type="text" class="form-control mr-1" name="end">
                                    <input type="text" class="form-control" placeholder="6:00 PM" id="flatpickr-time-end">
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit mode-new">모집 수</label>
                            <div class="col-md-6 mode-edit mode-new">
                                <input type="text" class="form-control form-control-md text-md-right" placeholder="0">
                                <p class="form-control-plaintext">명(기업)</p>
                            </div>

                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-view">지원 현황</label>
                            <div class="col-md-10 mode-view">
                                <div class="col-md-2">
                                    <div class="form-control-plaintext">모집 수 200 명(기업)</div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-control-plaintext">지원 수 540 명(기업)</div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-control-plaintext">경쟁율 2.7:1</div>
                                </div>
                            </div>
                        </div>

                        <hr>
                        <!-- 제목 -->
                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">제목</label>
                            <div class="col-md-10">
                                <input type="text" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요">
                                <div class="form-control-plaintext mode-view">공고문 제목제목제목제목 1</div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">본문</label>
                            <div class="col-md-10 mode-edit mode-new">
                                <div class="summernote"></div>
                            </div>
                            <div class="col-md-10 mode-view">
                                <div class="form-control-plaintext mode-view">자세히 보기</div>
                            </div>
                        </div>

                        <div class="form-row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">파일 첨부</label>
                            <div class="form-group col col-md-10 mode-edit mode-new">
                                <input type="file" class="form-control-file d-block py-1">
                                <input type="file" class="form-control-file d-block py-1">
                            </div>
                            <div class="form-group col col-md-10 col-form-label mode-view">
                                <a href="file.doc">공고문.pdf</a>
                                <a href="file.doc">공고문 상세.pdf</a>
                            </div>
                        </div>

                        <div class="form-row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">키워드</label>
                            <div class="form-group col col-md-10">
                                <input type="text" class="form-control mode-edit mode-new" value="#스마트팜,#사업공고" data-role="tagsinput">
                                <div class="form-control-plaintext mode-view">#스마트팜,#사업공고</div>
                            </div>
                        </div>
                        <div class="form-row">
                            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">메모</label>
                            <div class="form-group col col-md-10">
                                <textarea class="form-control mode-edit mode-new" rows="3"></textarea>
                                <textarea class="form-control mode-view" readonly rows="5"></textarea>
                            </div>
                        </div>

                        <div class="modal-footer justify-content-between mode-new">
                            <div>
                                <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                                <button type="button" class="btn btn-secondary">미리보기</button>
                            </div>
                            <div>
                                <button type="button" class="btn btn-outline-primary mr-2">임시저장</button>
                                <button type="button" class="btn btn-primary">게시&저장</button>
                            </div>
                        </div>

                        <div class="modal-footer justify-content-between mode-edit d-none">
                            <div>
                                <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                                <button type="button" class="btn btn-secondary">미리보기</button>
                            </div>
                            <div>
                                <button type="button" class="btn btn-primary">게시&저장</button>
                            </div>
                        </div>

                        <div class="modal-footer justify-content-between mode-view">
                            <div>
                                <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">닫기</button>
                                <button type="button" class="btn btn-secondary">미리보기</button>
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