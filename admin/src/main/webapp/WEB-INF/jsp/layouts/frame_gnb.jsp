<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Layout navbar -->
<nav class="layout-navbar navbar navbar-expand-lg align-items-lg-center bg-white container-p-x" id="layout-navbar">

    <!-- Brand demo (see assets/css/demo/demo.css) -->
    <a href="home" class="navbar-brand app-brand demo d-lg-none py-0 mr-4">
            <span class="app-brand-logo demo bg-primary">
              <svg viewBox="0 0 148 80" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><linearGradient id="a" x1="46.49" x2="62.46" y1="53.39" y2="48.2" gradientUnits="userSpaceOnUse"><stop stop-opacity=".25" offset="0"></stop><stop stop-opacity=".1" offset=".3"></stop><stop stop-opacity="0" offset=".9"></stop></linearGradient><linearGradient id="e" x1="76.9" x2="92.64" y1="26.38" y2="31.49" xlink:href="#a"></linearGradient><linearGradient id="d" x1="107.12" x2="122.74" y1="53.41" y2="48.33" xlink:href="#a"></linearGradient></defs><path style="fill: #fff;" transform="translate(-.1)" d="M121.36,0,104.42,45.08,88.71,3.28A5.09,5.09,0,0,0,83.93,0H64.27A5.09,5.09,0,0,0,59.5,3.28L43.79,45.08,26.85,0H.1L29.43,76.74A5.09,5.09,0,0,0,34.19,80H53.39a5.09,5.09,0,0,0,4.77-3.26L74.1,35l16,41.74A5.09,5.09,0,0,0,94.82,80h18.95a5.09,5.09,0,0,0,4.76-3.24L148.1,0Z"></path><path transform="translate(-.1)" d="M52.19,22.73l-8.4,22.35L56.51,78.94a5,5,0,0,0,1.64-2.19l7.34-19.2Z" fill="url(#a)"></path><path transform="translate(-.1)" d="M95.73,22l-7-18.69a5,5,0,0,0-1.64-2.21L74.1,35l8.33,21.79Z" fill="url(#e)"></path><path transform="translate(-.1)" d="M112.73,23l-8.31,22.12,12.66,33.7a5,5,0,0,0,1.45-2l7.3-18.93Z" fill="url(#d)"></path></svg>
            </span>
        <span class="app-brand-text demo font-weight-normal ml-2">스마트팜</span>
    </a>

    <!-- Sidenav toggle (see assets/css/demo/demo.css) -->
    <div class="layout-sidenav-toggle navbar-nav d-lg-none align-items-lg-center mr-auto">
        <a class="nav-item nav-link px-0 mr-lg-4" href="javascript:void(0)">
            <i class="ion ion-md-menu text-large align-middle"></i>
        </a>
    </div>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#layout-navbar-collapse">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="navbar-collapse collapse" id="layout-navbar-collapse">
        <!-- Divider -->
        <hr class="d-lg-none w-100 my-2">

        <div class="navbar-nav align-items-lg-center navbar-weather">
            <!-- Welcome Board -->
            <span id="now-date-nav">2021.00.00.(월) 오전 10:15</span><span class="nav-link">|</span>
            <span><strong id="now-temp-nav">22</strong><span id="now-weather-nav">℃ 구름조금</span>          <strong id="now-rainper-nav"></strong></span><span class="nav-link">|</span>
            <span>미세먼지  </span>
            <strong class="text-info now-dust-nav"> 매우 좋음 </strong><i class="now-dust-img-nav far fa-smile"></i><span class="nav-link"></span>
            <!--<strong class="text-success">좋음 <i class="far fa-laugh"></i></strong>-->
            <%--                <strong class="text-warning">나쁨 <i class="far fa-tired"></i></strong>--%>
            <!--<strong class="text-danger">매우 나쁨<i class="far fa-frown"></i></strong>-->
            <span></span>
        </div>

        <div class="navbar-nav align-items-lg-center ml-auto">

            <div class="demo-navbar-messages nav-item dropdown mr-lg-3">
