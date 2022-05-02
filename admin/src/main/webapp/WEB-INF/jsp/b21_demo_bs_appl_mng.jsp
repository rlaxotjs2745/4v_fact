<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>신청접수 관리</div>
        </h4>

        <div class="card">
            <h6 class="card-header with-elements">
                <div class="card-header-title">사업 공고 등록 (총 450 건)</div>
            </h6>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">

                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-success text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center px-2" style="width:60px">No</th>
                                    <th class="text-center px-2" style="width:100px">심사 종료 예정일</th>
                                    <th class="text-center sorting" style="width:100px">공고문 번호</th>
                                    <th class="text-center sorting" style="width:300px">제목</th>
                                    <th class="text-center px-2" style="width:110px">지원 수/ 모집 수</th>
                                    <th class="text-center px-2" style="width:110px">경쟁률</th>
                                    <th class="text-center px-2" style="width:110px">보완요청 건</th>
                                    <th class="text-center px-2" style="width:110px">검토완료</th>
                                    <th class="text-center px-2" style="width:110px">공고문 보기</th>
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
    <c:forEach items="${adminApplHeaderListVOS}" var="item" varStatus="status">


                                <tr class="" onClick="getUserApplList(${item.idx_demo_business},1,9999)">
                                    <td class="text-center">${item.idx_demo_business}</td>
                                    <td class="text-center">${item.exam_end}</td>
                                    <td class="">${item.demo_bs_code}</td>
                                    <td class="">${item.demo_subject}</td>
                                    <td class="text-right">${item.applicant_count} / ${item.recruit_count_limit}</td>
                                    <td class="text-right"><fmt:formatNumber value="${item.applicant_count / item.recruit_count_limit}" pattern="#.##"/>  : 1</td>
                                    <td class="text-right">${item.appl_recomm}</td>
                                    <td class="text-right">${item.appl_review_done}</td>
                                    <td class="text-center"><a href="#none" class="btn btn-underline" data-toggle="modal" data-target="#modals-result-view">보기</a></td>
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
                            <div class="dataTables_info" id="" role="status" aria-live="polite">총 ${total_count}개 중 ${list_amount*(cur_page-1)+1}에서 ${list_amount*page_amount}까지</div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="">
                                <ul class="pagination">

                                    <c:set var="name" value="${total_count/amount}" />


                                    <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:load('b21_demo_bs_appl_mng?page=1','신청접수 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                    <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:load('b21_demo_bs_appl_mng?page=${cur_page-1}','신청접수 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>



                                    <c:forEach var="i" begin="1" end="${page_amount}">
                                        <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:load('b21_demo_bs_appl_mng?page=${(cur_sector-1)*page_amount+i}','신청접수 관리');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                    </c:forEach>

                                    <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:load('b21_demo_bs_appl_mng?page=${cur_page+1}','신청접수 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                    <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:load('b21_demo_bs_appl_mng?page=${tot_page}','신청접수 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                    </c:if>

                </div>
            </div>
        </div>

        <hr>

        <div class="row">
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">전체</div>
                            <div class="text-large">520</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">검토 필요</div>
                            <div class="text-large">000</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">검토 보류</div>
                            <div class="text-large">000</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">검토 완료</div>
                            <div class="text-large">000</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="appl_list" class="card">

        </div>

        <!-- Modal template -->
        <div class="modal fade" id="modals-application-view">
            <div class="modal-dialog modal-xl modal-content">

                    <div class="modal-header bg-success">
                        <h5 class="modal-title text-white font-weight-bold mode-new">신청서 접수 관리</h5>
                        <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body">
                        <ul class="nav nav-sm nav-tabs">
                            <li class="nav-item btn-outline-primary"><a class="nav-link font-weight-bold active" data-toggle="tab" href="#navs-tap1">기본정보</a>
                            </li>
                            <li class="nav-item btn-outline-primary"><a class="nav-link font-weight-bold" data-toggle="tab" href="#navs-tap2">이용신청서 </a>
                            </li>
                            <li class="nav-item btn-outline-primary"><a class="nav-link font-weight-bold" data-toggle="tab" href="#navs-tap3">실증계획서</a>
                            </li>
                            <li class="nav-item btn-outline-primary"><a class="nav-link font-weight-bold" data-toggle="tab" href="#navs-tap4">수집 동의서 및 제출자료</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade active" id="navs-tap1">
                                <div class="card-body">
                                    <div class="card-body">
                                        <div class="form-row">
                                            <div class="form-group col col-md-6">
                                                <label class="form-label text-primary d-block">지원사업 명</label>
                                                <span id=""></span>
                                            </div>
                                            <div class="form-group col col-md-3">
                                                <label class="form-label text-primary d-block">접수번호</label>
                                                <span></span>
                                            </div>
                                            <div class="form-group col col-md-3">
                                                <label class="form-label text-primary d-block">접수일시</label>
                                                <span></span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-3">
                                                <label class="form-label text-primary d-block">기업명</label>
                                                <input id="corp_name" type="text" class="form-control form-control-md">
                                            </div>
                                            <div class="form-group col col-md-3">
                                                <label class="form-label text-primary d-block">법인 등록번호</label>
                                                <input id="corp_reg_num" type="text" class="form-control form-control-md">
                                            </div>
                                            <div class="form-group col col-md-3">
                                                <label class="form-label text-primary d-block">사업자 등록번호</label>
                                                <input id="corp_num" type="text" class="form-control form-control-md">
                                            </div>

                                            <div class="form-group col col-md-3">
                                                <label class="form-label text-primary d-block">기업 형태</label>
                                                <select id="user_demo_bs_type" class="custom-select">
                                                    <option value="1">개인</option>
                                                    <option value="2">일반기업</option>
                                                    <option value="3">미등록기업(설립전)</option>
                                                    <option value="4">농업진흥기관</option>
                                                    <option value="5">선도기업</option>
                                                    <option value="6">외국연구기관</option>
                                                    <option value="7">특정연구기관</option>
                                                    <option value="8">정부출연연구기관</option>
                                                    <option value="9">스마트팜 관련 기업부설연구소 보유기업</option>
                                                    <option value="10">대학교</option>
                                                    <option value="99">기타 단체</option>
                                                </select>

                                            </div>


                                        </div>
                                        <div class="form-row">

                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-8">
                                                <label class="form-label text-primary d-block">주소</label>
                                                <input id="corp_addr" type="text" class="form-control form-control-md">
                                            </div>
                                            <div class="form-group col col-md-4">
                                                <label class="form-label text-primary d-block">주소 상세</label>
                                                <input id="corp_addr2" type="text" class="form-control form-control-md">
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-3">
                                                <label class="form-label text-primary d-block">연락처</label>
                                                <input id="corp_phone" type="text" class="form-control form-control-md">
                                            </div>
                                            <div class="form-group col col-md-3">
                                                <label class="form-label text-primary d-block">이메일</label>
                                                <input id="email" type="text" class="form-control form-control-md">
                                            </div>
                                            <div class="form-group col col-md-3" style="float: none; margin:0 auto;">
                                                <label class="form-label text-primary d-block">홈페이지</label>
                                                <input id="homepage" type="text" class="form-control form-control-md">
                                            </div>
                                            <div class="form-group col col-md-3">
                                                <label class="form-label text-primary d-block text-muted">연구소 보유<span class="text__essential">*</span></label>
                                                <label class="custom-control custom-radio d-inline-block">
                                                    <input name="is_lab_ower" type="radio" class="custom-control-input" value="0" checked>
                                                    <span class="custom-control-label">없음</span>
                                                </label>
                                                <label class="custom-control custom-radio d-inline-block">
                                                    <input name="is_lab_ower" type="radio" class="custom-control-input" value="1">
                                                    <span class="custom-control-label">자가 보유</span>
                                                </label>
                                                <label class="custom-control custom-radio d-inline-block">
                                                    <input name="is_lab_ower" type="radio" class="custom-control-input" value="2">
                                                    <span class="custom-control-label">임차 보유</span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-3">
                                                <label class="form-label text-primary d-block">대표자 성명</label>
                                                <input id="ceo_name" type="text" class="form-control form-control-md">
                                            </div>
                                            <div class="form-group col col-md-3">
                                                <label class="form-label text-primary d-block">대표자 연락처</label>
                                                <input id="ceo_pnumber" type="text" class="form-control form-control-md">
                                            </div>
                                            <div class="form-group col col-md-3">
                                                <label class="form-label text-primary d-block">대표자 휴대폰</label>
                                                <input id="ceo_mnumber" type="text" class="form-control form-control-md">
                                            </div>
                                            <div class="form-group col col-md-3">
                                                <label class="form-label text-primary d-block">대표자 이메일</label>
                                                <input id="ceo_email" type="text" class="form-control form-control-md">
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="d-flex justify-content-end align-items-end ">
                                                <button class="btn btn-outline-primary ">기업 정보 등록</button>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label text-primary d-block text-muted">사업 주체<span class="text__essential">*</span></label>
                                                <label class="custom-control custom-radio d-inline-block">
                                                    <input name="user_demo_type" type="radio" class="custom-control-input" checked="">
                                                    <span class="custom-control-label">위탁</span>
                                                </label>
                                                <label class="custom-control custom-radio d-inline-block">
                                                    <input name="user_demo_type" type="radio" class="custom-control-input" checked="">
                                                    <span class="custom-control-label">자율</span>
                                                </label>
                                            </div>
                                            <div class="form-group col col-md-4">
                                                <label class="form-label text-primary d-block">담당자 이름</label>
                                                <input id="man_name" type="text" class="form-control form-control-md">
                                            </div>
                                            <div class="form-group col col-md-4">
                                                <label class="form-label text-primary d-block">담당자 연락처</label>
                                                <input id="man_mnumber" type="text" class="form-control form-control-md">
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-12">
                                                <label class="form-label text-primary d-block text-muted">신청서</label>
                                                <span class="text-muted mr-2">1차</span>
                                                <button type="button" class="btn btn-sm  btn-outline-default"><i
                                                        class="lnr lnr-download"></i> 내려받기
                                                </button>
                                                <span class="text-muted ml-3 mr-2">2차</span><span>요청중</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-8">
                                                <label class="form-label text-primary d-block text-muted">검토 결과<span
                                                        class="text__essential">*</span></label>
                                                <span class="mb-2 d-inline-block">신청서 접수 완료 &gt; </span><span
                                                    class="text-hero"> 보완(신청서 보완 요청)</span>
                                                <input type="file" class="custom-file">
                                                <small class="form-text mb-2 text-muted">신청서 보완 요청서 등록이 필요합니다.</small>
                                            </div>
                                            <div class="form-group col col-md-4 text-right">
                                                <label class="form-label text-primary d-block text-muted">&nbsp;</label>
                                                <a href="#none" class="btn btn-underline">보완 요청서 다운로드</a>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-8">
                                                <select class="custom-select">
                                                    <option value="1">서류검토 중</option>
                                                    <option value="2">보완요청</option>
                                                    <option value="3">서류검토 완료</option>
                                                    <option value="4">서류 부적격</option>
                                                </select>
                                            </div>
                                            <div class="form-group col col-md-4">
                                                <label class="form-label text-primary d-block text-muted align-items-md-end"></label>
                                                <button id="btn_save_change" class="btn btn-outline-primary ">서류검토상태 변경</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="navs-tap2">
                                    <div class="card-body">
                                        <div class="tab-content">

                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="navs-tap3">
                                    <div class="card-body">
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="navs-tap4">

                                </div>
                            </div>
                        </div>
                        <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                            <div>
                                <button type="button" class="btn btn-outline-primary">임시저장</button>
                                <button type="button" class="btn btn-primary">고객공유</button>
                                <button type="button" class="btn btn-primary">저장</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        <div class="d-flex justify-content-end align-items-end w-100 mt-2">
        <button type="button" class="btn btn-primary"><i class="lnr lnr-download"></i> 신청서 전체 내려받기</button>
        </div>

    </div>

<script>
function getUserApplList(index,page_num,filter){

    let param = {
        page_num: page_num,
        amount: 5,
        order_field: "IDX_DEMO_BUSINESS",
        filter1: filter,
        filter2: 9998,
        idx: index
    }
    $.ajax({
        type: 'post',
        url: 'appl_list_by_b21_filtered', //데이터를 주고받을 파일 주소 입력
        data: JSON.stringify(param),//보내는 데이터
        contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
        dataType: 'text',//받는 데이터 타입
        success: function (result) {
//작업이 성공적으로 발생했을 경우


            $("#appl_list").html(result);

//STATUS_001 :
        },
        error: function () {
//에러가 났을 경우 실행시킬 코드
        }
    });
//});
}
</script>

<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
<!-- / Layout footer -->
<!-- / Page content -->
