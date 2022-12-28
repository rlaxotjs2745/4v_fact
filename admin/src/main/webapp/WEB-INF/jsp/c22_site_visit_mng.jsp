<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- Page content -->
<div class="">

    <div class="d-flex justify-content-between align-items-center w-100" class="visit_calendar_big_title">
        <div class="visit_calendar_big_title">견학일정 관리</div>
    </div>
    <!--//-->

    <div id="month_calendar" class="card mb-4" style="min-height: 550px;">
        <div class="card-body">
            <div id="fullcalendar-default-view" style="min-height: 500px;"></div>
        </div>
    </div>


    <!-- Event modal -->

<%--    <form class="modal fade" id="visit-req-modal">--%>
<%--        <div class="modal-dialog modal-lg">--%>
<%--            <div class="modal-content">--%>

<%--                <div class="modal-header bg-success">--%>
<%--                    <h5 class="modal-title text-white font-weight-bold">신청 가능일 추가/변경</h5>--%>
<%--                    <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>--%>
<%--                </div>--%>

<%--                <div class="modal-body">--%>

<%--                    <!--반복 선택-->--%>
<%--                    <div class="form-group row">--%>
<%--                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반복</label>--%>
<%--                        <div class="form-inline col-md-10">--%>
<%--                            <label class="custom-control custom-radio d-inline-block">--%>
<%--                                <input name="repeat_type" type="radio" class="custom-control-input" value="0" checked>--%>
<%--                                <span class="custom-control-label">없음</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-radio d-inline-block">--%>
<%--                                <input name="repeat_type" type="radio" class="custom-control-input" value="1">--%>
<%--                                <span class="custom-control-label">매주</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-radio d-inline-block">--%>
<%--                                <input name="repeat_type" type="radio" class="custom-control-input" value="2">--%>
<%--                                <span class="custom-control-label">매월</span>--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!--반복 없이 기간등록-->--%>
<%--                    <div class="form-group row">--%>
<%--                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">선택기간</label>--%>
<%--                        <div class="col-md-10">--%>
<%--                            <div id="repeat_none_datepicker" class="input-daterange input-group" style="width: 80%;">--%>
<%--                                <input type="text" class="form-control" name="start">--%>
<%--                                <div class="input-group-prepend repeat__none">--%>
<%--                                    <span class="input-group-text">~</span>--%>
<%--                                </div>--%>
<%--                                <input type="text" class="form-control repeat__none" name="end">--%>
<%--                                <span class="form-text repeat__none">동안 매일</span>--%>
<%--                                <span class="form-text repeat__weekly repeat_date_monthly repeat_week_monthly">부터</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div class="form-group row repeat_date_monthly repeat_week_monthly d-none">--%>
<%--                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">날짜/요일 반복</label>--%>
<%--                        <div class="form-inline col-md-10">--%>
<%--                            <label class="custom-control custom-radio d-inline-block">--%>
<%--                                <input name="repeat_dnw" type="radio" class="custom-control-input" value="0" checked>--%>
<%--                                <span class="custom-control-label">날짜</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-radio d-inline-block">--%>
<%--                                <input name="repeat_dnw" type="radio" class="custom-control-input" value="1">--%>
<%--                                <span class="custom-control-label">요일</span>--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div class="form-group row repeat_date_monthly d-none">--%>
<%--                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">날짜</label>--%>
<%--                        <div class="form-inline col-md-10">--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">1  </span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">2  </span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">3  </span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">4  </span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">5  </span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">6  </span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">7  </span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">8  </span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">9  </span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">10</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">11</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">12</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">13</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">14</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">15</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">16</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">17</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">18</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">19</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">20</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">21</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">22</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">23</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">24</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">25</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">26</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">27</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">28</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">29</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">30</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">31</span>--%>
<%--                            </label>--%>

<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <!--매주 반복 선택-->--%>
<%--                    <div class="form-group row repeat_week_monthly d-none">--%>
<%--                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">주간</label>--%>
<%--                        <div class="form-inline col-md-10">--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">첫째주</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">둘째주</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">셋째주</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">넷째주</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">다섯째주</span>--%>
<%--                            </label>--%>

<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <!--매주 반복 선택-->--%>
<%--                    <div class="form-group row repeat__weekly repeat_week_monthly d-none">--%>
<%--                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">요일</label>--%>
<%--                        <div class="form-inline col-md-10">--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">월요일</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">화요일</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">수요일</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">목요일</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">금요일</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">토요일</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="week" type="checkbox" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">일요일</span>--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div class="form-group row repeat__weekly repeat_date_monthly repeat_week_monthly d-none">--%>
<%--                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">규칙 적용기간</label>--%>
<%--                        <div class="form-inline col-md-6">--%>
<%--                            <label class="custom-control custom-radio d-inline-block">--%>
<%--                                <input name="custom-18" type="radio" class="custom-control-input" checked>--%>
<%--                                <span class="custom-control-label">1개월</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-radio d-inline-block">--%>
<%--                                <input name="custom-18" type="radio" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">3개월</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-radio d-inline-block">--%>
<%--                                <input name="custom-18" type="radio" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">6개월</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-radio d-inline-block">--%>
<%--                                <input name="custom-18" type="radio" class="custom-control-input">--%>
<%--                                <span class="custom-control-label">직접 선택</span>--%>
<%--                            </label>--%>

<%--                        </div>--%>
<%--                        <div class="form-inline col-md-4 mode-edit mode-new">--%>
<%--                            <input id="datepicker-base" type="text" class="form-control form-control-md text-md-right" style="width: 60%;" placeholder="0" value="">--%>
<%--                            <small class="form-text text-muted">--%>
<%--                                동안--%>
<%--                            </small>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div class="form-group row">--%>
<%--                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">오전 / 오후 선택</label>--%>
<%--                        <div class="form-inline col-md-10">--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="ampm" type="checkbox" class="custom-control-input" value="1" checked>--%>
<%--                                <span class="custom-control-label">오전</span>--%>
<%--                            </label>--%>
<%--                            <label class="custom-control custom-checkbox mr-16">--%>
<%--                                <input name="ampm" type="checkbox" class="custom-control-input" value="2" checked>--%>
<%--                                <span class="custom-control-label">오후</span>--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                    </div>--%>


<%--                    <div class="form-group row justify-content-between">--%>
<%--                        <div class="col-md-12">--%>
<%--                            <button id="btn_add_date" type="button" class="btn btn-primary float-right">추가</button>--%>
<%--                        </div>--%>
<%--                    </div>--%>


<%--                    <hr>--%>

<%--                        <!--입력 미리보기-->--%>
<%--                    <div class="form-group row">--%>
<%--                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">선택된 날짜</label>--%>
<%--                        <div class="input-group col-md-10 mode-new">--%>
<%--                            <select multiple id="available_visit_date_list" class="custom-select form-control" style="width: 100%;height: 200px;">--%>

<%--                            </select>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="form-group row justify-content-between">--%>
<%--                        <span class="text-muted">*Shift키를 누르고 선택하거나 마우스로 드래그하면 여러개를 선택할 수 있습니다</span>--%>
<%--                        <div class="col-md-12">--%>
<%--                            <button id="btn_del_selected" type="button" class="btn btn-default float-right" disabled>삭제</button>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                </div>--%>
<%--                <div class="modal-footer justify-content-between">--%>
<%--                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>--%>
<%--                    <button id="btn_visit_save" type="button" class="btn btn-primary">저장</button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </form>--%>

<%--    <div class="modal fade" id="modal_reservation_now">--%>
<%--            <div class="modal-dialog modal-lg">--%>
<%--                <div class="modal-content">--%>
<%--                    <div class="modal-header bg-success">--%>
<%--                        <h5 class="modal-title text-white font-weight-bold">코드 작성</h5>--%>
<%--                        <button id="modals-code-new-close" type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>--%>
<%--                    </div>--%>
<%--                    <div class="modal-body">--%>
<%--                        <form>--%>
<%--                            <div class="form-group row">--%>
<%--                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">견학 예약 일자</label>--%>
<%--                                    <div class="col-md-4">--%>
<%--                                        <div id="repeat_none_datepicker" class="input-daterange input-group" style="width: 80%;">--%>
<%--                                            <input type="text" class="form-control" name="start">--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">오전/오후</label>--%>
<%--                                <div class="col-md-4">--%>
<%--                                    <select class="form-control form-control-md">--%>
<%--                                        <option value="am" selected>오전</option>--%>
<%--                                        <option value="pm">오후</option>--%>
<%--                                    </select>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <hr>--%>

