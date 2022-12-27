<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 10:35 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Page content -->

<div class="container-fluid flex-grow-1 container-p-y">
    <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
        <div>실증사업 현황</div>
    </h4>

    <div class="card px-4 pt-4 mb-4">
        <div class="form-row mb-4">
            <div class="col-md-4 ">
                <label class="form-label text-muted">실증분야</label>
                <div class="form-inline">
                    <select class="custom-select mr-sm-2 mb-2 mb-sm-0">
                        <option selected="">분야 전체</option>
                        <option value="1">분야</option>
                        <option value="2">분야</option>
                        <option value="3">분야</option>
                    </select>
                    <select class="custom-select mr-sm-2 mb-2 mb-sm-0">
                        <option selected="">실증대상 전체</option>
                        <option value="1">분야</option>
                        <option value="2">분야</option>
                        <option value="3">분야</option>
                    </select>
                    <select class="custom-select mr-sm-2 mb-2 mb-sm-0">
                        <option selected="">실증대상 전체</option>
                        <option value="1">분야</option>
                        <option value="2">분야</option>
                        <option value="3">분야</option>
                    </select>
                </div>
            </div>
            <div class="col-md-2 ">
                <label class="form-label text-muted">실증주체</label>
                <div class="form-inline mt-2">
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="checkbox" class="custom-control-input">
                        <span class="custom-control-label">전체</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="checkbox" class="custom-control-input">
                        <span class="custom-control-label">자율</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="checkbox" class="custom-control-input">
                        <span class="custom-control-label">위탁</span>
                    </label>
                </div>
            </div>
            <div class="col-md-5 ">
                <label class="form-label text-muted">입주일</label>
                <div class="form-inline">
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="checkbox" class="custom-control-input">
                        <span class="custom-control-label">전체</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="checkbox" class="custom-control-input">
                        <span class="custom-control-label">오늘</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="checkbox" class="custom-control-input">
                        <span class="custom-control-label">오늘 이전</span>
                    </label>
                    <label class="custom-control custom-checkbox mr-2">
                        <input type="checkbox" class="custom-control-input">
                        <span class="custom-control-label">이 날짜 이전</span>
                    </label>
                    <input type="text" class="form-control" id="datepicker-base">
                </div>
            </div>
            <div class="col-md-1 text-right">
                <label class="form-label d-none d-md-block">&nbsp;</label>
                <button type="button" class="btn btn-success">조회</button>
            </div>
        </div>
    </div>

    <hr class="container-m-nx mt-4 mb-4 ml-2 mr-2">

    <div class="card">
        <h6 class="card-header with-elements">
            <div class="card-header-title">기업목록</div>
            <div class="card-header-elements ml-auto">
                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modals-default">+ 기업 등록</button>
            </div>
        </h6>
        <!-- Modal template -->
        <div class="modal fade" id="modals-default">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">기업 정보 등록</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body">
                        <label class="form-label">기본정보</label>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">기업명<span class="text__essential">*</span></label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">설립일</label>
                                <input type="text" class="form-control" id="datepicker-base">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">사업자등록번호<span class="text__essential">*</span></label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">법인등록번호</label>
                                <input type="text" class="form-control" id="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">소재지<span class="text__essential">*</span></label>
                                <input type="text" class="form-control mb-1" placeholder="(본사) 전라남도 광양시 XXXXXX XXXXXXXXXX">
                                <input type="text" class="form-control" placeholder="(공장) 전라남도 광양시 XXXXXX XXXXXXXXXX">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-6 mb-3">
                                <label class="form-label text-muted">전년도 매출액</label>
                                <input type="text" class="form-control" placeholder="000,000(백만원)">
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">자기자본비율(%)</label>
                                <input type="text" class="form-control" id="">
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">상근인원</label>
                                <input type="text" class="form-control" id="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-6 mb-3">
                                <label class="form-label text-muted">업태,종목<span class="text__essential">*</span></label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">주생산 품목</label>
                                <input type="text" class="form-control" id="">
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">&nbsp;</label>
                                <input type="text" class="form-control" id="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">개발예정 품목(기술)<span class="text__essential">*</span></label>
                                <input type="text" class="form-control" placeholder="(본사) 전라남도 광양시 XXXXXX XXXXXXXXXX">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col m-0">
                                <label class="form-label text-muted ">이용신청시설</label>
                                <div class="d-block mt-2 mb-0">
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-1">
                                        <span class="custom-control-label">온실</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-1">
                                        <span class="custom-control-label">R&D연구실</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-1">
                                        <span class="custom-control-label">스타트업사무실</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-1">
                                        <span class="custom-control-label">기타</span>
                                    </label>
                                    <div class="d-inline-block">
                                        (<input type="text" style="border:none;width:50px;">)
                                    </div>
                                </div>
                            </div>
                        </div>

                        <hr>

                        <label class="form-label">대표자</label>
                        <div class="form-row">
                            <div class="form-group col-6 mb-3">
                                <label class="form-label text-muted">성명<span class="text__essential">*</span></label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">주소</label>
                                <input type="text" class="form-control" placeholder="(00000) 전라남도 광양시 XXXXXX XXXXXXXXXX">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">전화번호(사무실)</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">전화번호(휴대폰)<span class="text__essential">*</span></label>
                                <input type="text" class="form-control" id="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">이메일<span class="text__essential">*</span></label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">팩스</label>
                                <input type="text" class="form-control" id="">
                            </div>
                        </div>

                        <label class="form-label">담당자</label>
                        <div class="form-row">
                            <div class="form-group col-6 mb-3">
                                <label class="form-label text-muted">성명<span class="text__essential">*</span></label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">부서</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">직위<span class="text__essential">*</span></label>
                                <input type="text" class="form-control" id="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">전화번호(사무실)<span class="text__essential">*</span></label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">전화번호(휴대폰)<span class="text__essential">*</span></label>
                                <input type="text" class="form-control" id="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">이메일<span class="text__essential">*</span></label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label text-muted">팩스</label>
                                <input type="text" class="form-control" id="">
                            </div>
                        </div>


                        <hr>
                        <label class="form-label">실증계획</label>
                        <div class="form-row">
                            <div class="form-group col m-0">
                                <label class="form-label text-muted ">실증주체<span class="text__essential">*</span></label>
                                <div class="d-block mt-2 mb-2">
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-2">
                                        <span class="custom-control-label">자율</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-2">
                                        <span class="custom-control-label">위탁</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col m-0">
                                <label class="form-label text-muted ">이용신청시설<span class="text__essential">*</span></label>
                                <div class="d-block mt-2 mb-2">
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-3">
                                        <span class="custom-control-label">단동비닐</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-3">
                                        <span class="custom-control-label">연동비닐</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-3">
                                        <span class="custom-control-label">육모장</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-3">
                                        <span class="custom-control-label">노지</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-3">
                                        <span class="custom-control-label">단동유리</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-3">
                                        <span class="custom-control-label">연동유리</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-3">
                                        <span class="custom-control-label">식물농장</span>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted">실증방법<span class="text__essential">*</span></label>
                                <div class="d-block mt-2 mb-2">
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-4">
                                        <span class="custom-control-label">비교실증</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-4">
                                        <span class="custom-control-label">단순실증</span>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted">실증목적<span class="text__essential">*</span></label>
                                <div class="d-block mt-2 mb-2">
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-5">
                                        <span class="custom-control-label">성능확인</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-5">
                                        <span class="custom-control-label">자체평가</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted">실증조건<span class="text__essential">*</span></label>
                                <div class="d-block mt-2 mb-2">
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-6">
                                        <span class="custom-control-label">일반환경</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-6">
                                        <span class="custom-control-label">특수환경</span>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted">생육토양<span class="text__essential">*</span></label>
                                <div class="d-block mt-2 mb-2">
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-7">
                                        <span class="custom-control-label">토경재배</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-7">
                                        <span class="custom-control-label">수경재배</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-7">
                                        <span class="custom-control-label">고형배지재배</span>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col m-0">
                                <label class="form-label text-muted ">실증대상<span class="text__essential">*</span></label>
                                <div class="d-block mt-2 mb-2">
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-8">
                                        <span class="custom-control-label">시설자재</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-8">
                                        <span class="custom-control-label">ICT기자재</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-8">
                                        <span class="custom-control-label">작물보호제/비료</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-8">
                                        <span class="custom-control-label">스마트팜SW</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-8">
                                        <span class="custom-control-label">단동유리</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-8">
                                        <span class="custom-control-label">생육모델</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-8">
                                        <span class="custom-control-label">로봇</span>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted ">실증기간<span class="text__essential">*</span></label>
                                <div class="d-block form-inline mb-2">
                                    <span class="text-muted">시작일</span> <input type="text" class="form-control" id="datepicker-start" style="width:150px;">
                                    <span class="text-muted ml-3">종료일</span> <input type="text" class="form-control" id="datepicker-end" style="width:150px;">
                                    <span class="ml-3">총 120일</span>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted">상주계획<span class="text__essential">*</span></label>
                                <div class="d-block">
                                    <div class="d-inline-block"><span class="text-muted">1.필요시설 :</span></div>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-9">
                                        <span class="custom-control-label">R&D연구실</span>
                                    </label>
                                    <label class="custom-control custom-checkbox d-inline-block">
                                        <input type="checkbox" class="custom-control-input" name="dcbm-9">
                                        <span class="custom-control-label">스타트업사무실</span>
                                    </label>
                                    <div class="d-inline-block ml-4"><span class="text-muted">2.상주인력 </span>: 000명</div>
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">실증단지 이용신청서<span class="text__essential">*</span></label>
                                <input type="file" class="">
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">실증계획서<span class="text__essential">*</span></label>
                                <input type="file" class="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">작물재배계획서<span class="text__essential">*</span></label>
                                <input type="file" class="">
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">실증대상 기자재 및 장치 등의 설치계획서<span class="text__essential">*</span></label>
                                <input type="file" class="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">실증장비 운전조건 및 실증방법 기술서<span class="text__essential">*</span></label>
                                <input type="file" class="">
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">사업자등록증</label>
                                <input type="file" class="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">대표자 주민등록등본<span class="text__essential">*</span></label>
                                <input type="file" class="">
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">재무재표 또는 회계감사서</label>
                                <input type="file" class="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-0">
                                <label class="form-label d-block text-muted">법인등기부등본</label>
                                <input type="file" class="">
                            </div>
                            <div class="form-group col mb-0">
                                <label class="form-label d-block text-muted">인감증명서<span class="text__essential">*</span></label>
                                <input type="file" class="">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary">저장</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="modal fade" id="modals-default-view">
            <div class="modal-dialog modal-lg">
                <form class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">기업 정보 등록</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body">
                        <label class="form-label">기본정보</label>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">기업명</label>
                                <span>행복한 농장</span>
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">설립일</label>
                                <span>2021.00.00</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">사업자등록번호</label>
                                <span>000-00-00000</span>
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">법인등록번호</label>
                                <span>0000000000</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">소재지</label>
                                <span class="d-block mb-2">(본사) 전라남도 광양시 XXXXXX XXXXXXXXXX</span>
                                <span class="d-block mb-2">(공장) 전라남도 광양시 XXXXXX XXXXXXXXXX</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-6 mb-3">
                                <label class="form-label d-block text-muted">전년도 매출액</label>
                                <span>000,000(백만원)</span>
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">자기자본비율(%)</label>
                                <span>150%</span>
                            </div>
                            <div class="form-group col  mb-3">
                                <label class="form-label d-block text-muted">상근인원</label>
                                <span>200명</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-6 mb-3">
                                <label class="form-label d-block text-muted">업태,종목</label>
                                <span>서비스</span>
                            </div>
                            <div class="form-group col-6 mb-3">
                                <label class="form-label d-block text-muted">주생산 품목</label>
                                <span>XXXXXX, XXXXXX</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">개발예정 품목(기술)</label>
                                <span>리얼 디지털 트윈 스마트팜 시설</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col m-0">
                                <label class="form-label d-block text-muted ">이용신청시설</label>
                                <div class="d-block mt-2 mb-0">
                                    온실
                                </div>
                            </div>
                        </div>

                        <hr>

                        <label class="form-label">대표자</label>
                        <div class="form-row">
                            <div class="form-group col-6 mb-3">
                                <label class="form-label d-block text-muted">성명</label>
                                <span>홍길동</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">주소</label>
                                <span>(00000) 전라남도 광양시 XXXXXX XXXXXXXXXX</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">전화번호(사무실)</label>
                                <span>000-0000-0000</span>
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">전화번호(휴대폰)</label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">이메일</label>
                                <span>xxxxxx@xxx.com</span>
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">팩스</label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>

                        <hr>

                        <label class="form-label">담당자</label>
                        <div class="form-row">
                            <div class="form-group col-6 mb-3">
                                <label class="form-label d-block text-muted">성명</label>
                                <span>박길동</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">부서</label>
                                <span>XXXXXXXXX</span>
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">직위</label>
                                <span>XXXXXXXXX</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">전화번호(사무실)</label>
                                <span>000-0000-0000</span>
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">전화번호(휴대폰)</label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">이메일</label>
                                <span>xxxxxx@xxx.com</span>
                            </div>
                            <div class="form-group col mb-3">
                                <label class="form-label d-block text-muted">팩스</label>
                                <span>000-0000-0000</span>
                            </div>
                        </div>


                        <hr>
                        <label class="form-label">실증계획</label>
                        <div class="form-row">
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted ">실증주체</label>
                                <div class="d-block mb-2">
                                    <span>자율</span>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted ">이용신청시설</label>
                                <div class="d-block mb-2">
                                    <span>단동비닐, 연동비닐, 노지</span>
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted">실증방법</label>
                                <div class="d-block mb-2">
                                    <span>비교실증</span>
                                </div>
                            </div>
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted">실증목적</label>
                                <div class="d-block mb-2">
                                    <span>성능확인 자체평가</span>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted">실증조건</label>
                                <div class="d-block mb-2">
                                    <span>일반환경 특수환경</span>
                                </div>
                            </div>
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted">생육토양</label>
                                <div class="d-block mb-2">
                                    <span>토경재배, 수경재배</span>
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted ">실증대상</label>
                                <div class="d-block mb-2">
                                    <span>ICT기자재 작물보호제/비료 스마트팜SW</span>
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted ">실증기간</label>
                                <div class="d-block form-inline mb-2">
                                    <span class="text-muted">시작일</span> <span>2021.00.00</span>
                                    <span class="text-muted ml-3">종료일</span> <span>2021.00.00</span>
                                    <span class="ml-3">총 120일</span>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted">상주계획</label>
                                <div class="d-block">
                                    <div class="d-inline-block"><span class="text-muted">1.필요시설 :</span></div>
                                    <span>R&D연구실</span>
                                    <div class="d-inline-block ml-4"><span class="text-muted">2.상주인력 </span>: 000명</div>
                                </div>
                            </div>
                        </div>

                        <hr>
                        <label class="form-label">입주 정보</label>
                        <div class="form-row">
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted">입주일</label>
                                <div class="d-block mb-2">
                                    <span>2021.00.00</span>
                                </div>
                            </div>
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted">퇴거일</label>
                                <div class="d-block mb-2">
                                    <span>2021.00.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted">실증서비스료</label>
                                <div class="d-block mb-2">
                                    <span>00,000,000원</span>
                                </div>
                            </div>
                            <div class="form-group col mb-2">
                                <label class="form-label text-muted">보증금</label>
                                <div class="d-block mb-2">
                                    <span>00,000,000원</span>
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col mb-0">
                                <label class="form-label d-block text-muted">첨부 서류</label>
                                <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 실증단지 이용신청서</button>
                                <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 최초 실증계획서</button>
                                <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 변경 실증계획서</button>
                                <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 작물재배계획서</button>
                                <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 확정 이용계획서</button>
                                <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 실증대상 기자재 및 장치 등의 설치 계획서</button>
                                <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 실증장비 운전조건 및 실증방법 기술서</button>
                                <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 대표자 주민등록등본</button>
                                <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 법인등기부등본</button>
                                <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 인감증명서</button>
                                <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 재무제표 또는 회계감사서</button>
                                <button type="button" class="btn mb-1 btn-outline-secondary"><i class="lnr lnr-download"></i> 사업자등록증</button>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <div>
                            <button type="button" class="btn btn-outline-primary">정보 수정</button>
                            <button type="button" class="btn btn-primary">출력</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div class="card-datatable table-responsive">
            <div id="article-list_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12 col-md-6">
                        <label class="mr-3">총 : <strong>150</strong>개</label><label class="mr-3">위탁 : <strong>70</strong>개</label><label class="mr-3">자율 : <strong>80</strong>개</label>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div id="" class="dataTables_filter"><label>찾기:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="article-list"></label></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <table id="article-list" class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="article-list_info" style="">
                            <thead class="bg-success">
                            <tr role="row">
                                <th class="sorting" style="width:20px">ID</th>
                                <th class="sorting" style="width:150px">기업명</th>
                                <th class="sorting" style="width:50px">주체</th>
                                <th class="sorting" style="width:50px">분류</th>
                                <th class="sorting" style="width:80px">실증대상</th>
                                <th class="sorting" style="width:80px">투입실증장비</th>
                                <th class="sorting" style="width:80px">실증단계</th>
                                <th class="sorting" style="width:80px">입주일</th>
                                <th class="sorting" style="width:80px">퇴거일</th>
                                <th class="sorting" style="width:110px">실증 서비스료</th>
                                <th class="sorting" style="width:110px">보증금(원)</th>
                                <th class="sorting" style="width:110px">운영비</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="">
                                <td class="text-center">1</td>
                                <td><a href="#none" data-toggle="modal" data-target="#modals-default-view">맛있는 농부</a></td>
                                <td>자율</td>
                                <td>스마트팜</td>
                                <td>제어기용외 1건</td>
                                <td>제어기용외 0건</td>
                                <td>제어기용외 0건</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">2</td>
                                <td>맛있는 농부</td>
                                <td>자율</td>
                                <td>스마트팜</td>
                                <td>제어기용외 1건</td>
                                <td>제어기용외 0건</td>
                                <td>제어기용외 0건</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">3</td>
                                <td>맛있는 농부</td>
                                <td>자율</td>
                                <td>스마트팜</td>
                                <td>제어기용외 1건</td>
                                <td>제어기용외 0건</td>
                                <td>제어기용외 0건</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">4</td>
                                <td>맛있는 농부</td>
                                <td>자율</td>
                                <td>스마트팜</td>
                                <td>제어기용외 1건</td>
                                <td>제어기용외 0건</td>
                                <td>제어기용외 0건</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">5</td>
                                <td>맛있는 농부</td>
                                <td>자율</td>
                                <td>스마트팜</td>
                                <td>제어기용외 1건</td>
                                <td>제어기용외 0건</td>
                                <td>제어기용외 0건</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">6</td>
                                <td>맛있는 농부</td>
                                <td>자율</td>
                                <td>스마트팜</td>
                                <td>제어기용외 1건</td>
                                <td>제어기용외 0건</td>
                                <td>제어기용외 0건</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">7</td>
                                <td>맛있는 농부</td>
                                <td>자율</td>
                                <td>스마트팜</td>
                                <td>제어기용외 1건</td>
                                <td>제어기용외 0건</td>
                                <td>제어기용외 0건</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">8</td>
                                <td>맛있는 농부</td>
                                <td>자율</td>
                                <td>스마트팜</td>
                                <td>제어기용외 1건</td>
                                <td>제어기용외 0건</td>
                                <td>제어기용외 0건</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">9</td>
                                <td>맛있는 농부</td>
                                <td>자율</td>
                                <td>스마트팜</td>
                                <td>제어기용외 1건</td>
                                <td>제어기용외 0건</td>
                                <td>제어기용외 0건</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                            </tr>
                            <tr class="">
                                <td class="text-center">10</td>
                                <td>맛있는 농부</td>
                                <td>자율</td>
                                <td>스마트팜</td>
                                <td>제어기용외 1건</td>
                                <td>제어기용외 0건</td>
                                <td>제어기용외 0건</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-center">2021.00.00</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                                <td class="text-right">10,000,000원</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-5">
                        <div class="dataTables_info" id="article-list_info" role="status" aria-live="polite">Showing 1 to 10 of 50 entries</div>
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
    <div class="layout-overlay layout-sidenav-toggle"></div>
</div>
<!-- / Page content -->
