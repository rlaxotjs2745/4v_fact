<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>고객 관리</div>
        </h4>
        <div class="row">
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">관리 고객수</div>
                            <div class="text-large">5200</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">웹 회원수</div>
                            <div class="text-large">2590</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">정회원(실증 사업중)</div>
                            <div class="text-large">000</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">부회원(실증 참여한 이력)</div>
                            <div class="text-large">000</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card px-4 pt-4 ">
            <div class="form-row mb-4">
                <div class="col-lg-10 col-md-6 ">
                    <label class="form-label text-muted">고객 분류</label>
                    <div class="form-inline mt-2">
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="radio" name="category" id="all" class="custom-control-input category_change" checked>
                            <span class="custom-control-label">전체</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="radio" name="category" id="web_memb" class="custom-control-input category_change">
                            <span class="custom-control-label">웹 가입</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="radio" name="category" id="mobile_memb" class="custom-control-input category_change">
                            <span class="custom-control-label">모바일 가입</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="radio" name="category" id="center_memb" class="custom-control-input category_change">
                            <span class="custom-control-label">관리기관 가입</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="radio" name="category" id="corp_memb" class="custom-control-input category_change">
                            <span class="custom-control-label">재단 가입</span>
                        </label>
                        <label class="custom-control custom-checkbox mr-2">
                            <input type="radio" name="category" id="local_memb" class="custom-control-input category_change">
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

        <div class="card" id="user_index">

        </div>

        <!-- Modal template -->
        <div class="modal fade" id="modal-person-view">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">고객 정보 확인</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <table  class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                    <tbody>
                                    <tr class="user_info">
                                        <th class="text-center align-middle bg-light" rowspan="3" style="width:12%">개인정보</th>
                                        <th class="text-center bg-light" style="width:12%">이름</th>
                                        <td class="text-center" style="width:27%" id="user_name">홍길동</td>
                                        <th class="text-center bg-light" style="width:13%">일반전화번호</th>
                                        <td class="text-center" style="width:26%" id="user_num">000-0000-0000</td>
                                    </tr>
                                    <tr class="user_info">
                                        <th class="text-center bg-light">휴대폰 번호</th>
                                        <td class="text-center" id="user_mphone">000-0000-0000</td>
                                        <th class="text-center bg-light">이메일</th>
                                        <td class="text-center" id="user_email">abc@aaaaaa.com</td>
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
                                        <th class="text-center bg-light">직위</th>
                                        <td class="text-center" id="user_corp_rank">부장</td>
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
                                <table  class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                    <tbody>
                                    <tr>
                                        <th class="text-center align-middle bg-light" style="width:14%">센터 정보</th>
                                        <th class="text-center bg-light" style="width:13%">입주여부</th>
                                        <td class="text-center" style="width:15%">Y</td>
                                        <th class="text-center bg-light" style="width:15%">건물</th>
                                        <td class="text-center" style="width:15%">XXXXXXXX</td>
                                        <th class="text-center bg-light" style="width:15%">관리번호</th>
                                        <td class="text-center" style="width:13%">XXXXXXXX</td>
                                    </tr>
                                    <tr>
                                        <th class="text-center align-middle bg-light" rowspan="2">시스템 정보</th>
                                        <th class="text-center bg-light">웹ID</th>
                                        <td class="text-center" id="user_id">dongdong</td>
                                        <th class="text-center bg-light">비밀번호</th>
                                        <td class="text-center"><a href="#none" class="btn btn-sm btn-default" id="user_pw_initialization">초기화</a></td>
                                        <th class="text-center bg-light">정보변경이력</th>
                                        <td class="text-center"><a href="#none" class="btn btn-sm btn-default" data-toggle="popover" data-html="true"  data-placement="top" data-content="-YYYY.MM.DD. HH:MM 비밀번호 초기화 (변경자 이름) <br>-YYYY.MM.DD. HH:MM 전화번호 변경 (변경자 이름) <br> -YYYY.MM.DD. HH:MM 주소변경 (변경자 이름)" >이력보기</a></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">시스템권한</th>
                                        <td class="" colspan="5" id="user_auth">C운영자</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer justify-content-end">
                        <div>
                            <button type="button" class="btn btn-default" data-dismiss="modal"  data-toggle="modal" data-target="#modal-person-modify">수정</button>
                            <button type="button" class="btn btn-primary">확인</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div class="modal fade" id="modal-person-modify">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">고객 정보 수정</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <table class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                    <tbody>
                                    <tr class="">
                                        <th class="text-center align-middle bg-light" rowspan="3" style="width:12%">개인정보</th>
                                        <th class="text-center bg-light" style="width:12%">이름</th>
                                        <td class="text-center" style="width:27%"><input type="text" class="form-control form-control-sm" value="홍길동"></td>
                                        <th class="text-center bg-light" style="width:13%">일반전화번호</th>
                                        <td class="text-center" style="width:26%"><input type="text" class="form-control form-control-sm" value="000-0000-0000"></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">휴대폰 번호</th>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" value="000-0000-0000"></td>
                                        <th class="text-center bg-light">이메일</th>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" value="abc@aaaaaa.com"></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">주소</th>
                                        <td class="" colspan="3"><input type="text" class="form-control form-control-sm" value="제주도 서귀포시 XXXXXXX XXXXXXX"></td>
                                    </tr>
                                    <tr class="">
                                        <th class="text-center align-middle bg-light" rowspan="3">소속 정보</th>
                                        <th class="text-center bg-light">단체명</th>
                                        <td class="" colspan="3"><input type="text" class="form-control form-control-sm" value="맛있는 농부(주)"></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">직위</th>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" value="부장"></td>
                                        <th class="text-center bg-light">전화번호</th>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" value="000-0000-0000"></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">팩스</th>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" value="000-0000-0000"></td>
                                        <th class="text-center bg-light">홈페이지</th>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" value="www.asdfasdfasdf.com"></td>
                                    </tr>
                                    </tbody>
                                </table>
                                <table id="" class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                    <tbody>
                                    <tr>
                                        <th class="text-center align-middle bg-light" style="width:14%">센터 정보</th>
                                        <th class="text-center bg-light" style="width:13%">입주여부</th>
                                        <td class="text-center" style="width:15%">
                                            <select name="" class="custom-select custom-select-sm">
                                                <option value="">Y</option>
                                                <option value="">N</option>
                                            </select>
                                        </td>
                                        <th class="text-center bg-light" style="width:15%">건물</th>
                                        <td class="text-center" style="width:15%"><input type="text" class="form-control form-control-sm" value="XXXXXXXX"></td>
                                        <th class="text-center bg-light" style="width:15%">관리번호</th>
                                        <td class="text-center" style="width:13%"><input type="text" class="form-control form-control-sm" value="XXXXXXXX"></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center align-middle bg-light" rowspan="2">시스템 정보</th>
                                        <th class="text-center bg-light">웹ID</th>
                                        <td class="text-center">dongdong</td>
                                        <th class="text-center bg-light">비밀번호</th>
                                        <td class="text-center"><a href="#none" class="btn btn-sm btn-default">초기화</a></td>
                                        <th class="text-center bg-light">정보변경이력</th>
                                        <td class="text-center"><a href="#none" class="btn btn-sm btn-default" data-toggle="popover" data-html="true"  data-placement="top" data-content="-YYYY.MM.DD. HH:MM 비밀번호 초기화 (변경자 이름) <br>-YYYY.MM.DD. HH:MM 전화번호 변경 (변경자 이름) <br> -YYYY.MM.DD. HH:MM 주소변경 (변경자 이름)" >이력보기</a></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">시스템권한</th>
                                        <td class="" colspan="5">
                                            <select name="" class="custom-select custom-select-sm w-auto">
                                                <option value="">C운영자</option>
                                                <option value="">C마스터</option>
                                            </select>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer justify-content-between">
                        <div>
                            <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                            <button type="button" class="btn btn-outline-danger">제거</button>
                        </div>
                        <button type="button" class="btn btn-primary">저장</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="modal fade" id="modal-person-write">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">고객 정보 등록</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <table class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                    <tbody>
                                    <tr class="">
                                        <th class="text-center align-middle bg-light" rowspan="3" style="width:12%">개인정보</th>
                                        <th class="text-center bg-light" style="width:12%">이름</th>
                                        <td class="text-center" style="width:27%"><input type="text" class="form-control form-control-sm" placeholder="홍길동" ></td>
                                        <th class="text-center bg-light" style="width:13%">휴대폰 번호</th>
                                        <td class="text-center" style="width:26%"><input type="text" class="form-control form-control-sm" placeholder="000-0000-0000"></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">휴대폰 번호</th>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" value="000-0000-0000"></td>
                                        <th class="text-center bg-light">이메일</th>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" value="abc@aaaaaa.com"></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">주소</th>
                                        <td class="" colspan="3"><input type="text" class="form-control form-control-sm" value="제주도 서귀포시 XXXXXXX XXXXXXX"></td>
                                    </tr>
                                    <tr class="">
                                        <th class="text-center align-middle bg-light" rowspan="3">소속 정보</th>
                                        <th class="text-center bg-light">단체명</th>
                                        <td class="" colspan="3"><input type="text" class="form-control form-control-sm" value="맛있는 농부(주)"></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">직위</th>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" value="부장"></td>
                                        <th class="text-center bg-light">전화번호</th>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" value="000-0000-0000"></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">팩스</th>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" value="000-0000-0000"></td>
                                        <th class="text-center bg-light">홈페이지</th>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" value="www.asdfasdfasdf.com"></td>
                                    </tr>
                                    </tbody>
                                </table>
                                <table class="table table-bordered no-footer m-0" role="grid" aria-describedby="article-list_info" style="">
                                    <tbody>
                                    <tr>
                                        <th class="text-center align-middle bg-light" style="width:14%">센터 정보</th>
                                        <th class="text-center bg-light" style="width:13%">입주여부</th>
                                        <td class="text-center" style="width:13%">
                                            <select name=""  class="custom-select custom-select-sm">
                                                <option value="">Y</option>
                                                <option value="">N</option>
                                            </select>
                                        </td>
                                        <th class="text-center bg-light" style="width:11%">건물</th>
                                        <td class="text-center" style="width:15%"><input type="text" class="form-control form-control-sm" value="XXXXXXXX"></td>
                                        <th class="text-center bg-light" style="width:15%">관리번호</th>
                                        <td class="text-center" style="width:19%"><input type="text" class="form-control form-control-sm" value="XXXXXXXX"></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center align-middle bg-light" rowspan="2">시스템 정보</th>
                                        <th class="text-center bg-light">웹ID</th>
                                        <td class="text-center" colspan="2"><input type="text" class="form-control form-control-sm d-inline-block align-middle mr-1" value="" style="width:calc(100% - 80px)"><a href="#none" class="btn btn-sm btn-default">중복확인</a></td>
                                        <th class="text-center bg-light">비밀번호</th>
                                        <td class="" colspan="2"><small>등록한 이메일로 초기 비밀번호가 발송됩니다.</small></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center bg-light">시스템권한</th>
                                        <td class="" colspan="5">
                                            <select name="" class="custom-select custom-select-sm w-auto">
                                                <option value="">C운영자</option>
                                                <option value="">C마스터</option>
                                            </select>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer justify-content-between">
                        <div>
                            <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                            <button type="button" class="btn btn-outline-danger">제거</button>
                        </div>
                        <button type="button" class="btn btn-primary">저장</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