<%--                <a class="nav-link dropdown-toggle hide-arrow" href="#" data-toggle="dropdown">--%>
<%--                    <i class="far fa-comment-alt navbar-icon align-middle"></i>--%>
<%--                    <span class="badge badge-primary badge-dot indicator"></span>--%>
<%--                    <span class="d-lg-none align-middle">&nbsp; Messages</span>--%>
<%--                </a>--%>
                <div class="dropdown-menu dropdown-menu-right">
                    <div class="bg-primary text-center text-white font-weight-bold p-3">
                        4 미확인 메세지
                    </div>
                    <div class="list-group list-group-flush">
                        <a href="javascript:void(0)" class="list-group-item list-group-item-action media d-flex align-items-center">
                            <img src="/resources/assets/img/avatars/6-small.png" class="d-block ui-w-40 rounded-circle" alt>
                            <div class="media-body ml-3">
                                <div class="text-body line-height-condenced">알람 메세지 내용 메세지 내용 메세지 내용 메세지 내용</div>
                                <div class="text-light small mt-1">
                                    김대리 &nbsp;·&nbsp; 58분전
                                </div>
                            </div>
                        </a>

                        <a href="javascript:void(0)" class="list-group-item list-group-item-action media d-flex align-items-center">
                            <img src="/resources/assets/img/avatars/4-small.png" class="d-block ui-w-40 rounded-circle" alt>
                            <div class="media-body ml-3">
                                <div class="text-body line-height-condenced">메세지 내용 메세지 내용</div>
                                <div class="text-light small mt-1">
                                    윤사원 &nbsp;·&nbsp; 1시간전
                                </div>
                            </div>
                        </a>

                        <a href="javascript:void(0)" class="list-group-item list-group-item-action media d-flex align-items-center">
                            <img src="/resources/assets/img/avatars/5-small.png" class="d-block ui-w-40 rounded-circle" alt>
                            <div class="media-body ml-3">
                                <div class="text-body line-height-condenced">메세지 내용 메세지 내용 메세지 내용 메세지 내용 메세지</div>
                                <div class="text-light small mt-1">
                                    관리자 &nbsp;·&nbsp; 2시간전
                                </div>
                            </div>
                        </a>

                        <a href="javascript:void(0)" class="list-group-item list-group-item-action media d-flex align-items-center">
                            <img src="/resources/assets/img/avatars/11-small.png" class="d-block ui-w-40 rounded-circle" alt>
                            <div class="media-body ml-3">
                                <div class="text-body line-height-condenced">메세지 내용 메세지 내용메세지 내용 메세지 내용 메세지</div>
                                <div class="text-light small mt-1">
                                    관리자 &nbsp;·&nbsp; 5시간전
                                </div>
                            </div>
                        </a>
                    </div>

                    <a href="javascript:void(0)" class="d-block text-center text-light small p-2 my-1">전체메세지보기</a>
                </div>
            </div>

            <div class="demo-navbar-notifications nav-item dropdown mr-lg-3">
