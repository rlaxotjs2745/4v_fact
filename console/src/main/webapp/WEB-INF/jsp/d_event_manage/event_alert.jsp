<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/10/11
  Time: 5:11 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">
    <h4 class="font-weight-bold py-3 mb-4">장애 이벤트</h4>

    <div class="row">
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3 bg-danger">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-big font-weight-bold text-dark">오늘 긴급 시설 이벤트 알림</div>
                        <div class="text-large text-dark">004</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3 bg-warning">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-big font-weight-bold">오늘 주의 시설 이벤트 알림</div>
                        <div class="text-large">004</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3 bg-danger-darker">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-big font-weight-bold">오늘 장비 장애 알림</div>
                        <div class="text-large">004</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3 bg-warning-darker">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-big font-weight-bold">오늘 긴급 알림</div>
                        <div class="text-large">004</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

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


</div>
<!-- / Page content -->
