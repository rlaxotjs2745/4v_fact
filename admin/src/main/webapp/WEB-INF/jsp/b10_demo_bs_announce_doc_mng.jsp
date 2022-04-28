<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>사업공고문 관리</div>
        </h4>

        <div class="row">
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="/static/assets/img/img_business_all.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">전체</div>
                                <div class="text-large">123</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="/static/assets/img/img_business_on.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">전시중</div>
                                <div class="text-large">456</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="/static/assets/img/img_business_week.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">1주일 이내 완료</div>
                                <div class="text-large">78</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="/static/assets/img/img_business_off.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">전시 종료</div>
                                <div class="text-large">910</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <hr class="mt-0">

        <div class="card mt-4">
            <h6 class="card-header font-weight-bold with-elements">
                <div class="card-header-title">사업 공고문 목록</div>
                <div class="card-header-elements ml-auto">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modals-business" data-what="mode-new">+ 신규 공고문 작성</button>
                </div>
            </h6>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="table_demo_bs" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-success text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center" style="width:60px">상태</th>
                                    <th class="text-center" style="width:100px">공고문 번호</th>
                                    <th class="text-center" style="width:300px">공고문 제목</th>
                                    <th class="text-center" style="width:80px">열람 수(회)</th>
                                    <th class="text-center" style="width:80px">지원 현황</th>
                                    <th class="text-center" style="width:110px">전시 시작일, 시간</th>
                                    <th class="text-center" style="width:110px">전시 종료일, 시간</th>
                                    <th class="text-center" style="width:80px">작성자</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="">
                                    <td class="text-center">전시전</td>
                                    <td class="text-center">12345678901</td>
                                    <td class=""><a href="#none" data-toggle="modal" data-target="#modals-business" data-what="mode-view">공고문제목 제목 공고문 공고문제목 제목 공고문</a></td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">임시저장</td>
                                    <td class="text-center">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중단</td>
                                    <td class="text-center">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
                                </tr>
                                <tr class="">
                                    <td class="text-center">전시중</td>
                                    <td class="text-center">12345678901</td>
                                    <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                                    <td class="text-right">1,234</td>
                                    <td class="text-right">58</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">홍길동</td>
                                </tr>
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
<%--        <div class="d-flex justify-content-end align-items-end w-100 mt-2">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modals-business-write">신규 공고문 작성</button>
        </div>--%>
    </div>


    <!-- new demo bs-->
    <div class="modal fade" id="modals-business">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header bg-success">
                    <h5 class="modal-title text-white font-weight-bold mode-new">사업 공고문 작성</h5>
                    <h5 class="modal-title text-white font-weight-bold mode-edit d-none">사업 공고문 수정</h5>
                    <h5 class="modal-title text-white font-weight-bold mode-view">사업 공고 현황</h5>
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