<%--                <a class="nav-link dropdown-toggle hide-arrow" href="#" data-toggle="dropdown">--%>
<%--                    <i class="ion ion-ios-notifications-outline navbar-icon align-middle"></i>--%>
<%--                    <span class="badge badge-primary badge-dot indicator"></span>--%>
<%--                    <span class="d-lg-none align-middle">&nbsp; 알림</span>--%>
<%--                </a>--%>
                <div class="dropdown-menu dropdown-menu-right">
                    <div class="bg-primary text-center text-white font-weight-bold p-3">
                        4 새알림
                    </div>
                    <div class="list-group list-group-flush">
                        <a href="javascript:void(0)" class="list-group-item list-group-item-action media d-flex align-items-center">
                            <div class="ui-icon ui-icon-sm ion ion-md-home bg-secondary border-0 text-white"></div>
                            <div class="media-body line-height-condenced ml-3">
                                <div class="text-body">로그인 192.168.1.1</div>
                                <div class="text-light small mt-1">
                                    메세지 내용 메세지 내용메세지 내용 메세지 내용
                                </div>
                                <div class="text-light small mt-1">12시간전</div>
                            </div>
                        </a>

                        <a href="javascript:void(0)" class="list-group-item list-group-item-action media d-flex align-items-center">
                            <div class="ui-icon ui-icon-sm ion ion-md-person-add bg-info border-0 text-white"></div>
                            <div class="media-body line-height-condenced ml-3">
                                <div class="text-body">새로운 <strong>4</strong> 업체 업데이트</div>
                                <div class="text-light small mt-1">
                                    메세지 내용 메세지 내용메세지 내용 메세지 내용 메세지 내용 메세지 내용 메세지 내용 메세지 내용
                                </div>
                            </div>
                        </a>

                        <a href="javascript:void(0)" class="list-group-item list-group-item-action media d-flex align-items-center">
                            <div class="ui-icon ui-icon-sm ion ion-md-power bg-danger border-0 text-white"></div>
                            <div class="media-body line-height-condenced ml-3">
                                <div class="text-body">비닐단동 전력유지 80%</div>
                                <div class="text-light small mt-1">
                                    19시간전
                                </div>
                            </div>
                        </a>

                        <a href="javascript:void(0)" class="list-group-item list-group-item-action media d-flex align-items-center">
                            <div class="ui-icon ui-icon-sm ion ion-md-warning bg-warning border-0 text-body"></div>
                            <div class="media-body line-height-condenced ml-3">
                                <div class="text-body">비닐단동 습도 80% 알람</div>
                                <div class="text-light small mt-1">
                                    메세지 내용 메세지 내용메세지 내용 메세지 내용 메세지 내용 메세지 내용 메세지 내용 메세지 내용
                                </div>
                                <div class="text-light small mt-1">
                                    20시간전
                                </div>
                            </div>
                        </a>
                    </div>

                    <a href="javascript:void(0)" class="d-block text-center text-light small p-2 my-1">모든 알림 보기</a>
                </div>
            </div>

            <%--                <div class="demo-navbar-notifications nav-item dropdown mr-lg-3">--%>
            <%--                    <a class="nav-link" href="#">--%>
            <%--                        <i class="ion ion-md-options navbar-icon align-middle"></i>--%>
            <%--                        <span class="d-lg-none align-middle">&nbsp; 정렬,필터</span>--%>
            <%--                    </a>--%>
            <%--                </div>--%>
            <!-- Divider -->
            <div class="nav-item d-none d-lg-block text-big font-weight-light line-height-1 opacity-25 mr-3 ml-1">|</div>

            <div class="demo-navbar-user nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                  <span class="d-inline-flex flex-lg-row-reverse align-items-center align-middle">
                    <img src="/resources/assets/img/avatars/1.png" alt class="d-block ui-w-30 rounded-circle">
                    <span class="px-1 mr-lg-2 ml-2 ml-lg-0">${admin.admin_name}</span>
                  </span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a href="javascript:void(0)" class="dropdown-item" data-toggle="modal" data-target="#modal-myinfo"><i class="ion ion-ios-person text-lightest"></i> &nbsp; 프로필</a>
<%--                    <a href="javascript:void(0)" class="dropdown-item" data-toggle="modal" data-target="#modal-message"><i class="ion ion-ios-mail text-lightest"></i> &nbsp; 메세지</a>--%>
                    <div class="dropdown-divider" data-toggle="modal" data-target="#modal-logout"></div>
                    <button id="btn_logout" class="dropdown-item"><i class="ion ion-ios-log-out text-danger"></i> 로그아웃</button>
                </div>
            </div>
        </div>
    </div>
