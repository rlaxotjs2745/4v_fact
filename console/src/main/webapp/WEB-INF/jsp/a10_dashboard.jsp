<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/29
  Time: 1:09 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Page content -->

<!-- Layout content -->
<div class="layout-content">

    <!-- Content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <div class="row">
            <div class="col-md-8 col-lg-8 col-xl-8">
                <div class="card mb-4" style="min-height: 550px">
                    <h6 class="card-header with-elements">
                        <div class="card-header-title">실증단지 이용현황</div>

                        <div class="card-header-elements ml-auto">
                            <button type="button" class="btn btn-default btn-xs md-btn-flat">Show more</button>
                        </div>

                    </h6>
                    <div class="greenhouse-area">
                        <img src="/resources/assets/image/img_company-map_dark.png">
                        <p class="txt1">김제 코포레이션</p>
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
                <div class="table-responsive">

                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-1 col-xl-1">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><i class="fas fa-thermometer-half"></i></div>
                            <div class="ml-3">
                                <div class="text-muted small">온도</div>
                                <div class="text-large float-right">42</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-1 col-xl-1">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><i class="fas fa-tint"></i></div>
                            <div class="ml-3">
                                <div class="text-muted small">습도</div>
                                <div class="text-large float-right">42</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-1 col-xl-1">
                <div class="card mb-3">
                    <div class="card-body">
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
            <div class="col-sm-1 col-xl-1">
                <div class="card mb-3">
                    <div class="card-body">
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
            <div class="col-sm-1 col-xl-1">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><i class="fas fa-vial"></i></div>
                            <div class="ml-3">
                                <div class="text-muted small">토양pH</div>
                                <div class="text-large float-right">42</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-1 col-xl-1">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><i class="fas fa-water"></i></div>
                            <div class="ml-3">
                                <div class="text-muted small">토양수분</div>
                                <div class="text-large float-right">42</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-1 col-xl-1">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><i class="fas fa-atom"></i></div>
                            <div class="ml-3">
                                <div class="text-muted small">토양EC</div>
                                <div class="text-large float-right">42</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-1 col-xl-1">
                <div class="card mb-3">
                    <div class="card-body">
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
            <div class="col-sm-1 col-xl-1">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><i class="fas fa-rainbow"></i></div>
                            <div class="ml-3">
                                <div class="text-muted small">천창 좌</div>
                                <div class="text-large float-right">42</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-1 col-xl-1">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><i class="fas fa-rainbow"></i></div>
                            <div class="ml-3">
                                <div class="text-muted small">천창 우</div>
                                <div class="text-large float-right">42</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-1 col-xl-1">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><i class="fas fa-campground"></i></div>
                            <div class="ml-3">
                                <div class="text-muted small">일중커튼</div>
                                <div class="text-large float-right">42</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-1 col-xl-1">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="display-4"><i class="fas fa-campground"></i></div>
                            <div class="ml-3">
                                <div class="text-muted small">이중커튼</div>
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
                            <div class="text-large">000</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">ICT 실증장비</div>
                            <div class="text-large">000</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">작물보호제/비료</div>
                            <div class="text-large">000</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">스마트팜SW</div>
                            <div class="text-large">000</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">생육모델</div>
                            <div class="text-large">000</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-xl-2">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div class="text-muted small mt-2">로봇</div>
                            <div class="text-large">000</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row d-flex justify-content-center">
            <div class="col-sm-6 col-xl-3">
                <div class="btn btn-lg btn-block btn-success w-100">
                    현황보고서 작성
                    <span class="fas fa-arrow-right"></span>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="btn btn-lg btn-block btn-success">
                    신청서 평가
                    <span class="fas fa-arrow-right"></span>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="btn btn-lg btn-block btn-success">
                    실증성적서 발급
                    <span class="fas fa-arrow-right"></span>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="btn btn-lg btn-block btn-success">
                    SMS 작성
                    <span class="fas fa-arrow-right"></span>
                </div>
            </div>
        </div>

    </div>
    <!-- / Content -->
<!-- / Page content -->
