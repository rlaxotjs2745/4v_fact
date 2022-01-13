<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/29
  Time: 1:54 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Page content -->
<%--<div class="layout-content">--%>
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>1:1 문의</div>
        </h4>

        <div class="card px-4 pt-4 mb-4">
            <div class="form-row mb-4">
                <div class="col-md-2 ">
                    <label class="form-label text-muted">상담 접수</label>
                    <div class="form-inline">
                        <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio" checked="">전체
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio"> 신규
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio"> 해결
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 ">
                    <label class="form-label text-muted">접수일</label>
                    <div class="form-inline">
                        <div class="btn-group btn-group-sm btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio" checked="">오늘
                            </label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="btn-radio"> 1주일
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio"> 1개월
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio"> 3개월
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio"> 6개월
                            </label>
                            <label class="btn btn-secondary ">
                                <input type="radio" name="btn-radio"> 1년이상
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 text-right">
                    <label class="form-label d-none d-md-block">&nbsp;</label>
                    <button type="button" class="btn btn-outline-default">초기화</button>
                    <button type="button" class="btn btn-success">조회</button>
                </div>
            </div>
        </div>

        <div class="card">
            <h6 class="card-header with-elements">
                <div class="card-header-title">접수 목록</div>
            </h6>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row p-3">
                        <div class="col-sm-12 col-md-12">
                            <label class="mr-3  mb-0">총 : <strong>999</strong>건</label><label class="mr-3  mb-0">신규 : <strong>70</strong>건</label><label class="mr-3  mb-0">추가 : <strong>70</strong>건</label><label class="mr-3  mb-0">해결 : <strong>70</strong>건</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead>
                                <tr role="row">
                                    <th class="text-center px-2" style="width:60px">No</th>
                                    <th class="text-center sorting" style="width:80px">상담일지</th>
                                    <th class="text-center sorting" style="width:80px">신청자</th>
                                    <th class="text-center sorting" style="width:80px">ID</th>
                                    <th class="text-center sorting" style="width:200px">소속</th>
                                    <th class="text-center px-2" style="width:60px">접수</th>
                                    <th class="text-center px-2" style="width:80px">수신일</th>
                                    <th class="text-center px-2" style="width:80px">문의수</th>
                                    <th class="text-center px-2" style="width:150px">마지막 상담일</th>
                                    <th class="text-center px-2" style="width:200px">마지막 상담일</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="">
                                    <td class="text-center">1</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm"  data-toggle="modal" data-target="#modals-counsel-write">등록하기</a></td>
                                    <td class="text-center">홍길동</td>
                                    <td class="text-center">XXXXXX</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">추가</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">1회</td>
                                    <td class="text-center">2021.00.00 (0일전)</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">파일첨부, Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">2</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">등록완료</a></td>
                                    <td class="text-center">홍길동</td>
                                    <td class="text-center">XXXXXX</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">추가</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">1회</td>
                                    <td class="text-center">2021.00.00 (0일전)</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">3</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">등록하기</a></td>
                                    <td class="text-center">홍길동</td>
                                    <td class="text-center">XXXXXX</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">추가</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">1회</td>
                                    <td class="text-center">2021.00.00 (0일전)</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                                </tr>
                                </tr>
                                <tr class="">
                                    <td class="text-center">4</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">등록하기</a></td>
                                    <td class="text-center">홍길동</td>
                                    <td class="text-center">XXXXXX</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">추가</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">1회</td>
                                    <td class="text-center">2021.00.00 (0일전)</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">5</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">등록하기</a></td>
                                    <td class="text-center">홍길동</td>
                                    <td class="text-center">XXXXXX</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">추가</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">1회</td>
                                    <td class="text-center">2021.00.00 (0일전)</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">6</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">등록하기</a></td>
                                    <td class="text-center">홍길동</td>
                                    <td class="text-center">XXXXXX</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">추가</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">1회</td>
                                    <td class="text-center">2021.00.00 (0일전)</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">7</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">등록하기</a></td>
                                    <td class="text-center">홍길동</td>
                                    <td class="text-center">XXXXXX</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">추가</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">1회</td>
                                    <td class="text-center">2021.00.00 (0일전)</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">8</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">등록하기</a></td>
                                    <td class="text-center">홍길동</td>
                                    <td class="text-center">XXXXXX</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">추가</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">1회</td>
                                    <td class="text-center">2021.00.00 (0일전)</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">9</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">등록하기</a></td>
                                    <td class="text-center">홍길동</td>
                                    <td class="text-center">XXXXXX</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">추가</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">1회</td>
                                    <td class="text-center">2021.00.00 (0일전)</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
                                </tr>
                                <tr class="">
                                    <td class="text-center">10</td>
                                    <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">등록하기</a></td>
                                    <td class="text-center">홍길동</td>
                                    <td class="text-center">XXXXXX</td>
                                    <td class="text-center">맛있는 농부</td>
                                    <td class="text-center">추가</td>
                                    <td class="text-center">2021.00.00</td>
                                    <td class="text-center">1회</td>
                                    <td class="text-center">2021.00.00 (0일전)</td>
                                    <td class=""><span class="text-truncate d-inline-block" style="width:300px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></td>
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

        <!-- Modal template -->
        <div class="modal fade" id="modals-counsel-write">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">상담내용 입력</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12 text-right">
                                <a href="#none" class="btn btn-underline"  data-toggle="modal" data-target="#modals-counsel-history">상담 이력</a>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">신청자</label>
                                <span>김홍삼</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">소속</label>
                                <span>맛있는 농부</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">ID</label>
                                <span>000-00-00000</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">연락처</label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">상담 구분</label>
                                <span>사전 상담</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">상담 접수</label>
                                <span>신규</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">수신일</label>
                                <span>2021.00.00</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">제목</label>
                                <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">내용</label>
                                <span>
                          Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                          Aliquam amet animi consequatur dicta dignissimos eius est odit recusandae?
                          Accusantium consequuntur dignissimos iusto magnam provident, ratione reiciendis
                          repellat. Aut, doloribus, enim.
                        </span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12 mb-0">
                                <label class="form-label d-block text-muted">첨부파일</label>
                                <div class="d-block mb-1">
                                    <span>XXXXXXXX.jpg</span><a href="#none" class="btn btn-outline-default ml-2"><i class="lnr lnr-download"></i> 내려받기</a>
                                </div>
                                <div class="d-block mb-1">
                                    <span>XXXXXXXXXXXX.jpg</span><a href="#none" class="btn btn-outline-default ml-2"><i class="lnr lnr-download"></i> 내려받기</a>
                                </div>
                                <div class="d-block mb-1">
                                    <span>XXXXXXXXXXXX.jpg</span><a href="#none" class="btn btn-outline-default ml-2"><i class="lnr lnr-download"></i> 내려받기</a>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">회신 상담사</label>
                                <span>홍철이</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-12">
                                <label class="form-label d-block text-muted">회신 내용</label>
                                <!--에디터 : S-->
                                <div style="width:100%; padding:130px 0;background:#ccc;">에디터영역</div>
                                <!--에디터 : E-->
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <div>
                            <button type="button" class="btn btn-outline-primary">임시저장</button>
                            <button type="button" class="btn btn-primary">보내기</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div class="modal fade" id="modals-counsel-history">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">상담 이력</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body pb-2">

                        <div class="form-row">
                            <div class="form-group col col-md-12 text-right">
                                <a href="#none" class="btn btn-underline">상담 이력</a>
                            </div>
                        </div>
                        <hr class="mt-0">
                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">신청자</label>
                                <span>김홍삼</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">소속</label>
                                <span>맛있는 농부</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">ID</label>
                                <span>000-00-00000</span>
                            </div>
                            <div class="form-group col col-md-4">
                                <label class="form-label d-block text-muted">연락처</label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>
                        <hr class="mt-0">

                        <div id="ac2">
                            <div class="card mb-2">

                                <div class="card-header">
                                    <a class="d-flex justify-content-between text-body" data-toggle="collapse" aria-expanded="true" href="#ac2-1">
                                        <span class="pr-2">신규 해결 YYYY.DD.MM</span>
                                        <div class="collapse-icon"></div>
                                    </a>
                                </div>

                                <div id="ac2-1" class="collapse show" data-parent="#ac2" style="">
                                    <div class="card-body">
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 구분</label>
                                                <span>사전 상담</span>
                                            </div>
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 접수</label>
                                                <span>신규</span>
                                            </div>
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">신청 목적</label>
                                                <span>이용 신청서 작성</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">수신일</label>
                                                <span>2021.00.00</span>
                                            </div>
                                            <div class="form-group col col-md-8">
                                                <label class="form-label d-block text-muted">요청일/변경일</label>
                                                <span>2021.00.00 HH:MM / 2021.00.00 HH:MM</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 방법</label>
                                                <span>방문 상담</span>
                                            </div>
                                            <div class="form-group col col-md-8">
                                                <label class="form-label d-block text-muted">상담일</label>
                                                <span>2021.00.00</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-12">
                                                <label class="form-label d-block text-muted">방문상담</label>
                                                <span>
                                  Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                  Aliquam amet animi consequatur dicta dignissimos eius est odit recusandae?
                                  Accusantium consequuntur dignissimos iusto magnam provident, ratione reiciendis
                                  repellat. Aut, doloribus, enim.
                                </span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-12 mb-0">
                                                <label class="form-label d-block text-muted">상담일지</label>
                                                <span>XXXXXXXX.hwp</span><a href="#none" class="btn btn-outline-default ml-2"><i class="lnr lnr-download"></i> 내려받기</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card mb-2">
                                <div class="card-header">
                                    <a class="d-flex justify-content-between text-body collapsed" data-toggle="collapse" href="#ac2-2" aria-expanded="false">
                                        <span class="pr-2">신규 해결 YYYY.DD.MM</span>
                                        <div class="collapse-icon"></div>
                                    </a>
                                </div>
                                <div id="ac2-2" class="collapse" data-parent="#ac2" style="">
                                    <div class="card-body">
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 구분</label>
                                                <span>사전 상담</span>
                                            </div>
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 접수</label>
                                                <span>신규</span>
                                            </div>
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">신청 목적</label>
                                                <span>이용 신청서 작성</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">수신일</label>
                                                <span>2021.00.00</span>
                                            </div>
                                            <div class="form-group col col-md-8">
                                                <label class="form-label d-block text-muted">요청일/변경일</label>
                                                <span>2021.00.00 HH:MM / 2021.00.00 HH:MM</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 방법</label>
                                                <span>방문 상담</span>
                                            </div>
                                            <div class="form-group col col-md-8">
                                                <label class="form-label d-block text-muted">상담일</label>
                                                <span>2021.00.00</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-12">
                                                <label class="form-label d-block text-muted">방문상담</label>
                                                <span>
                                  Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                  Aliquam amet animi consequatur dicta dignissimos eius est odit recusandae?
                                  Accusantium consequuntur dignissimos iusto magnam provident, ratione reiciendis
                                  repellat. Aut, doloribus, enim.
                                </span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-12 mb-0">
                                                <label class="form-label d-block text-muted">상담일지</label>
                                                <span>XXXXXXXX.hwp</span><a href="#none" class="btn btn-outline-default ml-2"><i class="lnr lnr-download"></i> 내려받기</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card mb-2">
                                <div class="card-header">
                                    <a class="collapsed d-flex justify-content-between text-body" data-toggle="collapse" href="#ac2-3">
                                        <span class="pr-2">신규 해결 YYYY.DD.MM</span>
                                        <div class="collapse-icon"></div>
                                    </a>
                                </div>
                                <div id="ac2-3" class="collapse" data-parent="#ac2">
                                    <div class="card-body">
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 구분</label>
                                                <span>사전 상담</span>
                                            </div>
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 접수</label>
                                                <span>신규</span>
                                            </div>
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">신청 목적</label>
                                                <span>이용 신청서 작성</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">수신일</label>
                                                <span>2021.00.00</span>
                                            </div>
                                            <div class="form-group col col-md-8">
                                                <label class="form-label d-block text-muted">요청일/변경일</label>
                                                <span>2021.00.00 HH:MM / 2021.00.00 HH:MM</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-4">
                                                <label class="form-label d-block text-muted">상담 방법</label>
                                                <span>방문 상담</span>
                                            </div>
                                            <div class="form-group col col-md-8">
                                                <label class="form-label d-block text-muted">상담일</label>
                                                <span>2021.00.00</span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-12">
                                                <label class="form-label d-block text-muted">방문상담</label>
                                                <span>
                                  Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                  Aliquam amet animi consequatur dicta dignissimos eius est odit recusandae?
                                  Accusantium consequuntur dignissimos iusto magnam provident, ratione reiciendis
                                  repellat. Aut, doloribus, enim.
                                </span>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col col-md-12 mb-0">
                                                <label class="form-label d-block text-muted">상담일지</label>
                                                <span>XXXXXXXX.hwp</span><a href="#none" class="btn btn-outline-default ml-2"><i class="lnr lnr-download"></i> 내려받기</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                    </div>
                </form>
            </div>
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