</nav>
<!-- Profile Modal -->
<div class="modal fade" id="modal-myinfo">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-success">
                <h5 class="modal-title text-white font-weight-bold">
                    내 정보
                </h5>
                <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label class="form-label form-label-lg font-weight-bold">스마트팜 혁신밸리 실증단지 통합운영시스템 계정</label>
                    </div>
                    <!-- 아이디 -->
                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">아이디</label>

                        <div class="col-md-10">
                            <div class="form-control-plaintext">${admin.admin_id}</div>
                        </div>
                    </div>
                    <!-- 비밀번호 -->
                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">비밀번호</label>
                        <div class="col-md-10">
                            <button id="btn_change_passwd" type="button" class="btn btn-md btn-outline-dark" data-dismiss="modal" data-toggle="modal" data-target="#modals-pw-edit">비밀번호 변경</button>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group">
                        <label class="form-label form-label-lg font-weight-bold">개인정보</label>
                    </div>
                    <!-- 이름 -->
                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">이름</label>
                        <div class="col-md-10">
                            <div class="form-control-plaintext">${admin.admin_name}</div>
                        </div>
                    </div>
                    <!-- 집전화번호 -->
<%--                    <div class="form-group row">--%>
<%--                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">집전화번호</label>--%>
<%--                        <div class="col-md-4">--%>
<%--                            <div class="form-control-plaintext myinfo-view">${admin.tel_num}</div>--%>
<%--                            <input type="text" class="form-control form-control-md myinfo-edit d-none" placeholder="000-0000-0000">--%>
<%--                        </div>--%>
<%--                    </div>--%>
                    <!-- 휴대폰 번호 -->
                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">휴대폰 번호</label>
                        <div class="col-md-4">
                            <div class="form-control-plaintext myinfo-view">${admin.mphone_num}</div>
                            <input type="text" class="form-control form-control-md myinfo-edit d-none" placeholder="000-0000-0000">
                        </div>
                    </div>
                    <!-- 집 주소 -->
<%--                    <div class="form-group row">--%>
<%--                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">집 주소</label>--%>
<%--                        <div class="col-md-10">--%>
<%--                            <div class="form-control-plaintext myinfo-view">(12345) 제주도 서귀포시 000로 xxxx xxx-xxx</div>--%>

<%--                            <div class="input-group myinfo-edit d-none">--%>
<%--                                <input type="text" class="form-control form-control-md" placeholder="집주소 찾기...">--%>
<%--                                <span class="input-group-append">--%>
<%--                                    <button id="btn_search_addr" class="btn btn-md btn-secondary" type="button">찾기</button>--%>
<%--                                </span>--%>
<%--                            </div>--%>
<%--                            <input type="text" class="form-control form-control-md mt-1 myinfo-edit" placeholder="상세 주소...">--%>

<%--                        </div>--%>
<%--                    </div>--%>
                    <!-- 이메일 -->
                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">이메일</label>
                        <div class="col-md-10">
                            <div class="form-control-plaintext myinfo-view">${admin.admin_id}</div>
                            <input type="text" class="form-control form-control-md myinfo-edit d-none" placeholder="xxxx@xxxxx.xxx">
                        </div>
                    </div>
                    <hr>
                    <div class="form-group">
                        <label class="form-label form-label-lg font-weight-bold">소속정보</label>
                    </div>
                    <!-- 소속 -->
                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">단체명</label>
                        <div class="col-md-4">
                            <div class="form-control-plaintext myinfo-view">${admin.corporate_name}</div>
                            <input type="text" class="form-control form-control-md myinfo-edit d-none" placeholder="단체명...">
                        </div>
                    </div>
                    <!-- 직위 -->
                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">직위</label>
                        <div class="col-md-4">
                            <div class="form-control-plaintext myinfo-view">${admin.job_title}</div>
                            <input type="text" class="form-control form-control-md myinfo-edit d-none" placeholder="직위명...">
                        </div>
                    </div>
                    <!-- 전화번호 -->
                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">전화 번호</label>
                        <div class="col-md-4">
                            <div class="form-control-plaintext myinfo-view">${admin.tel_num}</div>
                            <input type="text" class="form-control form-control-md myinfo-edit d-none" placeholder="000-0000-0000">
                        </div>
                    </div>
                    <!-- 저장 취소-->
                    <div class="form-group rowbg-light text-right myinfo-view">
                        <button id="btn_myinfo_edit" type="button" class="btn btn-outline-dark">수정</button>
                    </div>
                    <div class="form-group rowbg-light text-right myinfo-edit d-none">
                        <button id="btn_myinfo_edit_cancel" type="button" class="btn btn-outline-dark">취소</button>
                        <button id="btn_myinfo_edit_save" type="button" class="btn btn-success" >저장</button>
                    </div>

                </form>

            </div>
        </div>
    </div>
