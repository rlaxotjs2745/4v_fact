<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/29
  Time: 1:09 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- Page content -->

    <!-- Content -->
    <div class="container-fluid flex-grow-1 container-p-y">
        <div class="row">
            <div class="col-md-8 col-lg-8 col-xl-8">
                <div class="card mb-4" style="min-height: 550px">
                    <h6 class="card-header with-elements">
                        <div class="card-header-title">실증단지 이용현황</div>

                        <div class="card-header-elements ml-auto">
                            <div class="form-group">
                                <label class="switcher">
                                    <input name="temperature" type="checkbox" class="switcher-input is-valid" checked>
                                    <span class="switcher-indicator">
                                      <span class="switcher-yes"></span>
                                      <span class="switcher-no"></span>
                                    </span>
                                    <span class="switcher-label">온도</span>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="switcher">
                                    <input name="humidity" type="checkbox" class="switcher-input is-valid" checked>
                                    <span class="switcher-indicator">
                                      <span class="switcher-yes"></span>
                                      <span class="switcher-no"></span>
                                    </span>
                                    <span class="switcher-label">습도</span>
                                </label>
                            </div>
                            <%--<div class="form-group">
                                <label class="switcher">
                                    <input type="checkbox" class="switcher-input is-valid" checked>
                                    <span class="switcher-indicator">
                                      <span class="switcher-yes"></span>
                                      <span class="switcher-no"></span>
                                    </span>
                                    <span class="switcher-label">Valid</span>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="switcher">
                                    <input type="checkbox" class="switcher-input is-valid" checked>
                                    <span class="switcher-indicator">
                                      <span class="switcher-yes"></span>
                                      <span class="switcher-no"></span>
                                    </span>
                                    <span class="switcher-label">Valid</span>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="switcher">
                                    <input type="checkbox" class="switcher-input is-valid" checked>
                                    <span class="switcher-indicator">
                                      <span class="switcher-yes"></span>
                                      <span class="switcher-no"></span>
                                    </span>
                                    <span class="switcher-label">Valid</span>
                                </label>
                            </div>--%>
                            <button onclick="pageLoad('gh_total_monitor',{page_num:1},'온실전채 현황');" type="button" class="btn btn-default btn-xs md-btn-flat">Show more</button>
                        </div>

                    </h6>
                    <div class="card-datatable table-responsive pt-0 pb-3">
                        <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">
                            <div class="row">
                                <div class="col-sm-12">
                                    <table style="width: 100%;">
                                        <tr role="row">
                                            <th style="width:0%"></th>
                                            <th style="width:14%"></th>
                                            <th style="width:14%"></th>
                                            <th style="width:14%"></th>
                                            <th style="width:14%"></th>
                                            <th style="width:14%"></th>
                                            <th style="width:14%"></th>
                                            <th style="width:14%"></th>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td colspan="2" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 8rem;">
                                                    <div id="flot-graph1" class="card-img" style="height: 8rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 1</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>

                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="3" rowspan="2">

                                            </td>
                                            <td colspan="2" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-info"  style="min-height: 8rem;">
                                                    <div id="flot-graph2" class="card-img" style="height: 8rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 2</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td colspan="2" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-secondary" style="min-height: 8rem;">
                                                    <div id="flot-graph3" class="card-img" style="height: 8rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 3</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="3" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 8rem;">
                                                    <div id="flot-graph4" class="card-img" style="height: 8rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 4</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="2" rowspan="3">
                                                <div class="card shadow-none bg-transparent border-info"  style="min-height: 12.5rem;">
                                                    <div id="flot-graph5" class="card-img" style="height: 12.5rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 5</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td colspan="2" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-secondary"  style="min-height: 8rem;">
                                                    <div id="flot-graph6" class="card-img" style="height: 8rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 6</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="3" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-info"  style="min-height: 8rem;">
                                                    <div id="flot-graph7" class="card-img" style="height: 8rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 7</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td colspan="2" rowspan="3">
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 12.5rem;">
                                                    <div id="flot-graph8" class="card-img" style="height: 12.5rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 8</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td colspan="2" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-secondary" style="min-height: 8.8rem;">
                                                    <div id="flot-graph9" class="card-img" style="height: 8.8rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 9</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="3">
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 4rem;">
                                                    <div id="flot-graph10" class="card-img" style="height: 4rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 10</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td colspan="3">
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 4rem;">
                                                    <div id="flot-graph11" class="card-img" style="height: 4rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 11</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td >
                                                <div class="card shadow-none bg-transparent border-secondary" style="min-height: 4rem;">
                                                    <div id="flot-graph12" class="card-img" style="height: 4rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 12</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>

                                            <td rowspan="2">
                                                <div class="card shadow-none bg-transparent border-secondary" style="min-height: 8.9rem;">
                                                    <div id="flot-graph13" class="card-img" style="height: 8.9rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 13</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 4rem;">
                                                    <div id="flot-graph14" class="card-img" style="height: 4rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 14</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 4rem;">
                                                    <div id="flot-graph15" class="card-img" style="height: 4rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 15</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td rowspan="2">
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 8.9rem;">
                                                    <div id="flot-graph16" class="card-img" style="height: 8.9rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 16</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="2">
                                                <div class="card shadow-none bg-transparent border-dark" style="min-height: 4rem;">
                                                    <div class="card-body" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-muted card-text" style="margin-bottom: 0.2rem;">플랜트</H5>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <div class="card shadow-none bg-transparent border-secondary" style="min-height: 4rem;">
                                                    <div id="flot-graph17" class="card-img" style="height: 4rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 17</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 4rem;">
                                                    <div id="flot-graph18" class="card-img" style="height: 4rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 18</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 4rem;">
                                                    <div id="flot-graph19" class="card-img" style="height: 4rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-secondary card-text" style="margin-bottom: 0.2rem;">농가의 뜰아래 19</H5>
                                                            <div class="ml-md-auto">
                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>
                                                            </div>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="2">
                                                <div class="card shadow-none bg-transparent border-dark" style="min-height: 4rem;">
                                                    <div class="card-body" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <H5 class="text-muted card-text" style="margin-bottom: 0.2rem;">농기계 전시</H5>
                                                        </div>
                                                        <p class="card-text" style="margin-bottom: 0.2rem;">사과</p>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-lg-4 col-xl-4">
                <h6 class="card-header with-elements">
                    <div class="card-header-title">운영 현황</div>

                    <div class="card-header-elements ml-auto">
                        <button type="button" class="btn btn-default btn-xs md-btn-flat">Show more</button>
                    </div>

                </h6>
                <div class="table-responsive table-sm card-table">

                    <table id="" class="table table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                        <thead>
                            <tr role="row" class="bg-success">
                                <th class="text-center px-2" style="width:10%">번호</th>
                                <th class="text-center px-2" style="width:40%">실증업체</th>
                                <th class="text-center px-2" style="width:30%">실증 위치</th>
                                <th class="text-center px-2" style="width:15%">실증 형태</th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr class="">
                                <td class="text-center">1</td>
                                <td class="text-center">태화농장</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">2</td>
                                <td class="text-center">정육당</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">3</td>
                                <td class="text-center">선화</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">4</td>
                                <td class="text-center">한농팜</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">5</td>
                                <td class="text-center">자연농원</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">6</td>
                                <td class="text-center">김천농협</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">7</td>
                                <td class="text-center">서린상사</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">8</td>
                                <td class="text-center">식품농장</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">9</td>
                                <td class="text-center">야채야</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">10</td>
                                <td class="text-center">하늘아래</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">11</td>
                                <td class="text-center">뜰농원</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">12</td>
                                <td class="text-center">정식당</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">13</td>
                                <td class="text-center">숲의향기</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">8</td>
                                <td class="text-center">농부팜</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">14</td>
                                <td class="text-center">스마트코리아</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">15</td>
                                <td class="text-center">착한가게</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">16</td>
                                <td class="text-center">엘마리온</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">17</td>
                                <td class="text-center">서유통상</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">18</td>
                                <td class="text-center">신난식품</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">19</td>
                                <td class="text-center">농가도생</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">20</td>
                                <td class="text-center">치리오</td>
                                <td class="text-center">육묘장(유리)</td>
                                <td class="text-center">자율</td>
                            </tr>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-2 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body" style="padding: 0.5rem;">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><i class="fas fa-thermometer-half"></i></div>
                            <div class="ml-3">
                                <div class="text-muted small">온도</div>
                                <div class="text-large float-right"><c:if test="${exEnvs.size() >0}">${exEnvs[0].xouttemp}</c:if></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body" style="padding: 0.5rem;">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><i class="fas fa-tint"></i></div>
                            <div class="ml-3">
                                <div class="text-muted small">강우</div>
                                <div class="text-large float-right"><c:if test="${exEnvs.size() >0}">${exEnvs[0].xrain}</c:if></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body" style="padding: 0.5rem;">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><i class="fas fa-sun"></i></div>
                            <div class="ml-3">
                                <div class="text-muted small">광량</div>
                                <div class="text-large float-right">42</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body" style="padding: 0.5rem;">
                        <div class="d-flex align-items-center">
                            <div class="display-4">CO²</div>
                            <div class="ml-3">
                                <div class="text-muted small">CO²</div>
                                <div class="text-large float-right">42</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body" style="padding: 0.5rem;">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><i class="fas fa-water"></i></div>
                            <div class="ml-3">
                                <div class="text-muted small">토양수분</div>
                                <div class="text-large float-right"><c:if test="${rootEnvs.size() >0}">${rootEnvs[0].xgndhum}</c:if></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-2 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body" style="padding: 0.5rem;">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><i class="fas fa-thermometer-quarter"></i></div>
                            <div class="ml-3">
                                <div class="text-muted small">지온</div>
                                <div class="text-large float-right">42</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="row">
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">시설자재</div>
                            <div class="text-large">34</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">ICT 실증장비</div>
                            <div class="text-large">18</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">작물보호제/비료</div>
                            <div class="text-large">32</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">스마트팜SW</div>
                            <div class="text-large">4</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">생육모델</div>
                            <div class="text-large">43</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">로봇</div>
                            <div class="text-large">23</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- / Content -->