<!-- / Layout footer -->

<!-- / Page content -->

<script>
    pageLoad("user_index", {page_num: 1, filter1: 100}, "유저 보드", "user");

    var curPage = 1;
    var curCate = 100;
    var maxvalue = $(".max-value-starage").attr("id") == "noMax" ? 0 : parseInt($(".max-value-starage").attr("id"));

    $(".category_change").click(function(){
        var param = {
            page_num: null,
            filter1: null
        }
        switch($(this).attr("id")){
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

        pageLoad("user_index", param, "유저 보드", "user");
    })

    // <tr class="user_info">
    //     <th class="text-center align-middle bg-light" rowspan="3" style="width:12%">개인정보</th>
    // <th class="text-center bg-light" style="width:12%">이름</th>
    // <td class="text-center" style="width:27%" id="user_name">홍길동</td>
    // <th class="text-center bg-light" style="width:13%">일반전화번호</th>
    // <td class="text-center" style="width:26%" id="user_num">000-0000-0000</td>
    // </tr>
    // <tr class="user_info">
    //     <th class="text-center bg-light">휴대폰 번호</th>
    //     <td class="text-center" id="user_mphone">000-0000-0000</td>
    //     <th class="text-center bg-light">이메일</th>
    //     <td class="text-center" id="user_email">abc@aaaaaa.com</td>
    // </tr>
    // <tr class="user_info">
    //     <th class="text-center bg-light">주소</th>
    //     <td class="" colspan="3" id="user_addr">제주도 서귀포시 XXXXXXX XXXXXXX</td>
    // </tr>
    // <tr class="corp_info">
    //     <th class="text-center align-middle bg-light" rowspan="3">소속 정보</th>
    //     <th class="text-center bg-light">단체명</th>
    //     <td class="" colspan="3" id="user_corp">맛있는 농부(주)</td>
    // </tr>
    // <tr class="corp_info">
    //     <th class="text-center bg-light">직위</th>
    //     <td class="text-center" id="user_corp_rank">부장</td>
    //     <th class="text-center bg-light">전화번호</th>
    //     <td class="text-center" id="user_corp_num">000-0000-0000</td>
    // </tr>
    // <tr class="corp_info">
    //     <th class="text-center bg-light">팩스</th>
    //     <td class="text-center" id="user_corp_fax">000-0000-0000</td>
    //     <th class="text-center bg-light">홈페이지</th>
    //     <td class="text-center" id="user_corp_homepage">www.asdfasdfasdf.com</td>
    // </tr>
    // <tr>
    //     <th class="text-center align-middle bg-light" rowspan="2">시스템 정보</th>
    //     <th class="text-center bg-light">웹ID</th>
    //     <td class="text-center" id="user_id">dongdong</td>
    //     <th class="text-center bg-light">비밀번호</th>
    //     <td class="text-center"><a href="#none" class="btn btn-sm btn-default" id="user_pw_initialization">초기화</a></td>
    //     <th class="text-center bg-light">정보변경이력</th>
    //     <td class="text-center"><a href="#none" class="btn btn-sm btn-default" data-toggle="popover" data-html="true"  data-placement="top" data-content="-YYYY.MM.DD. HH:MM 비밀번호 초기화 (변경자 이름) <br>-YYYY.MM.DD. HH:MM 전화번호 변경 (변경자 이름) <br> -YYYY.MM.DD. HH:MM 주소변경 (변경자 이름)" >이력보기</a></td>
    // </tr>
    // <tr>
    //     <th class="text-center bg-light">시스템권한</th>
    //     <td
    function clickUser (user) {
        if(user.is_corporate_member == 0){
            $(".corp_info").css("display", "none");
        } else {
            $(".corp_info").css("display", "block");
            $.ajax({
                type: 'post',
                url :'get_corp_info', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(user.idx_corp_info),//보내는 데이터
                contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
                dataType:'json',//받는 데이터 타입
                success: function(result){
                    //작업이 성공적으로 발생했을 경우
                    console.log(result);
                    if(result.corp_type == 1111){
                        $(".corp_info").html("기업 정보를 불러오지 못했습니다.");
                    }
                    else {
                        $("#user_corp").val(result.corp_name_kor);
                        $("#user_corp_num").val(result.tel_num);
                        $("#user_corp_fax").val(result.fax_num);
                        $("#user_corp_homepage").val(result.homepage);
                    }
                },
                error:function(){
                    //에러가 났을 경우 실행시킬 코드
                }
            });
        }

        $("#user_name").val(user.user_name);
        $("#user_num").val(user.tel_num);
        $("#user_mphone").val(user.mphone_num);
        $("#user_addr").val(user.addr);
        $("#user_id").val(user.user_id);
    }

</script>

