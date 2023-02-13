<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h5 class="d-flex justify-content-between align-items-center w-100 mt-2">
        <div><i class="pe-7s-network text-success-custom"></i>기업회원 관리</div>
    </h5>
    <%--        <div class="row">--%>
    <%--            <div class="col-sm-6 col-xl-3">--%>
    <%--                <div class="card mb-3">--%>
    <%--                    <div class="card-body">--%>
    <%--                        <div class="d-flex justify-content-between">--%>
    <%--                            <div class="text-muted small mt-2">총 인원수</div>--%>
    <%--                            <div class="text-large">5200</div>--%>
    <%--                        </div>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--            <div class="col-sm-6 col-xl-3">--%>
    <%--                <div class="card mb-3">--%>
    <%--                    <div class="card-body">--%>
    <%--                        <div class="d-flex justify-content-between">--%>
    <%--                            <div class="text-muted small mt-2">휴면회원</div>--%>
    <%--                            <div class="text-large">2590</div>--%>
    <%--                        </div>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--            <div class="col-sm-6 col-xl-3">--%>
    <%--                <div class="card mb-3">--%>
    <%--                    <div class="card-body">--%>
    <%--                        <div class="d-flex justify-content-between">--%>
    <%--                            <div class="text-muted small mt-2">제거된 회원</div>--%>
    <%--                            <div class="text-large">000</div>--%>
    <%--                        </div>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--            <div class="col-sm-6 col-xl-3">--%>
    <%--                <div class="card mb-3">--%>
    <%--                    <div class="card-body">--%>
    <%--                        <div class="d-flex justify-content-between">--%>
    <%--                            <div class="text-muted small mt-2">직원 수</div>--%>
    <%--                            <div class="text-large">000</div>--%>
    <%--                        </div>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </div>--%>

    <div class="card px-4 pt-4 ">
        <div class="form-row mb-4">
            <div class="col-lg-10 col-md-6 ">
                <label class="form-label text-muted">고객 분류</label>
                <div class="form-inline mt-2">
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="radio" name="category" id="all" class="custom-control-input category_change"
                               checked>
                        <span class="custom-control-label">전체</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="radio" name="category" id="web_memb" class="custom-control-input category_change">
                        <span class="custom-control-label">웹 가입</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="radio" name="category" id="mobile_memb"
                               class="custom-control-input category_change">
                        <span class="custom-control-label">모바일 가입</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="radio" name="category" id="center_memb"
                               class="custom-control-input category_change">
                        <span class="custom-control-label">관리기관 가입</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="radio" name="category" id="corp_memb" class="custom-control-input category_change">
                        <span class="custom-control-label">재단 가입</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="radio" name="category" id="local_memb"
                               class="custom-control-input category_change">
                        <span class="custom-control-label">지자체 가입</span>
                    </label>
                </div>
            </div>
            <%--                <div class="col-lg-2 col-md-6 text-right">--%>
            <%--                    <label class="form-label d-none d-md-block">&nbsp;</label>--%>
            <%--                    <button type="button" class="btn btn-success">조회</button>--%>
            <%--                </div>--%>
        </div>
    </div>

    <hr>

    <div class="card" id="dormant_user_index">

    </div>

    <!-- Modal template -->
    <div class="modal fade" id="modals-dormant-view">
        <div class="modal-dialog modal-lg">
            <form class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">정보 확인 및 삭제</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body pb-2">

                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <table class="table table-bordered no-footer m-0" role="grid"
                                   aria-describedby="article-list_info" style="">
                                <tbody>
                                <tr class="user_info">
                                    <th class="text-center align-middle bg-light" rowspan="3" style="width:12%">개인정보
                                    </th>
                                    <th class="text-center bg-light" style="width:12%">이름</th>
                                    <td class="text-center" style="width:27%" id="user_name">홍길동</td>
                                    <th class="text-center bg-light" style="width:13%">일반전화번호</th>
                                    <td class="text-center" style="width:26%" id="user_num">000-0000-0000</td>
                                </tr>
                                <tr class="user_info">
                                    <th class="text-center bg-light">휴대폰 번호</th>
                                    <td class="text-center" id="user_mphone">000-0000-0000</td>
                                    <th class="text-center bg-light">계정 상태</th>
                                    <td class="text-center" id="user_dormant_status"></td>
                                </tr>
                                <tr class="user_info">
                                    <th class="text-center bg-light">주소</th>
                                    <td class="" colspan="3" id="user_addr">제주도 서귀포시 XXXXXXX XXXXXXX</td>
                                </tr>
                                <tr class="corp_info">
                                    <th class="text-center align-middle bg-light" rowspan="3">소속 정보</th>
                                    <th class="text-center bg-light">단체명</th>
                                    <td class="" colspan="3" id="user_corp">맛있는 농부(주)</td>
                                </tr>
                                <tr class="corp_info">
                                    <%--                                        <th class="text-center bg-light">직위</th>--%>
                                    <%--                                        <td class="text-center" id="user_corp_rank">부장</td>--%>
                                    <th class="text-center bg-light">전화번호</th>
                                    <td class="text-center" id="user_corp_num">000-0000-0000</td>
                                </tr>
                                <tr class="corp_info">
                                    <th class="text-center bg-light">팩스</th>
                                    <td class="text-center" id="user_corp_fax">000-0000-0000</td>
                                    <th class="text-center bg-light">홈페이지</th>
                                    <td class="text-center" id="user_corp_homepage">www.asdfasdfasdf.com</td>
                                </tr>
                                </tbody>
                            </table>
                            <table class="table table-bordered no-footer m-0" role="grid"
                                   aria-describedby="article-list_info" style="">
                                <tbody>
                                <tr>
                                    <th class="text-center align-middle bg-light" rowspan="2">시스템 정보</th>
                                    <th class="text-center bg-light">웹ID</th>
                                    <td class="text-center" id="user_id">dongdong</td>
                                    <th class="text-center bg-light">비밀번호</th>
                                    <td class="text-center"><a class="btn btn-sm btn-default user_pw_initialization"
                                                               id="user_pw_initialization">초기화</a></td>
                                    <th class="text-center bg-light">정보변경이력</th>
                                    <td class="text-center"><a href="#none" class="btn btn-sm btn-default"
                                                               data-toggle="popover" data-html="true"
                                                               data-placement="top"
                                                               data-content="-YYYY.MM.DD. HH:MM 비밀번호 초기화 (변경자 이름) <br>-YYYY.MM.DD. HH:MM 전화번호 변경 (변경자 이름) <br> -YYYY.MM.DD. HH:MM 주소변경 (변경자 이름)">이력보기</a>
                                    </td>
                                </tr>
                                </tbody>

                            </table>
                            <table class="table table-bordered no-footer m-0" role="grid"
                                   aria-describedby="article-list_info" style="">
                                <tr>
                                    <th class="text-center align-middle bg-light" style="width:12%">탈퇴 사유</th>
                                    <td class="text-center" id="user_ban_memo"></td>
                                </tr>
                            </table>
                        </div>
                    </div>

                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-outline-danger" data-dismiss="modal" id="delete_dormant_user">삭제</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal" aria-label="Close">확인</button>
                </div>
            </form>
        </div>
    </div>