</div>

<!-- Password Modal -->
<div class="modal fade" id="modals-pw-edit">
    <div class="modal-dialog mb-1 border-success">
        <form class="modal-content ">
            <div class="modal-header bg-success-dark">
                <h5 class="modal-title text-white font-weight-bold">
                    비밀번호 변경
                </h5>
                <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
            </div>
            <div class="modal-body">
                <div class="form-row">
                    <div class="form-group col">
                        <label class="form-label font-weight-bold">기존 비밀번호</label>
                        <input type="password" class="form-control" id="cur-pw">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col">
                        <label class="form-label font-weight-bold">변경할 비밀번호</label>
                        <input type="password" class="form-control" id="mod-pw">
                        <small class="form-text text-muted" id="mod-pw-guide">
                            8-20 길이의 문자, 숫자, 특수문자 조합
                        </small>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col">
                        <label class="form-label font-weight-bold">변경할 비밀번호 확인</label>
                        <input type="password" class="form-control" id="mod-pwcf">
                        <small class="form-text text-muted" id="mod-pwcf-guide">
                            8-20 길이의 문자, 숫자, 특수문자 조합
                        </small>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-primary" id="mod-pw-submit">Save</button>
            </div>
        </form>
    </div>
</div>


<!-- Message Modal -->
<div class="modal fade" id="modal-message">
    <div class="modal-dialog mb-1 border-success">
        <form class="modal-content ">
            <div class="modal-header bg-success-dark">
                <h4 class="modal-title text-white font-weight-bold">
                    메세지 전송
                </h4>
                <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
            </div>
            <div class="modal-body">
                <div class="form-row">
                    <div class="form-group col">
                        <label class="form-label font-weight-bold"> To : </label>
                        <input type="text" class="form-control">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col">
                        <label class="form-label font-weight-bold">내용 : </label>
                        <textarea type="text" class="form-control"></textarea>
                    </div>
                    <small class="form-text text-muted">
                        0/200
                    </small>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-primary">전송</button>
            </div>
        </form>
    </div>
</div>

<div class="modal fade" id="modals-pw-modify-first">
    <div class="modal-dialog mb-1 border-success">
        <form class="modal-content">
            <div class="modal-header bg-success-dark">
                <h5 class="modal-title text-white font-weight-bold">
                    초기 비밀번호 변경
                </h5>
            </div>
            <div class="modal-body">
                <div class="form-row">
                    <div class="form-group col">
                        <label class="form-label font-weight-bold">기존 비밀번호</label>
                        <input type="password" class="form-control" id="cur-pw-first">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col">
                        <label class="form-label font-weight-bold">변경할 비밀번호</label>
                        <input type="password" class="form-control" id="mod-pw-first">
                        <small class="form-text text-muted" id="mod-pw-guide-first">
                            8-20 길이의 문자, 숫자, 특수문자 조합
                        </small>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col">
                        <label class="form-label font-weight-bold">변경할 비밀번호 확인</label>
                        <input type="password" class="form-control" id="mod-pwcf-first">
                        <small class="form-text text-muted" id="mod-pwcf-guide-first">
                            8-20 길이의 문자, 숫자, 특수문자 조합
                        </small>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="mod-pw-submit-first">Save</button>
            </div>
        </form>
    </div>
