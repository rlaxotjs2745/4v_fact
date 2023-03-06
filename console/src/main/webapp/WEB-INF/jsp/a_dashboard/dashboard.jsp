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
                <div class="card mb-2" style="min-height: 550px">
                    <h6 class="card-header with-elements">
                        <div class="card-header-title">실증단지 모니터링</div>

                        <div class="card-header-elements ml-auto">
                                <button id="btn_dashboard_data1" type="button" class="dashboard_data btn  btn-sm btn-outline-secondary active" onclick="data_sel(1);"><span class="fas fa-temperature-high"></span>온도</button>
                                <button id="btn_dashboard_data2" type="button" class="dashboard_data btn  btn-sm btn-outline-secondary" onclick="data_sel(2);"><span class="fas fa-tint"></span>습도</button>
                                <button id="btn_dashboard_data3" type="button" class="dashboard_data btn  btn-sm btn-outline-secondary" onclick="data_sel(3);">CO<sub>2</sub></button>
                                <button id="btn_dashboard_data4" type="button" class="dashboard_data btn  btn-sm btn-outline-secondary" onclick="data_sel(4);"><span class="ion ion-md-flame"></span>난방온도</button>
                                <button id="btn_dashboard_data5" type="button" class="dashboard_data btn  btn-sm btn-outline-secondary" onclick="data_sel(5);"><span class="oi oi-expand-up"></span>차광</button>
                                <button id="btn_dashboard_data6" type="button" class="dashboard_data btn  btn-sm btn-outline-secondary" onclick="data_sel(6);"><span class="fab fa-think-peaks"></span>천창</button>
                                <button onclick="pageLoad('gh_total_monitor',{cur_page:1},'온실전채 현황');" type="button" class="btn btn-default btn-sm md-btn-flat">Show more</button>
                        </div>

                    </h6>
                    <div class="card-datatable table-responsive pt-0 pb-2">
                        <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                            <div class="row">
                                <div class="col-sm-12">
                                    <table style="width: 100%;">
                                        <tr role="row">
                                            <th style="width:8%"></th>
                                            <th style="width:8%"></th>
                                            <th style="width:8%"></th>
                                            <th style="width:8%"></th>
                                            <th style="width:6%"></th>
                                            <th style="width:6%"></th>
                                            <th style="width:6%"></th>
                                            <th style="width:6%"></th>
                                            <th style="width:6%"></th>
                                            <th style="width:6%"></th>
                                            <th style="width:8%"></th>
                                            <th style="width:8%"></th>
                                            <th style="width:8%"></th>
                                            <th style="width:8%"></th>
                                        </tr>
                                        <tr>
                                            <td colspan="4" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 8rem;">
                                                    <div id="flot-graph1" class="card-img" style="height: 8rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">01</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(0).corp_name}</span>
                                                            <div class="ml-md-auto">
