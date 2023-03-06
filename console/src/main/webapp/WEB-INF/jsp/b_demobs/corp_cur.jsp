<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h5 class="d-flex justify-content-between align-items-center w-100 mt-2">
        <div><i class="pe-7s-way text-white text-big"></i>&nbsp;&nbsp;&nbsp;구역별 운영현황</div>
    </h5>

    <div class="card px-4 pt-2 mb-2">
        <div class="form-row mb-4">
            <div class="col-md-2">
                <label class="form-label text-muted">실증 주체</label>
                <div class="form-inline">
                    <div class="btn-group btn-group-sm btn-group-toggle srch_filtp1" data-toggle="buttons">
                        <label class="btn btn-secondary <c:if test="${filter1 eq 9999}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="0" checked onclick="javascript:pageLoad('corp_cur',{cur_page:1,filter1:9999,filter2:9998},'시설 데이터');">전체
                        </label>
                        <label class="btn btn-secondary <c:if test="${filter1 eq 0}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="0" onclick="javascript:pageLoad('corp_cur',{cur_page:1,filter1:0,filter2:9998},'시설 데이터');">자율
                        </label>
                        <label class="btn btn-secondary <c:if test="${filter1 eq 1}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="0" onclick="javascript:pageLoad('corp_cur',{cur_page:1,filter1:1,filter2:9998},'시설 데이터');">위탁
                        </label>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <label class="form-label text-muted">구역별 운영 정보</label>
                <div class="form-inline">
                    <div class="btn-group btn-group-sm btn-group-toggle srch_filtp1" data-toggle="buttons">
                <c:forEach var = "i" begin = "1" end = "21">
                    <c:if test="${i ne 12 and i ne 13}">
                        <label class="btn btn-outline-success <c:if test="${filter1 eq i}">active</c:if>">
                            <input type="radio" name="btn-radio" class="category_change" value="0" data-toggle="modal" data-target="#modals-guyok">${i}
                        </label>
                    </c:if>
                </c:forEach>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="card mt-2">
        <div class="card-header font-weight-bold with-elements text-white bg-success">
            <div>실증기업 목록</div>
            <div class="card-header-elements ml-auto">
                <button type="button" id="btn_all_guyok" class="btn btn-sm btn-outline-white font-weight-bold" data-toggle="modal" data-target="#modals-all-guyok" data-what="mode-new">온실 배치 보기</button>
            </div>
        </div>
        <div class="card-datatable table-responsive pt-0 pb-3">
            <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <table id="table_demo_bs" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                            <thead class="bg-dark text-white font-weight-bold">
                            <tr role="row">
                                <th class="text-center px-2" style="width:8%">구역</th>
                                <th class="text-center" style="width:10%">기업명</th>
                                <th class="text-center" style="width:8%">주체</th>
                                <th class="text-center" style="width:8%">실증시설</th>
                                <th class="text-center" style="width:8%">실증방법</th>
                                <th class="text-center" style="width:8%">실증목적</th>
                                <th class="text-center" style="width:8%">실증대상</th>
                                <th class="text-center" style="width:12%">실증 기간</th>
                                <th class="text-center" style="width:5%">상태</th>

                            </tr>
                            </thead>
                            <tbody>
                            <c:choose>
                                <c:when test="${userDemoFarmSectorVOList eq null or userDemoFarmSectorVOList.size() eq 0}">

                                    <c:forEach var = "i" begin = "1" end = "4">
                                        <tr><td class="text-center empty-list" colspan="9"></td></tr>
                                    </c:forEach>
                                    <tr class=""><td class="text-center empty" colspan="9">내용이 없습니다</td></tr>
                                    <c:forEach var = "i" begin = "1" end = "20">
                                        <tr><td class="text-center empty-list" colspan="9"></td></tr>
                                    </c:forEach>

                                </c:when>
                                <c:otherwise>
                                    <c:forEach items="${userDemoFarmSectorVOList}" var="item" varStatus="status">
                                        <tr class="">
                                            <td class="text-center align-middle">${item.guyok}</td>
                                            <td class="align-middle"><a href="#none" data-toggle="modal" data-target="#modals-default-view">${item.corp_name}</a></td>
                                            <td class="text-center align-middle">${item.user_demo_type eq 1?"자율":item.user_demo_type eq 2?"위탁":"모두"}</td>
                                            <td class="text-center align-middle">${item.user_demo_facility eq 1?"단동비닐":  item.user_demo_facility eq 2?"연동비닐":item.user_demo_facility eq 3?"노지" :item.user_demo_facility eq 4?"단동유리":item.user_demo_facility eq 5?"연동유리":item.user_demo_facility eq 6?"식물공장":"기타"}</td>
                                            <td class="text-center align-middle">${item.user_demo_way eq 1?"단순":item.user_demo_way eq 2?"비교":"기타"}</td>
                                            <td class="text-center align-middle">${item.user_demo_goal eq 1?"성능확인":item.user_demo_goal eq 2?"자체평가":"기타실증"}</td>
                                            <td class="text-center align-middle">${item.demo_type eq 1?"시설재":item.demo_type eq 2?"기계장치":item.demo_type eq 3?"생튝자재":item.demo_type eq 4?"시스템":item.demo_type eq 5?"진단솔루션":item.demo_type eq 6?"농업로봇":item.demo_type eq 7?"생육모델":"기타대상"}</td>
                                        <fmt:formatDate value="${item.demo_start_date}" var="demo_start_date" pattern="yyyy-MM-dd"/>
                                        <fmt:formatDate value="${item.demo_end_date}" var="demo_end_date" pattern="yyyy-MM-dd"/>
                                            <td class="text-center align-middle">${demo_start_date} ~ ${demo_end_date}</td>
                                            <td class="text-center align-middle">
                                                <c:choose>
                                            <c:when test="${item.user_demobs_status eq 34}"><span class="text-primary">협약완료</span></c:when>
                                            <c:when test="${item.user_demobs_status eq 40}"><span class="text-success">사업 중</span></c:when>
                                                    <c:when test="${item.user_demobs_status eq 50}"><span class="text-warning">사업 종료</span></c:when>
                                            <c:when test="${item.user_demobs_status eq 60}"><span class="text-muted">결산중</span></c:when>
                                            <c:when test="${item.user_demobs_status eq 61}"><span class="text-muted">결산 완료</span></c:when>
                                            </c:choose>
                                            </td>
                                        </tr>
                                    </c:forEach>

                                    <c:forEach var = "i" begin = "${userDemoFarmSectorVOList.size()}" end = "20">
                                        <tr><td class="text-center empty-list" colspan="9"></td></tr>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- / Page content -->