<%--                            <div id="exist_req">--%>
<%--                                <div class="form-group row">--%>
<%--                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">구분</label>--%>
<%--                                    <div class="col-md-4">--%>
<%--                                        <div class="form-control-plaintext">개인</div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div id="team_name_row" class="form-group row">--%>
<%--                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">단체명</label>--%>
<%--                                    <div class="col-md-4">--%>
<%--                                        <div class="form-control-plaintext" id="team_name">이름</div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="form-group row">--%>
<%--                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">신청인</label>--%>
<%--                                    <div class="col-md-4">--%>
<%--                                        <div class="form-control-plaintext">김태선</div>--%>
<%--                                    </div>--%>
<%--                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">견학 인원</label>--%>
<%--                                    <div class="col-md-4">--%>
<%--                                        <div class="form-control-plaintext">4명</div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>

<%--                                <div class="form-group row">--%>
<%--                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">연락처</label>--%>
<%--                                    <div class="col-md-4">--%>
<%--                                        <div class="form-control-plaintext">010-0000-0000</div>--%>
<%--                                    </div>--%>
<%--                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">이메일</label>--%>
<%--                                    <div class="col-md-4">--%>
<%--                                        <div class="form-control-plaintext">tarfsnfl@sdlkfm.com</div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>

<%--                                <div class="form-group row">--%>
<%--                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">거주지 주소</label>--%>
<%--                                    <div class="col-md-10">--%>
<%--                                        <div class="form-control-plaintext">(08099) 경기 뭐시 어떻구 그랬동 123 202동 2020호</div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>

<%--                                <div class="form-group row">--%>
<%--                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">견학 목적</label>--%>
<%--                                    <div class="col-md-10">--%>
<%--                                        <div class="form-control-plaintext">밥먹으러</div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>

<%--                                <div class="form-group row">--%>
<%--                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">기타사전 질문</label>--%>
<%--                                    <div class="col-md-10">--%>
<%--                                        <div class="form-control-plaintext">화장실이 어디예요?</div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--&lt;%&ndash;                            <div id="none_req">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <div class=""&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>


<%--                            <div class="modal-footer justify-content-between">--%>
<%--                                <div>--%>
<%--                                    <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>--%>
<%--                                </div>--%>
<%--                                <div>--%>
<%--                                    <button id="btn_save_new" type="button" class="btn btn-primary">저장</button>--%>
<%--                                </div>--%>
<%--                            </div>--%>


<%--                        </form>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>



        <div class="modal fade" id="modifyOrDeleteVisitData">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header bg-success">
                        <h5 class="modal-title text-white font-weight-bold">일정 상세</h5>
                        <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                    </div>

                    <div class="modal-body">
                        <form id="modifyOrDeleteVisitDataForm">
                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">조건</label>
                                <div class="form-inline col-md-10">

                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="dayOrGroup" type="radio" class="custom-control-input" value="1" checked>
                                        <span class="custom-control-label">해당일</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="dayOrGroup" type="radio" class="custom-control-input" value="2">
                                        <span class="custom-control-label">그룹</span>
                                    </label>
                                </div>
                            </div>
                           <input type="hidden" name="idx_visit_data"> <!--인덱스 -->



<%--                            <label for="demo_subject"  class="form-label text-success-custom font-weight-bold d-block">지원사업 명</label>--%>
<%--                            <form:input path="demo_subject" class="form-control form-control-md"/>--%>


                            <div class="form-group row">

                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold d-block">선택 날짜</label>
                                <div class="col-md-4">
                                    <input type="text" name="cur_date" class="form-control form-control-md" readonly>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">오전 / 오후 </label>
                                <div class="form-inline col-md-10">
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input id="visit_data_type_am"  name="visit_data_type"  type="checkbox" class="custom-control-input" value="1" checked>
                                        <span class="custom-control-label">오전</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input id="visit_data_type_pm"  name="visit_data_type"  type="checkbox" class="custom-control-input" value="2" checked>
                                        <span class="custom-control-label">오후</span>
                                    </label>
                                </div>
                            </div>


                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">견학 가능 수(오전)</label>
                                <div class="col-md-4">
                                    <input type="text" name="possible_count_am"  class="form-control form-control-md" oninput="this.value = this.value.replace(/[^0-9]/g,'');"  readonly>
                                </div>

                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">견학 가능 수(오후)</label>
                                <div class="col-md-4">
                                    <input type="text"  name="possible_count_pm" class="form-control form-control-md"  oninput="this.value = this.value.replace(/[^0-9]/g,'');" readonly>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">현재 예약 수(오전)</label>
                                <div class="col-md-4">
                                    <input type="text"  name="resulvation_count_am" class="form-control form-control-md" oninput="this.value = this.value.replace(/[^0-9]/g,'');" readonly>
                                </div>

                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">현재 예약 수(오후)</label>
                                <div class="col-md-4">
                                    <input type="text"  name="resulvation_count_pm" class="form-control form-control-md" oninput="this.value = this.value.replace(/[^0-9]/g,'');"  readonly>
                                </div>
                            </div>




                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">메모</label>
                                <div class="col-md-4">
                                    <input type="text" name="memo" class="form-control form-control-md" readonly >
                                </div>
                            </div>


<%--                            <div class="form-group row">--%>
<%--                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">group_idx</label>--%>
<%--                                <div class="col-md-4">--%>
<%--                                    <input type="text" id="" name="group_idx" class="form-control form-control-md" readonly>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <div class="form-group row">--%>
<%--                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">불가 이유</label>--%>
<%--                                <div class="col-md-4">--%>
<%--                                    <input type="text"  name="impossible_reason" class="form-control form-control-md" readonly >--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <div class="form-group row" id="checkboxDiv">--%>

<%--                            </div>--%>


                            <div class="form-group row" id="group_date">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">함께 등록된 일정 </label>
                                <div class="form-inline col-md-10"  id="checkboxDiv">


                                </div>
                            </div>

<%--                            <div class="form-group row">--%>
<%--                                <label class="col-form-label col-form-label-md col-md-2  font-weight-bold">같은 그룹 날짜</label>--%>
<%--                                <textarea  class="form-control" readonly="true" style="resize:none"/>--%>
<%--                            </div>--%>


                        </form>
                    </div>

                    <div class="modal-footer justify-content-between">
                        <div>
                            <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">취소</button>
                        </div>
                        <div>

                            <button id="btn_delete_new" type="button" class="btn btn-primary">삭제</button>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="saveVisitData">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header bg-success">
                        <h5 class="modal-title text-white font-weight-bold">신청일 추가/변경</h5>
                        <button id="modals-code-new-close" type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body">
                        <form id="saveVisitForm">

                            <!--반복 선택-->
                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반복</label>
                                <div class="form-inline col-md-10">
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="repeat_type_new" type="radio" class="custom-control-input" value="0" checked>
                                        <span class="custom-control-label">없음</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="repeat_type_new" type="radio" class="custom-control-input" value="1">
                                        <span class="custom-control-label">매주</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="repeat_type_new" type="radio" class="custom-control-input" value="2">
                                        <span class="custom-control-label">매월</span>
                                    </label>
                                </div>
                            </div>

