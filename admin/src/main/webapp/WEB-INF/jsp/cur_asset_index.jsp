<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2022/06/22
  Time: 5:55 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h6 class="card-header with-elements">
    <div class="card-header-title">자산 목록</div>
    <div class="card-header-elements ml-auto">
        <a href="#none" class="btn btn-outline-primary" data-toggle="modal" data-target="#modals-souce-upload">XLS
            일괄등록</a>
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modals-souce-write">+ 자원등록
        </button>

    </div>
</h6>

<div class="card-datatable table-responsive pt-0 pb-3">
    <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
        <div class="row p-3">
            <div class="col-sm-12 col-md-12">
                <label class="mr-3  mb-0">총 : <strong>999</strong>개</label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid"
                       aria-describedby="article-list_info" style="">
                    <thead>
                    <tr role="row">
                        <th class="text-center px-2" style="width:120px">대분류</th>
                        <th class="text-center px-2" style="width:120px">중분류</th>
                        <th class="text-center px-2" style="width:120px">세분류</th>
                        <th class="text-center px-2" style="width:60px">총 수량</th>
                        <th class="text-center px-2" style="width:60px">수량</th>
                        <th class="text-center px-2" style="width:80px">사용중</th>
                        <th class="text-center px-2" style="width:80px">예약현황</th>
                        <th class="text-center px-2" style="width:80px">브랜드</th>
                        <th class="text-center px-2" style="width:80px">모델명</th>
                        <th class="text-center px-2" style="width:80px">대표용도</th>
                        <th class="text-center px-2" style="width:80px">담당자</th>
                        <th class="text-center px-2" style="width:80px">위치</th>
                        <th class="text-center px-2" style="width:80px">메모</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="">
                        <td class="text-center align-middle" rowspan="2">지원시설-임대가능</td>
                        <td class="text-center align-middle" rowspan="2">R&D 연구실</td>
                        <td class="text-center align-middle" rowspan="2">XXXXXXXXXXXXX</td>
                        <td class="text-center align-middle" rowspan="2">00</td>
                        <td class="text-center">00</td>
                        <td class="text-center">00</td>
                        <td class="text-center">가능(0)</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center"><span class="text-truncate d-inline-block" style="width:100px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span>
                        </td>
                    </tr>
                    <tr class="">
                        <td class="text-center">00</td>
                        <td class="text-center">00</td>
                        <td class="text-center">사용중</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center"><span class="text-truncate d-inline-block" style="width:100px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span>
                        </td>
                    </tr>
                    <tr class="">
                        <td class="text-center align-middle" rowspan="2">지원시설-임대가능</td>
                        <td class="text-center align-middle" rowspan="2">R&D 연구실</td>
                        <td class="text-center align-middle" rowspan="2">XXXXXXXXXXXXX</td>
                        <td class="text-center align-middle" rowspan="2">00</td>
                        <td class="text-center">00</td>
                        <td class="text-center">00</td>
                        <td class="text-center">불가</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center"><span class="text-truncate d-inline-block" style="width:100px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span>
                        </td>
                    </tr>
                    <tr class="">
                        <td class="text-center">00</td>
                        <td class="text-center">00</td>
                        <td class="text-center">가능(0)</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                    </tr>
                    <tr class="">
                        <td class="text-center" rowspan="2">지원시설-임대가능</td>
                        <td class="text-center" rowspan="2">R&D 연구실</td>
                        <td class="text-center" rowspan="2">XXXXXXXXXXXXX</td>
                        <td class="text-center" rowspan="2">00</td>
                        <td class="text-center">00</td>
                        <td class="text-center">00</td>
                        <td class="text-center">가능(0)</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center"><span class="text-truncate d-inline-block" style="width:100px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span>
                        </td>
                    </tr>
                    <tr class="">
                        <td class="text-center">00</td>
                        <td class="text-center">00</td>
                        <td class="text-center">가능(0)</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center"><span class="text-truncate d-inline-block" style="width:100px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span>
                        </td>
                    </tr>
                    <tr class="">
                        <td class="text-center" rowspan="2">지원시설-임대가능</td>
                        <td class="text-center" rowspan="2">R&D 연구실</td>
                        <td class="text-center" rowspan="2">XXXXXXXXXXXXX</td>
                        <td class="text-center" rowspan="2">00</td>
                        <td class="text-center">00</td>
                        <td class="text-center">00</td>
                        <td class="text-center">가능(0)</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center"><span class="text-truncate d-inline-block" style="width:100px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span>
                        </td>
                    </tr>
                    <tr class="">
                        <td class="text-center">00</td>
                        <td class="text-center">00</td>
                        <td class="text-center">가능(0)</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center">XXXXXXX</td>
                        <td class="text-center"><span class="text-truncate d-inline-block" style="width:100px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span>
                        </td>
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
                        <li class="paginate_button page-item previous disabled" id="article-list_previous"><a href="#"
                                                                                                              aria-controls="article-list"
                                                                                                              data-dt-idx="0"
                                                                                                              tabindex="0"
                                                                                                              class="page-link"><i
                                class="fas fa-angle-double-left d-block"></i></a></li>
                        <li class="paginate_button page-item active"><a href="#" aria-controls="article-list"
                                                                        data-dt-idx="1" tabindex="0"
                                                                        class="page-link">1</a></li>
                        <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="2"
                                                                  tabindex="0" class="page-link">2</a></li>
                        <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="3"
                                                                  tabindex="0" class="page-link">3</a></li>
                        <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="4"
                                                                  tabindex="0" class="page-link">4</a></li>
                        <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="5"
                                                                  tabindex="0" class="page-link">5</a></li>
                        <li class="paginate_button page-item next" id="article-list_next"><a href="#"
                                                                                             aria-controls="article-list"
                                                                                             data-dt-idx="6"
                                                                                             tabindex="0"
                                                                                             class="page-link"><i
                                class="fas fa-angle-double-right d-block"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
