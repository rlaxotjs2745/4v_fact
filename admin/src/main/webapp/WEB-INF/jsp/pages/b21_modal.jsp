<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: seowoo 1-15
  Date: 2022-11-24
  Time: 오전 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="tab-pane active" id="navs-tap1">
    <div class="card-body">

        <div class="form-row">
            <div class="form-group col col-md-12">
                <label class="form-label text-success-custom font-weight-bold d-block text-muted">신청서</label>
                <span class="text-muted mr-2">1차</span>
                <button type="button" class="btn btn-sm  btn-outline-default"><i
                         class="lnr lnr-download"></i> 내려받기
                </button>
                <span class="text-muted ml-3 mr-2">2차</span><span>요청중</span>
            </div>
        </div>

        <form:form modelAttribute="modifyUserDemoBsVO">
            <div class="form-row">
                <div class="form-group col col-md-6">
                    <label for="demo_subject"  class="form-label text-success-custom font-weight-bold d-block">지원사업 명</label>
                    <form:input path="demo_subject" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-3">
                    <label for="user_name" class="form-label text-success-custom font-weight-bold d-block">신청자</label>
                    <input name="user_name" id="user_name"  value="${userVO.user_name}" type="text" class="form-control form-control-md">
                </div>

                <div class="form-group col col-md-3">
                    <label for="mphone_num" class="form-label text-success-custom font-weight-bold d-block">연락처</label>
                    <input name="mphone_num" id="mphone_num" value="${userVO.mphone_num}" type="text" class="form-control form-control-md">
                </div>
            </div>

            <hr>

            <div class="form-row">
                <div class="form-group col col-md-4">
                    <form:label path="user_demo_bs_app_code" class="form-label text-success-custom font-weight-bold d-block">접수번호</form:label>
                    <form:input path="user_demo_bs_app_code" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-4">
                    <label for="reg_date"  class="form-label text-success-custom font-weight-bold d-block">접수일시</label>
                    <input id="reg_date" name="reg_date"  type="text" class="form-control form-control-md" value="<fmt:formatDate value="${modifyUserDemoBsVO.reg_date}" pattern="yyyy-MM-dd HH:ss"/>"></div>
                </div>

            </div>

            <div class="form-row">
                <div class="form-group col col-md-3">
                    <label class="form-label text-success-custom font-weight-bold d-block">기업 형태</label>
                    <form:select path="user_demo_bs_type" class="custom-select">
                        <form:option value="1">개인</form:option>
                        <form:option value="2">일반기업</form:option>
                        <form:option value="3">미등록기업(설립전)</form:option>
                        <form:option value="4">농업진흥기관</form:option>
                        <form:option value="5">선도기업</form:option>
                        <form:option value="6">외국연구기관</form:option>
                        <form:option value="7">특정연구기관</form:option>
                        <form:option value="8">정부출연연구기관</form:option>
                        <form:option value="9">스마트팜 관련 기업부설연구소 보유기업</form:option>
                        <form:option value="10">대학교</form:option>
                        <form:option value="99">기타 단체</form:option>
                    </form:select>
                </div>
            </div>


            <div class="form-row">
                <div class="form-group col col-md-3">
                    <form:label path="corp_name" class="form-label text-success-custom font-weight-bold d-block">신청기업명</form:label>
                    <form:input path="corp_name" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-3">
                    <form:label path="corp_reg_num" class="form-label text-success-custom font-weight-bold d-block">법인등록번호</form:label>
                    <form:input path="corp_reg_num" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-3">
                    <form:label path="corp_num" class="form-label text-success-custom font-weight-bold d-block">사업자등록번호</form:label>
                    <form:input path="corp_num" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-3">
                    <form:label path="corp_birth" class="form-label text-success-custom font-weight-bold d-block">설립일</form:label>
                    <form:input path="corp_birth" class="form-control form-control-md"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-6">
                    <form:label path="corp_addr" class="form-label text-success-custom font-weight-bold d-block">본사</form:label>
                    <form:input path="corp_addr" class="form-control form-control-md"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-3">
                    <form:label path="corp_addr2" class="form-label text-success-custom font-weight-bold d-block">본사 상세주소</form:label>
                    <form:input path="corp_addr2" class="form-control form-control-md"/>
                </div>
            </div>


            <div class="form-row">
                <div class="form-group col col-md-3">
                    <form:label path="corp_phone" class="form-label text-success-custom font-weight-bold d-block">본사 연락처</form:label>
                    <form:input path="corp_phone" class="form-control form-control-md"/>
                </div>
                <div>
                    <label class="form-label text-success-custom font-weight-bold d-block text-muted">본사보유 형태<span
                            class="text__essential">*</span></label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="is_office_ower" class="custom-control-input" value="0"
                                          disabled="true"/>
                        <span class="custom-control-label">자가</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="is_office_ower" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">임차</span><br/>
                    </label>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-6">
                    <form:label path="corp_rnd_addr" class="form-label text-success-custom font-weight-bold d-block">연구소</form:label>
                    <form:input path="corp_rnd_addr" class="form-control form-control-md"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-3">
                    <form:label path="corp_rnd_addr2" class="form-label text-success-custom font-weight-bold d-block">연구소 상세주소</form:label>
                    <form:input path="corp_rnd_addr2" class="form-control form-control-md"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-3">
                    <form:label path="lab_phone" class="form-label text-success-custom font-weight-bold d-block">연구소 연락처</form:label>
                    <form:input path="lab_phone" class="form-control form-control-md"/>
                </div>

                <div>
                    <label class="form-label text-success-custom font-weight-bold d-block text-muted">연구소 보유 형태<span
                            class="text__essential">*</span></label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="is_lab_ower" class="custom-control-input" value="0"
                                          disabled="true"/>
                        <span class="custom-control-label">없음</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="is_lab_ower" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">자가</span><br/>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="is_lab_ower" class="custom-control-input" value="2"
                                          disabled="true"/>
                        <span class="custom-control-label">임차</span><br/>
                    </label>
                </div>
            </div>

<%--            <div class="form-row">--%>
<%--                <div class="form-group col col-md-4">--%>
<%--                    <form:label path="email" class="form-label text-success-custom font-weight-bold d-block">대표 이메일</form:label>--%>
<%--                    <form:input path="email" class="form-control form-control-md"/>--%>
<%--                </div>--%>