<%--                            <input type="hidden" id="idx_admin" name="idx_admin" value="${admin.idx_admin}">--%>
                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">시작 날짜</label>
                                <div class="col-md-3">
                                    <div id="sDate" class="input-daterange input-group" style="width: 80%;">
                                        <input type="text" class="form-control" name="sDate" >
                                    </div>
                                </div>
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">종료 날짜</label>
                                <div class="col-md-3">
                                    <div id="eDate" class="input-daterange input-group" style="width: 80%;">
                                        <input type="text" class="form-control" name="eDate">
                                    </div>
                                </div>

                            </div>

                            <hr>


                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">오전 / 오후 선택</label>
                                <div class="form-inline col-md-10">
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input id="ampm_am" name="ampm_new"  type="checkbox" class="custom-control-input" value="1" checked>
                                        <span class="custom-control-label">오전</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input id="ampm_pm" name="ampm_new"  type="checkbox" class="custom-control-input" value="2">
                                        <span class="custom-control-label">오후</span>
                                    </label>
                                </div>
                            </div>

                            <div class="form-group row repeat_date_monthly_new repeat_week_monthly_new d-none">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold ">날짜/요일 반복</label>
                                <div class="form-inline col-md-10">
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="repeat_dnw_new" type="radio" class="custom-control-input" value="0" checked>
                                        <span class="custom-control-label">날짜</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="repeat_dnw_new" type="radio" class="custom-control-input" value="1">
                                        <span class="custom-control-label">요일</span>
                                    </label>
                                </div>
                            </div>

                            <div class="form-group row repeat_date_monthly_new d-none ">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">날짜</label>
                                <div class="form-inline col-md-10">
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="01">
                                        <span class="custom-control-label">1  </span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="02">
                                        <span class="custom-control-label">2  </span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="03">
                                        <span class="custom-control-label">3  </span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="04">
                                        <span class="custom-control-label">4  </span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="05">
                                        <span class="custom-control-label">5  </span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="06">
                                        <span class="custom-control-label">6  </span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="07">
                                        <span class="custom-control-label">7  </span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="08">
                                        <span class="custom-control-label">8  </span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="09">
                                        <span class="custom-control-label">9  </span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="10">
                                        <span class="custom-control-label">10</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="11">
                                        <span class="custom-control-label">11</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="12">
                                        <span class="custom-control-label">12</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="13">
                                        <span class="custom-control-label">13</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="14">
                                        <span class="custom-control-label">14</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="15">
                                        <span class="custom-control-label">15</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="16">
                                        <span class="custom-control-label">16</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="17">
                                        <span class="custom-control-label">17</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="18">
                                        <span class="custom-control-label">18</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="19">
                                        <span class="custom-control-label">19</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="20">
                                        <span class="custom-control-label">20</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="21">
                                        <span class="custom-control-label">21</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="22">
                                        <span class="custom-control-label">22</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="23">
                                        <span class="custom-control-label">23</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="24">
                                        <span class="custom-control-label">24</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="25">
                                        <span class="custom-control-label">25</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="26">
                                        <span class="custom-control-label">26</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="27">
                                        <span class="custom-control-label">27</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="28">
                                        <span class="custom-control-label">28</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="29">
                                        <span class="custom-control-label">29</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="30">
                                        <span class="custom-control-label">30</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="dateNew" type="checkbox" class="custom-control-input" value="31">
                                        <span class="custom-control-label">31</span>
                                    </label>

                                </div>
                            </div>

                            <!--매주 반복 선택-->
                            <div class="form-group row repeat_week_monthly_new d-none ">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">주간</label>
                                <div class="form-inline col-md-10">
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="weekNum" type="checkbox" class="custom-control-input" value="1">
                                        <span class="custom-control-label">첫째주</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="weekNum" type="checkbox" class="custom-control-input" value="2">
                                        <span class="custom-control-label">둘째주</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="weekNum" type="checkbox" class="custom-control-input" value="3">
                                        <span class="custom-control-label">셋째주</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="weekNum" type="checkbox" class="custom-control-input" value="4">
                                        <span class="custom-control-label">넷째주</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="weekNum" type="checkbox" class="custom-control-input" value="5">
                                        <span class="custom-control-label">다섯째주</span>
                                    </label>


                                </div>
                            </div>

                            <!--매주 반복 선택-->
                            <div class="form-group row repeat__weekly_new repeat_week_monthly_new d-none">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">요일</label>
                                <div class="form-inline col-md-10">
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="day_new" type="checkbox" class="custom-control-input" value="1">
                                        <span class="custom-control-label">월요일</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="day_new" type="checkbox" class="custom-control-input" value="2">
                                        <span class="custom-control-label">화요일</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="day_new" type="checkbox" class="custom-control-input" value="3">
                                        <span class="custom-control-label">수요일</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="day_new" type="checkbox" class="custom-control-input" value="4">
                                        <span class="custom-control-label">목요일</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="day_new" type="checkbox" class="custom-control-input" value="5">
                                        <span class="custom-control-label">금요일</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="day_new" type="checkbox" class="custom-control-input" value="6">
                                        <span class="custom-control-label">토요일</span>
                                    </label>
                                    <label class="custom-control custom-checkbox mr-16">
                                        <input name="day_new" type="checkbox" class="custom-control-input" value="0">
                                        <span class="custom-control-label">일요일</span>
                                    </label>
                                </div>
                            </div>

                            <div class="form-group row repeat__weekly_new repeat_date_monthly_new repeat_week_monthly_new d-none">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">규칙 적용기간</label>
                                <div class="form-inline col-md-6">

                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="ruleTerm" type="radio" class="custom-control-input" value="99" checked>
                                        <span class="custom-control-label">직접 선택</span>
                                    </label>

                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="ruleTerm" type="radio" class="custom-control-input"  value="1">
                                        <span class="custom-control-label">1개월</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="ruleTerm" type="radio" class="custom-control-input" value="3">
                                        <span class="custom-control-label">3개월</span>
                                    </label>
                                    <label class="custom-control custom-radio d-inline-block">
                                        <input name="ruleTerm" type="radio" class="custom-control-input" value="6">
                                        <span class="custom-control-label">6개월</span>
                                    </label>

                                </div>
                            </div>



                            <div id="exist_req">
                                <div class="form-group row">
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">견학 가능 수 오전</label>
                                    <div class="col-md-2">
                                        <input type="text" id="possible_count_am" name="possible_count_am" max="99" placeholder="숫자만 입력"  class="form-control form-control-md" checked  oninput="this.value = this.value.replace(/[^0-9]/g,'');">
                                    </div>

                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">견학 가능 수 오후</label>
                                    <div class="col-md-2">
                                        <input type="text" id="possible_count_pm" name="possible_count_pm" max="99" placeholder="숫자만 입력"  class="form-control form-control-md"   oninput="this.value = this.value.replace(/[^0-9]/g,'');">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">메모</label>
                                    <div class="col-md-10">
                                        <textarea id="memo" name="memo" class="form-control" style="resize:none"></textarea>
                                    </div>
                                </div>




                            </div>
                            <%--                            <div id="none_req">--%>
                            <%--                                <div class=""--%>
                            <%--                            </div>--%>


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
<div id="footer_in_calendar">
    <%@include file ="layouts/frame_footer.jsp" %>