</div>


<!-- Layout footer -->
<%@include file="layouts/frame_footer.jsp" %>
<!-- / Layout footer -->
<script>
    pageLoad("dormant_user_index", {page_num: 1, filter1: 100}, "휴면/제거 유저 보드", "dormant_user");


    var curUser = null;
    var curPage = 1;
    var curCate = 100;
    var maxvalue = $(".max-value-starage").attr("id") == "noMax" ? 0 : parseInt($(".max-value-starage").attr("id"));

    $(".category_change").click(function () {
        var param = {
            page_num: null,
            filter1: null
        }
        switch ($(this).attr("id")) {
            case "all":
                param.page_num = 1;
                param.filter1 = 100;
                curCate = 100;
                break;
            case "web_memb":
                param.page_num = 1;
                param.filter1 = 0;
                curCate = 0;
                break;
            case "mobile_memb":
                param.page_num = 1;
                param.filter1 = 1;
                curCate = 1;
                break;
            case "center_memb":
                param.page_num = 1;
                param.filter1 = 2;
                curCate = 2;
                break;
            case "corp_memb":
                param.page_num = 1;
                param.filter1 = 3;
                curCate = 3;
                break;
            case "local_memb":
                param.page_num = 1;
                param.filter1 = 4;
                curCate = 4;
                break;
            case "article-list_previous":
                param.page_num = 1;
                param.filter1 = curCate;
                break;
            case "article-list_previous-one":
                param.page_num = curPage - 1;
                param.filter1 = curCate;
                break;
            case "article-list_next-one":
                param.page_num = curPage + 1;
                param.filter1 = curCate;
                break;
            case "article-list_next":
                param.page_num = maxvalue;
                param.filter1 = curCate;
                break;
        }

        pageLoad("dormant_user_index", param, "휴면/제거 유저 보드", "dormant_user");
    })

    function clickUser(user) {
        curUser = user.idx_user;
        if (user.is_corporate_member == 0) {
            $(".corp_info").css("display", "none");
        } else {
            $(".corp_info").css("display", "table-row");
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
                        $("#user_corp").text(result.corp_name_kor);
                        $("#user_corp_num").text(result.tel_num);
                        $("#user_corp_fax").text(result.fax_num);
                        $("#user_corp_homepage").text(result.homepage);
                    }
                },
                error: function () {
                    //에러가 났을 경우 실행시킬 코드
                }
            });
        }


        $("#user_name").text(user.user_name);
        $("#user_num").text(user.tel_num);
        $("#user_mphone").text(user.mphone_num);
        $("#user_addr").text(user.addr);
        $("#user_id").text(user.user_id);
        $("#user_dormant_status").text(user.user_type == 1 ? "휴면" : user.user_type == 2 ? "탈퇴" : "임의탈퇴");
        $("#user_ban_memo").text(user.ban_memo);
    }




    $("#delete_dormant_user").click(function () {
        if (confirm("이 유저를 제거하시겠습니까?")) {
            $.ajax({
                type: 'post',
                url: 'delete_dormant_user', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(parseInt(curUser)),//보내는 데이터
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'json',//받는 데이터 타입
                success: function (result) {
                    //작업이 성공적으로 발생했을 경우
                    alert(result.result_str);
                    $("#modals-dormant-view").modal("hide");
                    pageLoad('i12_dormant_user_mng', {page_num:curPage, filter1: curCate},'휴면/제거 회원');
                },
                error: function () {
                    //에러가 났을 경우 실행시킬 코드
                }
            });
        }
    })

</script>


<!-- / Page content -->