<%--                <div class="form-group col col-md-4">--%>
<%--                    <form:label path="homepage" class="form-label text-success-custom font-weight-bold d-block">홈페이지</form:label>--%>
<%--                    <form:input path="homepage" class="form-control form-control-md"/>--%>
<%--                </div>--%>
<%--            </div>--%>
    <hr>
            <div class="form-row">
                       <span class="form-label
                        text-success-custom font-weight-bold text-muted">인력현황</span>
            </div>





    <div class="form-row">
                <div class="form-group col col-md-3">
                    <form:label class="col-form-label col-form-label-md font-weight-bold" path="man_total">전체</form:label>
                    <form:input path="man_total" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-3">
                    <form:label class="col-form-label col-form-label-md font-weight-bold" path="man_officer_count">경영자</form:label>
                    <form:input path="man_officer_count" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-3">
                    <form:label class="col-form-label col-form-label-md font-weight-bold" path="man_lab_count">연구/기술직</form:label>
                    <form:input path="man_lab_count" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-3">
                    <form:label class="col-form-label col-form-label-md font-weight-bold" path="man_etc_count">기타</form:label>
                    <form:input path="man_etc_count" class="form-control form-control-md"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-3">
                    <form:label path="capital_amount" class="col-form-label col-form-label-md font-weight-bold">자본금(만원)</form:label>
                    <form:input path="capital_amount" class="form-control form-control-md"/>
                </div>

                <div class="form-group col col-md-3">
                    <form:label path="corp_er" class="col-form-label col-form-label-md font-weight-bold">자기 자본 비율(%)</form:label>
                    <form:input path="corp_er" class="form-control form-control-md"/>
                </div>

                <div class="form-group col col-md-3">
                    <form:label path="corp_sales_amount" class="col-form-label col-form-label-md font-weight-bold">전년도 매출액(만원)</form:label>
                    <form:input path="corp_sales_amount" class="form-control form-control-md"/>
                </div>


            </div>
            <hr>
            <div class="form-row">
                <div class="form-group col col-md-3">
                    <form:label path="bs_type1" class="form-label text-success-custom font-weight-bold d-block">업태</form:label>
                    <form:input path="bs_type1" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-3">
                    <form:label path="bs_type2" class="form-label text-success-custom font-weight-bold d-block">종목</form:label>
                    <form:input path="bs_type2" class="form-control form-control-md"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-3">
                    <form:label path="main_product" class="form-label text-success-custom font-weight-bold d-block">주 생산 품목</form:label>
                    <form:input path="main_product" class="form-control form-control-md"/>
                </div>

                <div class="form-group col col-md-3">
                    <form:label path="demobs_tech_plan" class="form-label text-success-custom font-weight-bold d-block">개발 예정 품목(핵심기술)</form:label>
                    <form:input path="demobs_tech_plan" class="form-control form-control-md"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-6">
                     <span class="form-label
                        text-success-custom font-weight-bold text-muted">이용 신청 시설</span>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="req_facility" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">온실</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="req_facility" class="custom-control-input" value="2"
                                          disabled="true"/>
                        <span class="custom-control-label">R&D 연구실</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="req_facility" class="custom-control-input" value="4"
                                          disabled="true"/>
                        <span class="custom-control-label">스타트업 사무실</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="req_facility" class="custom-control-input" value="512"
                                          disabled="true"/>
                        <span class="custom-control-label">기타</span>
                    </label>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-6">
                    <label class="form-label text-success-custom font-weight-bold d-block text-muted">실증 주체</label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_type" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">자율</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_type" class="custom-control-input" value="2"
                                          disabled="true"/>
                        <span class="custom-control-label">위탁</span>
                    </label>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col col-md-8">
                    <span class="form-label text-success-custom font-weight-bold d-block text-muted">실증 시설</span>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_facility" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">단동비닐</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_facility" class="custom-control-input" value="2"
                                          disabled="true"/>
                        <span class="custom-control-label">연동비닐</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_facility" class="custom-control-input" value="4"
                                          disabled="true"/>
                        <span class="custom-control-label">육묘장</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_facility" class="custom-control-input" value="8"
                                          disabled="true"/>
                        <span class="custom-control-label">노지</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_facility" class="custom-control-input" value="16"
                                          disabled="true"/>
                        <span class="custom-control-label">단동유리</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_facility" class="custom-control-input" value="32"
                                          disabled="true"/>
                        <span class="custom-control-label">연동유리</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_facility" class="custom-control-input" value="64"
                                          disabled="true"/>
                        <span class="custom-control-label">식물공장</span>
                    </label>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-6">
                    <span class="form-label text-success-custom font-weight-bold d-block text-muted">실증방법</span>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_way" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">단순실증</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_way" class="custom-control-input" value="2"
                                          disabled="true"/>
                        <span class="custom-control-label">비교실증</span>
                    </label>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-6">
                    <span class="form-label text-success-custom font-weight-bold d-block text-muted">실증목적</span>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_goal" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">성능확인</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_goal" class="custom-control-input" value="2"
                                          disabled="true"/>
                        <span class="custom-control-label">자체평가</span>

                    </label>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-4">
                    <span class="form-label text-success-custom font-weight-bold d-block text-muted">실증횟수</span>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_repeat" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">1회성 실증</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_repeat" class="custom-control-input" value="2"
                                          disabled="true"/>
                        <span class="custom-control-label">반복실증</span>
                    </label>

                    <form:label path="user_demo_repeat_count" class="form-label text-success-custom font-weight-bold">반복횟수</form:label>
                    <form:input path="user_demo_repeat_count" class="form-control"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-6">
                    <span class="form-label text-success-custom font-weight-bold d-block text-muted">실증작물</span>

                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_is_crops" class="custom-control-input" value="0"
                                          disabled="true"/>
                        <span class="custom-control-label">해당 없음</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_is_crops" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">비작물대상 실증</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_is_crops" class="custom-control-input" value="2"
                                          disabled="true"/>
                        <span class="custom-control-label">작물대상 실증</span>
                    </label>

                    <form:label path="user_demo_crops" class="form-label text-success-custom font-weight-bold">실증작물명</form:label>
                    <form:input path="user_demo_crops" class="form-control"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-6">
                    <label class="form-label text-success-custom font-weight-bold d-block text-muted">실증조건</label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_option" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">일반 환경</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="user_demo_option" class="custom-control-input" value="2"
                                          disabled="true"/>
                        <span class="custom-control-label">특수 환경</span>
                    </label>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-6">
                    <span class="form-label text-success-custom font-weight-bold d-block text-muted">생육토양</span>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="culture_soil" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">토경재배</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="culture_soil" class="custom-control-input" value="2"
                                          disabled="true"/>
                        <span class="custom-control-label">수경재배</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="culture_soil" class="custom-control-input" value="4"
                                          disabled="true"/>
                        <span class="custom-control-label">고형배재배</span>
                    </label>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-8">
                    <span class="form-label text-success-custom font-weight-bold d-block text-muted">실증대상</span>
                    <label class="custom-control custom-radio d-inline-block">

                        <form:radiobutton path="demo_type" class="custom-control-input" value="0" disabled="true"/>
                        <span class="custom-control-label">해당없음</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="demo_type" class="custom-control-input" value="1" disabled="true"/>
                        <span class="custom-control-label">시설자재</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="demo_type" class="custom-control-input" value="2" disabled="true"/>
                        <span class="custom-control-label">ICT기자재</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="demo_type" class="custom-control-input" value="4" disabled="true"/>
                        <span class="custom-control-label">작물보호제/비료</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="demo_type" class="custom-control-input" value="8" disabled="true"/>
                        <span class="custom-control-label">스마트팜SW</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="demo_type" class="custom-control-input" value="16" disabled="true"/>
                        <span class="custom-control-label">생육모델</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="demo_type" class="custom-control-input" value="32" disabled="true"/>
                        <span class="custom-control-label">로봇</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="demo_type" class="custom-control-input" value="512"
                                          disabled="true"/>
                        <span class="custom-control-label">기타</span>
                    </label>
                </div>
            </div>

            <!--무슨값이필요한지 확인 -->
            <div class="form-row">
                <div class="form-group col col-md-8">
                    <label class="form-label text-success-custom font-weight-bold d-block text-muted">실증기간</label>
                    <fmt:formatDate value="${modifyUserDemoBsVO.demo_start_date}" var="sio_stt_date" pattern="yyyy-MM-dd"/>
                    <fmt:formatDate value="${modifyUserDemoBsVO.demo_end_date}" var="sio_end_date" pattern="yyyy-MM-dd"/>
                    <input type="text" disabled value="${sio_stt_date} - ${sio_end_date}">
                </div>
            </div>
            <div class="form-row">
                <label class="form-label text-success-custom font-weight-bold d-block text-muted">상주계획</label>
                <span>필요시설</span>
                <label class="custom-control custom-radio">
                    <input name="" type="radio" class="custom-control-input" value="0" disabled>
                    <span class="custom-control-label">시설자재</span>
                </label>
                <label class="custom-control custom-radio">
                    <input name="" type="radio" class="custom-control-input" value="1" disabled>
                    <span class="custom-control-label">ICT기자재</span>
                </label>
            </div>
            <div class="form-row">
                <span>필요 시설</span>
                <input type="text">
            </div>

            <div class="form-row">
                <span class="form-label text-success-custom font-weight-bold d-block">대표자</span>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-6">
                    <form:label path="ceo_name" class="col-form-label col-form-label-md col-md-2  font-weight-bold">성명</form:label>
                    <form:input path="ceo_name" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-6">
                    <form:label path="ceo_email" class="col-form-label col-form-label-md col-md-2  font-weight-bold">E-mail</form:label>
                    <form:input path="ceo_email" class="form-control form-control-md"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-6">
                    <form:label path="ceo_pnumber" class="col-form-label col-form-label-md col-md-2  font-weight-bold">사무실번호</form:label>
                    <form:input path="ceo_pnumber" class="form-control form-control-md"/>
                </div>

                <div class="form-group col col-md-6">
                    <form:label path="ceo_mnumber" class="col-form-label col-form-label-md col-md-2  font-weight-bold">휴대폰번호</form:label>
                    <form:input path="ceo_mnumber" class="form-control form-control-md"/>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col col-md-6">
                    <form:label path="ceo_address" class="col-form-label col-form-label-md col-md-2  font-weight-bold">주소</form:label>
                    <form:input path="ceo_address" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-6">
                    <form:label path="ceo_address2" class="col-form-label col-form-label-md col-md-2  font-weight-bold">상세주소</form:label>
                    <form:input path="ceo_address2" class="form-control form-control-md"/>
                </div>

            </div>
            <hr>

            <div class="form-row">
                <span class="form-label text-success-custom font-weight-bold d-block">담당자</span>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-6">
                    <form:label path="man_name" class="col-form-label col-form-label-md col-md-2  font-weight-bold">성명</form:label>
                    <form:input path="man_name" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-6">
                    <form:label path="man_email" class="col-form-label col-form-label-md col-md-2  font-weight-bold">E-mail</form:label>
                    <form:input path="man_email" class="form-control form-control-md"/>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-6">
                    <form:label path="man_pnumber" class="col-form-label col-form-label-md col-md-2  font-weight-bold">회사번호</form:label>
                    <form:input path="man_pnumber" class="form-control form-control-md"/>
                </div>

                <div class="form-group col col-md-6">
                    <form:label path="man_mnumber" class="col-form-label col-form-label-md col-md-2  font-weight-bold">휴대폰번호</form:label>
                    <form:input path="man_mnumber" class="form-control form-control-md"/>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col col-md-6">
                    <form:label path="man_dpart" class="col-form-label col-form-label-md col-md-2  font-weight-bold">부서</form:label>
                    <form:input path="man_dpart" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-6">
                    <form:label path="man_role" class="col-form-label col-form-label-md col-md-2  font-weight-bold">직위</form:label>
                    <form:input path="man_role" class="form-control form-control-md"/>
                </div>

            </div>

            <hr>


            <div class="form-row">
                <div class="form-group col col-md-4">
                    <form:label path="lab_est_date" class="form-label text-success-custom font-weight-bold d-block">연구소 설립일 수</form:label>
                    <form:input path="lab_est_date" class="form-control form-control-md"/>
                </div>

                <div class="form-group col col-md-4">
                    <form:label path="rnd_rate" class="form-label text-success-custom font-weight-bold d-block">연구개발투자 비율</form:label>
                    <form:input path="rnd_rate" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-4">
                    <form:label path="consolidated_company" class="form-label text-success-custom font-weight-bold d-block">연결회사</form:label>
                    <form:input path="consolidated_company" class="form-control form-control-md"/>
                </div>
            </div>

            <hr>
            <div class="form-row">
                <span class="form-label text-success-custom font-weight-bold d-block">주요연혁</span>
            </div>