</div>
<!-- / Layout footer -->
<script>


    $(document).ready(function(){


        $("#group_date").hide();

        if(window.location.pathname == '/a10_dashboard'){
            $('.visit_calendar_big_title').hide();
            $('#footer_in_calendar').hide();
        }

        var isRtl = $('html').attr('dir') === 'rtl';
        $('.datepickers').datepicker({
            orientation: isRtl ? 'auto right' : 'auto left'
        });


        let getMonthlyData = function getEventVal(dateFormat){

            let cal_data= new Array();

            let start_date = new Date(dateFormat);
            let end_date = new Date();

            let today = {
                start_date : start_date,
                end_date : end_date
            };

            $.ajax({
                type: 'post',
                url: 'get_monthly_visit_data', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(today),//보내는 데이터
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'text',//받는 데이터 타입
                async:false,
                success:function (result){
                    let data=JSON.parse(result);
                    let array_data=data["visitDataVOList"]
                    $.each(array_data, function(key, item) {
                        let item1 = new Object();
                        let item2 = new Object();

                        let cur_date = new Date(item.cur_date);
                        let y = cur_date.getFullYear();
                        let m = cur_date.getMonth();
                        let d = cur_date.getDate();

                        let ampm = item.visit_data_type;

                        let idx_visit_data=item.idx_visit_data;
                        let visit_data_type=item.visit_data_type;
                        let possible_count=item.possible_count;
                        let resulvation_count=item.resulvation_count;
                        let is_admin_cancel=item.is_admin_cancel;
                        let impossible_reason=item.impossible_reason;
                        let memo = item.memo;
                        let group_idx=item.group_idx;
                        let idx_admin=item.idx_admin;

                        let resulvation_count_am=resulvation_count%1000;
                        let resulvation_count_pm=Math.trunc(resulvation_count/1000);


                        let possible_count_am=possible_count%1000;
                        let possible_count_pm=Math.trunc(possible_count/1000);



                        if (ampm == 1) {
                            item1.id='a';
                            item1.title = "방문: " + possible_count_am + "예약 : "+ resulvation_count_am;
                            item1.start = new Date(y, m, d, 8, 0);
                             // item1.classNames = 'fc-event-success';

                            item1.extendedProps = {
                                idx_visit_data : idx_visit_data,
                                cur_date : cur_date,
                                visit_data_type : visit_data_type,
                                possible_count_am : possible_count_am ,
                                possible_count_pm : possible_count_pm,
                                resulvation_count_am : resulvation_count_am,
                                resulvation_count_pm : resulvation_count_pm,
                                is_admin_cancel : is_admin_cancel,
                                impossible_reason :impossible_reason ,
                                memo : memo,
                                group_idx : group_idx,
                                idx_admin: idx_admin
                            };

                            cal_data.push(item1);
                        } else if (ampm == 2) {

                            item1.title = "방문: " + possible_count_pm + "예약 : "+ resulvation_count_pm;
                            item1.start = new Date(y, m, d, 13, 0);
                            // item1.classNames = 'fc-event-success';
                            item1.extendedProps = {
                                idx_visit_data : idx_visit_data,
                                cur_date : cur_date,
                                visit_data_type : visit_data_type,
                                possible_count_am : possible_count_am ,
                                possible_count_pm : possible_count_pm,
                                resulvation_count_am : resulvation_count_am,
                                resulvation_count_pm : resulvation_count_pm,
                                is_admin_cancel : is_admin_cancel,
                                impossible_reason :impossible_reason ,
                                memo : memo,
                                group_idx : group_idx,
                                idx_admin: idx_admin
                            };
                            cal_data.push(item1);
                        } else {
                            item1.title = "방문: " + possible_count_am + "예약 : "+ resulvation_count_am;
                            item1.start = new Date(y, m, d, 8, 0);
                            item1.borderColor = 'green';
                            item2.textColor = 'black';
                            // item1.classNames = 'fc-event-success';
                            item1.extendedProps = {
                                idx_visit_data : idx_visit_data,
                                cur_date : cur_date,
                                visit_data_type : visit_data_type,
                                possible_count_am : possible_count_am ,
                                possible_count_pm : possible_count_pm,
                                resulvation_count_am : resulvation_count_am,
                                resulvation_count_pm : resulvation_count_pm,
                                is_admin_cancel : is_admin_cancel,
                                impossible_reason :impossible_reason ,
                                memo : memo,
                                group_idx : group_idx,
                                idx_admin: idx_admin
                            };

                            cal_data.push(item1);
                            item2.id='a';
                            item2.title = "방문: " + possible_count_pm + "예약 : "+ resulvation_count_pm;
                            item2.start = new Date(y, m, d, 13, 0);
                            // item2.end = new Date('2022-12-23');
                            // item2.backgroundColor = '#ffff00';
                            item2.borderColor = 'red';
                            item2.textColor = 'red';
                            // item2.borderColor = '#ff0000';
                            item2.extendedProps = {
                                idx_visit_data : idx_visit_data,
                                cur_date : cur_date,
                                visit_data_type : visit_data_type,

                                possible_count_am : possible_count_am ,
                                possible_count_pm : possible_count_pm,
                                resulvation_count_am : resulvation_count_am,
                                resulvation_count_pm : resulvation_count_pm,
                                resulvation_count: resulvation_count,
                                is_admin_cancel : is_admin_cancel,
                                impossible_reason :impossible_reason ,
                                memo : memo,
                                group_idx : group_idx,
                                idx_admin: idx_admin
                            };
                            cal_data.push(item2);
                        }
                    });
                }
            });

            return cal_data;
        };


        // var request=$.ajax({
        //    url:'get_monthly_visit_data'
        // });

        let today = new Date();
        let y = today.getFullYear();
        let m = today.getMonth();
        let d = today.getDate();
        console.log("y : "  + y);
        console.log("m : " +  m);
        console.log("d : "  + d);

        // Default view
        // color classes: [ fc-event-success | fc-event-info | fc-event-warning | fc-event-danger | fc-event-dark ]
        let defaultCalendar = new Calendar($('#fullcalendar-default-view')[0], {
            //여기부터
            // customButtons: {
            //     myWeekButton: {
            //         text: 'week',
            //         click: function() {
            //             //alert("Custom Button");
            //             $("#list_calendar").show();
            //             $("#month_calendar").hide();
            //         }
            //     },
            //     myDayButton: {
            //         text: 'day',
            //         click: function() {
            //             //alert("Custom Button");
            //             $("#list_calendar").show();
            //             $("#month_calendar").hide();
            //         }
            //     }
            // },
            //여기까지

            plugins: [
                calendarPlugins.bootstrap,
                calendarPlugins.dayGrid,
                calendarPlugins.timeGrid,
                calendarPlugins.interaction
            ],
            direction: $('html').attr('dir') || 'ltr',

            // Bootstrap styling
            // themeSystem: 'bootstrap',
            bootstrapFontAwesome: {
                close: ' ion ion-md-close',
                prev: ' ion ion-ios-arrow-back scaleX--1-rtl',
                next: ' ion ion-ios-arrow-forward scaleX--1-rtl',
                prevYear: ' ion ion-ios-arrow-dropleft-circle scaleX--1-rtl',
                nextYear: ' ion ion-ios-arrow-dropright-circle scaleX--1-rtl'
            },


            headerToolbar: {
                center: 'title',
                left: window.location.pathname != '/a10_dashboard' ? 'prev,next today' : null,
                // right: 'addEventButton dayGridMonth,timeGridWeek,timeGridDay'
                right : window.location.pathname != '/a10_dashboard' ? 'addEventButton' : null

            },

            customButtons:
                window.location.pathname != '/a10_dashboard' ?
                {
                addEventButton:
                    {
                    text:'일정 추가하기',
                    click : function(){
                            let x = new Date();
                            $("#saveVisitData").find("input[name='sDate']").val(x.yyyymmdd());
                            $("#saveVisitData").find("input[name='eDate']").val(x.yyyymmdd());
                            $("#saveVisitData").modal('show');
                        }
                    }
                } : {},
            //

            // initialDate: today,
            navLinks: true, // can click day/week names to navigate views
            selectable: true,
            weekNumbers: false, // Show week numbers
            nowIndicator: true, // Show "now" indicator
            firstDay: 0, // Set "Monday" as start of a week
            businessHours: {
                dow: [1, 2, 3, 4, 5], // Monday - Friday
                start: '9:00',
                end: '18:00',
            },
            editable: false,
            dayMaxEventRows: false, // allow "more" link when too many events
            /*events: eventList,*/
            aspectRatio: 2.0,

            locale: 'ko',
            views: {
                dayGrid: {
                    dayMaxEventRows: 5
                }
            },
            select: function (selectionData) {

                //
                //
                // console.log("startStrvalue :" + selectionData.startStr );
                // console.log("endStrvalue  : " + selectionData.endStr );
                //
                // for(var key in selectionData){
                //     console.log(" key : " + key  + "value : " + selectionData[key]);
                //
                //
                // }
                //
                // let start_date=new Date(selectionData.startStr).yyyymmdd();
                // let end_date =new Date(selectionData.endStr).yyyymmdd();
                //
                // let param={
                //     start_date : start_date,
                //     end_date : end_date
                // }
                //
                // console.log("start_date : " +start_date);
                // console.log("end_date : " + end_date);
                //
                //
                // $("#modifyOrDeleteVisitData").find("input[name='cur_date']").val(new Date(selectionData.startStr).yyyymmdd());




                //여기부터
                // var isOneDay = function (startStr, endStr) {
                //     var start = new Date(startStr);
                //     start.setDate(start.getDate() + 1);
                //     return start.toString() === new Date(endStr).toString();
                // }
                //여기까지

                //여기부터
                // $('#visit-req-modal').on('shown.bs.modal', function() {
                //
                //         //달력 날짜 선택했을때
                //         var sDate = new Date(selectionData.startStr);
                //         var eDate = new Date(selectionData.endStr);
                //
                //         $('#repeat_none_datepicker').children('input[name="start"]').val(sDate.yyyymmdd());
                //         $('#repeat_none_datepicker').children('input[name="end"]').val(eDate.yyyymmdd());
                // console.log('gd')
                //
                //
                //         //console.log(selectionData);
                //         var param = {
                //             start_date:sDate,
                //             end_date:eDate
                //         }
                //
                //         $.ajax({
                //             type: 'post',
                //             url: 'get_visit_data', //데이터를 주고받을 파일 주소 입력
                //             data: JSON.stringify(param),//보내는 데이터
                //             contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                //             dataType: 'text',//받는 데이터 타입
                //             success: function (result) {
                //                 //작업이 성공적으로 발생했을 경우
                //                 var data = JSON.parse(result);
                //
                //                 var array_data = data["visitDataVOList"];
                //
                //
                //
                //                 $.each(array_data, function(key, item)
                //                 {
                //                     var sDate = new Date(item.cur_date);
                //                     var ampm=item.visit_data_type;
                //                     var ampm_text = "오전, 오후";
                //                     if(ampm==1){
                //                         ampm_text = "오전, 저장됨";
                //                     }else if(ampm==2){
                //                         ampm_text = "오후, 저장됨";
                //                     }else{
                //                         ampm_text = "오전, 오후, 저장됨";
                //                         ampm=3;
                //                     }
                //                     var keyvalue_txt = sDate.yyyymmdd() + ", " + ampm_text;
                //
                //                     var saved = "yes";
                //
                //                     var keyvalue=[sDate,ampm,saved];
                //
                //                     $("#available_visit_date_list")
                //                         .append($("<option></option>")
                //                             .attr("value", keyvalue)
                //                             .text(keyvalue_txt));
                //
                //
                //                 });
                //
                //                 //STATUS_001 :
                //             },
                //             error: function () {
                //                 //에러가 났을 경우 실행시킬 코드
                //             }
                //         });
                //
                //         //$(this).find('input[type="text"]').trigger('focus');
                //
                //
                //
                //     })
                //     .on('hidden.bs.modal', function() {
                //
                //         $(this).off('shown.bs.modal hidden.bs.modal submit').find('input[type="text"], select').val('');
                //         defaultCalendar.unselect();
                //
                //         $("#available_visit_date_list").empty();
                //     })
                //     .on('submit', function(e) {
                //         e.preventDefault();
                //         var title = $(this).find('input[type="text"]').val();
                //         var className = $(this).find('select').val() || null;
                //         //여기부터
                //         /*
                //         if (title) {
                //             var eventData = {
                //                 title: title,
                //                 start: selectionData.startStr,
                //                 end: selectionData.endStr,
                //                 classNames: className,
                //                 display: isOneDay(selectionData.startStr, selectionData.endStr) ? 'list-item' : 'block'
                //             }
                //             defaultCalendar.addEvent(eventData);
                //         }*/
                //         //여기까지
                //         $(this).modal('hide');
                //     })
                //     .modal('show');
                //여기까지
                // console.log(selectionData);
                // alert('달력날짜클릭');

                // console.log("getDate : "  + defaultCalendar.getDate());
                // alert("GETdate : " +  defaultCalendar.getDate());
                // $('#modal_reservation_now').modal('show');
                // var startDate = new Date(selectionData.startStr);
                // $('#repeat_none_datepicker').children('input[name="start"]').val(startDate.yyyymmdd());

            },



            events : getMonthlyData(new Date()),


            eventClick:
                window.location.pathname != '/a10_dashboard' ?
                function(calEvent) {

                let visitData=calEvent.event.extendedProps;

                $("#modifyOrDeleteVisitData").find("input[name='idx_visit_data']").val(visitData.idx_visit_data);

                $("#modifyOrDeleteVisitData").find("input[name='cur_date']").val(new Date(visitData.cur_date).yyyymmdd());

                $("#modifyOrDeleteVisitData").find("input[name='id_admin_cancel']").val(visitData.id_admin_cancel);
                $("#modifyOrDeleteVisitData").find("input[name='impossible_reason']").val(visitData.impossible_reason);
                $("#modifyOrDeleteVisitData").find("input[name='visit_data_type']").val(visitData.visit_data_type);
                $('input:checkbox[name="visit_data_type"]').prop('disabled',true);


                if(visitData.visit_data_type == 1){
                    $("input:checkbox[id='visit_data_type_am']").prop('checked',true);
                    $("input:checkbox[id='visit_data_type_pm']").prop('checked',false);

                }else if(visitData.visit_data_type == 2){
                    $("input:checkbox[id='visit_data_type_am']").prop('checked',false);
                    $("input:checkbox[id='visit_data_type_pm']").prop('checked',true);

                }else if(visitData.visit_data_type == 3){
                    $("input:checkbox[id='visit_data_type_am']").prop('checked',true);
                    $("input:checkbox[id='visit_data_type_pm']").prop('checked',true);

                };

                $("#modifyOrDeleteVisitData").find("input[name='memo']").val(visitData.memo);
                // $("#modifyOrDeleteVisitData").find("input[name='group_idx']").val(visitData.group_idx);

                $("#modifyOrDeleteVisitData").find("input[name='possible_count_am']").val(visitData.possible_count_am);
                $("#modifyOrDeleteVisitData").find("input[name='possible_count_pm']").val(visitData.possible_count_pm);
                $("#modifyOrDeleteVisitData").find("input[name='resulvation_count_am']").val(visitData.resulvation_count_am);
                $("#modifyOrDeleteVisitData").find("input[name='resulvation_count_pm']").val(visitData.resulvation_count_pm);

                console.log("visitData.group_idx : " + visitData.group_idx);


                let group_idx=visitData.group_idx;

                let param={
                    group_idx: group_idx
                }

                $.ajax({
                    type: 'post',
                    url: 'get_visit_data_byGroupIdx', //데이터를 주고받을 파일 주소 입력
                    data: JSON.stringify(param),//보내는 데이터
                    contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                    dataType: 'text',//받는 데이터 타입
                    success:function (result){
                        let data=JSON.parse(result);
                        let array_data=data["visitDataVOList"]

                        let inputval="";

                        $.each(array_data, function(key, item) {

                            let cur_date = new Date(item.cur_date).yyyymmdd();
                            let idx_visit_data=item.idx_visit_data;
                            // inputval +="<input type='checkbox' value='" + cur_date + "'>"+cur_date + "&emsp;"

                            inputval +="<input type='hidden' name='idx_visit_data_temp' value='" + idx_visit_data + "'>"
                            inputval+=cur_date + "&emsp;"
                            // inputval+=cur_date + "&emsp;" + idx_visit_data + "&emsp;"
                        });
                        $("#checkboxDiv").html(inputval);
                    }
                });

                $("#modifyOrDeleteVisitData").modal('show');

            }: null,

        });

        defaultCalendar.render();

        // var enableRequest = true;
        //
        // $.ajaxPrefilter( function( options, originalOptions, jqXHR ) {
        //     // Modify options, control originalOptions, store jqXHR, etc
        //
        //     if (!enableRequest ){
        //         jqXHR.abort();
        //     }
        // });

        $("button.fc-today-button").on("click",function(){
            defaultCalendar.removeAllEvents();
            defaultCalendar.addEventSource(getMonthlyData(defaultCalendar.getDate()));
            defaultCalendar.refetchEvents();
        });

        $("button.fc-next-button").click(function(){
            defaultCalendar.removeAllEvents();
            defaultCalendar.addEventSource(getMonthlyData(defaultCalendar.getDate()));
            defaultCalendar.refetchEvents();
        });

        $("button.fc-prev-button").click(function (){
            defaultCalendar.removeAllEvents();
            defaultCalendar.addEventSource(getMonthlyData(defaultCalendar.getDate()));
            defaultCalendar.refetchEvents();
        });


        function setEnabled()
        {
            enableRequest = true;
        }

        // function getReservationInfo(date, dur){
        //     var param = {
        //         is_duration: dur,
        //         resulvation_date: date
        //     }
        //
        //     $.ajax({
        //         type: 'get',
        //         url: 'get_date_visit_req', //데이터를 주고받을 파일 주소 입력
        //         data: JSON.stringify(param),//보내는 데이터
        //         contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
        //         dataType: 'json',//받는 데이터 타입
        //         success: function (result) {
        //             console.log(result);
        //
        //         },
        //         error: function (res) {
        //             console.log(res)
        //         }
        //     });
        // }

        $('#datepicker-base').datepicker({
            format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
            startDate: '-1d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
            endDate: '+10d',	//달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
            autoclose : true,	//사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
            calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
            clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
            datesDisabled : ['2019-06-24','2019-06-26'],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
            daysOfWeekDisabled : [0,6],	//선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
            daysOfWeekHighlighted : [3], //강조 되어야 하는 요일 설정
            disableTouchKeyboard : false,	//모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
            immediateUpdates: false,	//사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false
            multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false
            multidateSeparator :",", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
            templates : {
                leftArrow: '&laquo;',
                rightArrow: '&raquo;'
            }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징
            showWeekDays : true ,// 위에 요일 보여주는 옵션 기본값 : true
            title: "규칙 종료 날짜",	//캘린더 상단에 보여주는 타이틀
            todayHighlight : true ,	//오늘 날짜에 하이라이팅 기능 기본값 :false
            toggleActive : true,	//이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
            weekStart : 0 ,//달력 시작 요일 선택하는 것 기본값은 0인 일요일
            sideBySide: true,
            language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.

        });//datepicker end


        // $("input:radio[name=repeat_type]").click(function()
        // {
        //     var repeat_type = $("input:radio[name='repeat_type']:checked").val();
        //    if(repeat_type=='0'){
        //        $(".repeat__weekly").addClass('d-none');
        //        $(".repeat_date_monthly").addClass('d-none');
        //        $(".repeat_week_monthly").addClass('d-none');
        //        $(".repeat__none").removeClass('d-none');
        //    }else if(repeat_type=='1'){
        //        $(".repeat_date_monthly").addClass('d-none');
        //        $(".repeat_week_monthly").addClass('d-none');
        //        $(".repeat__none").addClass('d-none');
        //        $(".repeat__weekly").removeClass('d-none');
        //    }else if(repeat_type=='2'){
        //
        //        $(".repeat__weekly").addClass('d-none');
        //        $(".repeat__none").addClass('d-none');
        //
        //        var repeat_date_n_week = $("input:radio[name='repeat_dnw']:checked").val( ) ;
        //
        //        if(repeat_date_n_week=='0'){
        //
        //            $(".repeat_week_monthly").addClass('d-none');
        //            $(".repeat_date_monthly").removeClass('d-none');
        //        }else {
        //            $(".repeat_date_monthly").addClass('d-none');
        //            $(".repeat_week_monthly").removeClass('d-none');
        //        }
        //    }
        // });
        // $("input:radio[name=repeat_dnw]").click(function()
        // {
        //     var repeat_date_n_week = $("input:radio[name='repeat_dnw']:checked").val( ) ;
        //     if(repeat_date_n_week=='0'){
        //         $(".repeat_week_monthly").addClass('d-none');
        //         $(".repeat_date_monthly").removeClass('d-none');
        //     }else if(repeat_date_n_week=='1'){
        //
        //         $(".repeat_date_monthly").addClass('d-none');
        //         $(".repeat_week_monthly").removeClass('d-none');
        //
        //     }
        // });


        // $("#btn_add_date").click(function()
        // {
        //     var repeat_type = $("input:radio[name='repeat_type']:checked").val( );
        //
        //     if(repeat_type=='0'){
        //
        //
        //         var sDate = new Date($('#repeat_none_datepicker').children('input[name="start"]').val());
        //         var eDate = new Date($('#repeat_none_datepicker').children('input[name="end"]').val());
        //
        //         let diffDate = eDate.getTime()-sDate.getTime();
        //         const dateDays = Math.abs(diffDate / (1000 * 3600 * 24));
        //
        //         for(var i=0;i<dateDays;i++){
        //
        //             var ampm=0;
        //             $('input:checkbox[name="ampm"]:checked').each(function() {
        //                 ampm+=$(this).val();
        //             });
        //
        //             var ampm_text = "오전, 오후";
        //             if(ampm==1){
        //                 ampm_text = "오전";
        //             }else if(ampm==2){
        //                 ampm_text = "오후";
        //             }else{
        //                 ampm_text = "오전, 오후";
        //                 ampm=3;
        //             }
        //             var keyvalue_txt = sDate.yyyymmdd() + ", " + ampm_text;
        //             var saved = "no";
        //             var keyvalue=[sDate,ampm,saved];
        //
        //             if(isNotDuple(sDate)=="yes"){
        //                 $("#available_visit_date_list")
        //                     .append($("<option></option>")
        //                         .attr("value", keyvalue)
        //                         .text(keyvalue_txt));
        //             }
        //
        //             //다음 날 셋팅
        //             sDate.setHours(sDate.getHours()+24);
        //         }
        //
        //         //console.log(dateDays);
        //
        //
        //     }else if(repeat_type=='1'){
        //
        //
        //
        //
        //
        //     }else if(repeat_type=='2'){
        //
        //
        //
        //
        //
        //
        //
        //     }
        //
        //
        //
        // });

        // function isNotDuple(sDate){
        //
        //     var result = "yes";
        //     $('#available_visit_date_list').children().each(function() {
        //
        //         var keyvalue=$(this).val(h).split(',');//[sDate,ampm,var saved];
        //         let list_item_date = new Date(keyvalue[0]);//	date						해당일
        //         let saved = keyvalue[2];
        //
        //         if(sDate.yyyymmdd() == list_item_date.yyyymmdd() && saved =='yes'){
        //             //console.log("찾았다. "+sDate.yyyymmdd() +","+list_item_date.yyyymmdd()+","+saved);
        //             result = "no";
        //             return false;
        //         }
        //     });
        //     return result;
        // }

        // $('#available_visit_date_list').on('change',function (){
        //     console.log('선택했다');
        //     if($(this).children(":selected").length>0){
        //         $("#btn_del_selected").attr('disabled', false);
        //     }
        //     else {
        //         $("#btn_del_selected").attr('disabled', true);
        //     }
        // });


        // $("#btn_del_selected").click(function()
        // {
        //     var isSaved = "no";
        //
        //     $('#available_visit_date_list').children(":selected").each(function() {
        //
        //         var keyvalue=$(this).val().split(',');//[sDate,ampm,var saved];
        //
        //         let saved = keyvalue[2];
        //         if(saved=='yes'){
        //             isSaved="yes";
        //             return false;
        //         }
        //     });
        //
        //     if(isSaved=="yes"){
        //         if(confirm("DB에 저장된 데이터가 포함되어 있습니다. DB에서 삭제할까요?"))
        //         {
        //             //예
        //             $('#available_visit_date_list').children(":selected").each(function() {
        //                 $(this).remove();
        //             });
        //         }
        //         else
        //         {
        //             return;
        //         }
        //     }else {
        //         $('#available_visit_date_list').children(":selected").each(function() {
        //             $(this).remove();
        //         });
        //     }
        // });

        $('#sDate').datepicker({
            orientation: 'auto left',
            format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
            // startDate: '-10d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
            language : "ko",	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
            startDate: new Date(),
            autoclose : true,
            onSelect:function (selected){
                // $("#eDate").datepicker("option","minDate",selected)
            }

        });
        $("#eDate").datepicker({
            orientation: 'auto left',
            startDate: new Date(),
            format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
            // startDate: '-10d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
            language : "ko"	,//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.})
            autoclose : true
        });



        // $("#btn_visit_save").click(function()
        // {
        //     let visitDataVOList = Array();
        //
        //     $('#available_visit_date_list').children().each(function() {
        //         let item = new Object();
        //         var keyvalue=$(this).val().split(',');//[sDate,ampm];
        //
        //         item.cur_date = new Date(keyvalue[0]);//	date						해당일
        //         item.visit_data_type = keyvalue[1]*1;//	number	4		0			0:관리자 취소, 1:오전, 2:오후, 3:오전오후(1+2), 4:전일
        //         var possible_count = 0;
        //         if(item.visit_data_type==1) possible_count = 1;
        //         else if((item.visit_data_type==2)) possible_count = 1000;
        //         else if((item.visit_data_type==3)) possible_count = 1001;
        //         item.possible_count = possible_count;
        //         visitDataVOList.push(item);
        //     });
        //
        //
        //     $.ajax({
        //         type: 'post',
        //         url: 'save_visit_date', //데이터를 주고받을 파일 주소 입력
        //         data: JSON.stringify(visitDataVOList),//보내는 데이터
        //         contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
        //         dataType: 'text',//받는 데이터 타입
        //         success: function (result) {
        //             //작업이 성공적으로 발생했을 경우
        //
        //             alert(result.result_str);
        //
        //
        //             //STATUS_001 :
        //         },
        //         error: function () {
        //             //에러가 났을 경우 실행시킬 코드
        //         }
        //     });
        //
        // });

        $('#saveVisitData').on('hidden.bs.modal', function (e) {

            $(".repeat__weekly_new").addClass('d-none');
            $(".repeat_date_monthly_new").addClass('d-none');
            $(".repeat_week_monthly_new").addClass('d-none');
            $(".repeat__none_new").removeClass('d-none');

            defaultCalendar.removeAllEvents();
            defaultCalendar.addEventSource(getMonthlyData(defaultCalendar.getDate()));
            defaultCalendar.refetchEvents();

            $(this).find('form')[0].reset();
        });

        $("#modifyOrDeleteVisitData").on('hidden.bs.modal',function (){
            defaultCalendar.removeAllEvents();
            defaultCalendar.addEventSource(getMonthlyData(defaultCalendar.getDate()));
            defaultCalendar.refetchEvents();
        });






        }); //document ready 의 끝


    Date.prototype.yyyymmdd = function() {
        var mm = this.getMonth() + 1; // getMonth() is zero-based
        var dd = this.getDate();

        return [this.getFullYear(),
            (mm>9 ? '' : '0') + mm,
            (dd>9 ? '' : '0') + dd
        ].join('-');
    };

    function convertDate(date){
        let cDate=new Date(date);
        alert(cDate.yyyymmdd());
    }

    //x개월 기간별
    $("input:radio[name='ruleTerm']").on('click',function (){
        let tempRuleTerm=$(this).val();
        let ss_temp_date=new Date($("#saveVisitData").find("input[name='sDate']").val());
        let temp_year=ss_temp_date.getFullYear();
        let temp_date =ss_temp_date.getDate();
        let temp_mon=ss_temp_date.getMonth();

        if(tempRuleTerm=='1'){
            temp_mon+=1;
            let temp_dateVal=new Date(temp_year,temp_mon,temp_date);
            $("#saveVisitData").find("input[name='eDate']").val(temp_dateVal.yyyymmdd());
            $("#saveVisitData").find("input[name='eDate']").attr('readonly',true);

        }else if(tempRuleTerm=='3'){
            temp_mon+=3;
            let temp_dateVal=new Date(temp_year,temp_mon,temp_date);
            $("#saveVisitData").find("input[name='eDate']").val(temp_dateVal.yyyymmdd());
            $("#saveVisitData").find("input[name='eDate']").attr('readonly',true);

        }else if(tempRuleTerm=='6'){
            temp_mon+=6;
            let temp_dateVal=new Date(temp_year,temp_mon,temp_date);
            $("#saveVisitData").find("input[name='eDate']").val(temp_dateVal.yyyymmdd());
            $("#saveVisitData").find("input[name='eDate']").attr('readonly',true);

        }else if(tempRuleTerm=='99'){
            $("#saveVisitData").find("input[name='eDate']").val(new Date($("#saveVisitData").find("input[name='sDate']").val()).yyyymmdd());
            $("#saveVisitData").find("input[name='eDate']").attr('readonly',false);
        }

    });

    //견학관리일정 저장
    $("#btn_save_new").on('click',function (){

        var ssDate=new Date($("#saveVisitData").find("input[name='sDate']").val());
        var eeDate=new Date($("#saveVisitData").find("input[name='eDate']").val());
        var result=getDatesStartToLast(ssDate,eeDate);

        if(result.length == 0){
            return alert('날짜를 확인해주세요');
        }


        $("#possible_count_am #possible_count_pm").keyup(function (event){
            var inputVal = $(this).val();
            $(this).val(inputVal.replace(/[^0-9]/gi,''));

        });



        let possible_count=0;
        let possible_count_am=$("#possible_count_am").val();
        let possible_count_pm=$("#possible_count_pm").val();

        let memo=$("#memo").val();
        let visit_data_type=0;

        $("input:checkbox[name='ampm_new']:checked").each(function (){
            visit_data_type+=parseInt($(this).val());
        });

        if(visit_data_type==0){
            return alert('오전,오후를 체크해주세요');

        }else if(visit_data_type==1){

            if(!possible_count_am){
                $("#possible_count_am").focus();
                return alert('값을 확인해주세요');
            }

            possible_count=possible_count_am;

        }else if(visit_data_type==2){

            if(!possible_count_pm){
                $("#possible_count_pm").focus();
                return alert('값을 확인해주세요');
            }

            possible_count=possible_count_pm*1000;

        }else if(visit_data_type==3){

            if(!possible_count_am || !possible_count_pm){
                if(!possible_count_am){$("#possible_count_am").focus();};
                if(!possible_count_pm){$("#possible_count_pm").focus();};
                return alert('값을 확인해주세요');
            }
            possible_count=parseInt(possible_count_am) + (parseInt(possible_count_pm) * 1000);
        }


        let visitDataVoNewList=new Array();
        let repeat_type_new = $("input:radio[name='repeat_type_new']:checked").val();


        if(confirm("저장하시겠습니까?")){

            if(repeat_type_new=='0'){

                for(let i=0;i<result.length;i++){
                    let visitDataVoNew={"memo":memo,"possible_count" :possible_count,"visit_data_type" : visit_data_type,"cur_date":""};
                    visitDataVoNew.cur_date=result[i];
                    visitDataVoNewList.push(visitDataVoNew);
                }

            }else if(repeat_type_new=='1'){

                let dayChecked="";
                $("input:checkbox[name='day_new']:checked").each(function (){
                    dayChecked+=$(this).val();
                });

                let tempDate_arr=[];
                for(let i=0;i<result.length;i++){
                    let tempDate=new Date(result[i]);

                    for(let j=0;j<=6;j++){
                        if(dayChecked.includes(j)){
                            if(tempDate.getDay()==j)tempDate_arr.push(result[i]);
                        }

                    }
                    console.log(tempDate_arr);

                };

                for(let k=0;k<tempDate_arr.length;k++){
                    let visitDataVoNew={"memo":memo,"possible_count" :possible_count,"visit_data_type" : visit_data_type,"cur_date":""};
                    visitDataVoNew.cur_date=tempDate_arr[k];
                    visitDataVoNewList.push(visitDataVoNew);
                }
                console.log("visitDataVoNewList : " + visitDataVoNewList);
                console.log("tempDate_arr : "  + tempDate_arr);

            }else if(repeat_type_new=='2'){

                if($("input:radio[name='repeat_dnw_new']:checked").val()=='0'){

                    let dateSelectedList="";
                    let tempDate_arr=[];

                    $("input:checkbox[name='dateNew']:checked").each(function(){
                        dateSelectedList +=$(this).val()+",";
                    });

                    console.log("dateSelectedList : " + dateSelectedList);

                    for(let i=0;i<result.length;i++){
                        let tempDate=new Date(result[i]);

                        for(let j=1;j<=31;j++){
                            if(dateSelectedList.includes(j)){
                                if(tempDate.getDate()==j) tempDate_arr.push(result[i]);
                            }
                        }
                    }

                    console.log("tempDate_arr : " + tempDate_arr);

                    for(let k=0;k<tempDate_arr.length;k++){
                        let visitDataVoNew={"memo":memo,"possible_count" :possible_count,"visit_data_type" : visit_data_type,"cur_date":""};
                        visitDataVoNew.cur_date=tempDate_arr[k];
                        visitDataVoNewList.push (visitDataVoNew);
                    }

                }else if($("input:radio[name='repeat_dnw_new']:checked").val()=='1'){
                    alert('요일별호출');
                    let dayChecked="";
                    let weekNumChecked="";
                    let tempDate_arr=[];
                    $("input:checkbox[name='weekNum']:checked").each(function (){
                        weekNumChecked+=$(this).val();
                    });

                    $("input:checkbox[name='day_new']:checked").each(function (){
                        dayChecked+=$(this).val();
                    });

                    for(let i=0;i<result.length;i++){
                        let tempDate=new Date(result[i]);

                        if(weekNumChecked.includes(weekNumberByMonth(tempDate))&& dayChecked.includes(tempDate.getDay())){
                            tempDate_arr.push(result[i]);
                        }
                    }
                    console.log("dayChecked : "  + dayChecked);
                    console.log("weekNumChecked : " + weekNumChecked);

                    for(let k=0;k<tempDate_arr.length;k++){
                        let visitDataVoNew={"memo":memo,"possible_count" :possible_count,"visit_data_type" : visit_data_type,"cur_date":""};
                        visitDataVoNew.cur_date=tempDate_arr[k];
                        visitDataVoNewList.push(visitDataVoNew);
                    }


                };

            }

            console.log(visitDataVoNewList);

            $.ajax({
                type:'post',
                url: 'save_visit_date', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(visitDataVoNewList),//보내는 데이터
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'text',//받는 데이터 타입
                success: function (result) {
                    //작업이 성공적으로 발생했을 경우

                    let data=JSON.parse(result);

                    console.log("result.result_str : " + data.result_str);
                    alert(data.result_str);

                    //STATUS_001 :
                },
                error: function (request,status,error) {
                    console.log("result.result_str error : " + result.result_str);
                    alert(result.result_str);

                    //에러가 났을 경우 실행시킬 코드
                    alert("code : " + request.status + "\n" +  "message: "+  request.responseText +  "\n" + "error:" + error);

                }


            });

        }else{
            return false;
        }


    });

    //데이트 구간값
    function getDatesStartToLast(ssDate,eeDate){
        // if(!(ssDate instanceof Date && eeDate instanceof Date)) return "Not Date Object";
        var result =[];
        while(ssDate.getTime() <= eeDate.getTime()){

            var mon=(ssDate.getMonth()+1);
            var day=(ssDate.getDate());

            if(mon<10)mon="0"+mon;
            if(day<10)day ="0"+day;

            result.push(ssDate.getFullYear()+'-'+mon+'-'+day);
            ssDate.setDate(ssDate.getDate()+1);

        }
        console.log("getDatesStartToLast : " + result);
        return result;
    }



    // //일정 추가 모달창 오전 오후
    // $("#ampm_am").change(function(){
    //     if($("#ampm_am").is(":checked")){
    //         alert('체크');
    //     }else{
    //         alert('체크해제 ');
    //     }
    //
    // });


    //일정 추가 모달창 화면 상세설정
    $("input:radio[name=repeat_type_new]").on('click',function (){

        let repeat_type_new = $("input:radio[name='repeat_type_new']:checked").val();

        if(repeat_type_new=='0'){

            $(".repeat__weekly_new").addClass('d-none');
            $(".repeat_date_monthly_new").addClass('d-none');
            $(".repeat_week_monthly_new").addClass('d-none');
            $(".repeat__none_new").removeClass('d-none');

        }else if(repeat_type_new=='1'){

            $(".repeat_date_monthly_new").addClass('d-none');
            $(".repeat_week_monthly_new").addClass('d-none');
            $(".repeat__none_new").addClass('d-none');
            $(".repeat__weekly_new").removeClass('d-none');

        }else if(repeat_type_new=='2'){

            $(".repeat__weekly_new").addClass('d-none');
            $(".repeat__none_new").addClass('d-none');

            var repeat_date_n_week_new = $("input:radio[name='repeat_dnw_new']:checked").val() ;

            if(repeat_date_n_week_new=='0'){

                $(".repeat_week_monthly_new").addClass('d-none');
                $(".repeat_date_monthly_new").removeClass('d-none');
            }else {
                $(".repeat_date_monthly_new").addClass('d-none');
                $(".repeat_week_monthly_new").removeClass('d-none');
            }
        }

    });

    $("input:radio[name=repeat_dnw_new]").click(function()
    {
        var repeat_date_n_week_new = $("input:radio[name='repeat_dnw_new']:checked").val( ) ;
        if(repeat_date_n_week_new=='0'){
            $(".repeat_week_monthly_new").addClass('d-none');
            $(".repeat_date_monthly_new").removeClass('d-none');
        }else if(repeat_date_n_week_new=='1'){

            $(".repeat_date_monthly_new").addClass('d-none');
            $(".repeat_week_monthly_new").removeClass('d-none');

        }
    });


    function weekNumberByMonth(dateFormat) {
        const inputDate = new Date(dateFormat);

        // 인풋의 년, 월
        let year = inputDate.getFullYear();
        let month = inputDate.getMonth() + 1;

        // 목요일 기준 주차 구하기
        const weekNumberByThurFnc = (paramDate) => {

            const year = paramDate.getFullYear();
            const month = paramDate.getMonth();
            const date = paramDate.getDate();

            // 인풋한 달의 첫 날과 마지막 날의 요일
            const firstDate = new Date(year, month, 1);
            const lastDate = new Date(year, month+1, 0);
            const firstDayOfWeek = firstDate.getDay() === 0 ? 7 : firstDate.getDay();
            const lastDayOfweek = lastDate.getDay();

            // 인풋한 달의 마지막 일
            const lastDay = lastDate.getDate();

            // 첫 날의 요일이 금, 토, 일요일 이라면 true
            const firstWeekCheck = firstDayOfWeek === 5 || firstDayOfWeek === 6 || firstDayOfWeek === 7;
            // 마지막 날의 요일이 월, 화, 수라면 true
            const lastWeekCheck = lastDayOfweek === 1 || lastDayOfweek === 2 || lastDayOfweek === 3;

            // 해당 달이 총 몇주까지 있는지
            const lastWeekNo = Math.ceil((firstDayOfWeek - 1 + lastDay) / 7);

            // 날짜 기준으로 몇주차 인지
            let weekNo = Math.ceil((firstDayOfWeek - 1 + date) / 7);

            // 인풋한 날짜가 첫 주에 있고 첫 날이 월, 화, 수로 시작한다면 'prev'(전달 마지막 주)
            if(weekNo === 1 && firstWeekCheck) weekNo = 'prev';
            // 인풋한 날짜가 마지막 주에 있고 마지막 날이 월, 화, 수로 끝난다면 'next'(다음달 첫 주)
            else if(weekNo === lastWeekNo && lastWeekCheck) weekNo = 'next';
            // 인풋한 날짜의 첫 주는 아니지만 첫날이 월, 화 수로 시작하면 -1;
            else if(firstWeekCheck) weekNo = weekNo -1;

            return weekNo;
        };

        // 목요일 기준의 주차
        let weekNo = weekNumberByThurFnc(inputDate);

        // 이전달의 마지막 주차일 떄
        if(weekNo === 'prev') {
            // 이전 달의 마지막날
            const afterDate = new Date(year, month-1, 0);
            year = month === 1 ? year - 1 : year;
            month = month === 1 ? 12 : month - 1;
            weekNo = weekNumberByThurFnc(afterDate);
        }
        // 다음달의 첫 주차일 때
        if(weekNo === 'next') {
            year = month === 12 ? year + 1 : year;
            month = month === 12 ? 1 : month + 1;
            weekNo = 1;
        }

        return weekNo;
    }



    // $("#input[name='dayOrGroup']").change(function (){
    //    let temp=$("input[name='dayOrGroup']:checked").val();
    //
    //    alert(temp);
    //
    // });

    $("#modifyOrDeleteVisitData").find("input:radio[name='dayOrGroup']").on('change',function (){
        let temp=$(this).val();
        if(temp ==1) {
            $("#group_date").hide();
        }else{
            $("#group_date").show();
        }
    });


    $("#btn_delete_new").on('click',function (){

        //그룹삭제
        let radioVal=$("#modifyOrDeleteVisitData").find("input:radio[name='dayOrGroup']:checked").val();

        if(confirm("삭제하시겠습니까?")){


            let idx_visit_data=$("#modifyOrDeleteVisitData").find("input[name='idx_visit_data']").val();
            let visitDataVoDelList=new Array();

            if(radioVal==1){

                let visitDataVoDel={
                    idx_visit_data : idx_visit_data

                }

                visitDataVoDelList.push(visitDataVoDel);



            }else if(radioVal==2){

                let idx_visit_data_arr=new Array();

                $("input[name='idx_visit_data_temp']").each(function (){

                   var tempValue=$(this).val();
                   idx_visit_data_arr.push(tempValue);
                    let visitDataVoDel= {
                        idx_visit_data: $(this).val()
                    }

                    visitDataVoDelList.push(visitDataVoDel);
                });

            }


            $.ajax({
                type:'post',
                url: '/delete_visit_date', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(visitDataVoDelList),//보내는 데이터
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'text',//받는 데이터 타입
                success: function (result) {
                    //작업이 성공적으로 발생했을 경우
                    let data = JSON.parse(result);
                    alert(data.result_str);
                    //STATUS_001 :

                },
                error: function (request,status,error) {

                    //에러가 났을 경우 실행시킬 코드
                    alert("code : " + request.status + "\n" +  "message: "+  request.responseText +  "\n" + "error:" + error);

                }


            });



        }else{
            return false;
        }


    });





    $("#saveVisitData").find("input[name='sDate']").on('change',function(){

        let sDate=$("#saveVisitData").find("input[name='sDate']").val();
        let eDate=$("#saveVisitData").find("input[name='eDate']").val();
        if(new Date(sDate).getTime() > new Date(eDate).getTime()){
            $("#saveVisitData").find("input[name='eDate']").val(new Date(sDate).yyyymmdd());
        }
    });






</script>

<!-- / Page content -->