<%--                                                                <span class="badge badge-warning">0</span>
                                                                <span class="badge badge-danger">0</span>--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="7" rowspan="2">

                                            </td>
                                            <td colspan="3" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-secondary"  style="min-height: 8rem;">
                                                    <div id="flot-graph2" class="card-img" style="height: 8rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">17</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(16).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td colspan="4" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-secondary" style="min-height: 8rem;">
                                                    <div id="flot-graph3" class="card-img" style="height: 8rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">02</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(1).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="6" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 8rem;">
                                                    <div id="flot-graph4" class="card-img" style="height: 8rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">08</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(7).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="4" rowspan="3">
                                                <div class="card shadow-none bg-transparent border-info"  style="min-height: 12.5rem;">
                                                    <div id="flot-graph5" class="card-img" style="height: 12.5rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">18</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(17).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td colspan="4" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-secondary"  style="min-height: 8rem;">
                                                    <div id="flot-graph6" class="card-img" style="height: 8rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">03</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(2).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="6" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-info"  style="min-height: 8rem;">
                                                    <div id="flot-graph7" class="card-img" style="height: 8rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">09</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(8).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4" rowspan="3">
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 12.5rem;">
                                                    <div id="flot-graph8" class="card-img" style="height: 12.5rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">19</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(18).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-secondary" style="min-height: 8.8rem;">
                                                    <div id="flot-graph9" class="card-img" style="height: 8.8rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">04</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(3).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="3" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 9rem;">
                                                    <div id="flot-graph10" class="card-img" style="height: 9rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">10</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(9).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="3" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 9rem;">
                                                    <div id="flot-graph11" class="card-img" style="height: 9rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">11</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(10).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div class="card shadow-none bg-transparent border-secondary" style="min-height: 4rem;">
                                                    <div id="flot-graph12" class="card-img" style="height: 4rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">05</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(4).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>

                                            <td colspan="2" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-secondary" style="min-height: 8.9rem;">
                                                    <div id="flot-graph13" class="card-img" style="height: 8.9rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">07</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(7).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="2">
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 4rem;">
                                                    <div id="flot-graph14" class="card-img" style="height: 4rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">12</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(11).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="2">
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 4rem;">
                                                    <div id="flot-graph15" class="card-img" style="height: 4rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">14</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(13).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td  colspan="2" rowspan="2">
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 8.9rem;">
                                                    <div id="flot-graph16" class="card-img" style="height: 8.9rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">16</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(15).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="4">
                                                <div class="card shadow-none bg-transparent border-dark" style="min-height: 4rem;">
                                                    <div class="card-body" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">20</button>
                                                            <span class="inline align-middle text-muted">&nbsp;&nbsp;&nbsp;플랜트</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div class="card shadow-none bg-transparent border-secondary" style="min-height: 4rem;">
                                                    <div id="flot-graph17" class="card-img" style="height: 4rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">06</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(5).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                            <td  colspan="2">
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 4rem;">
                                                    <div id="flot-graph18" class="card-img" style="height: 4rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">13</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(12).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="2">
                                                <div class="card shadow-none bg-transparent border-info" style="min-height: 4rem;">
                                                    <div id="flot-graph19" class="card-img" style="height: 4rem;"></div>
                                                    <div class="card-body card-img-overlay" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">15</button>
                                                            <span class="inline align-middle span">&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(14).corp_name}</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                            <td colspan="4">
                                                <div class="card shadow-none bg-transparent border-dark" style="min-height: 4rem;">
                                                    <div class="card-body" style="padding: 0.5rem;">
                                                        <div class="card-title with-elements" style="margin-bottom: 0.2rem;">
                                                            <button type="button" class="btn icon-btn btn-xs btn-outline-dark">21</button>
                                                            <span class="inline align-middle text-muted">&nbsp;&nbsp;&nbsp;농기계 전시</span>
                                                            <div class="ml-md-auto">

                                                            </div>
                                                        </div>

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
                        <button onclick="pageLoad('corp_cur',{cur_page:1},'운영 현황');" type="button" class="btn btn-default btn-xs md-btn-flat">Show more</button>
                    </div>

                </h6>
                <div class="table-responsive table-sm card-table">

                    <table id="" class="table table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                        <thead>
                            <tr role="row" class="bg-success">
                                <th class="text-center px-2" style="width:10%">구역</th>
                                <th class="text-center" style="width:38%">기업명</th>
                                <th class="text-center" style="width:14%">주체</th>
                                <th class="text-center" style="width:22%">실증대상</th>
                                <th class="text-center" style="width:16%">상태</th>

                            </tr>
                        </thead>
                        <tbody>
                        <c:choose>
                            <c:when test="${userDemoFarmSectorVOList eq null or userDemoFarmSectorVOList.size() eq 0}">

                                <c:forEach var = "i" begin = "1" end = "4">
                                    <tr><td class="text-center empty-list" colspan="6"></td></tr>
                                </c:forEach>
                                <tr class=""><td class="text-center empty" colspan="6">내용이 없습니다</td></tr>
                                <c:forEach var = "i" begin = "1" end = "20">
                                    <tr><td class="text-center empty-list" colspan="6"></td></tr>
                                </c:forEach>

                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${userDemoFarmSectorVOList}" var="item" varStatus="status">
                                    <tr class="">
                                        <td class="text-center align-middle">${item.guyok}</td>
                                        <td class="align-middle"><a href="#none" data-toggle="modal" data-target="#modals-default-view">${item.corp_name}</a></td>
                                        <td class="text-center align-middle">${item.user_demo_type eq 1?"자율":item.user_demo_type eq 2?"위탁":"모두"}</td>
                                        <td class="text-center align-middle">${item.demo_type eq 1?"시설재":item.demo_type eq 2?"기계장치":item.demo_type eq 3?"생튝자재":item.demo_type eq 4?"시스템":item.demo_type eq 5?"진단솔루션":item.demo_type eq 6?"농업로봇":item.demo_type eq 7?"생육모델":"기타대상"}</td>
                                        <td class="text-center align-middle">
                                            <c:choose>
                                                <c:when test="${item.user_demobs_status eq 34}"><span class="text-primary">협약완료</span></c:when>
                                                <c:when test="${item.user_demobs_status eq 40}"><span class="text-success">사업중</span></c:when>
                                                <c:when test="${item.user_demobs_status eq 50}"><span class="text-warning">종료</span></c:when>
                                                <c:when test="${item.user_demobs_status eq 60}"><span class="text-muted">결산중</span></c:when>
                                                <c:when test="${item.user_demobs_status eq 61}"><span class="text-muted">결산완료</span></c:when>
                                            </c:choose>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-2">
                    <div class="card-body-slim">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">시설자재</div>
                            <div class="text-large">0</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-4 col-xl-2">
                <div class="card mb-2">
                    <div class="card-body-slim">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">ICT 실증장비</div>
                            <div class="text-large">0</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-2">
                    <div class="card-body-slim">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">작물보호제/비료</div>
                            <div class="text-large">0</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-2">
                    <div class="card-body-slim">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">스마트팜SW</div>
                            <div class="text-large">0</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-2">
                    <div class="card-body-slim">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">생육모델</div>
                            <div class="text-large">0</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-2">
                    <div class="card-body-slim">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">로봇</div>
                            <div class="text-large">0</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- / Content -->