<%--    <div class="form-row">--%>
<%--        <span class="form-label text-success-custom font-weight-bold d-block">담당자</span>--%>
<%--    </div>--%>

<%--    <div class="form-row">--%>
<%--        <div class="form-group col col-md-6">--%>
<%--            <form:label path="man_name" class="col-form-label col-form-label-md col-md-2  font-weight-bold">성명</form:label>--%>
<%--            <form:input path="man_name" class="form-control form-control-md"/>--%>
<%--        </div>--%>
<%--        <div class="form-group col col-md-6">--%>
<%--            <form:label path="man_email" class="col-form-label col-form-label-md col-md-2  font-weight-bold">E-mail</form:label>--%>
<%--            <form:input path="man_email" class="form-control form-control-md"/>--%>
<%--        </div>--%>
<%--    </div>--%>





    <div class="form-row">
                <div class="form-group col col-md-4">
                    <form:label path="history1_date" class="col-form-label col-form-label-md font-weight-bold">년월</form:label>
                    <form:input path="history1_date" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-4">

                    <form:label path="history1" class="col-form-label col-form-label-md font-weight-bold">주요내용</form:label>
                    <form:input path="history1" class="form-control form-control-md"/>
                </div>
            </div>
            <c:if test="${modifyUserDemoBsVO.history2_date !=null}">
            <div class="form-row">
                <div class="form-group col col-md-4">
                    <form:label path="history2_date" class="col-form-label col-form-label-md font-weight-bold">년월</form:label>
                    <form:input path="history2_date" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-4">
                    <form:label path="history2" class="col-form-label col-form-label-md font-weight-bold">주요내용</form:label>
                    <form:input path="history2" class="form-control form-control-md"/>
                </div>
            </div>
            </c:if>
            <c:if test="${modifyUserDemoBsVO.history3_date !=null}">
            <div class="form-row">
                <div class="form-group col col-md-4">
                    <form:label path="history3_date" class="col-form-label col-form-label-md font-weight-bold">년월</form:label>
                    <form:input path="history3_date" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-4">
                    <form:label path="history3" class="col-form-label col-form-label-md font-weight-bold">주요내용</form:label>
                    <form:input path="history3" class="form-control form-control-md"/>
                </div>
            </div>
            </c:if>
            <hr>
            <div class="form-row">
                <label class="form-label text-success-custom font-weight-bold d-block">주요 포상현황</label>
            </div>

            <div class="form-row">
                <div class="form-group col col-md-3">
                    <form:label path="prize1_date" class="col-form-label col-form-label-md font-weight-bold">년월</form:label>
                    <form:input path="prize1_date" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-3">
                    <form:label path="prize1" class="col-form-label col-form-label-md font-weight-bold">상장명/포상명</form:label>
                    <form:input path="prize1" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-3">
                    <form:label path="prize1" class="col-form-label col-form-label-md font-weight-bold">수여기관</form:label>
                    <form:input path="prize1_org" class="form-control form-control-md"/>
                </div>
                <div class="form-group col col-md-3">
                    <form:label path="prize1" class="col-form-label col-form-label-md font-weight-bold">포상비고</form:label>
                    <form:input path="prize1_etc" class="form-control form-control-md"/>

                </div>
            </div>
            <c:if test="${modifyUserDemoBsVO.prize2_date!=null}">
                <div class="form-row">
                    <div class="form-group col col-md-3">
                        <form:label path="prize2_date" class="col-form-label col-form-label-md font-weight-bold">년월</form:label>
                        <form:input path="prize2_date" class="form-control form-control-md"/>
                    </div>
                    <div class="form-group col col-md-3">
                        <form:label path="prize2" class="col-form-label col-form-label-md font-weight-bold">상장명/포상명</form:label>
                        <form:input path="prize2" class="form-control form-control-md"/>
                    </div>
                    <div class="form-group col col-md-3">
                        <form:label path="prize2" class="col-form-label col-form-label-md font-weight-bold">수여기관</form:label>
                        <form:input path="prize2_org" class="form-control form-control-md"/>
                    </div>
                    <div class="form-group col col-md-3">
                        <form:label path="prize2" class="col-form-label col-form-label-md font-weight-bold">포상비고</form:label>
                        <form:input path="prize2_etc" class="form-control form-control-md"/>

                    </div>
                </div>
            </c:if>
            <c:if test="${modifyUserDemoBsVO.prize3_date!=null}">
                <div class="form-row">
                    <div class="form-group col col-md-3">
                        <form:label path="prize3_date" class="col-form-label col-form-label-md font-weight-bold">년월</form:label>
                        <form:input path="prize3_date" class="form-control form-control-md"/>
                    </div>
                    <div class="form-group col col-md-3">
                        <form:label path="prize3" class="col-form-label col-form-label-md font-weight-bold">상장명/포상명</form:label>
                        <form:input path="prize3" class="form-control form-control-md"/>
                    </div>
                    <div class="form-group col col-md-3">
                        <form:label path="prize3" class="col-form-label col-form-label-md font-weight-bold">수여기관</form:label>
                        <form:input path="prize3_org" class="form-control form-control-md"/>
                    </div>
                    <div class="form-group col col-md-3">
                        <form:label path="prize3" class="col-form-label col-form-label-md font-weight-bold">포상비고</form:label>
                        <form:input path="prize3_etc" class="form-control form-control-md"/>

                    </div>
                </div>
            </c:if>
        </form:form>

    </div>
