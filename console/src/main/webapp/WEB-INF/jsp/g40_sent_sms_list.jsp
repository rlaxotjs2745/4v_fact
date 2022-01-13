<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 10:44 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Page content -->
<%--<div class="layout-content">--%>
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>보낸 SMS</div>
        </h4>
        <div class="card">
            <h6 class="card-header with-elements">
                <div class="card-header-title">총 : 150건</div>
                <div class="card-header-elements ml-auto">
                    <a href="DCSS-1000.html" class="btn btn-success" >SMS 작성</a>
                </div>
            </h6>

            <div class="card-datatable table-responsive pt-0">
                <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead>
                                <tr role="row">
                                    <th class="text-center px-2" style="width:40px">No</th>
                                    <th class="text-center px-2" style="width:120px">보내는 번호</th>
                                    <th class="text-center px-2" style="width:120px">보낸시간</th>
                                    <th class="text-center px-2" style="width:80px">구분</th>
                                    <th class="text-center px-2" style="width:250px">수신자</th>
                                    <th class="text-center px-2" style="width:250px">제목</th>
                                    <th class="text-center px-2" style="width:300px">내용</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="">
                                    <td class="text-center">1</td>
                                    <td class="text-center">010-0000-0000</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">예약</td>
                                    <td class="text-center"><span class="text-truncate d-inline-block" style="width:200px;">김장군, 박장군, 010-000-0000</span></td>
                                    <td class="text-center">발신제목제목 제목제목 제목 제목제목 제목</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">2</td>
                                    <td class="text-center">010-0000-0000</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">예약</td>
                                    <td class="text-center"><span class="text-truncate d-inline-block" style="width:200px;">홍길동</span></td>
                                    <td class="text-center">발신제목제목 제목제목 제목 제목제목 제목</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">3</td>
                                    <td class="text-center">010-0000-0000</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">즉시</td>
                                    <td class="text-center"><span class="text-truncate d-inline-block" style="width:200px;">김장군, 박장군, 010-000-0000</span></td>
                                    <td class="text-center">발신제목제목 제목제목 제목 제목제목 제목</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">4</td>
                                    <td class="text-center">010-0000-0000</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">즉시</td>
                                    <td class="text-center"><span class="text-truncate d-inline-block" style="width:200px;">김장군, 박장군, 010-000-0000</span></td>
                                    <td class="text-center">발신제목제목 제목제목 제목 제목제목 제목</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">5</td>
                                    <td class="text-center">010-0000-0000</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">즉시</td>
                                    <td class="text-center"><span class="text-truncate d-inline-block" style="width:200px;">김장군, 박장군, 010-000-0000</span></td>
                                    <td class="text-center">발신제목제목 제목제목 제목 제목제목 제목</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. </span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">6</td>
                                    <td class="text-center">010-0000-0000</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">즉시</td>
                                    <td class="text-center"><span class="text-truncate d-inline-block" style="width:200px;">김장군, 박장군, 010-000-0000</span></td>
                                    <td class="text-center">발신제목제목 제목제목 제목 제목제목 제목</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. </span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">7</td>
                                    <td class="text-center">010-0000-0000</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">즉시</td>
                                    <td class="text-center"><span class="text-truncate d-inline-block" style="width:200px;">김장군, 박장군, 010-000-0000</span></td>
                                    <td class="text-center">발신제목제목 제목제목 제목 제목제목 제목</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. </span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">8</td>
                                    <td class="text-center">010-0000-0000</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">즉시</td>
                                    <td class="text-center"><span class="text-truncate d-inline-block" style="width:200px;">김장군, 박장군, 010-000-0000</span></td>
                                    <td class="text-center">발신제목제목 제목제목 제목 제목제목 제목</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. </span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">9</td>
                                    <td class="text-center">010-0000-0000</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">즉시</td>
                                    <td class="text-center"><span class="text-truncate d-inline-block" style="width:200px;">김장군, 박장군, 010-000-0000</span></td>
                                    <td class="text-center">발신제목제목 제목제목 제목 제목제목 제목</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. </span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">10</td>
                                    <td class="text-center">010-0000-0000</td>
                                    <td class="text-center">2021.00.00 00:00</td>
                                    <td class="text-center">즉시</td>
                                    <td class="text-center"><span class="text-truncate d-inline-block" style="width:200px;">김장군, 박장군, 010-000-0000</span></td>
                                    <td class="text-center">발신제목제목 제목제목 제목 제목제목 제목</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. </span></td>
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

        <div class="d-flex justify-content-end align-items-end w-100 mt-2">
            <a href="DCSS-1000.html" class="btn btn-primary" >SMS 작성</a>
        </div>


    </div>

    <!-- Layout footer -->
    <nav class="layout-footer footer bg-footer-theme">
        <div class="container-fluid d-flex flex-wrap justify-content-between text-center container-p-x pb-3">
            <div class="pt-3">
                <span class="footer-text font-weight-bolder">스마트팜 실증단지</span> ©
            </div>
            <div>
                <a href="javascript:void(0)" class="footer-link pt-3">About Us</a>
                <a href="javascript:void(0)" class="footer-link pt-3 ml-4">Help</a>
                <a href="javascript:void(0)" class="footer-link pt-3 ml-4">Contact</a>
                <a href="javascript:void(0)" class="footer-link pt-3 ml-4">Terms &amp; Conditions</a>
            </div>
        </div>
    </nav>
    <!-- / Layout footer -->

<!-- / Page content -->