<script>

    function plotAccordingToChoices(){
<c:forEach var="k"  varStatus="status" begin="1" end="23">
        <c:if test="${fn:length(internalEnvVOs_L[k-1])>0}">
        datasets${k}= {
            "temperature": {
                label: "온도",
                data: [<c:forEach var="i"  varStatus="status" begin="0" end="${fn:length(internalEnvVOs_L[k-1])-1}">
                    [ ${i+1}, ${internalEnvVOs_L[k-1][i].xintemp1} ] <c:if test="${i<fn:length(internalEnvVOs_L[k-1])-1}">, </c:if>
                    </c:forEach>]
            },
            "humidity": {
                label: "습도",
                data: [<c:forEach var="i"  varStatus="status" begin="0" end="${fn:length(internalEnvVOs_L[k-1])-1}">
                    [ ${i+1}, ${internalEnvVOs_L[k-1][i].xinhum1} ] <c:if test="${i<fn:length(internalEnvVOs_L[k-1])-1}">,</c:if>
                    </c:forEach>]
            },
        };



        var data${k}= [];
        $(".switcher-input:checked").each(function () {
            var key = $(this).attr("name");
            if (key && datasets${k}[key]) {
                data${k}.push(datasets${k}[key]);
            }
        });

        if (data${k}.length > 0) {


                var isDark = true;
                var gridColor = isDark ? '#383b40' : '#aaaaaa';
                var gridBorder = isDark ? '#383b40' : '#eeeeee';
                var tickFill = isDark ? '#383b40' : '#f5f5f5';
                var transparent = isDark ? '#00000000' : '#00000000';

                $.plot("#flot-graph${k}", data${k}, {
                    series: {
                        lines: {
                            show: true,
                            lineWidth: 1,
                            fillColor: tickFill
                        }
                    },

                    /*grid: {
                        color: gridColor,
                        borderColor: gridBorder,
                        borderWidth: 1,
                        hoverable: true,
                        clickable: false
                    },
                    xaxis: {
                        color: gridBorder,
                        mode: "time",
                        timeBase: "milliseconds",
                        timeformat: "%m/%d"
                    },*/
                    yaxis: { show:false, showTickLabels: 'none',range: [-20, 70] },
                    xaxis: {
                        show:false,
                        color: gridBorder,
                        mode: "time",
                        timeBase: "milliseconds",
                        timeformat: "%m/%d"
                    },
                    legend: {
                        show: false,
                        position: 'se',
                        backgroundColor: null,

                    },
                });

            }
        </c:if>
        </c:forEach>


    }
    $(document).ready(function(){
        $(".switcher-input").change(function(){
            plotAccordingToChoices();

            if($(".switcher-input:checked").length==0){
                var data = [];
                for(var i=1;i<20;i++) {

                    $.plot("#flot-graph" + i,data,{

                        yaxis: { show: false},
                        xaxis: { show: false},
                    });
                }
            }
        });
        plotAccordingToChoices();
    });

</script>

<!-- / Page content -->
