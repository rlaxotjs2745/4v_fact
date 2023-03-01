<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h5 class="d-flex justify-content-between align-items-center w-100 mt-2">
            <div><i class="pe-7s-users text-success-custom"></i>&nbsp;&nbsp;회원 관리</div>
        </h5>

        <div class="card px-4 pt-2 mb-2 bg-">
            <div class="form-row mb-4">

                <div class="col-md-5 ">
                    <label class="form-label text-body">회원 상태</label>

                    <div class="form-inline">
                       <%-- int user_type;//	number	4		0			유저 형태	0:일반회원, 1:휴면회원, 2:탈퇴회원, 3:임의탈퇴--%>
                        <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-secondary <c:if test="${filter1 eq 9999}">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value="0" checked onclick="javascript:pageLoad('user_mng',{cur_page:1,filter1:9999,filter2:9998},'유저 관리');">전체
                            </label>
                            <label class="btn btn-secondary <c:if test="${filter1 eq 0 }">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value="0" onclick="javascript:pageLoad('user_mng',{cur_page:1,filter1:0,filter2:9998},'유저 관리');">일반회원
                            </label>
                            <label class="btn btn-secondary <c:if test="${filter1 eq 1}">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value="1" onclick="javascript:pageLoad('user_mng',{cur_page:1,filter1:1,filter2:9998},'유저 관리');">휴먼회원
                            </label>
                            <label class="btn btn-secondary <c:if test="${filter1 eq 2}">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value="2" onclick="javascript:pageLoad('user_mng',{cur_page:1,filter1:2,filter2:9998},'유저 관리');">틸퇴회원
                            </label>
                            <label class="btn btn-secondary <c:if test="${filter1 eq 3}">active</c:if>">
                                <input type="radio" name="btn-radio" class="category_change" value="2" onclick="javascript:pageLoad('user_mng',{cur_page:1,filter1:3,filter2:9998},'유저 관리');">임의탈퇴
                            </label>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="card" id="user_index">
            <div class="card-header font-weight-bold with-elements text-white bg-success">
                <div>회원 목록</div>
                <div class="card-header-elements ml-auto">
                    <button type="button" class="btn btn-sm btn-outline-white font-weight-bold disabled" data-toggle="modal" data-target="#modal-rule-file">+ 회원 등록</button>
                </div>
            </div>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="table_demo_bs" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-light-dark text-white font-weight-bold">
                                    <tr role="row">
                                        <th class="text-center px-2" style="width:40px">No</th>
                                        <th class="text-center px-2" style="width:150px">ID</th>
                                        <th class="text-center px-2" style="width:80px">고객명</th>
                                        <th class="text-center px-2" style="width:100px">휴대폰 번호</th>
                                        <th class="text-center px-2" style="width:120px">일반/기업 회원</th>
                                        <th class="text-center px-2" style="width:200px">메모</th>
                                    </tr>
                                </thead>
                                <tbody class="max-value-starage">
                            <c:choose>
                                <c:when test="${userVOList eq null or userVOList.size() eq 0}">

                                    <c:forEach var = "i" begin = "1" end = "4">
                                        <tr><td class="text-center empty-list" colspan="6"></td></tr>
                                    </c:forEach>
                                    <tr class=""><td class="text-center empty" colspan="6">내용이 없습니다</td></tr>
                                    <c:forEach var = "i" begin = "1" end = "5">
                                        <tr><td class="text-center empty-list" colspan="6"></td></tr>
                                    </c:forEach>

                                </c:when>
                                <c:otherwise>
                                <c:forEach items="${userVOList}" var="user" varStatus="status">
                                    <tr class="user_entity" id="user_${user.idx_user}">
                                        <td class="text-center">${user.idx_user}</td>
                                        <td class="text-center">${user.user_id}</td>
                                        <td class="text-center"><a class="btn btn-underline" href="#none" data-toggle="modal" data-target="#modal-person-view" data-what="mode-view">${user.user_name}</a></td>
                                        <td class="text-center">${user.mphone_num}</td>
                                        <td class="text-center">${user.is_corporate_member == 0 ? "일반회원" : "기업회원"}</td>
                                        <td class=""><span class="text-truncate d-inline-block" style="width:200px;">${user.ban_memo != null ? user.ban_memo : ""}</span></td>
                                    </tr>
                                </c:forEach>
                                    <c:forEach var = "i" begin = "${userVOList.size()}" end = "9">
                                        <tr><td class="text-center empty-list" colspan="6"></td></tr>
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

                                        <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('user_mng',{cur_page:1,filter1:'${filter1}', filter2:'${filter2}'},'시스템코드 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                        <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('user_mng',{cur_page:'${cur_page-1}',filter1:'${filter1}',filter2:'${filter2}'},'시스템코드 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>

                                        <c:forEach var="i" begin="1" end="${remain_page}">
                                            <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('user_mng',{cur_page:'${(cur_sector-1)*page_amount+i}',filter1:'${filter1}',filter2:'${filter2}'},'시스템코드 관리');" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                                        </c:forEach>

                                        <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('user_mng',{cur_page:'${cur_page+1}',filter1:'${filter1}',filter2:'${filter2}'},'시스템코드 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                        <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('user_mng',{cur_page:'${tot_page}',filter1:'${filter1}',filter2:'${filter2}'},'시스템코드 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>

        <div class="modal fade" id="modal-person-view">
            <div class="modal-dialog modal-xl">

                <form class="modal-content">
                    <div class="modal-header bg-success">
                        <h5 class="modal-title text-white font-weight-bold">고객 정보</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">
                        <form>
                            <h6 class="modal-title font-weight-bold mb-1"><i class="fas fa-list-ul"></i>&nbsp;&nbsp;고객 기본 정보</h6>
                            <div class="callout callout-primary callout-sm mb-2">
                                <div class="form-row border-bottom boder-success">
                                    <%--이름--%>
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">이름 :</label>
                                    <div class="form-control-plaintext col-md-4 mode-view" id="user_name_view"></div>
                                    <div class="input-group col-md-4 mode-new mode-edit">
                                        <input id="user_name" type="text" class="form-control" placeholder="이름을 입력해 주세요...">
                                    </div>
                                    <%--ID--%>

                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">ID :</label>
                                    <div class="form-control-plaintext col-md-4 mode-view" id="user_id_view"></div>
                                    <div class="input-group col-md-4 mode-new mode-edit">
                                        <input id="user_id" type="text" class="form-control" placeholder="아이디를 입력해 주세요...">
                                        <span class="input-group-append">
                                                <button id="btn_id_dupl_check" class="btn btn-sm btn-outline-dark form-control" type="button">중복체크</button>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-row border-bottom boder-success">
                                    <%--이름--%>
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">휴대폰 :</label>
                                    <div class="form-control-plaintext col-md-4 mode-view" id="user_mphone_view"></div>
                                    <div class="input-group col-md-4 mode-new mode-edit">
                                        <input id="user_mphone" type="text" class="form-control" placeholder="이름을 입력해 주세요...">
                                    </div>
                                    <%--ID--%>
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">일반전화 :</label>
                                    <div class="form-control-plaintext col-md-4 mode-view" id="tel_num_view"></div>
                                    <div class="input-group col-md-4 mode-new mode-edit">
                                        <input id="tel_num" type="text" class="form-control" placeholder="일반전화 번호를 입력해 주세요...">
                                    </div>
                                </div>
                                <div class="form-row border-bottom boder-success">
                                    <%--이름--%>
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">주소 :</label>
                                    <div class="form-control-plaintext col-md-10 mode-view" id="addr_view"></div>
                                    <div class="input-group col-md-4 mode-new mode-edit">
                                        <input id="addr" type="text" class="form-control" placeholder="주소를 입력해 주세요...">
                                    </div>
                                </div>

                                <div class="form-row border-bottom boder-success">
                                    <%--이름--%>
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">가입형태 :</label>
                                    <div class="form-control-plaintext col-md-2 mode-view" id="sign_in_type_view"></div>
                                    <div class="input-group col-md-2 mode-new mode-edit">
                                        <%--0:웹가입, 1:모바일웹가입, 2:관리기관(센터) 가입, 3:재단 가입, 4:관계기관 가입(지자체)--%>
                                        <select id="sign_in_type" class="custom-select form-control" style="width: 100%;">
                                            <option value='0'>웹가입</option>
                                            <option value='1'>모바일웹가입</option>
                                            <option value='2'>관리기관(센터) 가입</option>
                                            <option value='3'>진흥원 가입</option>
                                            <option value='4'>관계기관 가입(지자체)</option>
                                        </select>
                                    </div>
                                    <%--ID--%>
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">인증형태 :</label>
                                    <div class="form-control-plaintext col-md-2 mode-view" id="auth_status_view"></div>
                                    <div class="input-group col-md-2 mode-new mode-edit">
                                        <%--인증 여부	0:인증안함, 1:이메일 인증, 2:휴대폰 점유인증, 3:실명인증, 4:아이핀인증--%>
                                        <select id="auth_status" class="custom-select form-control" style="width: 100%;">
                                            <option value='0'>인증안함</option>
                                            <option value='1'>이메일 인증</option>
                                            <option value='2'>휴대폰 점유인증</option>
                                            <option value='3'>실명인증</option>
                                            <option value='4'>아이핀인증</option>
                                        </select>
                                    </div>
                                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">이용약관 동의 :</label>
                                        <div class="form-control-plaintext col-md-2 mode-view" id="is_service_agree_view"></div>
                                        <div class="input-group col-md-2 mode-new mode-edit">

                                            <select id="is_service_agree" class="custom-select form-control" style="width: 100%;">
                                                <option value='0'>동의안함</option>
                                                <option value='1'>동의함</option>
                                            </select>
                                        </div>
                                </div>
                                <div class="form-row border-bottom boder-success">
                                    <%--이름--%>
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">개인정보 이용동의 :</label>
                                    <div class="form-control-plaintext col-md-2 mode-view" id="is_privacy_agree_view"></div>
                                    <div class="input-group col-md-2 mode-new mode-edit">

                                        <select id="is_privacy_agree" class="custom-select form-control" style="width: 100%;">
                                            <option value='0'>동의안함</option>
                                            <option value='1'>동의함</option>
                                        </select>
                                    </div>
                                    <%--ID--%>
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">제3자 위탁처리 동의 :</label>
                                    <div class="form-control-plaintext col-md-2 mode-view" id="is_third_party_agree_view"></div>
                                    <div class="input-group col-md-2 mode-new mode-edit">

                                        <select id="is_third_party_agree" class="custom-select form-control" style="width: 100%;">
                                            <option value='0'>동의안함</option>
                                            <option value='1'>동의함</option>
                                        </select>
                                    </div>
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">마케팅 수집 이용동의 :</label>
                                    <div class="form-control-plaintext col-md-2 mode-view" id="is_maketing_agree_view"></div>
                                    <div class="input-group col-md-2 mode-new mode-edit">
                                        <select id="is_maketing_agree" class="custom-select form-control" style="width: 100%;">
                                            <option value='0'>동의안함</option>
                                            <option value='1'>동의함</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-row border-bottom boder-success">
                                    <%--이름--%>
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">SMS 수신여부 :</label>
                                    <div class="form-control-plaintext col-md-2 mode-view" id="is_sms_agree_view"></div>
                                    <div class="input-group col-md-2 mode-new mode-edit">

                                        <select id="is_sms_agree" class="custom-select form-control" style="width: 100%;">
                                            <option value='0'>동의안함</option>
                                            <option value='1'>동의함</option>
                                        </select>
                                    </div>
                                    <%--ID--%>
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">EMAIL 수신여부 :</label>
                                    <div class="form-control-plaintext col-md-2 mode-view" id="is_email_agree_view"></div>
                                    <div class="input-group col-md-2 mode-new mode-edit">
                                        <select id="is_email_agree" class="custom-select form-control" style="width: 100%;">
                                            <option value='0'>동의안함</option>
                                            <option value='1'>동의함</option>
                                        </select>
                                    </div>
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지원사업 신청 :</label>
                                    <div class="form-control-plaintext col-md-2 mode-view" id="is_applicant_view"></div>
                                    <div class="input-group col-md-2 mode-new mode-edit">
                                        <select id="is_applicant" class="custom-select form-control" style="width: 100%;">
                                            <option value='0'>예</option>
                                            <option value='1'>아니오</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <h6 class="modal-title font-weight-bold mb-1"><i class="fas fa-list-ul"></i>&nbsp;&nbsp;소속 정보</h6>
                            <div class="callout callout-success callout-sm mb-2">
                                <div class="form-row border-bottom boder-success">
                                    <%--이름--%>
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">단체 이름 :</label>
                                    <div class="form-control-plaintext col-md-4 mode-view" id="corp_name_kor_view"></div>
                                    <div class="input-group col-md-4 mode-new mode-edit">
                                        <input id="corp_name_kor" type="text" class="form-control" placeholder="이름을 입력해 주세요...">
                                    </div>


                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업자번호 :</label>
                                    <div class="form-control-plaintext col-md-4 mode-view" id="company_num_view"></div>
                                    <div class="input-group col-md-4 mode-new mode-edit">
                                        <input id="company_num" type="text" class="form-control" placeholder="아이디를 입력해 주세요...">
                                        <span class="input-group-append">
                                                <button id="btn_company_num_dupl_check" class="btn btn-sm btn-outline-dark form-control" type="button">중복체크</button>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-row border-bottom boder-success">

                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">대표자 이름 :</label>
                                    <div class="form-control-plaintext col-md-4 mode-view" id="ceo_name_kor_view"></div>

                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">담당자 이름 :</label>
                                    <div class="form-control-plaintext col-md-4 mode-view" id="manager_name_view"></div>
                                </div>
                                <div class="form-row border-bottom boder-success">

                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">연락처 :</label>
                                    <div class="form-control-plaintext col-md-4 mode-view" id="corp_tel_num_view"></div>

                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">담당자 연락처 :</label>
                                    <div class="form-control-plaintext col-md-4 mode-view" id="manager_tel_num_view"></div>
                                </div>
                                <div class="form-row border-bottom boder-success">

                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">대표 이메일주소 :</label>
                                    <div class="form-control-plaintext col-md-4 mode-view" id="corp_email_view"></div>

                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">담당자 이메일주소 :</label>
                                    <div class="form-control-plaintext col-md-4 mode-view" id="manager_email_view"></div>
                                </div>
                                <div class="form-row border-bottom boder-success">
                                    <%--이름--%>
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">본사 소재지 :</label>
                                    <div class="form-control-plaintext col-md-10 mode-view" id="corp_addr_view"></div>
                                </div>

                            </div>
                            <h6 class="modal-title font-weight-bold mb-0"><i class="fas fa-list-ul"></i>&nbsp;&nbsp;회원 관리</h6>
                            <div class="callout callout-warning callout-sm mb-2">
                                <div class="form-row border-bottom boder-success">

                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">비밀번호 재설정:</label>
                                    <div class="input-group col-md-4 mode-view">
                                        <button id="btn_pw_change" class="btn btn-sm btn-outline-dark form-control" type="button">임시비밀번호 발송</button>
                                        <span class="input-group-append text-muted">
                                            *이메일로 임시비밀번호를 전송합니다
                                        </span>
                                    </div>
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">회원 상태 :</label>
                                    <div class="input-group col-md-4 user_type_view">
                                        <div class="form-control-plaintext col-md-4 mode-view" id="user_type_view"></div>
                                        <button id="btn_user_type_change" class="btn btn-sm btn-outline-dark form-control" type="button">상태변경</button>

                                    </div>
                                    <div class="input-group col-md-4 user_type_edit d-none">
                                        <select id="user_type" class="custom-select form-control" style="width: 60%;">
                                            <option value='0'>동의안함</option>
                                            <option value='1'>동의함</option>
                                        </select>
                                        <span class="input-group-append ">
                                                <button id="btn_save_user_type_change" class="btn btn-sm btn-outline-dark form-control" type="button">저장</button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <%--
                        <div class="form-row">


                            <div class="form-group col col-md-12">
                                <table class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                    <tbody>
                                    <tr class="">
                                        <th class="text-center align-middle bg-light" rowspan="3" style="width:12%">개인정보</th>
                                        <th class="text-center bg-light" style="width:12%">이름</th>
                                        <td class="text-center" style="width:27%"><input type="text" class="form-control form-control-sm" id="user_name_mod" readonly></td>
                                        <th class="text-center bg-light" style="width:13%">일반전화번호</th>
                                        <td class="text-center" style="width:26%"><input type="text" class="form-control form-control-sm" id="user_num_mod" maxlength="13" oninput="autoHyphen(this)"></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">휴대폰 번호</th>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" id="user_telnum_mod" maxlength="13" oninput="autoHyphen2(this)"></td>
                                    </tr>

                                    <tr>
                                        <th class="text-center bg-light">주소</th>
                                        <td class="" colspan="3">
                                            &lt;%&ndash;                                            <input type="text" class="form-control form-control-sm" placeholder="주소">&ndash;%&gt;
                                            &lt;%&ndash;                                            <input type="text" class="form-control form-control-sm" placeholder="상세 주소">&ndash;%&gt;
                                            <input type="text" id="user_addr_mod" class="form-control form-control-sm d-inline-block align-middle mr-1" value="" placeholder="주소" style="width:calc(100% - 80px)">
                                            <input type="text" id="user_addr_detail_mod" class="form-control form-control-sm d-inline-block align-middle mr-1" value="" placeholder="상세주소" style="width:calc(100% - 80px)">
                                            <a href="#none" id="addr_search_modify" class="btn btn-sm btn-default">주소 찾기</a>
                                        </td>
                                        &lt;%&ndash;                                        <th class="text-center bg-light">상세 주소</th>&ndash;%&gt;
                                        &lt;%&ndash;                                        <td class=""></td>&ndash;%&gt;
                                    </tr>
                                    <tr class="corp_info">
                                        <th class="text-center align-middle bg-light" rowspan="3">소속 정보</th>
                                        <th class="text-center bg-light">단체명</th>
                                        <td class="" colspan="3"><input type="text" class="form-control form-control-sm" id="user_corp_mod" readonly></td>
                                    </tr>
                                    <tr class="corp_info">
&lt;%&ndash;                                        <th class="text-center bg-light">직위</th>&ndash;%&gt;
&lt;%&ndash;                                        <td class="text-center"><input type="text" class="form-control form-control-sm" id="user_rank_mod"></td>&ndash;%&gt;
                                        <th class="text-center bg-light">전화번호</th>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" id="user_corp_num_mod" readonly></td>
                                    </tr>
                                    <tr class="corp_info">
                                        <th class="text-center bg-light">팩스</th>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" id="user_corp_fax_mod" readonly></td>
                                        <th class="text-center bg-light">홈페이지</th>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" id="user_corp_homepage_mod" readonly></td>
                                    </tr>
                                    </tbody>
                                </table>
                                <table id="" class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                    <tbody>
                                    <tr>
                                        <th class="text-center align-middle bg-light" rowspan="2">시스템 정보</th>
                                        <th class="text-center bg-light">웹ID</th>
                                        <td class="text-center" id="user_id_mod" readonly="">dongdong</td>
                                        <th class="text-center bg-light">비밀번호</th>
                                        <td class="text-center"><a class="btn btn-sm btn-default user_pw_initialization" id="user_pw_mod">초기화</a></td>
                                        <th class="text-center bg-light">정보변경이력</th>
                                        <td class="text-center"><a href="#none" class="btn btn-sm btn-default" data-toggle="popover" data-html="true"  data-placement="top" data-content="-YYYY.MM.DD. HH:MM 비밀번호 초기화 (변경자 이름) <br>-YYYY.MM.DD. HH:MM 전화번호 변경 (변경자 이름) <br> -YYYY.MM.DD. HH:MM 주소변경 (변경자 이름)" >이력보기</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>--%>

                    </div>

                    <div class="modal-footer justify-content-between mode-new">
                        <div>
                            <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">&nbsp;&nbsp;<span class=""></span>&nbsp;&nbsp;취소&nbsp;&nbsp;</button>
                        </div>
                        <div>
                            <button type="button" class="btn btn-primary" id="user_new_submit"><span class="pe-7s-stopwatch"></span>&nbsp;&nbsp;저장</button>
                        </div>
                    </div>

                    <div class="modal-footer justify-content-between mode-edit d-none">
                        <div>
                            <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal"><span class="pe-7s-close-circle"></span>&nbsp;&nbsp;취소</button>
                        </div>
                        <div>
                            <button type="button" class="btn btn-primary" id="user_modify_confirm"><span class="pe-7s-diskette"></span>&nbsp;&nbsp;수정저장</button>
                        </div>
                    </div>

                    <div class="modal-footer justify-content-between mode-view">
                        <div>
                            <button type="button" class="btn btn-primary" ><span class="lnr lnr-pencil"></span>&nbsp;&nbsp;수정</button>
                        </div>

                        <div>
                            <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal"><span class="lnr lnr-exit"></span>&nbsp;&nbsp;닫기</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>

<!-- Layout footer -->
<%@include file ="../layouts/frame_footer.jsp" %>
<!-- / Layout footer -->

<!-- / Page content -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
/*    new daum.Postcode({
        oncomplete: function(data) {

        }
    }).open();*/
</script>

<script>

    //pageLoad("user_index", {cur_page: 1, filter1: 100}, "유저 보드", "user");

    $("#addr_search, #user_addr_mod").click(function() {
        new daum.Postcode({
            oncomplete: function (data) {
                $("#user_addr_mod").val(data.roadAddress + " " + data.buildingName);
                // console.log(data);
            }
        }).open();
    })

    var curUser = null;

    var userArr = [];
    <c:forEach items="${userVOList}" var="user" varStatus="status">
    userArr.push({
        idx_user: "${user.idx_user}" ? "${user.idx_user}" : null,
        user_id: "${user.user_id}" ? "${user.user_id}" : null,
        user_pw: "${user.user_pw}" ? "${user.user_pw}" : null,
        user_name: "${user.user_name}" ? "${user.user_name}" : null,
        addr: "${user.addr}" ? "${user.addr}" : null,
        tel_num: "${user.tel_num}" ? "${user.tel_num}" : null,
        mphone_num: "${user.mphone_num}" ? "${user.mphone_num}" : null,
        email: "${user.email}" ? "${user.email}" : null,
        user_type: "${user.user_type}" ? "${user.user_type}" : null,
        ban_memo: "${user.ban_memo}" ? "${user.ban_memo}" : null,
        is_service_agree: "${user.is_service_agree}" ? "${user.is_service_agree}" : null,
        service_agree_ver: "${user.service_agree_ver}" ? "${user.service_agree_ver}" : null,
        is_privacy_agree: "${user.is_privacy_agree}" ? "${user.is_privacy_agree}" : null,
        privacy_agree_ver: "${user.privacy_agree_ver}" ? "${user.privacy_agree_ver}" : null,
        is_third_party_agree: "${user.is_third_party_agree}" ? "${user.is_third_party_agree}" : null,
        third_party_agree_ver: "${user.third_party_agree_ver}" ? "${user.third_party_agree_ver}" : null,
        is_maketing_agree: "${user.is_maketing_agree}" ? "${user.is_maketing_agree}" : null,
        maketing_agree_ver: "${user.maketing_agree_ver}" ? "${user.maketing_agree_ver}" : null,
        auth_status: "${user.auth_status}" ? "${user.auth_status}" : null,
        is_applicant: "${user.is_applicant}" ? "${user.is_applicant}" : null,
        is_corporate_member: "${user.is_corporate_member}" ? "${user.is_corporate_member}" : null,
        idx_corp_info: "${user.idx_corp_info}" ? "${user.idx_corp_info}" : null,
        sign_in_type: "${user.sign_in_type}" ? "${user.sign_in_type}" : null,
        is_sms_agree: "${user.is_sms_agree}" ? "${user.is_sms_agree}" : null,
        is_email_agree: "${user.is_email_agree}" ? "${user.is_email_agree}" : null,
        reg_date: "${user.reg_date}" ? "${user.reg_date}" : null,
        last_upd_date: "${user.last_upd_date}" ? "${user.last_upd_date}" : null,
    })
    </c:forEach>
/*    $(".user_entity").click(function(){
        var userIdx = $(this).attr("id");
        var clickedUser = userArr.find(function (user){
            if(userIdx == user.idx_user){
                return user;
            }
        })
        clickUser(clickedUser);
    })*/
    $(".user_entity").on("click", function(){

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

        userArr.forEach(function(user){
            if(user.idx_user == selectedIdx){

                $("#user_name_vew").text(user.user_name);

                $("#user_id_view").text(user.user_id);
                $("#user_mphone_view").text(user.mphone_num);
                $("#addr_view").text(user.addr);
                $("#tel_num_view").text(user.user_id);

                $("#sign_in_type_view").text(user.sign_in_type ==0 ? "웹가입":user.sign_in_type == 1 ? "모바일웹가입" :user.sign_in_type == 2 ? "관리기관(센터) 가입":user.sign_in_type == 3 ? "농진원 가입": user.sign_in_type == 4 ? "모바일웹가입" :null);
                $("#auth_status_view").text(user.auth_status ==0 ? "인증안함":user.auth_status == 1 ? "이메일 인증" :user.auth_status == 2 ? "휴대폰 인증":user.auth_status == 3 ? "실명인증": user.auth_status == 4 ? "아이핀인증" :null);
                $("#is_service_agree_view").text(user.is_service_agree ==0 ? "동의안함":user.is_service_agree == 1 ? "동의함" :null);
                $("#is_privacy_agree_view").text(user.is_privacy_agree ==0 ? "동의안함":user.is_privacy_agree == 1 ? "동의함" :null);
                $("#is_third_party_agree_view").text(user.is_third_party_agree ==0 ? "동의안함":user.is_third_party_agree == 1 ? "동의함" :null);
                $("#is_maketing_agree_view").text(user.is_maketing_agree ==0 ? "동의안함":user.is_maketing_agree == 1 ? "동의함" :null);
                $("#is_sms_agree_view").text(user.is_sms_agree ==0 ? "동의안함":user.is_sms_agree == 1 ? "동의함" :null);
                $("#is_email_agree_view").text(user.is_email_agree ==0 ? "동의안함":user.is_email_agree == 1 ? "동의함" :null);
                $("#is_applicant_view").text(user.is_applicant ==0 ? "신청안함":user.is_applicant == 1 ? "신청함" :null);


                if(user.is_corporate_member == 0){
                    $(".corp_info").css("display", "none");
                } else {
                    $.ajax({
                        type: 'post',
                        url: 'get_corp_info', //데이터를 주고받을 파일 주소 입력
                        data: JSON.stringify(user.idx_corp_info),//보내는 데이터
                        contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                        dataType: 'json',//받는 데이터 타입
                        success: function (result) {
                            //작업이 성공적으로 발생했을 경우
                            console.log("result: " + result);
                            if (result.corp_type == 1111) {
                                $(".corp_info").html("기업 정보를 불러오지 못했습니다.");
                            } else {

                                $("#corp_name_kor_view").text(result.corp_name_kor);
                                $("#company_num_view").text(result.company_num);
                                $("#ceo_name_kor_view").text(result.ceo_name_kor);

                                $("#corp_tel_num_view").text(result.corp_tel_num);
                                $("#corp_email_view").text(result.corp_email);
                                $("#corp_addr_view").text(result.corp_addr);


                            }
                        },
                        error: function () {
                            //에러가 났을 경우 실행시킬 코드
                        }
                    });
                }


                curEntity = user;
            }
        })



    })
    function clickUser (user) {
        curUser = user.idx_user;
        if(user.is_corporate_member == 0){
            $(".corp_info").css("display", "none");
        } else {
            $(".corp_info").css("display", "table-row");
            $.ajax({
                type: 'post',
                url :'get_corp_info', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(user.idx_corp_info),//보내는 데이터
                contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                dataType:'json',//받는 데이터 타입
                success: function(result){
                    //작업이 성공적으로 발생했을 경우
                    console.log("result: " + result);
                    if(result.corp_type == 1111){
                        $(".corp_info").html("기업 정보를 불러오지 못했습니다.");
                    }
                    else {
                        $("#user_corp").text(result.corp_name_kor);
                        $("#user_corp_num").text(result.tel_num);
                        $("#user_corp_fax").text(result.fax_num);
                        $("#user_corp_homepage").text(result.homepage);

                        $("#user_corp_mod").val(result.corp_name_kor);
                        $("#user_corp_num_mod").val(result.tel_num);
                        $("#user_corp_fax_mod").val(result.fax_num);
                        $("#user_corp_homepage_mod").val(result.homepage);
                    }
                },
                error:function(){
                    //에러가 났을 경우 실행시킬 코드
                }
            });
        }


        $("#user_name").text(user.user_name);
        $("#user_num").text(user.tel_num);
        $("#user_mphone").text(user.mphone_num);
        $("#user_addr").text(user.addr);
        $("#user_id").text(user.user_id);

        $("#user_name_mod").val(user.user_name);
        $("#user_num_mod").val(user.tel_num);
        $("#user_telnum_mod").val(user.mphone_num);
        $("#user_addr_mod").val(user.addr);
        $("#user_id_mod").val(user.user_id);
    }

    $(".user_pw_initialization").click(function(){
        if(confirm("확인 버튼을 누르면 비밀번호가 초기화 됩니다. \n초기화된 임시 비밀번호는 아이디로 지정된 메일 주소로 전송됩니다. \n계속 하시겠습니까?"))
        $.ajax({
            type: 'post',
            url :'user_pw_init', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(curUser),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                alert(result.result_str);
                $("#modal-person-modify").modal("hide");
                $("#modal-person-view").modal("hide");
                pageLoad('i11_user_mng',{cur_page:curPage, filter1: curCate},'고객 관리');
            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
            }
        });
    })

    $("#user_modify_confirm").click(function () {
        if(confirm("유저 정보를 변경하시겠습니까?")){
            var modUserInfo = {
                idx_user: curUser,
                tel_num: $("#user_num_mod").val(),
                mphone_num: $("#user_telnum_mod").val(),
                addr: $("#user_addr_mod").val() + " " + $("#user_addr_detail_mod").val()
            }
            $.ajax({
                type: 'post',
                url :'update_user', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(modUserInfo),//보내는 데이터
                contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                dataType:'json',//받는 데이터 타입
                success: function(result){
                    //작업이 성공적으로 발생했을 경우
                    alert(result.result_str);
                    $("#modal-person-modify").modal("hide");
                    pageLoad('i11_user_mng',{cur_page:curPage, filter1: curCate},'고객 관리');
                },
                error:function(){
                    //에러가 났을 경우 실행시킬 코드
                }
            });
        }
    })

    $("#user_delete_confirm").click(function () {
        if(confirm("이 유저를 탈퇴시키시겠습니까?")){
            var banMemo = prompt("제거 사유를 작성해주세요.", "");
            $.ajax({
                type: 'post',
                url :'delete_user', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify({idx_user: curUser, ban_memo: banMemo}),//보내는 데이터
                contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                dataType:'json',//받는 데이터 타입
                success: function(result){
                    //작업이 성공적으로 발생했을 경우
                    alert(result.result_str);
                    $("#modal-person-modify").modal("hide");
                    pageLoad('i11_user_mng', {cur_page:curPage, filter1: curCate},'고객 관리');
                },
                error:function(){
                    //에러가 났을 경우 실행시킬 코드
                }
            });
        }
    })



</script>

