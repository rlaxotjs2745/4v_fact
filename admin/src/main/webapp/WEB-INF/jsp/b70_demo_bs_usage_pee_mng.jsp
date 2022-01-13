<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Layout content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>이용료 관리</div>
        </h4>

        <div class="card px-4 pt-4 mb-4">
            <div class="form-row mb-4">
                <div class="col-md-11 ">
                    <label class="form-label text-muted">실증분야</label>
                    <div class="form-inline">
                        <select class="custom-select mr-sm-2 mb-2 mb-sm-0">
                            <option selected="">분야 전체</option>
                            <option value="1">분야</option>
                            <option value="2">분야</option>
                            <option value="3">분야</option>
                        </select>
                        <select class="custom-select mr-sm-2 mb-2 mb-sm-0">
                            <option selected="">실증대상 전체</option>
                            <option value="1">분야</option>
                            <option value="2">분야</option>
                            <option value="3">분야</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-1 text-right">
                    <label class="form-label d-none d-md-block">&nbsp;</label>
                    <button type="button" class="btn btn-success">조회</button>
                </div>
            </div>
        </div>

        <hr class="container-m-nx mt-4 mb-4 ml-2 mr-2">

        <div class="card">
            <h6 class="card-header with-elements">
                <div class="card-header-title">기업목록</div>
                <div class="card-header-elements ml-auto">
                    <button type="button" class="btn btn-outline-dark">기업 정보</button>
                    <button type="button" class="btn btn-outline-dark" data-toggle="modal" data-target="#modals-progress">실증 진도</button>
                    <button type="button" class="btn btn-outline-dark" data-toggle="modal" data-target="#modals-progress-write">실증 진도 입력</button>
                    <button type="button" class="btn btn-outline-dark" data-toggle="modal" data-target="#modals-subsidy">운영비/보조금</button>
                </div>
            </h6>
            <!-- Modal template -->
            <div class="modal fade" id="modals-progress">
                <div class="modal-dialog modal-lg">
                    <form class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">실증진도 계획 구성</h5>
                            <button type="button" class="btn d-inline-block"><img src="../assets/img/ico_print.png" alt="인쇄"></button>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                        </div>
                        <div class="modal-body">
                            <label class="form-label"><span class="text-muted">기업명</span> 맛있는 농부(주)</label>

                            <table class="table table-bordered mt-3 ">
                                <thead>
                                <tr>
                                    <th class="text-center" style="width:120px">단계</th>
                                    <th class="text-center" >항목</th>
                                    <th class="text-center" style="width:130px">계획:시작</th>
                                    <th class="text-center" style="width:130px">계획:종료</th>
                                    <th class="text-center" style="width:80px"></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th class="align-middle text-center position-relative" scope="row" rowspan="4">
                                        <div class="cell-controller">
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                                <span class="fas fa-equals"></span>
                                            </button>
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                                <span class="ion ion-md-close"></span>
                                            </button>
                                        </div>
                                        온실설치
                                    </th>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td class="align-middle "></td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td class="align-middle "></td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td class="align-middle "></td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td class="align-middle ">
                                        <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                            <span class="ion ion-md-close"></span>
                                        </button>
                                        <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                            <span class="ion ion-md-add"></span>
                                        </button>
                                    </td>
                                </tr>
                                <!--//-->
                                <tr>
                                    <th class="align-middle text-center position-relative" scope="row" rowspan="3">
                                        <div class="cell-controller">
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                                <span class="fas fa-equals"></span>
                                            </button>
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                                <span class="ion ion-md-close"></span>
                                            </button>
                                        </div>
                                        기자재 설치
                                    </th>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td class="align-middle "></td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td class="align-middle "></td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td class="align-middle ">
                                        <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                            <span class="ion ion-md-add"></span>
                                        </button>
                                    </td>
                                </tr>
                                <!--//-->
                                <tr>
                                    <th class="align-middle text-center position-relative" scope="row" rowspan="3">
                                        <div class="cell-controller">
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                                <span class="fas fa-equals"></span>
                                            </button>
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                                <span class="ion ion-md-close"></span>
                                            </button>
                                        </div>
                                        실증시험
                                    </th>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td class="align-middle "></td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td class="align-middle "></td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td class="align-middle ">
                                        <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                            <span class="ion ion-md-add"></span>
                                        </button>
                                    </td>
                                </tr>
                                <!--//-->
                                <tr>
                                    <th class="align-middle text-center position-relative" scope="row" rowspan="3">
                                        <div class="cell-controller">
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                                <span class="fas fa-equals"></span>
                                            </button>
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                                <span class="ion ion-md-close"></span>
                                            </button>
                                        </div>
                                        시험분석
                                    </th>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td class="align-middle "></td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td class="align-middle "></td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td><input type="text" class="form-control form-control-sm datepickers" id=""></td>
                                    <td class="align-middle ">
                                        <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                            <span class="ion ion-md-add"></span>
                                        </button>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                            <div class="form-row m-0">
                                <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                    <span class="ion ion-md-add"></span>
                                </button>
                            </div>
                        </div>
                        <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                            <div>
                                <button type="button" class="btn btn-outline-primary">출력</button>
                                <button type="button" class="btn btn-primary">저장</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="modal fade" id="modals-progress-write">
                <div class="modal-dialog modal-lg">
                    <form class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">실증진도 입력</h5>
                            <button type="button" class="btn d-inline-block"><img src="../assets/img/ico_print.png" alt="인쇄"></button>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                        </div>
                        <div class="modal-body">
                            <label class="form-label"><span class="text-muted">기업명</span> 맛있는 농부(주)</label>

                            <table class="table table-bordered mt-3 ">
                                <thead>
                                <tr>
                                    <th class="text-center" style="width:120px">단계</th>
                                    <th class="text-center" >항목</th>
                                    <th class="text-center" style="width:150px">계획:시작</th>
                                    <th class="text-center" style="width:150px">계획:종료</th>
                                    <th class="text-center" style="width:100px">진도</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th class="align-middle text-center position-relative" scope="row" rowspan="4">
                                        온실설치
                                    </th>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="align-middle ">
                                        <select class="custom-select custom-select-sm" name="" id="">
                                            <option value="100">100</option><option value="90">90</option><option value="80">80</option><option value="70">70</option><option value="60">60</option><option value="50">50</option><option value="40">40</option><option value="30">30</option><option value="20">20</option><option value="10">10</option><option value="0">0</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="align-middle ">
                                        <select class="custom-select custom-select-sm" name="" id="">
                                            <option value="100">100</option><option value="90">90</option><option value="80">80</option><option value="70">70</option><option value="60">60</option><option value="50">50</option><option value="40">40</option><option value="30">30</option><option value="20">20</option><option value="10">10</option><option value="0">0</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="align-middle ">
                                        <select class="custom-select custom-select-sm" name="" id="">
                                            <option value="100">100</option><option value="90">90</option><option value="80" selected>80</option><option value="70">70</option><option value="60">60</option><option value="50">50</option><option value="40">40</option><option value="30">30</option><option value="20">20</option><option value="10">10</option><option value="0">0</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="align-middle ">
                                        <select class="custom-select custom-select-sm" name="" id="">
                                            <option value="100">100</option><option value="90">90</option><option value="80" selected>80</option><option value="70">70</option><option value="60">60</option><option value="50">50</option><option value="40">40</option><option value="30">30</option><option value="20">20</option><option value="10">10</option><option value="0">0</option>
                                        </select>
                                    </td>
                                </tr>
                                <!--//-->
                                <tr>
                                    <th class="align-middle text-center position-relative" scope="row" rowspan="3">
                                        기자재 설치
                                    </th>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="align-middle ">
                                        <select class="custom-select custom-select-sm" name="" id="">
                                            <option value="100">100</option><option value="90">90</option><option value="80" >80</option><option value="70" selected>70</option><option value="60">60</option><option value="50">50</option><option value="40">40</option><option value="30">30</option><option value="20">20</option><option value="10">10</option><option value="0">0</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="align-middle ">
                                        <select class="custom-select custom-select-sm" name="" id="">
                                            <option value="100">100</option><option value="90">90</option><option value="80" >80</option><option value="70" selected>70</option><option value="60">60</option><option value="50">50</option><option value="40">40</option><option value="30">30</option><option value="20">20</option><option value="10">10</option><option value="0">0</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="align-middle ">
                                        <select class="custom-select custom-select-sm" name="" id="">
                                            <option value="100">100</option><option value="90">90</option><option value="80" >80</option><option value="70" selected>70</option><option value="60">60</option><option value="50">50</option><option value="40">40</option><option value="30">30</option><option value="20">20</option><option value="10">10</option><option value="0">0</option>
                                        </select>
                                    </td>
                                </tr>
                                <!--//-->
                                <tr>
                                    <th class="align-middle text-center position-relative" scope="row" rowspan="3">
                                        실증시험
                                    </th>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="align-middle ">
                                        <select class="custom-select custom-select-sm" name="" id="">
                                            <option value="100">100</option><option value="90">90</option><option value="80" >80</option><option value="70" selected>70</option><option value="60">60</option><option value="50">50</option><option value="40">40</option><option value="30">30</option><option value="20">20</option><option value="10">10</option><option value="0">0</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="align-middle ">
                                        <select class="custom-select custom-select-sm" name="" id="">
                                            <option value="100">100</option><option value="90">90</option><option value="80" >80</option><option value="70" selected>70</option><option value="60">60</option><option value="50">50</option><option value="40">40</option><option value="30">30</option><option value="20">20</option><option value="10">10</option><option value="0">0</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="align-middle ">
                                        <select class="custom-select custom-select-sm" name="" id="">
                                            <option value="100">100</option><option value="90">90</option><option value="80" >80</option><option value="70" selected>70</option><option value="60">60</option><option value="50">50</option><option value="40">40</option><option value="30">30</option><option value="20">20</option><option value="10">10</option><option value="0">0</option>
                                        </select>
                                    </td>
                                </tr>
                                <!--//-->
                                <tr>
                                    <th class="align-middle text-center position-relative" scope="row" rowspan="3">
                                        시험분석
                                    </th>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="align-middle ">
                                        <select class="custom-select custom-select-sm" name="" id="">
                                            <option value="100">100</option><option value="90">90</option><option value="80" >80</option><option value="70" selected>70</option><option value="60">60</option><option value="50">50</option><option value="40">40</option><option value="30">30</option><option value="20">20</option><option value="10">10</option><option value="0">0</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="align-middle ">
                                        <select class="custom-select custom-select-sm" name="" id="">
                                            <option value="100">100</option><option value="90">90</option><option value="80" >80</option><option value="70" selected>70</option><option value="60">60</option><option value="50">50</option><option value="40">40</option><option value="30">30</option><option value="20">20</option><option value="10">10</option><option value="0">0</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="align-middle ">
                                        <select class="custom-select custom-select-sm" name="" id="">
                                            <option value="100">100</option><option value="90">90</option><option value="80" >80</option><option value="70" selected>70</option><option value="60">60</option><option value="50">50</option><option value="40">40</option><option value="30">30</option><option value="20">20</option><option value="10">10</option><option value="0">0</option>
                                        </select>
                                    </td>
                                </tr>
                                <!--//-->
                                <tr>
                                    <th class="align-middle text-center position-relative" scope="row">
                                        실증관리
                                    </th>
                                    <td class="align-middle text-center">항목목목목</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="text-center">2021.00.00. 00:00</td>
                                    <td class="align-middle ">
                                        <select class="custom-select custom-select-sm" name="" id="">
                                            <option value="100">100</option><option value="90">90</option><option value="80" >80</option><option value="70" selected>70</option><option value="60">60</option><option value="50">50</option><option value="40">40</option><option value="30">30</option><option value="20">20</option><option value="10">10</option><option value="0">0</option>
                                        </select>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                        </div>
                        <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                            <div>
                                <button type="button" class="btn btn-outline-primary">계획 수정</button>
                                <button type="button" class="btn btn-outline-primary">출력</button>
                                <button type="button" class="btn btn-primary">저장</button>
                                <button type="button" class="btn btn-primary">전송</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="modal fade" id="modals-subsidy">
                <div class="modal-dialog modal-lg">
                    <form class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">운영비/보조금 등록</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                        </div>
                        <div class="modal-body">
                            <label class="form-label"><span class="text-muted">기업명</span> 맛있는 농부(주)</label>

                            <div class="body-scroll-x">
                                <table class="table table-bordered mt-3 " style="width:1330px">
                                    <thead>
                                    <tr>
                                        <th class="text-center" style="width:170px">대분류</th>
                                        <th class="text-center" style="width:150px">중분류</th>
                                        <th class="text-center" style="width:150px">계획:시작</th>
                                        <th class="text-center" style="width:70px">면적</th>
                                        <th class="text-center" style="width:70px">수량</th>
                                        <th class="text-center" style="width:150px">이용료(원/1일)</th>
                                        <th class="text-center" style="width:150px">사용일수</th>
                                        <th class="text-center" style="width:150px">이용료</th>
                                        <th class="text-center" style="">메모</th>
                                        <th class="text-center" style="width:80px"></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th class="align-middle text-center">
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default d-inline-block"><span class="fas fa-equals"></span></button>
                                            <input type="text" class="form-control form-control-sm align-middle d-inline-block" style="width:100px;">
                                        </th>
                                        <td class="align-middle text-center"><input type="text" class="form-control form-control-sm" style="width:120px;"></td>
                                        <td class="align-middle text-center"><input type="text" class="form-control form-control-sm datepickers" id="" style="width:120px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:50px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:50px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:130px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:130px;"></td>
                                        <td class="text-right">00,000,000</td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:180px;"></td>
                                        <td class="align-middle ">
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                                <span class="ion ion-md-close"></span>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="align-middle text-center">
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default d-inline-block"><span class="fas fa-equals"></span></button>
                                            <input type="text" class="form-control form-control-sm align-middle d-inline-block" style="width:100px;">
                                        </th>
                                        <td class="align-middle text-center"><input type="text" class="form-control form-control-sm" style="width:120px;"></td>
                                        <td class="align-middle text-center"><input type="text" class="form-control form-control-sm datepickers" id="" style="width:120px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:50px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:50px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:130px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:130px;"></td>
                                        <td class="text-right">00,000,000</td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:180px;"></td>
                                        <td class="align-middle ">
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                                <span class="ion ion-md-close"></span>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="align-middle text-center">
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default d-inline-block"><span class="fas fa-equals"></span></button>
                                            <input type="text" class="form-control form-control-sm align-middle d-inline-block" style="width:100px;">
                                        </th>
                                        <td class="align-middle text-center"><input type="text" class="form-control form-control-sm" style="width:120px;"></td>
                                        <td class="align-middle text-center"><input type="text" class="form-control form-control-sm datepickers" id="" style="width:120px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:50px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:50px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:130px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:130px;"></td>
                                        <td class="text-right">00,000,000</td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:180px;"></td>
                                        <td class="align-middle ">
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                                <span class="ion ion-md-close"></span>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="align-middle text-center">
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default d-inline-block"><span class="fas fa-equals"></span></button>
                                            <input type="text" class="form-control form-control-sm align-middle d-inline-block" style="width:100px;">
                                        </th>
                                        <td class="align-middle text-center"><input type="text" class="form-control form-control-sm" style="width:120px;"></td>
                                        <td class="align-middle text-center"><input type="text" class="form-control form-control-sm datepickers" id="" style="width:120px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:50px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:50px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:130px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:130px;"></td>
                                        <td class="text-right">00,000,000</td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:180px;"></td>
                                        <td class="align-middle ">
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                                <span class="ion ion-md-close"></span>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="align-middle text-center">
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default d-inline-block"><span class="fas fa-equals"></span></button>
                                            <input type="text" class="form-control form-control-sm align-middle d-inline-block" style="width:100px;">
                                        </th>
                                        <td class="align-middle text-center"><input type="text" class="form-control form-control-sm" style="width:120px;"></td>
                                        <td class="align-middle text-center"><input type="text" class="form-control form-control-sm datepickers" id="" style="width:120px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:50px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:50px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:130px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:130px;"></td>
                                        <td class="text-right">00,000,000</td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:180px;"></td>
                                        <td class="align-middle ">
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                                <span class="ion ion-md-close"></span>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="align-middle text-center">
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default d-inline-block"><span class="fas fa-equals"></span></button>
                                            <input type="text" class="form-control form-control-sm align-middle d-inline-block" style="width:100px;">
                                        </th>
                                        <td class="align-middle text-center"><input type="text" class="form-control form-control-sm" style="width:120px;"></td>
                                        <td class="align-middle text-center"><input type="text" class="form-control form-control-sm datepickers" id="" style="width:120px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:50px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:50px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:130px;"></td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:130px;"></td>
                                        <td class="text-right">00,000,000</td>
                                        <td class="text-center"><input type="text" class="form-control form-control-sm" style="width:180px;"></td>
                                        <td class="align-middle ">
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                                <span class="ion ion-md-add"></span>
                                            </button>
                                            <button type="button" class="btn icon-btn btn-sm btn-outline-default">
                                                <span class="ion ion-md-close"></span>
                                            </button>
                                        </td>
                                    </tr>

                                    </tbody>
                                </table>
                            </div>

                            <table class="table table-bordered mt-3 mb-0 ">
                                <tbody>
                                <tr>
                                    <th class="text-center">소계</th>
                                    <td colspan="2" class="text-right">10,000,000</td>
                                    <td><span class="text-muted">메모</span></td>
                                </tr>
                                <tr>
                                    <th class="text-center">할인율</th>
                                    <td class="" style="width: 120px;"><input type="text" class="form-control form-control-sm form-grade d-inline-block" style="width:100px;" placeholder="00"><span class="input-grade input-grade-sm">%</span></td>
                                    <td class="text-right">10,000,000</td>
                                    <td><span class="text-muted">메모</span></td>
                                </tr>
                                <tr>
                                    <th class="text-center">소계</th>
                                    <td colspan="2" class="text-right">10,000,000</td>
                                    <td><span class="text-muted">메모</span></td>
                                </tr>
                                <tr>
                                    <th class="text-center">총합계</th>
                                    <td colspan="2" class="text-right h5">90,000,000</td>
                                    <td><span class="text-muted">메모</span></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                            <div>
                                <button type="button" class="btn btn-outline-primary">출력</button>
                                <button type="button" class="btn btn-primary">저장</button>
                                <button type="button" class="btn btn-primary">전송</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="card-datatable table-responsive">
                <div id="article-list_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12 col-md-6">
                            <label class="mr-3">총 : <strong>150</strong>개</label><label class="mr-3">위탁 : <strong>70</strong>개</label><label class="mr-3">자율 : <strong>80</strong>개</label>
                        </div>
                        <div class="col-sm-12 col-md-6">
                            <div id="" class="dataTables_filter"><label>찾기:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="article-list"></label></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="article-list" class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="article-list_info" style="">
                                <thead>
                                <tr role="row">
                                    <th class="text-center" style="width:15px">
                                        <label class="custom-control custom-checkbox m-0 p-1 d-inline-block">
                                            <input type="checkbox" class="custom-control-input" name="check-0">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </th>
                                    <th class="text-center sorting" style="width:20px">No.</th>
                                    <th class="text-center sorting" style="width:150px">기업명</th>
                                    <th class="text-center sorting" style="width:50px">분류</th>
                                    <th class="text-center sorting" style="width:80px">실증대상</th>
                                    <th class="text-center sorting" style="width:80px">투입실증장비</th>
                                    <th class="text-center sorting" style="width:80px">실증단계</th>
                                    <th class="text-center sorting" style="width:80px">실증 진도</th>
                                    <th class="text-center sorting" style="width:80px">기간</th>
                                    <th class="text-center sorting" style="width:110px">실증 서비스료</th>
                                    <th class="text-center sorting" style="width:110px">보증금(원)</th>
                                    <th class="text-center sorting" style="width:110px">운영비(원)</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="">
                                    <td class="text-center">
                                        <label class="custom-control custom-checkbox d-inline-block">
                                            <input type="checkbox" class="custom-control-input" name="check-1">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </td>
                                    <td class="text-center">1</td>
                                    <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-default-view">맛있는 농부</a></td>
                                    <td class="text-center">자율</td>
                                    <td class="text-center">제어기용외 1건</td>
                                    <td class="text-center">ㅁㅁㅁ외 0개</td>
                                    <td class="text-center">실증시험</td>
                                    <td class="text-center">20%</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">
                                        <label class="custom-control custom-checkbox d-inline-block">
                                            <input type="checkbox" class="custom-control-input" name="check-1">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </td>
                                    <td class="text-center">2</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">자율</td>
                                    <td class="text-center">제어기용외 1건</td>
                                    <td class="text-center">ㅁㅁㅁ외 0개</td>
                                    <td class="text-center">실증시험</td>
                                    <td class="text-center">20%</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">
                                        <label class="custom-control custom-checkbox d-inline-block">
                                            <input type="checkbox" class="custom-control-input" name="check-1">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </td>
                                    <td class="text-center">3</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">자율</td>
                                    <td class="text-center">제어기용외 1건</td>
                                    <td class="text-center">ㅁㅁㅁ외 0개</td>
                                    <td class="text-center">실증시험</td>
                                    <td class="text-center">20%</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">
                                        <label class="custom-control custom-checkbox d-inline-block">
                                            <input type="checkbox" class="custom-control-input" name="check-1">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </td>
                                    <td class="text-center">4</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">자율</td>
                                    <td class="text-center">제어기용외 1건</td>
                                    <td class="text-center">ㅁㅁㅁ외 0개</td>
                                    <td class="text-center">실증시험</td>
                                    <td class="text-center">20%</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">
                                        <label class="custom-control custom-checkbox d-inline-block">
                                            <input type="checkbox" class="custom-control-input" name="check-1">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </td>
                                    <td class="text-center">5</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">자율</td>
                                    <td class="text-center">제어기용외 1건</td>
                                    <td class="text-center">ㅁㅁㅁ외 0개</td>
                                    <td class="text-center">실증시험</td>
                                    <td class="text-center">20%</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">
                                        <label class="custom-control custom-checkbox d-inline-block">
                                            <input type="checkbox" class="custom-control-input" name="check-1">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </td>
                                    <td class="text-center">6</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">자율</td>
                                    <td class="text-center">제어기용외 1건</td>
                                    <td class="text-center">ㅁㅁㅁ외 0개</td>
                                    <td class="text-center">실증시험</td>
                                    <td class="text-center">20%</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">
                                        <label class="custom-control custom-checkbox d-inline-block">
                                            <input type="checkbox" class="custom-control-input" name="check-1">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </td>
                                    <td class="text-center">7</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">자율</td>
                                    <td class="text-center">제어기용외 1건</td>
                                    <td class="text-center">ㅁㅁㅁ외 0개</td>
                                    <td class="text-center">실증시험</td>
                                    <td class="text-center">20%</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">
                                        <label class="custom-control custom-checkbox d-inline-block">
                                            <input type="checkbox" class="custom-control-input" name="check-1">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </td>
                                    <td class="text-center">8</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">자율</td>
                                    <td class="text-center">제어기용외 1건</td>
                                    <td class="text-center">ㅁㅁㅁ외 0개</td>
                                    <td class="text-center">실증시험</td>
                                    <td class="text-center">20%</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">
                                        <label class="custom-control custom-checkbox d-inline-block">
                                            <input type="checkbox" class="custom-control-input" name="check-1">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </td>
                                    <td class="text-center">9</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">자율</td>
                                    <td class="text-center">제어기용외 1건</td>
                                    <td class="text-center">ㅁㅁㅁ외 0개</td>
                                    <td class="text-center">실증시험</td>
                                    <td class="text-center">20%</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">
                                        <label class="custom-control custom-checkbox d-inline-block">
                                            <input type="checkbox" class="custom-control-input" name="check-1">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </td>
                                    <td class="text-center">10</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">자율</td>
                                    <td class="text-center">제어기용외 1건</td>
                                    <td class="text-center">ㅁㅁㅁ외 0개</td>
                                    <td class="text-center">실증시험</td>
                                    <td class="text-center">20%</td>
                                    <td class="text-center">2021.00.00~2021.00.00</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                    <td class="text-right">10,000,000원</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div class="dataTables_info" id="article-list_info" role="status" aria-live="polite">Showing 1 to 10 of 50 entries</div>
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

    </div>
<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
<!-- / Layout footer -->