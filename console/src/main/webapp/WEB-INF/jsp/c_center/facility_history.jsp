<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/10/11
  Time: 5:34 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">
    <h4 class="font-weight-bold py-3 mb-4">기자재 상세이력</h4>

    <div class="card px-4 pt-4 mb-4">
        <div class="form-row mb-4">
            <div class="col-md-10 ">
                <label class="form-label text-muted">실증장비 분류</label>
                <div class="form-inline">
                    <select class="custom-select mr-sm-2 mb-2 mb-sm-0">
                        <option selected="">대분류 전체</option>
                        <option value="1">분야</option>
                        <option value="2">분야</option>
                        <option value="3">분야</option>
                    </select>
                    <select class="custom-select mr-sm-2 mb-2 mb-sm-0">
                        <option selected="">중분류 전체</option>
                        <option value="1">분야</option>
                        <option value="2">분야</option>
                        <option value="3">분야</option>
                    </select>
                    <select class="custom-select mr-sm-2 mb-2 mb-sm-0">
                        <option selected="">소분류 전체</option>
                        <option value="1">분야</option>
                        <option value="2">분야</option>
                        <option value="3">분야</option>
                    </select>
                </div>
            </div>
            <div class="col-md-2 text-right justify-content-end">
                <label class="form-label text-muted"></label>
                <form class="form-inline my-6 my-lg-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="검색...">
                    <button type="button" class="btn icon-btn btn-outline-success"><span class="lnr lnr-magnifier"></span></button>
                </form>
            </div>
        </div>
    </div>

    <hr>

    <div class="card">
        <h6 class="card-header with-elements">
            <div class="card-header-title">실증장비 목록</div>
            <div class="card-header-elements ml-auto">
                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modals-souce-write">+ 실증장비 등록</button>

            </div>
        </h6>

        <div class="card-datatable table-responsive pt-0 pb-3">
            <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row p-3">
                    <div class="col-sm-12 col-md-12">
                        <label class="mr-3  mb-0">총 : <strong>12</strong>개</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <table id="tb_console_notice" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                            <thead class="bg-success">
                            <tr role="row">
                                <th class="text-center px-2" style="width:8%">No</th>
                                <th class="text-center px-2" style="width:10%">종류</th>
                                <th class="text-center px-2" style="width:40%">이름</th>
                                <th class="text-center px-2" style="width:10%">시험 이력</th>
                                <th class="text-center px-2" style="width:12%">등록일</th>
                                <th class="text-center px-2" style="width:10%">예약 현황</th>
                                <th class="text-center px-2" style="width:10%">사용자</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="">
                                <td class="text-center align-middle">1</td>
                                <td class="text-center align-middle">장비</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">구동기 시험장비</a></td>
                                <td class="text-center align-middle"><a href="#">보기</a></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">2</td>
                                <td class="text-center align-middle">장비</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">센서 연속 시험기</a></td>
                                <td class="text-center align-middle"><a href="#">보기</a></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">3</td>
                                <td class="text-center align-middle">장비</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">복합 진동 시험기</a></td>
                                <td class="text-center align-middle"><a href="#">보기</a></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">4</td>
                                <td class="text-center align-middle">장비</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">먼지 시험기</a></td>
                                <td class="text-center align-middle"><a href="#">보기</a></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">5</td>
                                <td class="text-center align-middle">장비</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">열충격 시험기</a></td>
                                <td class="text-center align-middle"><a href="#">보기</a></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">6</td>
                                <td class="text-center align-middle">장비</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">Walk-in 챔버</a></td>
                                <td class="text-center align-middle"><a href="#">보기</a></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">7</td>
                                <td class="text-center align-middle">장비</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">EC 센서 시험기</a></td>
                                <td class="text-center align-middle"><a href="#">보기</a></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">8</td>
                                <td class="text-center align-middle">장비</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">O2 센서 시험기</a></td>
                                <td class="text-center align-middle"><a href="#">보기</a></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">9</td>
                                <td class="text-center align-middle">장비</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">토양수분장력 센서 시험기</a></td>
                                <td class="text-center align-middle"><a href="#">보기</a></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">10</td>
                                <td class="text-center align-middle">장비</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">강우침수 시험기</a></td>
                                <td class="text-center align-middle"><a href="#">보기</a></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">11</td>
                                <td class="text-center align-middle">장비</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">양액 장치 유량 시험기</a></td>
                                <td class="text-center align-middle"><a href="#">보기</a></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">12</td>
                                <td class="text-center align-middle">장비</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">자동 급이 시험기</a></td>
                                <td class="text-center align-middle"><a href="#">보기</a></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                
            </div>
        </div>
    </div>

</div>
<!-- / Page content -->