<div class="modal fade" id="modals-guyok">
    <div class="modal-dialog modal-lg">
        <form class="modal-content">
            <div class="modal-header bg-success">
                <h6 class="modal-title">온실 실시간 정보</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="ion ion-md-close"></i></button>
            </div>
            <div class="modal-body">
                <div class="card">
                    <img class="card-img" src="resources/assets/img/gh_bg.png" alt="Card image">
                    <div class="card-img-overlay">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        <p class="card-text">Last updated 3 mins ago</p>
                    </div>
                </div>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="modal fade" id="modals-all-guyok">
    <div class="modal-dialog modal-xl">
        <form class="modal-content">
            <div class="modal-header bg-success">
                <h6 class="modal-title">실증기업 배치현황</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="ion ion-md-close"></i></button>
            </div>
            <div class="modal-body">
                <div class="card mb-2">
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(0).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(16).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(1).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(7).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(17).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(2).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(8).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(18).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(3).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(9).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(10).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(4).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(6).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(11).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(13).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(16).corp_name}</small></span>
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
                                                            <span class="inline align-middle text-muted"><small>&nbsp;&nbsp;&nbsp;플랜트</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(5).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(12).corp_name}</small></span>
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
                                                            <span class="inline align-middle span"><small>&nbsp;&nbsp;&nbsp;${userDemoFarmSectorVOList.get(14).corp_name}</small></span>
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
                                                            <span class="inline align-middle text-muted"><small>&nbsp;&nbsp;&nbsp;농기계 전시</small></span>
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
    </div>
    </form>
</div>
</div>
<!-- Layout footer -->
<!-- / Layout footer -->
<!-- / Page content -->
<script>

    $(document).ready(function(){
        var today = new Date();
        /*var dateSelector = document.querySelector('.dateSelector');
        dateSelector.flatpickr();
        flatpickr("#dateSelector",{
            maxDate:"today",
            dateFormat: "Y-m-d",
            defaultDate:formatDate('<fmt:formatDate value="${end_dt}" var="enddt" pattern="yyyy-MM-dd HH:mm:ss"/>${enddt}')
        });
        flatpickr("#startTimeSelect",{
            enableTime: true,
            noCalendar: true,
            dateFormat: "H:i",
            defaultDate: getHMtoDate('<fmt:formatDate value="${start_dt}" var="startdt" pattern="yyyy-MM-dd HH:mm:ss"/>${startdt}')
        });
        flatpickr("#endTimeSelect",{
            enableTime: true,
            noCalendar: true,
            dateFormat: "H:i",
            defaultDate: getHMtoDate('<fmt:formatDate value="${end_dt}" var="enddt" pattern="yyyy-MM-dd HH:mm:ss"/>${enddt}')
        });*/

    });


    function getGhFilteredData(cur_page,filter1){

      /*  console.log("date = "+$("#dateSelector").val() + " " + $("#startTimeSelect").val() + ":00");
        var start_dt = new Date($("#dateSelector").val() + " " + $("#startTimeSelect").val() + ":00");
        var end_dt = new Date($("#dateSelector").val() + " " + $("#endTimeSelect").val() + ":00");

        pageLoad('ghdata_mng',{cur_page:cur_page,filter1:filter1,start_dt:start_dt,end_dt:end_dt},'시설 데이터');*/

    }

</script>