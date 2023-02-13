<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2023/02/05
  Time: 4:39 오후
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="card-body">

    <!-- 사업번호 / 사업 상태-->
    <div class="callout callout-primary callout-sm mb-1">
        <div class="form-row border-bottom boder-success">
            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업번호 :</label>
            <div class="form-control-plaintext col-md-4">${demoBusinessVO.demo_bs_code}</div>

            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업상태 :</label>
            <div class="form-control-plaintext col-md-4">
                <c:choose>
                    <c:when test="${demoBusinessVO.demo_bs_status eq 0}">임시 저장</c:when>
                    <c:when test="${demoBusinessVO.demo_bs_status eq 1}">작성 완료</c:when>
                    <c:when test="${demoBusinessVO.demo_bs_status eq 2}">승인 완료</c:when>
                    <c:when test="${demoBusinessVO.demo_bs_status eq 3}">모집 중</c:when>
                    <c:when test="${demoBusinessVO.demo_bs_status eq 4}">모집 종료</c:when>
                    <c:when test="${demoBusinessVO.demo_bs_status eq 5}">심사 중</c:when>
                    <c:when test="${demoBusinessVO.demo_bs_status eq 6}">심사 완료</c:when>
                    <c:when test="${demoBusinessVO.demo_bs_status eq 7}">이용 계획 조정</c:when>
                    <c:when test="${demoBusinessVO.demo_bs_status eq 8}">이용 계획 확정</c:when>
                    <c:when test="${demoBusinessVO.demo_bs_status eq 9}">협약 중</c:when>
                    <c:when test="${demoBusinessVO.demo_bs_status eq 10}">협약 완료</c:when>
                    <c:when test="${demoBusinessVO.demo_bs_status eq 11}">사업 시작</c:when>
                    <c:when test="${demoBusinessVO.demo_bs_status eq 12}">사업 종료</c:when>
                    <c:when test="${demoBusinessVO.demo_bs_status eq 13}">사업 결산 중</c:when>
                    <c:when test="${demoBusinessVO.demo_bs_status eq 14}">사업 결산 완료</c:when>
                </c:choose>
            </div>
        </div>


        <!-- 사업 분류-->
        <div class="form-row border-bottom boder-success">
            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">대분류 :</label>
            <div class="form-control-plaintext col-md-2">${demoBusinessVO.demo_bs_main_type}</div>

            <label class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">중분류 :</label>
            <div class="form-control-plaintext col-md-2">${demoBusinessVO.demo_bs_sub_type}</div>

            <label class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">소분류 :</label>
            <div class="form-control-plaintext col-md-2">${demoBusinessVO.demo_bs_detail_type}</div>
        </div>

        <!-- 사업 제목-->
        <div class="form-row border-bottom boder-success">
            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업제목 :</label>
            <div class="form-control-plaintext col-md-10">${demoBusinessVO.demo_subject}</div>
        </div>
    </div>
    <div class="callout callout-warning callout-sm mb-1">
        <div class="form-row border-bottom boder-success">
            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업 기간 :</label>
            <fmt:formatDate value="${demoBusinessVO.start_date}" var="start_date" pattern="yyyy-MM-dd"/>
            <fmt:formatDate value="${demoBusinessVO.end_date}" var="end_date" pattern="yyyy-MM-dd"/>
            <div class="form-control-plaintext col-md-4">${start_date} ~ ${end_date}</div>

            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">모집 기간 :</label>
            <fmt:formatDate value="${demoBusinessVO.recruit_start_date}" var="recruit_start_date" pattern="yyyy-MM-dd"/>
            <fmt:formatDate value="${demoBusinessVO.recruit_end_date}" var="recruit_end_date" pattern="yyyy-MM-dd"/>
            <div class="form-control-plaintext col-md-4">${recruit_start_date} ~ ${recruit_end_date}</div>

        </div>

        <div class="form-row border-bottom boder-success">
            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">심사 기간 :</label>
            <fmt:formatDate value="${demoBusinessVO.exam_start}" var="exam_start" pattern="yyyy-MM-dd"/>
            <fmt:formatDate value="${demoBusinessVO.exam_end}" var="exam_end" pattern="yyyy-MM-dd"/>
            <div class="form-control-plaintext col-md-4">${exam_start} ~ ${exam_end}</div>

            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">협약 기간 :</label>
            <fmt:formatDate value="${demoBusinessVO.convention_start}" var="convention_start" pattern="yyyy-MM-dd"/>
            <fmt:formatDate value="${demoBusinessVO.convention_end}" var="convention_end" pattern="yyyy-MM-dd"/>
            <div class="form-control-plaintext col-md-4">${convention_start} ~ ${convention_end}</div>
        </div>

    </div>
    <div class="callout callout-secondary callout-sm mb-1">
        <div class="form-row border-bottom boder-success">
            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">모집 수 :</label>
            <div class="form-control-plaintext col-md-1">${demoBusinessVO.recruit_count_limit}</div>

            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">신청 수 :</label>
            <div class="form-control-plaintext col-md-1">${demoBusinessVO.applicant_count}</div>

            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">선정 수 :</label>
            <div class="form-control-plaintext col-md-1"> 0 </div>

            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">협약 완료 수 :</label>
            <div class="form-control-plaintext col-md-1"> 0 </div>
        </div>

        <div class="form-row border-bottom boder-success">
            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">총 신청 ${demoBusinessVO.applicant_count}건 중 :</label>
            <div class="form-control-plaintext col-md-3">서류 검토 필요 ? 건 / 서류검토 완료 ? 건</div>

            <label class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold"><i class="fas fa-arrow-right text-success"></i></label>
            <div class="form-control-plaintext col-md-2">선정 통과 ?건 / 선정 불가 ?건 </div>

            <label class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold"><i class="fas fa-arrow-right text-success"></i></label>
            <div class="form-control-plaintext col-md-3">협약 완료 ?건 / 혁약 중 ?건 / 협약 실패 ?건</div>

        </div>
    </div>
    <div class="callout callout-danger callout-sm">
        <div class="form-row border-bottom boder-success">
            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit mode-new">작성자 :</label>
            <div class="form-control-plaintext col-md-4"> </div>
            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold mode-edit">승인자 :</label>
            <div class="form-control-plaintext col-md-4"> </div>
        </div>
        <div class="form-row border-bottom boder-success">
            <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사업 관련 메모 :</label>
            <div class="form-control-plaintext col-md-10">${demoBusinessVO.memo}</div>
        </div>

    </div>
</div>