<script>
    var datas=[];
    var isDark = true;
    var gridColor = isDark ? '#383b40' : '#aaaaaa';
    var gridBorder = isDark ? '#383b40' : '#eeeeee';
    var tickFill = isDark ? '#383b40' : '#f5f5f5';

    $(function() {

        <c:forEach items="${lisfOfFarmListVO}" var="farmVOS" varStatus="status1">

        var data=new Array();
        //온도1
        var arr1Xintemp${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xintemp1}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arr1Xintemp']=arr1Xintemp${status1.count};
        //온도2
        var arr2Xintemp${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xintemp2}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arr2Xintemp']=arr2Xintemp${status1.count};
        //지온
        var arrXgndtemp${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xgndtemp}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXgndtemp']=arrXgndtemp${status1.count};
        //환기온도
        var arrXventtemp${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xventtemp}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXventtemp']=arrXventtemp${status1.count};
        //난방설정온도
        var arrXheattemp${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xheattemp}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXheattemp']=arrXheattemp${status1.count};

        //습도1
        var arr1Xinhum${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xinhum1}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arr1Xinhum']=arr1Xinhum${status1.count};

        //지습
        var arrXgndhum${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xgndhum}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXgndhum']=arrXgndhum${status1.count};

        //co2
        var arrXco${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xco2}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXco']=arrXco${status1.count};

        //난방수온도
        var arrXwatertemp${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xwatertemp}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXwatertemp']=arrXwatertemp${status1.count};
        //난방수온도2
        var arr2Xwatertemp${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xwatertemp2}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arr2Xwatertemp']=arr2Xwatertemp${status1.count};
        //이슬점
        var arrXdhum${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xdhum}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXdhum']=arrXdhum${status1.count};
        //이슬점
        var arrXdhum${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xdhum}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXdhum']=arrXdhum${status1.count};
        //절대습도
        var arrXabhum${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xabhum}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXabhum']=arrXabhum${status1.count};
        //천창개폐율1
        var arr1Xskyvol${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xskyvol1}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arr1Xskyvol']=arr1Xskyvol${status1.count};
        //천창개폐율2
        var arr2Xskyvol${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xskyvol2}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arr2Xskyvol']=arr2Xskyvol${status1.count};
        //커튼 개폐율1
        var arrXcur1vol${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xcur1vol}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXcur1vol']=arrXcur1vol${status1.count};
        //커튼 개폐율2
        var arrXcur2vol${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xcur2vol}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXcur2vol']=arrXcur2vol${status1.count};
        //커튼 개폐율3
        var arrXcur3vol${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xcur3vol}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXcur3vol']=arrXcur3vol${status1.count};

        datas.push(data);

        $.plot($('#flot-graph${status1.count}'), [
            {
                label: '온도',
                data: datas[${status1.count-1}]['arr1Xintemp']
            },
        ], {
            yaxis: {
                show:true,
                color: gridBorder,
                position: 'right'
            },
            xaxis: {
                show:true,
                color: gridBorder,
                mode: "time",
                timeBase: "milliseconds",
                timeformat: "%H:%M"
            },
            legend: {
                show: false,
                position: 'se',
                backgroundColor: null,
            },
            colors: ['#667581', '#38af71', '#00BCD4']
        });



        </c:forEach>


    });


    function data_sel(type){

        $(".dashboard_data").each(function () {
            $(".dashboard_data").removeClass('active');
        });

        $('#btn_dashboard_data'+type).addClass('active');

        <c:forEach items="${lisfOfFarmListVO}" var="farmVOS" varStatus="status1">
        if(type==1){
            var arrD = [
                {
                    label: '온도',
                    data: datas[${status1.index}]['arr1Xintemp']
                },
            ];
            drawPlotGraph(${status1.index+1},arrD);
        }
        else if(type==2){
            var arrD = [
                {
                    label: '습도',
                    data: datas[${status1.index}]['arr1Xinhum']
                },
            ];
            drawPlotGraph(${status1.index+1},arrD);
        }
        else if(type==3){
            var arrD = [
                {
                    label: 'CO²',
                    data: datas[${status1.index}]['arrXco']
                },
            ];
            drawPlotGraph(${status1.index+1},arrD);
        }
        else if(type==4){
            var arrD = [
                {
                    label: '온수공급1',
                    data: datas[${status1.index}]['arrXwatertemp']
                },
                {
                    label: '온수공급2',
                    data: datas[${status1.index}]['arr2Xwatertemp']
                },
            ];
            drawPlotGraph(${status1.index+1},arrD);
        }
        else if(type==5){
            var arrD = [
                {
                    label: '차광커튼1',
                    data: datas[${status1.index}]['arrXcur1vol']
                },
                {
                    label: '차광커튼2',
                    data: datas[${status1.index}]['arrXcur2vol']
                },
                {
                    label: '차광커튼3',
                    data: datas[${status1.index}]['arrXcur3vol']
                },
            ];
            drawPlotGraph(${status1.index+1},arrD);
        }
        else if(type==6){
            var arrD = [
                {
                    label: '왼쪽 천창',
                    data: datas[${status1.index}]['arr1Xskyvol']
                },
                {
                    label: '오른쪽 천창',
                    data: datas[${status1.index}]['arr2Xskyvol']
                },
            ];
            drawPlotGraph(${status1.index+1},arrD);
        }

        </c:forEach>


    }

    function drawPlotGraph(guyok_num,arrData){
        $.plot($('#flot-graph'+guyok_num), arrData, {
            yaxis: {
                show:true,
                color: gridBorder,
                position: 'right',
            },
            xaxis: {
                show:true,
                color: gridBorder,
                mode: "time",
                timeBase: "milliseconds",
                timeformat: "%H:%M"
            },
            legend: {
                show: false,
                position: 'se',
                backgroundColor: null,
            },
            colors: ['#667581', '#38af71', '#00BCD4']

        });

    }


</script>

<!-- / Page content -->