</div>

<div class="tab-pane "  id="navs-tap2">
    <div class="card-body">
        <form:form modelAttribute="modifyUserDemoBsDetailVO">
            <div class="form-row">
                <span class="form-label text-success-custom font-weight-bold text-muted">대표자의 연구개발 주요 실적</span>
            </div>
            <br>

            <div class="form-row">
                <form:label path="ceo_rnd_result1" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">개발과정명 또는 연구논문명</form:label>
                <div class="form-group col col-md-3">
                    <form:input path="ceo_rnd_result1" class="form-control form-control-md"/>
                </div>
                &emsp;
                <form:label path="ceo_rnd_result1_org" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">개발(연구)기관/기업</form:label>
                <div class="form-group col col-md-3">
                    <form:input path="ceo_rnd_result1_org" class="form-control form-control-md"/>
                </div>
            </div>


            <div class="form-row">
                <form:label path="ceo_rnd_result1_role" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">연구개발 역할</form:label>
                <div class="form-group col col-md-3">
                    <form:input path="ceo_rnd_result1_role" class="form-control form-control-md"/>
                </div>
                <form:label path="ceo_rnd_result1_result" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">주요성과</form:label>
                <div class="form-group col col-md-3">
                    <form:input path="ceo_rnd_result1_result" class="form-control form-control-md"/>
                </div>
            </div>

            <div class="form-row">
                <form:label path="ceo_rnd_result1_dur" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">연구개발 기간</form:label>
                <div class="form-group col col-md-3">
                    <form:input path="ceo_rnd_result1_dur" class="form-control form-control-md"/>
                </div>
            </div>
            <br>

            <c:if test="${modifyUserDemoBsDetailVO.ceo_rnd_result2 != null}">
                <div class="form-row">
                    <form:label path="ceo_rnd_result2" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">개발과정명 또는 연구논문명</form:label>
                    <div class="form-group col col-md-3">
                        <form:input path="ceo_rnd_result2" class="form-control form-control-md"/>
                    </div>
                    &emsp;
                    <form:label path="ceo_rnd_result2_org" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">개발(연구)기관/기업</form:label>
                    <div class="form-group col col-md-3">
                        <form:input path="ceo_rnd_result2_org" class="form-control form-control-md"/>
                    </div>
                </div>


                <div class="form-row">
                    <form:label path="ceo_rnd_result2_role" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">연구개발 역할</form:label>
                    <div class="form-group col col-md-3">
                        <form:input path="ceo_rnd_result2_role" class="form-control form-control-md"/>
                    </div>
                    <form:label path="ceo_rnd_result2_result" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">주요성과</form:label>
                    <div class="form-group col col-md-3">
                        <form:input path="ceo_rnd_result2_result" class="form-control form-control-md"/>
                    </div>
                </div>

                <div class="form-row">
                    <form:label path="ceo_rnd_result2_dur" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">연구개발 기간</form:label>
                    <div class="form-group col col-md-3">
                        <form:input path="ceo_rnd_result2_dur" class="form-control form-control-md"/>
                    </div>
                </div>
                <br>
            </c:if>

            <hr>
            <div class="form-row">
                <span class="form-label text-success-custom font-weight-bold text-muted">연구개발 추진 현황</span>
            </div>

            <div class="form-row">
                <form:label path="rnd_effort1" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">연구개발 추진 현황</form:label>
                <div class="form-group col col-md-10">
                    <form:input path="rnd_effort1" class="form-control form-control-md"/>
                </div>
            </div>

            <div class="form-row">
                <span>연구개발 타입&emsp;</span>
                <label class="custom-control custom-radio d-inline-block">
                    <form:radiobutton path="rnd_effort1_type" class="custom-control-input" value="0"
                                      disabled="true"/>
                    <span class="custom-control-label">자체개발</span>
                </label>
                <label class="custom-control custom-radio d-inline-block">
                    <form:radiobutton path="rnd_effort1_type" class="custom-control-input" value="1"
                                      disabled="true"/>
                    <span class="custom-control-label">국가과제</span>
                </label>

                <span>연구개발 비고, 특허 인증&emsp</span>
                <div class="form-group col col-md-4">
                    <form:input path="rnd_effort1_etc" class="form-control form-control-md"/>
                </div>
            </div>
            <hr>

            <c:if test="${modifyUserDemoBsDetailVO.rnd_effort2!=null}">
            <div class="form-row">
                <span>연구개발 추진 현황&emsp;</span>
                <div class="form-group col col-md-10">
                    <form:input path="rnd_effort2" class="form-control form-control-md"/>
                </div>
            </div>

            <div class="form-row">
                <span>연구개발 타입&emsp;</span>
                <label class="custom-control custom-radio d-inline-block">
                    <form:radiobutton path="rnd_effort2_type" class="custom-control-input" value="0"
                                      disabled="true"/>
                    <span class="custom-control-label">자체개발</span>
                </label>
                <label class="custom-control custom-radio d-inline-block">
                    <form:radiobutton path="rnd_effort2_type" class="custom-control-input" value="1"
                                      disabled="true"/>
                    <span class="custom-control-label">국가과제</span>
                </label>

                <span>연구개발 비고, 특허 인증&emsp;</span>
                <div class="form-group col col-md-4">
                    <form:input path="rnd_effort2_etc" class="form-control form-control-md"/>
                </div>
            </div>
            <hr>
            </c:if>

            <c:if test="${modifyUserDemoBsDetailVO.rnd_effort3!=null}">
                <div class="form-row">
                    <span>연구개발 추진 현황&emsp;</span>
                    <div class="form-group col col-md-10">
                        <form:input path="rnd_effort3" class="form-control form-control-md"/>
                    </div>
                </div>

                <div class="form-row">
                    <span>연구개발 타입&emsp;</span>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="rnd_effort3_type" class="custom-control-input" value="0"
                                          disabled="true"/>
                        <span class="custom-control-label">자체개발</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="rnd_effort3_type" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">국가과제</span>
                    </label>

                    <span>연구개발 비고, 특허 인증&emsp;</span>
                    <div class="form-group col col-md-4">
                        <form:input path="rnd_effort3_etc" class="form-control form-control-md"/>
                    </div>
                </div>
                <hr>
            </c:if>

            <c:if test="${modifyUserDemoBsDetailVO.rnd_effort4!=null}">
                <div class="form-row">
                    <span>연구개발 추진 현황&emsp;</span>
                    <div class="form-group col col-md-10">
                        <form:input path="rnd_effort4" class="form-control form-control-md"/>
                    </div>
                </div>

                <div class="form-row">
                    <span>연구개발 타입&emsp;</span>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="rnd_effort4_type" class="custom-control-input" value="0"
                                          disabled="true"/>
                        <span class="custom-control-label">자체개발</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="rnd_effort4_type" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">국가과제</span>
                    </label>

                    <span>연구개발 비고, 특허 인증&emsp;</span>
                    <div class="form-group col col-md-4">
                        <form:input path="rnd_effort4_etc" class="form-control form-control-md"/>
                    </div>
                </div>
                <hr>
            </c:if>

            <c:if test="${modifyUserDemoBsDetailVO.rnd_effort5!=null}">
                <div class="form-row">
                    <span>연구개발 추진 현황&emsp;</span>
                    <div class="form-group col col-md-10">
                        <form:input path="rnd_effort5" class="form-control form-control-md"/>
                    </div>
                </div>

                <div class="form-row">
                    <span>연구개발 타입&emsp;</span>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="rnd_effort5_type" class="custom-control-input" value="0"
                                          disabled="true"/>
                        <span class="custom-control-label">자체개발</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="rnd_effort5_type" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">국가과제</span>
                    </label>

                    <span>연구개발 비고, 특허 인증&emsp;</span>
                    <div class="form-group col col-md-4">
                        <form:input path="rnd_effort5_etc" class="form-control form-control-md"/>
                    </div>
                </div>
                <hr>
            </c:if>

            <c:if test="${modifyUserDemoBsDetailVO.rnd_effort6!=null}">
                <div class="form-row">
                    <span>연구개발 추진 현황&emsp;</span>
                    <div class="form-group col col-md-10">
                        <form:input path="rnd_effort6" class="form-control form-control-md"/>
                    </div>
                </div>

                <div class="form-row">
                    <span>연구개발 타입&emsp;</span>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="rnd_effort6_type" class="custom-control-input" value="0"
                                          disabled="true"/>
                        <span class="custom-control-label">자체개발</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="rnd_effort6_type" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">국가과제</span>
                    </label>

                    <span>연구개발 비고, 특허 인증&emsp;</span>
                    <div class="form-group col col-md-4">
                        <form:input path="rnd_effort6_etc" class="form-control form-control-md"/>
                    </div>
                </div>
                <hr>
            </c:if>





            <div class="form-row">
                <span class="form-label
                text-success-custom font-weight-bold text-muted">지식재산권 보유 현황(특허,실용신안,상표,디자인등)</span>
            </div>

            <div class="form-row">
                <form:label path="own_ip1" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 보유 명칭</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="own_ip1" class="form-control form-control-md"/>

                </div>
                <form:label path="own_ip1_type" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 타입</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="own_ip1_type" class="form-control form-control-md"/>
                </div>
                <form:label path="own_ip1_code" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 출원번호</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="own_ip1_code" class="form-control form-control-md"/>
                </div>
            </div>

            <div class="form-row">
                <form:label path="own_ip1_date" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 출원날짜</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="own_ip1_date" class="form-control form-control-md"/>

                </div>
                <form:label path="own_ip1_org" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 담당기관</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="own_ip1_org" class="form-control form-control-md"/>
                </div>
                <form:label path="own_ip1_etc" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 비고</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="own_ip1_etc" class="form-control form-control-md"/>
                </div>
            </div>
            <br>

            <c:if test="${modifyUserDemoBsDetailVO.own_ip2!=null}">
                <div class="form-row">
                    <form:label path="own_ip2" class="col-form-label col-form-label-md col-md-2  text-md-right font-weight-bold">지재권 보유 명칭</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_ip2" class="form-control form-control-md"/>

                    </div>
                    <form:label path="own_ip2_type" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 타입</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_ip2_type" class="form-control form-control-md"/>
                    </div>
                    <form:label path="own_ip2_code" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 출원번호</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_ip2_code" class="form-control form-control-md"/>
                    </div>
                </div>

                <div class="form-row">
                    <form:label path="own_ip2_date" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 출원날짜</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_ip2_date" class="form-control form-control-md"/>

                    </div>
                    <form:label path="own_ip2_org" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 담당기관</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_ip2_org" class="form-control form-control-md"/>
                    </div>
                    <form:label path="own_ip2_etc" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 비고</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_ip2_etc" class="form-control form-control-md"/>
                    </div>
                </div>
                <br>
            </c:if>

            <c:if test="${modifyUserDemoBsDetailVO.own_ip3!=null}">
                <div class="form-row">
                    <form:label path="own_ip3" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 보유 명칭</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_ip3" class="form-control form-control-md"/>

                    </div>
                    <form:label path="own_ip3_type" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 타입</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_ip3_type" class="form-control form-control-md"/>
                    </div>
                    <form:label path="own_ip3_code" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 출원번호</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_ip3_code" class="form-control form-control-md"/>
                    </div>
                </div>

                <div class="form-row">
                    <form:label path="own_ip3_date" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 출원날짜</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_ip3_date" class="form-control form-control-md"/>

                    </div>
                    <form:label path="own_ip3_org" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 담당기관</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_ip3_org" class="form-control form-control-md"/>
                    </div>
                    <form:label path="own_ip3_etc" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">지재권 비고</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_ip3_etc" class="form-control form-control-md"/>
                    </div>
                </div>
            </c:if>




            <hr>

            <div class="form-row">
                <span class="form-label
                text-success-custom font-weight-bold text-muted">국내외 인증 보유 현황</span>
            </div>
            <br>

            <div class="form-row">
                <form:label path="own_cert1" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">인증 보유 명칭</form:label>
                <div class="form-group col col-md-3">
                    <form:input path="own_cert1" class="form-control form-control-md"/>
                </div>
                <form:label path="own_cert1_type" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">인증 타입</form:label>
                <div class="form-group col col-md-3">
                    <form:input path="own_cert1_type" class="form-control form-control-md"/>
                </div>
            </div>
            <div class="form-row">
                <form:label path="own_cert1_code" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">인증등록번호</form:label>
                <div class="form-group col col-md-3">
                    <form:input path="own_cert1_code" class="form-control form-control-md"/>
                </div>
                <form:label path="own_cert1_date" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">인증 출원 날짜</form:label>
                <div class="form-group col col-md-3">
                    <form:input path="own_cert1_date" class="form-control form-control-md"/>
                </div>
            </div>
            <br>
            <c:if test="${modifyUserDemoBsDetailVO.own_cert2!=null}">
                <div class="form-row">
                    <form:label path="own_cert2" class="col-form-label col-form-label-md col-md-2 text-md-right  font-weight-bold">인증 보유 명칭</form:label>
                    <div class="form-group col col-md-3">
                        <form:input path="own_cert2" class="form-control form-control-md"/>
                    </div>
                    <form:label path="own_cert2_type" class="col-form-label col-form-label-md col-md-2  text-md-right font-weight-bold">인증 타입</form:label>
                    <div class="form-group col col-md-3">
                        <form:input path="own_cert2_type" class="form-control form-control-md"/>
                    </div>
                </div>
                <div class="form-row">
                    <form:label path="own_cert2_code" class="col-form-label col-form-label-md col-md-2  text-md-right font-weight-bold">인증등록번호</form:label>
                    <div class="form-group col col-md-3">
                        <form:input path="own_cert2_code" class="form-control form-control-md"/>
                    </div>
                    <form:label path="own_cert2_date" class="col-form-label col-form-label-md col-md-2  text-md-right font-weight-bold">인증 출원 날짜</form:label>
                    <div class="form-group col col-md-3">
                        <form:input path="own_cert2_date" class="form-control form-control-md"/>
                    </div>
                </div>
                <br>
            </c:if>

            <c:if test="${modifyUserDemoBsDetailVO.own_cert3!=null}">
                <div class="form-row">
                    <form:label path="own_cert3" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">인증 보유 명칭</form:label>
                    <div class="form-group col col-md-3">
                        <form:input path="own_cert3" class="form-control form-control-md"/>
                    </div>
                    <form:label path="own_cert3_type" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">인증 타입</form:label>
                    <div class="form-group col col-md-3">
                        <form:input path="own_cert3_type" class="form-control form-control-md"/>
                    </div>
                </div>
                <div class="form-row">
                    <form:label path="own_cert3_code" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">인증등록번호</form:label>
                    <div class="form-group col col-md-3">
                        <form:input path="own_cert3_code" class="form-control form-control-md"/>
                    </div>
                    <form:label path="own_cert3_date" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">인증 출원 날짜</form:label>
                    <div class="form-group col col-md-3">
                        <form:input path="own_cert3_date" class="form-control form-control-md"/>
                    </div>
                </div>
            </c:if>

            <hr>
            <div class="form-row">
                <span class="form-label
                text-success-custom font-weight-bold text-muted">실증계획관련 보유장비 및 기자재</span>
            </div>
            <br>

            <div class="form-row">
                <form:label path="own_device1" class="col-form-label col-form-label-md col-md-2 text-md-right  font-weight-bold">보유 장비명</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="own_device1" class="form-control form-control-md"/>
                </div>

                <form:label path="own_device1_weight" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">무게(kg)</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="own_device1_weight" class="form-control form-control-md"/>
                </div>

                <form:label path="own_device1_size" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">크기(W x D x H)</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="own_device1_size" class="form-control form-control-md"/>
                </div>
            </div>

            <div class="form-row">
                <form:label path="own_device1_pw" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사용전원</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="own_device1_pw" class="form-control form-control-md"/>
                </div>

                <form:label path="own_device1_wat" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소비전력</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="own_device1_wat" class="form-control form-control-md"/>
                </div>

                <form:label path="own_device1_type" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">용도</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="own_device1_type" class="form-control form-control-md"/>
                </div>

            </div>

            <div class="form-row">

                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">설치여부</label>

                <label class="custom-control custom-radio d-inline-block">
                    <form:radiobutton path="is_in_own_device1" class="custom-control-input" value="1"
                                      disabled="true"/>
                    <span class="custom-control-label">Y</span>
                </label>
                <label class="custom-control custom-radio d-inline-block">
                    <form:radiobutton path="is_in_own_device1" class="custom-control-input" value="0"
                                      disabled="true"/>
                    <span class="custom-control-label">N</span>
                </label>
            </div>
            <br>

            <c:if test="${modifyUserDemoBsDetailVO.own_device2!=null}">
                <div class="form-row">
                    <form:label path="own_device2" class="col-form-label col-form-label-md col-md-2 text-md-right  font-weight-bold">보유 장비명</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_device2" class="form-control form-control-md"/>
                    </div>

                    <form:label path="own_device2_weight" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">무게(kg)</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_device2_weight" class="form-control form-control-md"/>
                    </div>

                    <form:label path="own_device2_size" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">크기(W x D x H)</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_device2_size" class="form-control form-control-md"/>
                    </div>
                </div>

                <div class="form-row">
                    <form:label path="own_device2_pw" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사용전원</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_device2_pw" class="form-control form-control-md"/>
                    </div>

                    <form:label path="own_device2_wat" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소비전력</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_device2_wat" class="form-control form-control-md"/>
                    </div>

                    <form:label path="own_device2_type" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">용도</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_device2_type" class="form-control form-control-md"/>
                    </div>

                </div>

                <div class="form-row">

                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">설치여부</label>

                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="is_in_own_device2" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">Y</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="is_in_own_device2" class="custom-control-input" value="0"
                                          disabled="true"/>
                        <span class="custom-control-label">N</span>
                    </label>
                </div>

                <br>

            </c:if>

            <c:if test="${modifyUserDemoBsDetailVO.own_device3!=null}">
                <div class="form-row">
                    <form:label path="own_device3" class="col-form-label col-form-label-md col-md-2 text-md-right  font-weight-bold">보유 장비명</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_device3" class="form-control form-control-md"/>
                    </div>

                    <form:label path="own_device3_weight" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">무게(kg)</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_device3_weight" class="form-control form-control-md"/>
                    </div>

                    <form:label path="own_device3_size" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">크기(W x D x H)</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_device3_size" class="form-control form-control-md"/>
                    </div>
                </div>

                <div class="form-row">
                    <form:label path="own_device3_pw" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">사용전원</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_device3_pw" class="form-control form-control-md"/>
                    </div>

                    <form:label path="own_device3_wat" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소비전력</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_device3_wat" class="form-control form-control-md"/>
                    </div>

                    <form:label path="own_device3_type" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">용도</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="own_device3_type" class="form-control form-control-md"/>
                    </div>

                </div>

                <div class="form-row">

                    <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">설치여부</label>

                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="is_in_own_device3" class="custom-control-input" value="1"
                                          disabled="true"/>
                        <span class="custom-control-label">Y</span>
                    </label>
                    <label class="custom-control custom-radio d-inline-block">
                        <form:radiobutton path="is_in_own_device3" class="custom-control-input" value="0"
                                          disabled="true"/>
                        <span class="custom-control-label">N</span>
                    </label>
                </div>
            </c:if>
            <hr>


            <div class="form-row">
                <span class="form-label
                text-success-custom font-weight-bold text-muted">실증 계획</span>
            </div>
            <br>

            <div class="form-row">
                <form:label path="demo_needs" class="col-form-label col-form-label-md col-md-2  font-weight-bold">실증배경,필요성,목표</form:label>
                <form:textarea path="demo_needs" class="form-control" readonly="true" style="resize:none"/>
            </div>

            <div class="form-row">
                <form:label path="demo_main_point" class="col-form-label col-form-label-md col-md-2  font-weight-bold">실증관리 핵심요소</form:label>
                <form:textarea path="demo_main_point" class="form-control" readonly="true" style="resize:none"/>
            </div>
            <div class="form-row">
                <form:label path="demo_use_plan" class="col-form-label col-form-label-md col-md-2  font-weight-bold">실증결과 활용계획</form:label>
                <form:textarea path="demo_use_plan" class="form-control" readonly="true" style="resize:none"/>
            </div>

            <hr>

            <div class="form-row">
                <form:label path="demo_facil_mat" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">실증대상 기자재 시설자재</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="demo_facil_mat" class="form-control form-control-md"/>
                </div>


                <form:label path="demo_facil_ict" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">실증대상 ICT 기자재</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="demo_facil_ict" class="form-control form-control-md"/>
                </div>

                <form:label path="demo_facil_fer" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">실증대상 작물보호제 및 비료</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="demo_facil_fer" class="form-control form-control-md"/>
                </div>
            </div>

            <div class="form-row">
                <form:label path="demo_facil_sw" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">실증대상 SW</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="demo_facil_sw" class="form-control form-control-md"/>
                </div>


                <form:label path="demo_facil_robot" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">실증대상 로봇</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="demo_facil_robot" class="form-control form-control-md"/>
                </div>

                <form:label path="demo_facil_model" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">실증대상 생육모델</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="demo_facil_model" class="form-control form-control-md"/>
                </div>
            </div>
            <hr>
            <div class="form-row">
                <span class="form-label
                text-success-custom font-weight-bold text-muted">실증 설계</span>
            </div>
            <br>

            <div class="form-row">
                <form:label path="demo_paln_gh" class="col-form-label col-form-label-md col-md-2  font-weight-bold">실증설계 온실설치</form:label>
                <form:textarea path="demo_paln_gh" class="form-control" readonly="true" style="resize:none"/>
            </div>

            <div class="form-row">
                <form:label path="demo_paln_facil" class="col-form-label col-form-label-md col-md-2  font-weight-bold">실증설계 기자재 설치</form:label>
                <form:textarea path="demo_paln_facil" class="form-control" readonly="true" style="resize:none"/>
            </div>


            <div class="form-row">
                <form:label path="demo_paln_exper" class="col-form-label col-form-label-md col-md-2  font-weight-bold">실증설계 실험분석</form:label>
                <form:textarea path="demo_paln_exper" class="form-control" readonly="true" style="resize:none"/>
            </div>

            <div class="form-row">
                <form:label path="demo_paln_mng" class="col-form-label col-form-label-md col-md-2  font-weight-bold">실증관리</form:label>
                <form:textarea path="demo_paln_mng" class="form-control" readonly="true" style="resize:none"/>
            </div>
            <hr>
            <div class="form-row">
                <span class="form-label
                text-success-custom font-weight-bold text-muted">사업과 계획</span>
            </div>
            <br>

            <div class="form-row">
                <form:label path="demo_plan_ip" class="col-form-label col-form-label-md col-md-2  font-weight-bold">사업계획 지자재, 인증</form:label>
                <form:textarea path="demo_plan_ip" class="form-control" readonly="true" style="resize:none"/>
            </div>

            <div class="form-row">
                <form:label path="demo_plan_target" class="col-form-label col-form-label-md col-md-2  font-weight-bold">사업계획 국내외 시장</form:label>
                <form:textarea path="demo_plan_target" class="form-control" readonly="true" style="resize:none"/>
            </div>

            <div class="form-row">
                <form:label path="demo_plan_sales" class="col-form-label col-form-label-md col-md-2  font-weight-bold">사업계획 판매계획</form:label>
                <form:textarea path="demo_plan_sales" class="form-control" readonly="true" style="resize:none"/>
            </div>

            <div class="form-row">
                <form:label path="demo_plan_post" class="col-form-label col-form-label-md col-md-2  font-weight-bold">사업계획 향후</form:label>
                <form:textarea path="demo_plan_post" class="form-control" readonly="true" style="resize:none"/>
            </div>
            <hr>

            <div class="form-row">
                <span class="form-label
                text-success-custom font-weight-bold text-muted">반입 기자재 리스트</span>
            </div>
            <br>

            <div class="form-row">
                시설자재
            </div>

            <div class="form-row">
                <form:label path="in_facil_mat" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">명칭</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_mat" class="form-control"/>
                </div>

                <form:label path="in_facil_mat_type" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">용도</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_mat_type" class="form-control form-control md"/>
                </div>

                <form:label path="in_facil_mat_stnrd" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">단위,규격</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_mat_stnrd" class="form-control" />
                </div>
            </div>


            <div class="form-row">
                <form:label path="in_facil_mat_amount" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">수량</form:label>
                <div class="form-group col col-md-2">
                <form:input path="in_facil_mat_amount" class="form-control"/>
                </div>

                <form:label path="in_facil_mat_val" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">단가</form:label>
                <div class="form-group col col-md-2">
                <form:input path="in_facil_mat_val" class="form-control"/>
                </div>


                <form:label path="in_facil_mat_price" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">금액</form:label>
                <div class="form-group col col-md-2">
                <form:input path="in_facil_mat_price" class="form-control"/>
                </div>
            </div>



            <hr>

            <div class="form-row">
                <span>ict 반입기자재 시설자재명칭 </span>
            </div>


            <div class="form-row">
                <form:label path="in_facil_ict" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">명칭</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_ict" class="form-control"/>
                </div>

                <form:label path="in_facil_ict_type" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">용도</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_ict_type" class="form-control form-control md"/>
                </div>

                <form:label path="in_facil_ict_stnrd" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">단위,규격</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_ict_stnrd" class="form-control" />
                </div>
            </div>


            <div class="form-row">
                <form:label path="in_facil_ict_amount" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">수량</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_ict_amount" class="form-control"/>
                </div>

                <form:label path="in_facil_ict_val" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">단가</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_ict_val" class="form-control"/>
                </div>


                <form:label path="in_facil_ict_price" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">금액</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_ict_price" class="form-control"/>
                </div>
            </div>
            <br>

            <div class="form-row">
                <span>fer 반입기자재 시설자재명칭</span>
            </div>

            <div class="form-row">
                <form:label path="in_facil_fer" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">명칭</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_fer" class="form-control"/>
                </div>

                <form:label path="in_facil_fer_type" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">용도</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_fer_type" class="form-control form-control md"/>
                </div>

                <form:label path="in_facil_fer_stnrd" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">단위,규격</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_fer_stnrd" class="form-control" />
                </div>
            </div>


            <div class="form-row">
                <form:label path="in_facil_fer_amount" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">수량</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_fer_amount" class="form-control"/>
                </div>

                <form:label path="in_facil_fer_val" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">단가</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_fer_val" class="form-control"/>
                </div>


                <form:label path="in_facil_fer_price" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">금액</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_fer_price" class="form-control"/>
                </div>
            </div>
            <br>

            <div class="form-row">
                <span>sw 반입기자재 시설자재명칭 </span>
            </div>

            <div class="form-row">
                <form:label path="in_facil_sw" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">명칭</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_sw" class="form-control"/>
                </div>

                <form:label path="in_facil_sw_type" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">용도</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_sw_type" class="form-control form-control md"/>
                </div>

                <form:label path="in_facil_sw_stnrd" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">단위,규격</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_sw_stnrd" class="form-control" />
                </div>
            </div>


            <div class="form-row">
                <form:label path="in_facil_sw_amount" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">수량</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_sw_amount" class="form-control"/>
                </div>

                <form:label path="in_facil_sw_val" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">단가</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_sw_val" class="form-control"/>
                </div>


                <form:label path="in_facil_sw_price" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">금액</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_sw_price" class="form-control"/>
                </div>
            </div>
            <br>

            <div class="form-row">
                <span>seed 반입기자재 시설자재명칭</span>
            </div>

            <div class="form-row">
                <form:label path="in_facil_seeding" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">명칭</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_seeding" class="form-control"/>
                </div>

                <form:label path="in_facil_seedingtype" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">용도</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_seedingtype" class="form-control form-control md"/>
                </div>

                <form:label path="in_facil_seeding_stnrd" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">단위,규격</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_seeding_stnrd" class="form-control" />
                </div>
            </div>


            <div class="form-row">
                <form:label path="in_facil_seeding_amount" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">수량</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_seeding_amount" class="form-control"/>
                </div>

                <form:label path="in_facil_seeding_val" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">단가</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_seeding_val" class="form-control"/>
                </div>


                <form:label path="in_facil_seeding_price" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">금액</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_seeding_price" class="form-control"/>
                </div>
            </div>
            <br>

            <div class="form-row">
                <span>robot 반입기자재 시설자재명칭</span>
            </div>

            <div class="form-row">
                <form:label path="in_facil_robot" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">명칭</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_robot" class="form-control"/>
                </div>

                <form:label path="in_facil_robot_type" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">용도</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_robot_type" class="form-control form-control md"/>
                </div>

                <form:label path="in_facil_robot_stnrd" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">단위,규격</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_robot_stnrd" class="form-control" />
                </div>
            </div>


            <div class="form-row">
                <form:label path="in_facil_robot_amount" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">수량</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_robot_amount" class="form-control"/>
                </div>

                <form:label path="in_facil_robot_val" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">단가</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_robot_val" class="form-control"/>
                </div>


                <form:label path="in_facil_robot_price" class="col-form-label col-form-label-md col-md-1 text-md-right font-weight-bold">금액</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_facil_robot_price" class="form-control"/>
                </div>
            </div>
            <br>

            <div class="form-row">
                <span class="form-label
                text-success-custom font-weight-bold text-muted">실증단지 반입 유해 화학물질 목록</span>
            </div>
            <br>

            <div class="form-row">
                <form:label path="in_hazd_chemical1" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">유해화학물질 명</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_hazd_chemical1" class="form-control form-control md"/>
                </div>
                <form:label path="in_hazd_chemical1_form" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반입 유해화학물질 화학식</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_hazd_chemical1_form" class="form-control form-control md"/>
                </div>
                <form:label path="in_hazd_chemical1_amount" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반입 유해화학물질 예상사용량</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_hazd_chemical1_amount" class="form-control form-control md"/>
                </div>

            </div>
            <div class="form-row">
                <form:label path="in_hazd_chemical1_case" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반입 유해화학물질 보관함</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_hazd_chemical1_case" class="form-control form-control md"/>
                </div>
                <form:label path="in_hazd_chemical1_loc" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반입 유해화학물질 보관장소</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_hazd_chemical1_loc" class="form-control form-control md"/>
                </div>
                <form:label path="in_hazd_chemical1_etc" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반입 유해화학물질 보관장소</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="in_hazd_chemical1_etc" class="form-control form-control md"/>
                </div>
            </div>

            <br>

            <c:if test="${modifyUserDemoBsDetailVO.in_hazd_chemical2!=null}">
                <div class="form-row">
                    <form:label path="in_hazd_chemical2" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">유해화학물질 명</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="in_hazd_chemical2" class="form-control form-control md"/>
                    </div>
                    <form:label path="in_hazd_chemical2_form" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반입 유해화학물질 화학식</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="in_hazd_chemical2_form" class="form-control form-control md"/>
                    </div>
                    <form:label path="in_hazd_chemical2_amount" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반입 유해화학물질 예상사용량</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="in_hazd_chemical2_amount" class="form-control form-control md"/>
                    </div>

                </div>
                <div class="form-row">
                    <form:label path="in_hazd_chemical2_case" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반입 유해화학물질 보관함</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="in_hazd_chemical2_case" class="form-control form-control md"/>
                    </div>
                    <form:label path="in_hazd_chemical2_loc" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반입 유해화학물질 보관장소</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="in_hazd_chemical2_loc" class="form-control form-control md"/>
                    </div>
                    <form:label path="in_hazd_chemical2_etc" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반입 유해화학물질 보관장소</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="in_hazd_chemical2_etc" class="form-control form-control md"/>
                    </div>
                </div>

                <br>
            </c:if>

            <c:if test="${modifyUserDemoBsDetailVO.in_hazd_chemical3!=null}">
                <div class="form-row">
                    <form:label path="in_hazd_chemical3" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">유해화학물질 명</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="in_hazd_chemical3" class="form-control form-control md"/>
                    </div>
                    <form:label path="in_hazd_chemical3_form" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반입 유해화학물질 화학식</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="in_hazd_chemical3_form" class="form-control form-control md"/>
                    </div>
                    <form:label path="in_hazd_chemical3_amount" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반입 유해화학물질 예상사용량</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="in_hazd_chemical3_amount" class="form-control form-control md"/>
                    </div>

                </div>
                <div class="form-row">
                    <form:label path="in_hazd_chemical3_case" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반입 유해화학물질 보관함</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="in_hazd_chemical3_case" class="form-control form-control md"/>
                    </div>
                    <form:label path="in_hazd_chemical3_loc" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반입 유해화학물질 보관장소</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="in_hazd_chemical3_loc" class="form-control form-control md"/>
                    </div>
                    <form:label path="in_hazd_chemical3_etc" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반입 유해화학물질 보관장소</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="in_hazd_chemical3_etc" class="form-control form-control md"/>
                    </div>
                </div>

                <br>
            </c:if>
            <div class="form-row">
                <span class="form-label
                text-success-custom font-weight-bold text-muted">폐기물 발생 추정</span>
            </div>
            <br>

            <div class="form-row">
                <form:label path="waste_water_amount" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">폐기물 오염수 발생량</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="waste_water_amount" class="form-control form-control md"/>
                </div>

                <form:label path="waste_water_case" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">폐기물 오염수보관장소</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="waste_water_case" class="form-control form-control md"/>
                </div>
                <form:label path="waste_water_ext_plan" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">폐기물 오염수 방출계획</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="waste_water_ext_plan" class="form-control form-control md"/>
                </div>
            </div>


            <div class="form-row">
                <form:label path="waste_soil_amount" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">폐기물 토양 발생량</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="waste_soil_amount" class="form-control form-control md"/>
                </div>

                <form:label path="waste_soil_case" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">폐기물 토양 보관장소</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="waste_soil_case" class="form-control form-control md"/>
                </div>
                <form:label path="waste_soil_ext_plan" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">폐기물 토양 방출계획</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="waste_soil_ext_plan" class="form-control form-control md"/>
                </div>
            </div>

            <hr>

            <div class="form-row">
                 <span class="form-label
                text-success-custom font-weight-bold text-muted">소요 전력랑 및 내역</span>
            </div>
            <br>


            <div class="form-row">
                <form:label path="facil_pw1" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소요전력 장비명1</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="facil_pw1" class="form-control form-control md"/>
                </div>

                <form:label path="facil_pw1_type" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소요전력 장비 용도</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="facil_pw1_type" class="form-control form-control md"/>
                </div>
            </div>
            <div class="form-row">
                <form:label path="facil_pw1_v" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소요전력 장비 사용전원</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="facil_pw1_v" class="form-control form-control md"/>
                </div>
                <form:label path="facil_pw1_w" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소요전력 장비 소비전력</form:label>
                <div class="form-group col col-md-2">
                    <form:input path="facil_pw1_w" class="form-control form-control md"/>
                </div>
            </div>
            <br>

            <c:if test="${modifyUserDemoBsDetailVO.facil_pw2!=null}">

                <div class="form-row">
                    <form:label path="facil_pw2" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소요전력 장비명2</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="facil_pw2" class="form-control form-control md"/>
                    </div>

                    <form:label path="facil_pw2_type" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소요전력 장비 용도</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="facil_pw2_type" class="form-control form-control md"/>
                    </div>
                </div>
                <div class="form-row">
                    <form:label path="facil_pw2_v" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소요전력 장비 사용전원</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="facil_pw2_v" class="form-control form-control md"/>
                    </div>
                    <form:label path="facil_pw2_w" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소요전력 장비 소비전력</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="facil_pw2_w" class="form-control form-control md"/>
                    </div>
                </div>
                <br>
            </c:if>

            <c:if test="${modifyUserDemoBsDetailVO.facil_pw3!=null}">

                <div class="form-row">
                    <form:label path="facil_pw3" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소요전력 장비명1</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="facil_pw3" class="form-control form-control md"/>
                    </div>

                    <form:label path="facil_pw3_type" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소요전력 장비 용도</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="facil_pw3_type" class="form-control form-control md"/>
                    </div>
                </div>
                <div class="form-row">
                    <form:label path="facil_pw3_v" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소요전력 장비 사용전원</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="facil_pw3_v" class="form-control form-control md"/>
                    </div>
                    <form:label path="facil_pw3_w" class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">소요전력 장비 소비전력</form:label>
                    <div class="form-group col col-md-2">
                        <form:input path="facil_pw3_w" class="form-control form-control md"/>
                    </div>
                </div>
            </c:if>
        </form:form>

    </div>

</div>


<div class="tab-pane "  id="navs-tap3">
    <div class="card-body">

        <div class="form-row">
               <span class="form-label
                text-success-custom font-weight-bold text-muted">개인정보 수집 이용 제공에 관한 동의서</span>
        </div>
        <br>





    </div>
</div>


<script>

    curUserDemoBsIdx = ${modifyUserDemoBsVO.idx_user_demo_bs};

    if('${modifyUserDemoBsVO.user_demobs_status}' == '6' || '${modifyUserDemoBsVO.user_demobs_status}' == '7'){
        $('#confirm_plz').addClass('active');
        $('#confirm_fin').removeClass('active');
    } else if('${modifyUserDemoBsVO.user_demobs_status}' == '6'){
        $('#confirm_fin').addClass('active');
        $('#confirm_plz').removeClass('active');
    }
</script>











