<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h5 class="d-flex justify-content-between align-items-center w-100 mt-2">
            <div><i class="pe-7s-display2 text-success-custom"></i> 사업공고문 관리</div>
        </h5>

        <div class="row">
            <div class="col-sm-6 col-xl-3">
                <div class="card">
                    <button id="btn_filter1" class="btn btn-white" onclick="javascript:pageLoad('announce_mng',{cur_page:1, filter1:9999, filter2:9998},'사업공고문 관리');">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="resources/assets/img/img_business_all.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">전체</div>
                                <div class="text-large">${announce_tot}</div>
                            </div>
                        </div>
                    </button>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card">
                    <button id="btn_filter2" class="btn btn-white" onclick="javascript:pageLoad('announce_mng',{cur_page:1,filter1:3,filter2:9998},'사업공고문 관리');">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="resources/assets/img/img_business_on.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">공고 중</div>
                                <div class="text-large">${status_on_count}</div>
                            </div>
                        </div>
                    </button>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card">
                    <button id="btn_filter3" class="btn btn-white" onclick="javascript:pageLoad('announce_mng',{cur_page:1,filter1:1,filter2:2},'사업공고문 관리');">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="resources/assets/img/img_business_week.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">대기 중</div>
                                <div class="text-large">${wait_count}</div>
                            </div>
                        </div>
                    </button>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card">
                    <button id="btn_filter4" class="btn btn-white" onclick="javascript:pageLoad('announce_mng',{cur_page:1,filter1:4,filter2:9998},'사업공고문 관리');">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><img src="resources/assets/img/img_business_off.png" alt=""></div>
                            <div class="ml-3">
                                <div class="text-muted small">일시 중지 중</div>
                                <div class="text-large">${pause_count}</div>
                            </div>
                        </div>
                    </button>
                </div>
            </div>
        </div>

        <div class="card mt-2">
            <div class="card-header font-weight-bold with-elements text-white bg-success">
                <div>사업 공고문 목록</div>
                <div class="card-header-elements ml-auto">
                    <button type="button" id="open_new_anno" class="btn btn-sm btn-outline-white" data-toggle="modal" data-target="#modals-business" data-what="mode-new">+ 신규 공고문 작성</button>
                </div>
            </div>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="table_demo_bs" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-light-dark text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center" style="width:6%">No.</th>
                                    <th class="text-center" style="width:18%">사업 번호</th>
                                    <th class="text-center" style="width:14%">문서 번호</th>
                                    <th class="text-center" style="width:30%">공고문 제목</th>
                                    <th class="text-center" style="width:10%">게시 상태</th>
                                    <th class="text-center" style="width:14%">게시 일시</th>
                                    <th class="text-center" style="width:8%">작성자</th>
                                </tr>
                                </thead>
                                <tbody>
                        <c:choose>
                            <c:when test="${bsAnnounceHeaderVOList eq null or demoBusinessVOList.size() eq 0}">

                                <c:forEach var = "i" begin = "1" end = "4">
                                    <tr><td class="text-center empty-list" colspan="7"></td></tr>
                                </c:forEach>
                                <tr class=""><td class="text-center empty" colspan="7">내용이 없습니다</td></tr>
                                <c:forEach var = "i" begin = "1" end = "5">
                                    <tr><td class="text-center empty-list" colspan="7"></td></tr>
                                </c:forEach>

                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${bsAnnounceHeaderVOList}" var="item" varStatus="status">
                                    <tr id="" class="">

                                        <td class="text-center">${item.idx_bs_announcement}</td>
                                        <td id="demo_id_${item.idx_demo_business}" class="text-center demo_bs_title"></td>
                                        <td class="text-center">${item.bs_announcement_code}</td>
                                        <td class=""><a href="#none" id="bsAnno_${item.idx_bs_announcement}" class="open_modal_business text-center" data-toggle="modal" data-target="#modals-business" data-what="mode-view">${item.subject}</a></td>
                                        <td class="text-center">
                                        <c:choose>
                                            <c:when test="${item.announce_status eq 0}">임시저장</c:when>
                                            <c:when test="${item.announce_status eq 1}">게시전 수동게시</c:when>
                                            <c:when test="${item.announce_status eq 2}">게시전 자동게시</c:when>
                                            <c:when test="${item.announce_status eq 3}">게시중</c:when>
                                            <c:when test="${item.announce_status eq 4}">게시 일시 중지</c:when>
                                            <c:when test="${item.announce_status eq 5}">게시 기간 종료</c:when>
                                        </c:choose>
                                        </td>

                                        <fmt:formatDate value="${item.posting_start_date}" var="pstart_date" pattern="yyyy-MM-dd"/>
                                        <fmt:formatDate value="${item.posting_end_date}" var="pend_date" pattern="yyyy-MM-dd"/>
                                        <td class="text-center">${pstart_date} ~ ${pend_date}</td>
                                        <td class="text-center">${item.author}</td>
                                    </tr>
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
                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('announce_mng',{cur_page:1,filter1:'${filter1}', filter2:'${filter2}'},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('announce_mng',{cur_page:'${cur_page-1}',filter1:'${filter1}',filter2:'${filter2}'},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>
                                    <c:forEach var="i" begin="1" end="${remain_page}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('announce_mng',{cur_page:'${(cur_sector-1)*page_amount+i}',filter1:'${filter1}',filter2:'${filter2}'},'사업공고문 관리');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>
                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('announce_mng',{cur_page:'${cur_page+1}',filter1:'${filter1}',filter2:'${filter2}'},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('announce_mng',{cur_page:'${tot_page}',filter1:'${filter1}',filter2:'${filter2}'},'사업공고문 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
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
                    <h5 class="modal-title text-white font-weight-bold mode-new">사업 공고문 작성</h5>
                    <h5 class="modal-title text-white font-weight-bold mode-edit">사업 공고문 수정</h5>
                    <h5 class="modal-title text-white font-weight-bold mode-view">사업 공고 현황</h5>
                    <button type="button" id="modal_close_button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body">
                    <form>
                        <!-- 문서버전 / 중요 -->
                        <div class="callout callout-primary callout-sm mb-1">
                            <div class="form-row border-bottom boder-success">

                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업 번호 :</label>
                                <div class="col-md-4">
                                    <div id="view_demobs_code" class="form-control-plaintext mode-view"></div>

                                    <div id="datepicker-open" class="input-daterange input-group mode-edit mode-new">
                                        <select id="select_demo_bs" class="custom-select form-control" style="width: 100%;">
                                            <c:forEach items="${demoStateBsVOList}" var="demo" varStatus="status">
                                                <option value="demo_${demo.idx_demo_business}">${demo.demo_bs_code}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>

                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업 상태 :</label>
                                <div class="col-md-4">
                                    <div id="view_demobs_status" class="form-control-plaintext mode-view"></div>
                                </div>
                            </div>


                            <div class="form-row border-bottom boder-success">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">문서 번호 :</label>
                                <div class="col-md-4">
                                    <div id="view_bs_announcement_code" class="form-control-plaintext mode-edit mode-view"></div>
                                    <div class="input-group mode-new">
                                        <input type="text" id="announcementCode" class="form-control form-control-md" placeholder="문서번호를 입력해 주세요...">
                                        <span class="input-group-append">
                                            <button id="btn_demobs_code_dupl_check" class="btn btn-md btn-outline-dark" type="button">번호 중복체크</button>
                                        </span>
                                    </div>
                                </div>

                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업공고 상태 :</label>
                                <div class="col-md-4 ">

                                    <div id="view_announce_status" class="form-control-plaintext mode-view"></div>


                                    <label class="col-form-label form-check mode-new mode-edit">
                                        <select id="edit_announce_status" class="custom-select form-control" style="width: 100%;">
                                            <option value="0">임시 저장</option>
                                            <option value="1">게시전, 수동 게시</option>
                                            <option value="2">게시전, 자동 게시</option>
                                            <option value="3">게시</option>
                                            <option value="4">게시 일시 중지</option>
                                            <option value="5">게시 기간 종료</option>
                                        </select>
                                    </label>
                                </div>
                            </div>


                            <div class="form-row border-bottom boder-success">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업공고 제목 :</label>
                                <div class="col-md-10">
                                    <input type="text" id="edit_subject" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요">
                                    <div id="view_subject" class="form-control-plaintext mode-view">공고문 제목제목제목제목 1</div>
                                </div>
                            </div>
                        </div>

                        <div class="callout callout-warning callout-sm mb-1">

                            <div class="form-row border-bottom boder-success">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">모집 기간 :</label>
                                <div class="col-md-4">
                                    <div id="view_recuruit_dur" class="form-control-plaintext mode-view"></div>
                                </div>
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">게시 기간 :</label>
                                <div class="col-md-4">
                                    <div id="view_posting_date" class="form-control-plaintext mode-view"></div>

                                    <div id="datepicker-show" class="input-daterange input-group mode-edit mode-new">
                                        <input type="text" class="form-control" name="start" id="edit_posting_start">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">~</span>
                                        </div>
                                        <input type="text" class="form-control" name="end" id="edit_posting_end">
                                    </div>
                                </div>

                            </div>

                            <div class="form-row border-bottom boder-success">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">포털메인 노출 :</label>
                                <div id="view_is_main_page" class="form-control-plaintext col-md-2 mode-view"></div>
                                <div class="input-group col-md-2 mode-new mode-edit d-none">
                                    <select id="is_main_page" class="custom-select form-control" style="width: 100%;">
                                        <option value='0'>아니오</option>
                                        <option value='1'>예</option>
                                    </select>
                                </div>


                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">신규 표시 :</label>
                                <div id="view_is_new" class="form-control-plaintext col-md-2 mode-view"></div>
                                <div class="input-group col-md-2 mode-new mode-edit d-none">
                                    <select id="is_new" class="custom-select form-control" style="width: 100%;">
                                        <option value='0'>아니오</option>
                                        <option value='1'>예</option>
                                    </select>
                                </div>

                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">일시 감춤 여부 :</label>
                                <div id="view_is_show" class="form-control-plaintext col-md-2 mode-view"></div>
                                <div class="input-group col-md-2 mode-new mode-edit d-none">
                                    <select id="is_show" class="custom-select form-control" style="width: 100%;">
                                        <option value='1'>아니오</option>
                                        <option value='0'>예</option>
                                    </select>
                                </div>
                            </div>



                        </div>

                        <div class="callout callout-info callout-sm mb-1">
                            <!-- 제목 -->


                            <div class="form-row border-bottom boder-success">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">본문</label>
                                <div class="col-md-10 mode-edit mode-new">
                                    <div class="summernote"></div>
                                </div>
                                <div class="col-md-10 mode-view">
                                    <div id="view_announce_contents" class="form-control-plaintext mode-view"></div>
                                </div>
                            </div>

                            <div class="form-row border-bottom boder-success">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">파일 첨부</label>
                                <div class="form-group col col-md-10 mode-edit mode-new">
                                    <input type="file" id="edit_file" class="form-control-file d-block py-1">
                                </div>
                                <div class="form-group col col-md-10 col-form-label mode-view">
                                    <a id="view_is_file" href="file.doc">공고문.pdf</a>
                                </div>
                            </div>

                            <div class="form-row border-bottom boder-success">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">작성자</label>
                                <div class="form-group col col-md-10">
                                    <div id="view_author" class="form-control-plaintext mode-view"></div>
                                    <div id="edit_author" class="form-control-plaintext mode-edit mode-new">${admin.admin_name}</div>
                                </div>
                            </div>
                        </div>




                    </form>
                </div>
                <div class="modal-footer justify-content-between mode-new">
                    <div>
                        <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                        <%--                                <button type="button" class="btn btn-secondary">미리보기</button>--%>
                    </div>
                    <div>
                        <%--                                <button type="button" class="btn btn-outline-primary mr-2">임시저장</button>--%>
                        <button type="button" id="new_submit" class="btn btn-primary">게시&저장</button>
                    </div>
                </div>

                <div class="modal-footer justify-content-between mode-edit">
                    <div>
                        <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                        <%--                                <button type="button" class="btn btn-secondary">미리보기</button>--%>
                    </div>
                    <div>
                        <button type="button" id="edit_submit" class="btn btn-primary">게시&저장</button>
                    </div>
                </div>

                <div class="modal-footer justify-content-between mode-view">
                    <div>
                        <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">닫기</button>
                        <%--                                <button type="button" class="btn btn-secondary">미리보기</button>--%>
                    </div>

                    <div>
                        <button id="btn_edit_mode" type="button" class="btn btn-primary">수정</button>
                    </div>

                </div>

            </div>
        </div>
    </div>

<!-- Layout footer -->
<%@include file ="../layouts/frame_footer.jsp" %>
    <!-- / Layout footer -->
    <script>
        var bsaArr = [];
        var demoBsArr = [];
        var curEntity = null;
        var initContents = '';
        var isFile = false;
        var duplBool =

        <c:forEach items="${bsAnnounceHeaderVOList}" var="bsa">

        bsaArr.push({
            idx_bs_announcement: '${bsa.idx_bs_announcement}',
            bs_announcement_code: '${bsa.bs_announcement_code}',
            announce_num: '${bsa.announce_num}',
            subject: '${bsa.subject}',
            announce_contents: '${bsa.announce_contents}',
            bs_status: '${bsa.bs_status}',
            is_file: '${bsa.is_file}',
            is_new: '${bsa.is_new}',
            is_main_page: '${bsa.is_main_page}',
            is_important: '${bsa.is_important}',
            is_show: '${bsa.is_show}',
            view_count: '${bsa.view_count}',
            announce_status: '${bsa.announce_status}',
            <fmt:formatDate value="${bsa.posting_start_date}" var="pstart_date"  pattern="yyyy-MM-dd"/>
            <fmt:formatDate value="${bsa.posting_end_date}" var="pend_date"  pattern="yyyy-MM-dd"/>
            posting_start_date: '${pstart_date}',
            posting_end_date: '${pend_date}',
            <fmt:formatDate value="${bsa.recruit_start_date}" var="recruit_start_date"  pattern="yyyy-MM-dd"/>
            <fmt:formatDate value="${bsa.recruit_end_date}" var="recruit_end_date"  pattern="yyyy-MM-dd"/>
            recruit_start_date: '${recruit_start_date}',
            recruit_end_date: '${recruit_end_date}',
            doc_version: '${bsa.doc_version}',
            memo: '${bsa.memo}',
            search_tag: '${bsa.search_tag}',
            author: '${bsa.author}',
            idx_demo_business: '${bsa.idx_demo_business}',
            demobs_status:
                <c:choose>
                    <c:when test="${bsa.demo_bs_status eq 0}">"임시"</c:when>
                    <c:when test="${bsa.demo_bs_status eq 1}">"작성완료"</c:when>
                    <c:when test="${bsa.demo_bs_status eq 2}">"승인완료"</c:when>
                    <c:when test="${bsa.demo_bs_status eq 3}">"모집중"</c:when>
                    <c:when test="${bsa.demo_bs_status eq 4}">"모집 종료"</c:when>
                    <c:when test="${bsa.demo_bs_status eq 5}">"심사중"</c:when>
                    <c:when test="${bsa.demo_bs_status eq 6}">"심사완료"</c:when>
                    <c:when test="${bsa.demo_bs_status eq 7}">"이용계획 조정"</c:when>
                    <c:when test="${bsa.demo_bs_status eq 8}">"이용계획 확정"</c:when>
                    <c:when test="${bsa.demo_bs_status eq 9}">"협약중"</c:when>
                    <c:when test="${bsa.demo_bs_status eq 10}">"협약완료"</c:when>
                    <c:when test="${bsa.demo_bs_status eq 11}">"사업 시작"</c:when>
                    <c:when test="${bsa.demo_bs_status eq 12}">"사업 종료"</c:when>
                    <c:when test="${bsa.demo_bs_status eq 13}">"결산중"</c:when>
                    <c:when test="${bsa.demo_bs_status eq 14}">"결산 완료"</c:when>
                    <c:otherwise>"..."</c:otherwise>
                </c:choose>
            ,
            confirm_admin_idx: '${bsa.confirm_admin_idx}',
            idx_admin: '${bsa.idx_admin}',
        })
        </c:forEach>

        <c:forEach items="${demoStateBsVOList}" var="demoBs">
        demoBsArr.push({
            demo_bs_code: '${demoBs.demo_bs_code}'
        })
        $('#demo_id_${demoBs.idx_demo_business}').text('${demoBs.demo_bs_code}');

        </c:forEach>

        $('.open_modal_business').click(function (){
            var bsIdx = $(this).attr('id').split('_')[1];

            for(var bsa of bsaArr){
                if(bsa.idx_bs_announcement == bsIdx){
                    fillDataView(bsa);
                    break;
                }
            }
        })

        $('#open_new_anno').click(function(){
            fillDataNew();
        })

        function getFileInfo(idx){

            return $.ajax({
                url: 'get_bs_anno_file_info?idx_bs_announcement=' + bsIdx,
                method: 'get',
                // data: JSON.stringify(code),//보내는 데이터
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'json',//받는 데이터 타입
                success: function (result) {
                    $('#view_is_file').attr('href', result.file_path);
                    $('#view_is_file').text(result.file_name);
                }
            })
        }


        function fillDataView (bs){
            curEntity = bs;
            $('#view_doc_version').text(bs.doc_version);
            $('#view_announce_status').text(bs.announce_status == '0' ? '임시 저장' :bs.announce_status == '1' ? '수동 게시 예정' : bs.announce_status == '2' ? '자동 게시 예정' : bs.announce_status == '3' ? '게시 중' : bs.announce_status == '4' ? '게시 일시 중지' : bs.announce_status == '5' ? '게시 기간 종료' : '기타');
            $('#view_bs_announcement_code').text(bs.bs_announcement_code);
            $('#view_demobs_code').text($('#demo_id_' + bs.idx_demo_business).text());
            $('#view_demobs_status').text(bs.demobs_status);
            $('#view_recuruit_dur').text(bs.recruit_start_date + " ~ "+bs.recruit_end_date);

            $('#view_posting_date').text(bs.posting_start_date + ' - ' + bs.posting_end_date);

            $('#is_new').val(bs.is_new).prop("selected", true);
            $('#view_is_new').text($('#is_new option:selected').val(bs.is_new).text());

            $('#is_main_page').val(bs.is_main_page).prop("selected", true);
            $('#view_is_main_page').text($('#is_main_page option:selected').val(bs.is_main_page).text());

            $('#is_show').val(bs.is_show).prop("selected", true);
            $('#view_is_show').text($('#is_show option:selected').val(bs.is_show).text());


            /*$('#view_is_new').text(bs.is_new == '1' ? '신규 공고' : '신규 아님');
            $('#view_is_main_page').text(bs.is_main_page == '1' ? '포털 메인 페이지 노출' : '사업 공고 카테고리에만 노출');
            $('#view_is_show').text(bs.is_show == '1' ? '게시 중' : '미게시');*/

            $('#view_subject').text(bs.subject);
            $('#view_announce_contents').html(bs.announce_contents);
            bs.is_file == '1' ? $('#view_is_file').attr('href', '')//은진매니저님께 여기에 들어갈 링크 얻어오기
             : $('#view_is_file').text('업로드한 파일이 없습니다.');
            $('#view_author').text(bs.author);
        }

        function fillDataEdit (bs){
            $('#edit_announce_status').val(bs.announce_status);
            $('#select_demo_bs').val('demo_' + bs.idx_demo_business);
            $('#edit_posting_start').datepicker('setDate', bs.posting_start_date);
            if(new Date() > new Date(bs.posting_start_date)){
                $('#edit_posting_start').attr('disabled', true);
                // $('#edit_posting_start').removeAttr('disabled');
            }
            $('#edit_posting_end').datepicker('setDate', bs.posting_end_date);
            $('#edit_is_new').val(bs.is_new);
            $('#edit_is_main_page').val(bs.is_main_page);
            $('#edit_is_show').val(bs.is_show);
            $('#edit_subject').val(bs.subject);
            $('.summernote').summernote('pasteHTML', bs.announce_contents);
            initContents = $('.summernote').summernote('code');
            $('#edit_author').text(bs.author)
        }

        function fillDataNew (){
            $('#edit_announce_status').val('');
            $('#select_demo_bs').val('0');
            $('#edit_posting_start').datepicker('setDate', '');
            $('#edit_posting_start').removeAttr('disabled');
            $('#edit_posting_end').datepicker('setDate', '');
            $('#edit_is_new').val('');
            $('#edit_is_main_page').val('');
            $('#edit_is_show').val('');
            $('#edit_subject').val('');
            $('.summernote').summernote('code', '');
            $('#edit_author').text('');
            $("#announcementCode").val('').removeAttr('disabled');
        }


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
            //var isRtl = $('html').attr('dir') === 'rtl';

            $('#datepicker-show,#datepicker-open').datepicker({
                orientation: 'auto left',
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
            // if($('.mode-view').hasClass('d-none') == false){
                $('.mode-view').addClass('d-none');
            // }

            // if($('.mode-edit').hasClass('d-none') == false){
                console.log("실행했어요..")
                $('.mode-edit').addClass('d-none');
            // }

            // if($('.mode-new').hasClass('d-none') == false){
                $('.mode-new').addClass('d-none');
            // }

            $('.mode-edit').removeClass('d-none');
            fillDataEdit(curEntity);
        });


        $(function() {


            $('#modals-business').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget);
                console.log(button.data('what'))
                var what = button.data('what');
                if (what == 'mode-view' || what == 'mode-edit' || what == 'mode-new') {
                    console.log("시작");
                    // if ($('.mode-view').hasClass('d-none') == false) {
                        $('.mode-view').addClass('d-none');
                    // }

                    // if ($('.mode-edit').hasClass('d-none') == false) {
                        console.log("실행했어요..")
                        $('.mode-edit').addClass('d-none');
                    // }

                    // if ($('.mode-new').hasClass('d-none') == false) {
                        $('.mode-new').addClass('d-none');
                    // }

                    $('.' + what + '').removeClass('d-none');
                    console.log(what);

                }
            })
            // $('#btn_mode_new').on('click', function() {
            //
            //     if($('.mode-view').hasClass('d-non') === false){
            //         $('.mode-view').addClass('d-non');
            //     }
            //     if($('.mode-edit').hasClass('d-non') === false){
            //         $('.mode-edit').addClass('d-non');
            //     }
            //     if($('.mode-new').hasClass('d-non') === true){
            //         $('.mode-new').removeClass('d-non');
            //     }
            //
            //     $('#modals-business').modal('show');
            //
            //
            // });

            // 모달 팝업 띄울 시 발생하는 이벤트 (이벤트명 : show.bs.modal)



                // 모달 팝업에 데이터 집어넣기
                //var modal = $(this);
                //modal.find('.modal-title').text('New message to ' + what)
                //modal.find('.modal-body input').val(what)
        });
        $('#edit_file').change(function(){
            if(document.querySelector('#edit_file').files.length){
                isFile = true;
            } else {
                isFile = false;
            }
        })

        function fileUpload(idx_anno, callback){
            var fileForm = new FormData();
            var files = document.querySelector('#edit_file').files;

            for(var i = 0; i < files.length; i++){
                var num = i + 1;
                fileForm.append("files" + num, files[i]);
            }
            fileForm.append("fileLength", files.length);
            fileForm.append("fileCategory", 3); // 사업 공고 관련 파일은 3
            fileForm.append("idx", idx_anno);

            $.ajax({
                type: 'post',
                url: 'upload_file_category', //데이터를 주고받을 파일 주소 입력
                data: fileForm,//보내는 데이터
                contentType: false,//보내는 데이터 타입
                processData: false,//Jquery 내부에서 파일을 queryString 형태로 전달하는 것을 방지
                dataType: 'json',//받는 데이터 타입
                enctype: 'multipart/form-data',
                success: function (result) {
                    if (result.result_code == "SUCCESS") {
                        callback();
                    }
                }
            })
        }

        $('#btn_demobs_code_dupl_check').click(function(){
            var code = $("#announcementCode").val();

            if(code.length < 1){
                alert('문서번호가 비어있습니다.');
            }
            else if(code.match(/[^a-z|A-Z|0-9|ㄱ-ㅎ|가-힣\s]/g)){
                alert('특수문자는 포함할 수 없습니다.');
            }
            else {
                $.ajax({
                    url: 'anno_code_dupl_check',
                    method: 'post',
                    data: JSON.stringify(code),//보내는 데이터
                    contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                    dataType: 'json',//받는 데이터 타입
                    success: function (result) {
                        if (result.result_code == "SUCCESS") {
                            if(confirm("신규 사용이 가능한 사업번호입니다. 사용하시겠습니까?")){
                                duplBool = true;
                                $("#announcementCode").attr('disabled', 'true');
                            }
                        } else {
                            alert("이미 사용 중이거나 사용이 불가능한 문서번호입니다.");
                        }
                    }
                })
            }
        })

        $('#new_submit').click(function (){
            if(!duplBool){
                return alert('문서번호 중복 체크 후 등록이 가능합니다.');
            }

            var param = {
                announce_status: $('#edit_announce_status').val(),
                bs_announcement_code: $("#announcementCode").val(),
                idx_demo_business: $('#select_demo_bs').val().split('_')[1],
                posting_start_date: $('#edit_posting_start').val(),
                posting_end_date: $('#edit_posting_end').val(),
                is_new: $('#edit_is_new').val(),
                is_main_page: $('#edit_is_main_page').val(),
                is_show: $('#edit_is_show').val(),
                subject: $('#edit_subject').val(),
                announce_contents: $('.summernote').summernote('code'),
                author: '${admin.admin_name}',
                is_file: isFile ? 1 : 0,
                idx_admin : '${admin.idx_admin}'
            }

            $.ajax({
                url: 'insert_bs_announcement',
                method: 'post',
                data: JSON.stringify(param),//보내는 데이터
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'json',//받는 데이터 타입
                success: function (result) {
                    if (result.result_code == "SUCCESS") {
                        if(isFile){
                            fileUpload(null,
                                function(){
                                    alert('입력이 완료되었습니다.');
                                    fillDataNew();
                                    $('#modals-business').modal('hide');
                                }
                            )
                        } else {
                            alert('입력이 완료되었습니다.');
                            fillDataNew();
                            $('#modals-business').modal('hide');
                        }

                    } else {
                        alert("입력에 실패했습니다.");
                    }
                }
            })
        })

        $('#edit_submit').click(function(){
            var param = {
                idx_bs_announcement: curEntity.idx_bs_announcement,
            }

            if($('#edit_announce_status').val() != curEntity.announce_status){
                param.announce_status = $('#edit_announce_status').val();
            }

            if($('#select_demo_bs').val().split('_')[1] != curEntity.idx_demo_business){
                console.log( $('#select_demo_bs').val())
                param.idx_demo_business = $('#select_demo_bs').val().split('_')[1];
            }

            if($('#edit_posting_start').val() != curEntity.posting_start_date){
                param.posting_start_date = $('#edit_posting_start').val();
            }

            if($('#edit_posting_end').val() != curEntity.posting_send_date){
                param.posting_end_date = $('#edit_posting_end').val();
            }

            if($('#edit_is_new').val() != curEntity.is_new){
                param.is_new = $('#edit_is_new').val();
            }

            if($('#edit_is_main_page').val() != curEntity.is_main_page){
                param.is_main_page = $('#edit_is_main_page').val();
            }

            if($('#edit_is_show').val() != curEntity.is_show){
                param.is_show = $('#edit_is_show').val();
            }

            if($('#edit_subject').val() != curEntity.subject){
                param.subject = $('#edit_subject').val();
            }

            if(isFile){
                param.is_file = 1;
            }

            if($('.summernote').summernote('code') != initContents){
                param.announce_contents = $('.summernote').summernote('code');
            }

            $.ajax({
                url: 'update_bs_announcement',
                method: 'post',
                data: JSON.stringify(param),//보내는 데이터
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'json',//받는 데이터 타입
                success: function (result) {
                    if (result.result_code == "SUCCESS") {
                        if(isFile){
                            fileUpload(curEntity.idx_bs_announcement,function(){
                                alert('수정이 완료되었습니다.');
                                fillDataNew();
                                $('#modals-business').modal('hide');
                            })
                        } else {
                            alert('수정이 완료되었습니다.');
                            fillDataNew();
                            $('#modals-business').modal('hide');
                        }

                    } else {
                        alert("수정에 실패했습니다.");
                    }
                }
            })

        })


    </script>

<!-- / Page content -->