</div>
<div class="modal-backdrop fade" style="display: none"></div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<script>
    if("${admin.auth_status}" == "0"){
        $("#modals-pw-modify-first").addClass("show").css("display", "block");
        $(".modal-backdrop").addClass("show").css("display", "block");
    }

    var regax = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,20}$/;

    $("#mod-pw").on("change focus blur",() => {
        if(!regax.test($("#mod-pw").val())){
            $("#mod-pw-guide").text("비밀번호 규칙에 맞지 않습니다.");
        }else{
            $("#mod-pw-guide").text("");
        }
    })

    $("#mod-pw-first").on("change focus blur",() => {
        if(!regax.test($("#mod-pw-first").val())){
            $("#mod-pw-guide-first").text("비밀번호 규칙에 맞지 않습니다.");
        }else{
            $("#mod-pw-guide-first").text("");
        }
    })

    $("#mod-pwcf").on("change focus blur",() => {
        if(!regax.test($("#mod-pwcf").val())){
            $("#mod-pwcf-guide").text("비밀번호 규칙에 맞지 않습니다.");
        }else if($("#mod-pwcf").val() != $("#mod-pw").val()){
            $("#mod-pwcf-guide").text("변경할 비밀번호와 비밀번호 확인이 일치하지 않습니다.");
        }else{
            $("#mod-pwcf-guide").text("");
        }
    })

    $("#mod-pwcf-first").on("change focus blur",() => {
        if(!regax.test($("#mod-pwcf-first").val())){
            $("#mod-pwcf-guide-first").text("비밀번호 규칙에 맞지 않습니다.");
        }else if($("#mod-pwcf-first").val() != $("#mod-pw-first").val()){
            $("#mod-pwcf-guide-first").text("변경할 비밀번호와 비밀번호 확인이 일치하지 않습니다.");
        }else{
            $("#mod-pwcf-guide-first").text("");
        }
    })

    $("#mod-pw-submit").click(() => {
        // if($("#mod-pwcf-guide").text() == "" || $("#mod-pw-guide").text() == ""){
        //     alert("변경할 비밀번호가 올바르지 않습니다.");
        //     return;
        // }
        if($("#cur-pw").val() == $("#mod-pw").val()){
            alert("변경할 비밀번호와 기존비밀번호가 같습니다.")
            return;
        }

        if($("#cur-pw").val() == "" || $("#mod-pw").val() == "" || $("#mod-pwcf").val() == ""){
            alert("비밀번호 변경에 필요한 정보가 모두 입력되지 않았습니다.");
        }

        var newPw = {
            curPw : $("#cur-pw").val(),
            modPW : $("#mod-pw").val(),
            modPwCf :$("#mod-pwcf").val(),
            adminId : "${admin.admin_id}"
        }
        $.ajax({
            type: 'post',
            url :'changePw', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(newPw),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                if(result.result_code=="SUCCESS"){
                    alert("비밀번호 변경이 완료되었습니다.");
                    $("#modals-pw-edit").removeClass("show").css("display", "none");
                    $(".modal-backdrop").removeClass("show").css("display", "none");
                }
                else {
                    alert(result.result_str);
                    window.location.href = "/logout";
                    //기존 비밀번호와 변경할 비밀번호가 같습니다.
                    return;
                }
            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
                alert("에러발생");
                return;
            }
        })
    })

    $("#mod-pw-submit-first").click(() => {
        // if($("#mod-pwcf-guide").text() == "" || $("#mod-pw-guide").text() == ""){
        //     alert("변경할 비밀번호가 올바르지 않습니다.");
        //     return;
        // }
        if($("#cur-pw-first").val() == $("#mod-pw-first").val()){
            alert("변경할 비밀번호와 기존비밀번호가 같습니다.")
            return;
        }

        if($("#cur-pw-first").val() == "" || $("#mod-pw-first").val() == "" || $("#mod-pwcf-first").val() == ""){
            alert("비밀번호 변경에 필요한 정보가 모두 입력되지 않았습니다.");
        }

        var newPw = {
            curPw : $("#cur-pw-first").val(),
            modPW : $("#mod-pw-first").val(),
            modPwCf :$("#mod-pwcf-first").val(),
            adminId : "${admin.admin_id}"
        }
        $.ajax({
            type: 'post',
            url :'changePw', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(newPw),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                if(result.result_code=="SUCCESS"){
                    alert("비밀번호 변경이 완료되었습니다.");
                    $("#modals-pw-modify-first").removeClass("show").css("display", "none");
                    $(".modal-backdrop").removeClass("show").css("display", "none");
                }
                else {
                    alert(result.result_str);
                    // window.location.href = "/logout";
                    return;
                    //기존 비밀번호와 변경할 비밀번호가 같습니다.
                }
            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
                window.location.href = "/logout";
            }
        })
    })



    $('#btn_myinfo_edit_save').click( function(){

        $('.myinfo-view').removeClass('d-none');
        $('.myinfo-edit').addClass('d-none');

    });

    $('#btn_myinfo_edit').click( function(){
        $('.myinfo-edit').removeClass('d-none');
        $('.myinfo-view').addClass('d-none');
    });

    $('#btn_myinfo_edit_cancel').click( function(){
        $('.myinfo-view').removeClass('d-none');
        $('.myinfo-edit').addClass('d-none');
    });

    $('#btn_myinfo_edit_save').click( function(){

        $('.myinfo-view').removeClass('d-none');
        $('.myinfo-edit').addClass('d-none');

    });


    // <div class="navbar-nav align-items-lg-center navbar-weather">
    //     <!-- Welcome Board -->
    //     <span id="now-date-nav">2021.00.00.(월) 오전 10:15</span><span class="nav-link">|</span>
    //     <span><strong id="now-temp-nav">22</strong><span id="now-weather-nav">℃ 구름조금</span> 어제보다 2℃ 높음 강수확률 <strong id="now-rainper-nav">10</strong>%</span><span class="nav-link">|</span>
    //     <span>미세먼지 </span>
    //     <strong class="text-info now-dust-nav"> 매우 좋음<i class="far fa-smile"></i></strong><span class="nav-link">|</span>
    //     <!--<strong class="text-success">좋음<i class="far fa-laugh"></i></strong>-->
    //     <span>오존</span>
    //     <strong class="text-warning"> 나쁨<i class="far fa-tired"></i></strong>
    //     <!--<strong class="text-danger">매우 나쁨<i class="far fa-frown"></i></strong>-->
    //     </div>

    var gimje = {
        weather: "https://api.openweathermap.org/data/2.5/weather?q=gimje&appid=53adfc8e9ffcbf891a9be91b9e312c01",
        dust: "https://api.airvisual.com/v2/city?city=gunsan&state=jeollabuk-do&country=south-korea&key=3a760b19-7b72-40b9-860a-4ac383bdee39"
    }

    var sangju = {
        weather: "https://api.openweathermap.org/data/2.5/weather?q=sangju&appid=53adfc8e9ffcbf891a9be91b9e312c01",
        dust: "https://api.airvisual.com/v2/city?city=sangju&state=gyeongsangbuk-do&country=south-korea&key=3a760b19-7b72-40b9-860a-4ac383bdee39"
    }
    nowDateTime();
    setInterval(nowDateTime, 1000)
    if("${profile}" == 'sangju-prod'){
        nowWeatherAndDust(sangju);
    }
    else{
        nowWeatherAndDust(gimje);
    }

    function nowDateTime(){
        $('#now-date-nav').text(new Date().toLocaleString().slice(0,14) + new Date().getHours() + ':' + new Date().getMinutes());
    }

    function nowWeatherAndDust(location) {
        fetch(location.weather) //weather
            .then(res => res.json())
            .then(json => {
                $('.navbar-weather #now-temp-nav').text((json.main.temp - 273.15 + '').length > 4 ? (json.main.temp - 273.15 + '').slice(0, 4) : json.main.temp - 273.15 + '');
                switch (json.weather[0].icon) {
                    case '01d' || '01n':
                        $('#now-weather-nav').text('℃ 맑음');
                        break;
                    case '02d' || '02n':
                        $('#now-weather-nav').text('℃ 구름 조금');
                        break;
                    case '03d' || '03n':
                        $('#now-weather-nav').text('℃ 흐림');
                        break;
                    case '04d' || '04n':
                        $('#now-weather-nav').text('℃ 구름 많음');
                        break;
                    case '09d' || '09n':
                        $('#now-weather-nav').text('℃ 소나기');
                        break;
                    case '10d' || '10n':
                        $('#now-weather-nav').text('℃ 비');
                        break;
                    case '11d' || '11n':
                        $('#now-weather-nav').text('℃ 뇌우');
                        break;
                    case '13d' || '13n':
                        $('#now-weather-nav').text('℃ 눈');
                        break;
                    case '50d' || '50n':
                        $('#now-weather-nav').text('℃ 안개');
                        break;
                    default:
                        $('#now-weather-nav').text('℃ 날씨');
                }
            })


        var requestOptions = {
            method: 'GET',
            redirect: 'follow'
        };

        fetch(location.dust, requestOptions) //dust
            .then(response => response.json())
            .then(res => {
                $('.now-dust-img-nav').removeClass('fa-laugh').removeClass('fa-tired').removeClass('fa-frown').removeClass('fa-smile');
                $('.now-dust-nav').removeClass('text-info').removeClass('text-warning').removeClass('text-success').removeClass('text-danger').text('');
                switch (res.data.current.pollution.mainus) {
                    case 'p1':
                        $('.now-dust-img-nav').addClass('fa-smile');
                        $('.now-dust-nav').addClass('text-info').text(' 매우 좋음 ');
                        break;
                    case 'p2':
                        $('.now-dust-img-nav').addClass('fa-laugh');
                        $('.now-dust-nav').addClass('text-success').text(' 보통 ');
                        break;
                    case 'p3':
                        $('.now-dust-img-nav').addClass('fa-tired');
                        $('.now-dust-nav').addClass('text-warning').text(' 나쁨 ');
                        break;
                    case 'p4':
                        $('.now-dust-img-nav').addClass('fa-frown');
                        $('.now-dust-nav').addClass('text-danger').text(' 매우 나쁨 ')
                        break;
                    default:
                        $('.now-dust-img-nav').addClass('fa-frown');
                        $('.now-dust-nav').addClass('text-danger').text(' 매우 나쁨 ')
                        break;
                }
            })
        // setTimeout(nowWeatherAndDust(location), 600000);
    }

    $("#btn_logout").click(function(){

        var param = {
            "admin_id":'${admin.admin_id}'
        };

        $.ajax({
            type: 'post',
            url :'logout', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                if(result.result_code=="SUCCESS"){
                    //access_token을 받았으니 사용해야지
                    if($.cookie('access_token')!='undefined')
                    {
                        $.removeCookie('access_token', { path: '/' }); // => true
                        $.removeCookie('refresh_token', { path: '/' }); // => true
                    }
                    alert(result.result_str);

                    <c:if test="${login_from == 'gimje-prod'}">
                    location.replace('https://innovalley.smartfarmkorea.net/gimje/Demonstration/admin/login');
                    </c:if>
                    <c:if test="${login_from == 'sangju-prod'}">
                    location.replace('https://innovalley.smartfarmkorea.net/sangju/Demonstration/admin/login');
                    </c:if>
                    <c:if test="${login_from == 'local'}">
                    location.replace('/login');
                    </c:if>

                }

                //STATUS_001 :
            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
            }
        });
    });
    // console.log(weather);



</script>

<!-- / Layout navbar -->
