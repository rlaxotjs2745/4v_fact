<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 10:46 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">
    <h4 class="font-weight-bold py-3 mb-4">SMS 작성</h4>


    <div class="card px-4 pt-4 mb-4">
        <div class="form-row mb-4">
            <div class="col-md-10 ">
                <label class="form-label text-muted">공지사항 분류</label>
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
            <div class="card-header-title">공지사항 목록</div>
            <div class="card-header-elements ml-auto">
                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modals-souce-write">+ 공지사항 등록</button>

            </div>
        </h6>

        <div class="card-datatable table-responsive pt-0 pb-3">
            <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row p-3">
                    <div class="col-sm-12 col-md-12">
                        <label class="mr-3  mb-0">총 : <strong>999</strong>개</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <table id="tb_console_notice" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                            <thead class="bg-success">
                            <tr role="row">
                                <th class="text-center px-2" style="width:8%">No</th>
                                <th class="text-center px-2" style="width:10%">종류</th>
                                <th class="text-center px-2" style="width:40%">제목</th>
                                <th class="text-center px-2" style="width:10%">파일 첨부</th>
                                <th class="text-center px-2" style="width:12%">등록일</th>
                                <th class="text-center px-2" style="width:10%">조회수</th>
                                <th class="text-center px-2" style="width:10%">담당자</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="">
                                <td class="text-center align-middle">1</td>
                                <td class="text-center align-middle">중요</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">새로 오픈되었어요 1</a></td>
                                <td class="text-center align-middle"><span class="fas fa-file-powerpoint"/>  <span class="fas fa-file-pdf"/></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">2</td>
                                <td class="text-center align-middle">중요</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">새로 오픈되었어요 2</a></td>
                                <td class="text-center align-middle"><span class="fas fa-file-powerpoint"/>  <span class="fas fa-file-pdf"/></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">3</td>
                                <td class="text-center align-middle"></td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">새로 오픈되었어요 3</a></td>
                                <td class="text-center align-middle"><span class="fas fa-file-powerpoint"/>  <span class="fas fa-file-pdf"/></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">4</td>
                                <td class="text-center align-middle">업체별</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">새로 오픈되었어요 4</a></td>
                                <td class="text-center align-middle"><span class="fas fa-file-powerpoint"/>  <span class="fas fa-file-pdf"/></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">5</td>
                                <td class="text-center align-middle"></td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">새로 오픈되었어요 5</a></td>
                                <td class="text-center align-middle"><span class="fas fa-file-powerpoint"/>  <span class="fas fa-file-pdf"/></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">6</td>
                                <td class="text-center align-middle">업체별</td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">새로 오픈되었어요 6</a></td>
                                <td class="text-center align-middle"><span class="fas fa-file-powerpoint"/>  <span class="fas fa-file-pdf"/></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">7</td>
                                <td class="text-center align-middle"></td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">새로 오픈되었어요 7</a></td>
                                <td class="text-center align-middle"><span class="fas fa-file-powerpoint"/>  <span class="fas fa-file-pdf"/></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">8</td>
                                <td class="text-center align-middle"></td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">새로 오픈되었어요 8</a></td>
                                <td class="text-center align-middle"><span class="fas fa-file-powerpoint"/>  <span class="fas fa-file-pdf"/></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">9</td>
                                <td class="text-center align-middle"></td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">새로 오픈되었어요 9</a></td>
                                <td class="text-center align-middle"><span class="fas fa-file-powerpoint"/>  <span class="fas fa-file-pdf"/></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">10</td>
                                <td class="text-center align-middle"></td>
                                <td class="text-center"><a href="#none" data-toggle="modal" data-target="#modals-console-notice-detail" data-what="mode-view">새로 오픈되었어요 10</a></td>
                                <td class="text-center align-middle"><span class="fas fa-file-powerpoint"/>  <span class="fas fa-file-pdf"/></td>
                                <td class="text-center">2021-12-11 12:20:20</td>
                                <td class="text-center">01</td>
                                <td class="text-center">admin</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-5">
                        <div class="dataTables_info" id="" role="status" aria-live="polite">Showing 1 to 10 of 50 entries</div>
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
    <div class="modal fade" id="modals-console-notice-detail">
        <div class="modal-dialog modal-lg">
            <form class="modal-content">
                <div class="modal-header bg-success">
                    <h5 class="modal-title">공지사항 내용</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body pb-2">

                    <div class="form-row">
                        <div class="form-group col col-md-6">
                            <label class="form-label d-block text-muted">일련번호</label>
                            <input type="text" class="form-control w-lg-auto" value="제20XXX-XXXX호">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">공지사항 분류</label>
                            <div class="form-inline">
                                <select class="custom-select mr-sm-2 mb-2 mb-sm-0">
                                    <option selected="">공지사항 종류</option>
                                    <option value="1">분야</option>
                                    <option value="2">분야</option>
                                    <option value="3">분야</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">제목</label>
                            <input type="text" class="form-control" value="공지사항 제목...">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">내용</label>
                            <textarea class="form-control" rows="10" placeholder=""></textarea>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">메모</label>
                            <textarea class="form-control" rows="3" placeholder="메모는 고객에게 노출이 되지 않으며 관리자만 볼 수 있습니다."></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-primary">닫기</button>
                </div>
            </form>
        </div>
    </div>
    <!-- Modal template -->
    <div class="modal fade" id="modals-souce-write">
        <div class="modal-dialog modal-lg">
            <form class="modal-content">
                <div class="modal-header bg-success">
                    <h5 class="modal-title">공지사항 등록</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body pb-2">

                    <div class="form-row">
                        <div class="form-group col col-md-6">
                            <label class="form-label d-block text-muted">일련번호</label>
                            <input type="text" class="form-control w-lg-auto" value="제20XXX-XXXX호">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">공지사항 분류 분류</label>
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
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12 mb-0">
                            <label class="form-label d-block text-muted">파일 등록</label>

                            <div class="media align-items-center">
                                <img src="assets/img/bg/1.jpg" alt="" class="d-block ui-w-140">
                                <div class="media-body ml-4">
                                    <div class="text-light small mt-1">- 파일을 등록해주세요.<br>
                                        - 파일 형식 :PDF, HWP, JPG, PNG</div>
                                </div>
                            </div>
                            <div class="d-block mt-1">
                                <input type="file" class="custom-file">
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">제목</label>
                            <input type="text" class="form-control" value="XXXXXXXX">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">내용</label>
                            <textarea class="form-control" rows="10" placeholder="메모는 고객에게 노출이 되지 않으며 관리자만 볼 수 있습니다."></textarea>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12">
                            <label class="form-label d-block text-muted">메모</label>
                            <textarea class="form-control" rows="3" placeholder="메모는 고객에게 노출이 되지 않으며 관리자만 볼 수 있습니다."></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                    <button type="button" class="btn btn-primary">저장</button>
                </div>
            </form>
        </div>
    </div>

    <div class="modal fade" id="modals-notice-detail">
        <div class="modal-dialog ">
            <form class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">공지사항</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body pb-2">
                    <div class="form-row">
                        <div class="form-group col col-md-12 ">
                            <label class="form-label d-block text-muted">파일등록</label>
                            <input type="file" class="custom-file">
                            <small class="text-muted">정보를 입력한 템플릿 XLS 파일을 등록하세요.</small>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col col-md-12 ">
                            <label class="form-label d-block text-muted">사진 등록</label>
                            <input type="file" class="custom-file">
                            <small class="text-muted">템플릿에 기입한 사진 파일명과 같은 사진 파일을 선택하세요. </small>
                        </div>
                    </div>

                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                    <button type="button" class="btn btn-primary">저장</button>
                </div>
            </form>
        </div>
    </div>

</div>
<!-- / Page content -->
