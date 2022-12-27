<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>포털 팝업 관리</div>
        </h4>

        <!-- 등록된 팝업창 목록 테이블 -->
        <div class="card">
            <h6 class="card-header with-elements">
                <div class="card-header-title">등록된 팝업</div>
                <div class="card-header-elements ml-auto">
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modals-popup"  data-what="mode-new">+ 팝업 등록</button>
                </div>
            </h6>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <table class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-success text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center sorting">팝업 제목</th>
                                    <th class="text-center sorting">링크</th>
                                    <th class="text-center sorting">게시 기간</th>
                                    <th class="text-center px-2">게시 상태</th>
                                    <th class="text-center px-2">등록일</th>
                                    <th class="text-center px-2">게시자</th>
                                    <th class="text-center px-2">변경</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:choose>
                                    <c:when test="${fn:length(webMainPopupList)>0}">
                                        <c:forEach items = "${webMainPopupList}" var ="popupinfo">
                                            <fmt:parseDate value="${popupinfo.startDate}" var="startDate" pattern="yyyy-MM-dd"/>
                                            <fmt:parseDate value="${popupinfo.endDate}" var="endDate" pattern="yyyy-MM-dd"/>
                                            <tr class="popup-entity" id="${popupinfo.idx_popup_img}" data-contents-type="1">
                                                <td class="text-center">${popupinfo.subject}</td>
                                                <td class="text-center">${popupinfo.popup_url}</td>
                                                <td class="text-center"><fmt:formatDate value="${startDate}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${endDate}" pattern="yyyy-MM-dd"/></td>
                                                <td class="text-center"><c:if test="${popupinfo.is_show == 1}">보임</c:if><c:if test="${popupinfo.is_show == 9}">안보임</c:if></td>
                                                <td class="text-center"><fmt:formatDate value="${popupinfo.reg_date}" pattern="yyyy년 MM월 dd일"/></td>
                                                <td class="text-center">${popupinfo.admin_name}</td>
                                                <td class="text-center">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-default" data-toggle="modal" data-target="#modals-popup" data-what="mode-update"><span class="fas fa-pen" > </span></button>
                                                        <button onclick="sitePopupDelete(this)" class="btn btn-sm btn-default"><span class="fas fa-trash-alt" > </span></button>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        <tr class="">
                                            <td colspan="7" class="text-center">등록된 팝업이 없습니다.</td>
                                        </tr>
                                    </c:otherwise>
                                </c:choose>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <c:if test="${pop_total_count ne 0}">
                        <div class="row">
                            <div class="col-sm-12 col-md-5">
                                <div class="dataTables_info" id="" role="status" aria-live="polite">총 ${pop_total_count}개 중 ${pop_list_amount*(cur_page-1)+1}에서 ${pop_total_count}까지</div>
                            </div>
                            <div class="col-sm-12 col-md-7">
                                <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                                    <ul class="pagination">
                                        <c:set var="name" value="${pop_total_count/pop_list_amount}" />
                                        <c:if test="${pop_is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c80_site_mng',{page_num:1},'홈페이지 정보 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                                        <c:if test="${pop_is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:pageLoad('c80_site_mng',{page_num:${cur_page-1}},'홈페이지 정보 관리');" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>
                                        <c:forEach var="i" begin="1" end="${pop_page_amount}">
                                            <li class="paginate_button page-item <c:if test="${(pop_cur_sector-1)*pop_page_amount+i eq cur_page}">active</c:if>"><a href="javascript:pageLoad('c80_site_mng',{page_num:${(pop_cur_sector-1)*pop_page_amount+i}},'홈페이지 정보 관리');" class="page-link">${(pop_cur_sector-1)*pop_page_amount+i}</a></li>
                                        </c:forEach>
                                        <c:if test="${pop_is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c80_site_mng',{page_num:${cur_page+1}},'홈페이지 정보 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                                        <c:if test="${pop_is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:pageLoad('c80_site_mng',{page_num:${pop_tot_page}},'홈페이지 정보 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>

        <!-- 등록된 메인 홈 브랜드 이미지 (3) 목록 테이블 -->
        <div class="card" style="margin-top: 32px">
            <h6 class="card-header with-elements">
                <div class="card-header-title">브랜드 이미지 (포털 홈의 상단 이미지, 3개)</div>
                <div class="card-header-elements ml-auto">
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modals-brand-popup" data-what="mode-new">+ 브랜드 이미지 등록</button>
                </div>
            </h6>
            <div class="card-datatable table-responsive pt-0 pb-3">
                <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                <thead class="bg-success text-white font-weight-bold">
                                <tr role="row">
                                    <th class="text-center px-2">배너 순서</th>
                                    <th class="text-center px-2">링크</th>
                                    <th class="text-center px-2">등록일</th>
                                    <th class="text-center px-2">게시자</th>
                                    <th class="text-center px-2">변경</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:choose>
                                    <c:when test="${fn:length(webMainBannerList)>0}">
                                        <c:forEach items = "${webMainBannerList}" var ="bannerinfo">
                                            <tr class="banner-entity" id="${bannerinfo.idx_popup_img}" data-contents-type="2">
                                                <td class="text-center">${bannerinfo.is_show}</td>
                                                <td class="text-center">${bannerinfo.popup_url}</td>
                                                <td class="text-center"><fmt:formatDate value="${bannerinfo.reg_date}" pattern="yyyy년 MM월 dd일"/></td>
                                                <td class="text-center">${bannerinfo.admin_name}</td>
                                                <td class="text-center">
                                                    <div class="btn-group">
                                                        <button class="btn btn-sm btn-default" data-toggle="modal" data-target="#modals-brand-popup" data-what="mode-update"><span class="fas fa-pen" > </span></button>
                                                        <button onclick="sitePopupDelete(this)" class="btn btn-sm btn-default"><span class="fas fa-trash-alt" > </span></button>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        <tr class="">
                                            <td colspan="7" class="text-center">등록된 브랜드 이미지가 없습니다.</td>
                                        </tr>
                                    </c:otherwise>
                                </c:choose>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 등록된 팝업창 목록 [추가하기] 테이블 -->
        <div id="modals-popup" class="modal fade">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header bg-success">
                        <h5 id="modal-title" class="modal-title text-white font-weight-bold mode-new">팝업 작성</h5>
                        <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body">
                        <form id="popupForm">
                            <input type="hidden" name="idx_popup_img" value="${admin.idx_admin}">
                            <input type="hidden" name="idx_popup" value="">
                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">제목</label>
                                <div class="col-md-10">
                                    <input type="text" name="subject" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">게시 기간</label>
                                <div class="col-md-10">
                                    <div id="datepicker-open" class="input-daterange input-group mode-edit mode-new">
                                        <input type="text" class="form-control" name="start">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">~</span>
                                        </div>
                                        <input type="text" class="form-control" name="end">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">게시 상태</label>
                                <div class="col-md-10" style="padding-top: 5px">
                                    <select id="is_show" name="is_show" class="custom-select custom-select-sm w-auto">
                                        <option value="1" selected>보임</option>
                                        <option value="9">안보임</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">링크</label>
                                <div class="col-md-10">
                                    <input type="text" name="popup_url" class="form-control form-control-md mode-edit mode-new" placeholder="링크를 입력해 주세요">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">이미지</label>
                                <div class="col-md-10 file_upload_box">
                                    <input class="form-control form-control-md mode-edit mode-new upload-name" name="upload-name" value="파일선택" disabled="disabled">
                                    <input type="file" id="image_upload" name="file1" class="upload-hidden" accept="image/*">
                                    <label for="image_upload" class="btn btn-success">이미지 업로드</label>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold"></label>
                                <div class="col-md-10 file_upload_box">
                                    <img id="preview-image" src="" />
                                </div>
                            </div>
                            <div class="modal-footer justify-content-between mode-view">
                                <div>
                                    <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">닫기</button>
                                </div>

                                <div>
                                    <button id="popup_submit" type="button" class="btn btn-primary">등록</button>
                                </div>

                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>

        <%-- 브랜드 이미지 등록 팝업 --%>
        <div id="modals-brand-popup" class="modal fade">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header bg-success">
                        <h5 id="brand-modal-title" class="modal-title text-white font-weight-bold mode-new">브랜드 이미지 등록</h5>
                        <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                    </div>
                    <div class="modal-body">
                        <form id="brandPopupForm">
                            <input type="hidden" name="brand_idx_popup" value="">
                            <input type="hidden" name="idx_brand_admin" value="${admin.idx_admin}">
                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">제목</label>
                                <div class="col-md-10">
                                    <input type="text" name="brand_subject" class="form-control form-control-md mode-edit mode-new" placeholder="제목을 입력해 주세요">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">배너 순서</label>
                                <div class="col-md-10" style="padding-top: 5px">
                                    <select id="brand_is_show" name="brand_is_show" class="custom-select custom-select-sm w-auto">
                                        <option value="1" selected>1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">링크</label>
                                <div class="col-md-10">
                                    <input type="text" name="brand_popup_url" class="form-control form-control-md mode-edit mode-new" placeholder="링크를 입력해 주세요">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">이미지</label>
                                <div class="col-md-10 file_upload_box">
                                    <input class="form-control form-control-md mode-edit mode-new upload-name" name="brand-upload-name" value="파일선택" disabled="disabled">
                                    <input type="file" id="brand_image_upload" name="file2" class="upload-hidden" accept="image/*">
                                    <label for="brand_image_upload" class="btn btn-success">이미지 업로드</label>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold"></label>
                                <div class="col-md-10 file_upload_box">
                                    <img id="brand-preview-image" src="" />
                                </div>
                            </div>
                            <div class="modal-footer justify-content-between mode-view">
                                <div>
                                    <button type="button" class="btn btn-outline-dark mr-2" data-dismiss="modal">닫기</button>
                                </div>

                                <div>
                                    <button id="brand_popup_submit" type="button" class="btn btn-primary">등록</button>
                                </div>

                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>

<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
<!-- / Layout footer -->
<script>
    // const curPopupdata = '';
    const popupList=[];
    <c:forEach items="${webMainPopupList}" var="popup" varStatus="status">
        popupList.push({
            idx_popup_img :"${popup.idx_popup_img}",
            subject :"${popup.subject}",
            popup_url :"${popup.popup_url}",
            startDate :"${popup.startDate}",
            endDate :"${popup.endDate}",
            is_show :"${popup.is_show}",
            reg_date :"${popup.reg_date}",
            idx_admin :"${popup.idx_admin}",
            idx_file_info :"${popup.idx_file_info}",
            admin_name :"${popup.admin_name}",
            file_path :"${popup.file_path}"
        })
    </c:forEach>

    $(".popup-entity").click(function(){
        var selectId = $(this).attr("id");
        // console.log(selectId, '누른 열값')
        // const curPopupdata = selectId;
        for(var popup of popupList){
            if(selectId === popup.idx_popup_img){
                let dateStartString = popup.startDate
                let dateStart = dateStartString.split(' ')[0]

                let dateEndString = popup.endDate
                let dateEnd = dateEndString.split(' ')[0]

                $("input[name=idx_popup]").val(popup.idx_popup_img);
                $("input[name=subject]").val(popup.subject);
                $("input[name=start]").val(dateStart);
                $("input[name=end]").val(dateEnd);
                $("input[name=upload-name]").val(popup.file_path);


                $("input[name=popup_url]").val(popup.popup_url);
                $("#is_show").val(popup.is_show);
                $("#preview-image").attr("src", popup.file_path);

                break;
            }
        }
    });

    const bannerList=[];
    <c:forEach items="${webMainBannerList}" var="banner" varStatus="status">
    bannerList.push({
        idx_popup_img :"${banner.idx_popup_img}",
        subject :"${banner.subject}",
        popup_url :"${banner.popup_url}",
        is_show :"${banner.is_show}",
        reg_date :"${banner.reg_date}",
        idx_admin :"${banner.idx_admin}",
        idx_file_info :"${banner.idx_file_info}",
        admin_name :"${banner.admin_name}",
        file_path :"${banner.file_path}"
    })
    </c:forEach>

    $(".banner-entity").click(function(){
        var selectId = $(this).attr("id");
        for(var banner of bannerList){
            if(selectId === banner.idx_popup_img){
                $("input[name=brand_idx_popup]").val(banner.idx_popup_img);
                $("input[name=brand_subject]").val(banner.subject);
                $("input[name=brand-upload-name]").val(banner.file_path);

                $("input[name=brand_popup_url]").val(banner.popup_url);
                $("#brand_is_show").val(banner.is_show);
                $("#brand-preview-image").attr("src", banner.file_path);

                break;
            }
        }
    });


    $(document).ready(function(){
        var fileTarget = $('.file_upload_box .upload-hidden');

        fileTarget.on('change', function(){
            if(window.FileReader){
                var filename = $(this)[0].files[0].name;
            } else {
                var filename = $(this).val().split('/').pop().split('\\').pop();
            }

            $(this).siblings('.upload-name').val(filename);
        });


    });

    function readImage(input) {
        // 인풋 태그에 파일이 있는 경우
        if(input.files && input.files[0]) {
            // 이미지 파일인지 검사 (생략)
            // FileReader 인스턴스 생성
            const reader = new FileReader()
            // 이미지가 로드가 된 경우
            reader.onload = e => {
                const previewImage = document.getElementById("brand-preview-image")
                previewImage.src = e.target.result
            }
            // reader가 이미지 읽도록 하기
            reader.readAsDataURL(input.files[0])
        }
    }
    // input file에 change 이벤트 부여
    const inputImage = document.getElementById("brand_image_upload")
    inputImage.addEventListener("change", e => {
        readImage(e.target)
    })

    function readImageBrand(input) {
        // 인풋 태그에 파일이 있는 경우
        if(input.files && input.files[0]) {
            // 이미지 파일인지 검사 (생략)
            // FileReader 인스턴스 생성
            const reader = new FileReader()
            // 이미지가 로드가 된 경우
            reader.onload = e => {
                const previewImage = document.getElementById("preview-image")
                previewImage.src = e.target.result
            }
            // reader가 이미지 읽도록 하기
            reader.readAsDataURL(input.files[0])
        }
    }
    // input file에 change 이벤트 부여
    const inputImageBrand = document.getElementById("image_upload")
    inputImageBrand.addEventListener("change", e => {
        readImageBrand(e.target)
    })


    $(function() {
        var isRtl = $('html').attr('dir') === 'rtl';
        $('#datepicker-show,#datepicker-open').datepicker({
            orientation: isRtl ? 'auto right' : 'auto left',
            format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
            startDate: '-10d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
            language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
        });
    });

    $(function () {
        // Time
        $('#flatpickr-time-start,#flatpickr-time-end').flatpickr({
            enableTime: true,
            noCalendar: true,
            altInput: true,
            static:true
        });
    });

    $(function() {
        // 모달 팝업 띄울 시 발생하는 이벤트 (이벤트명 : show.bs.modal)
        $('#modals-popup').on('show.bs.modal', function (event) {
            let button = $(event.relatedTarget);
            let what = button.data('what');

            if (what === 'mode-new') {
                console.log('새로작성')
                $('#modal-title').text('팝업 등록')
                $('#popup_submit').text('등록')
                $('#popupForm')[0].reset()
                $('#preview-image').attr('src', '')
            } else if (what === 'mode-update') {
                console.log('수정')
                $('#modal-title').text('팝업 수정')
                $('#popup_submit').text('수정')
            }

        })
    });

    $(function() {
        // 모달 팝업 띄울 시 발생하는 이벤트 (이벤트명 : show.bs.modal)
        $('#modals-brand-popup').on('show.bs.modal', function (event) {
            let button = $(event.relatedTarget);
            let what = button.data('what');

            if (what === 'mode-new') {
                console.log('새로작성')
                $('#brand-modal-title').text('브랜드 이미지 등록')
                $('#brand_popup_submit').text('등록')
                $('#brandPopupForm')[0].reset()
                $('#brand-preview-image').attr('src', '')
            } else if (what === 'mode-update') {
                console.log('수정')
                $('#brand-modal-title').text('브랜드 이미지 수정')
                $('#brand_popup_submit').text('수정')
            }

        })
    });

    $("#is_show").change(function(){
        $('#is_show').val($(this).val());
    })

    $('#popup_submit').on('click',function(event){
        // console.log(this.innerText, '버튼 클릭한 텍스트 값')
        const btnTextState = this.innerText;

        if($("input[name=subject]").val() === ''){
            return alert('제목을 입력해 주세요.')
        }

        if($("input[name=start]").val() === '' || $("input[name=end]").val() === ''){
            return alert('게시기간을 입력해 주세요.')
        }

        if($("input[name=popup_url]").val() === ''){
            return alert('링크를 입력해주세요.')
        }

        console.log(document.getElementById('image_upload').files.length, '파일 길이')

        if(btnTextState === '등록') {
            if(document.getElementById('image_upload').files[0] === null || document.getElementById('image_upload').files[0] === undefined){
                return alert('이미지 파일은 필수입니다')
            }
        }

        let formData = new FormData();
        const startDate =  $("input[name=start]").val()
        const endDate =  $("input[name=end]").val()


        formData.append('subject', $("input[name=subject]").val());
        formData.append('contents_type', '1'); // 타입 1:팝업 , 2:배너
        formData.append('popup_url', $("input[name=popup_url]").val());
        formData.append('startDate', startDate + ' 00:00:00');
        formData.append('endDate', endDate + ' 00:00:00');
        formData.append('is_show', $("#is_show").val()); // 타입 1:팝업 , 2:배너
        formData.append('idx_admin', $("input[name=idx_popup_img]").val());
        if(document.getElementById('image_upload').files.length > 0) {
            formData.append('file1', document.getElementById('image_upload').files[0]);
        }


        if(btnTextState === '등록') {

            $.ajax({
                type: 'post',
                url :'insert_popup', //데이터를 주고받을 파일 주소 입력
                data: formData,//보내는 데이터
                cache: false,
                contentType: false,
                processData: false,
                success: function(result){
                    //작업이 성공적으로 발생했을 경우
                    console.log(result);
                    if (result.result_code === "SUCCESS") {
                        alert(result.result_str);
                        // $('body').removeClass('modal-open');
                        // $('body').css('padding-right', '');
                        // $('#modals-modify').modal("hide")
                        // $(".modal-backdrop").remove();
                        window.location.reload()
                    }
                    else {

                    }
                },
                error:function(error){
                    //에러가 났을 경우 실행시킬 코드
                }
            });
        }

        if (btnTextState === '수정') {
            formData.append('idx_popup_img', $("input[name=idx_popup]").val());

            $.ajax({
                type: 'post',
                url :'modify_popup', //데이터를 주고받을 파일 주소 입력
                data: formData,//보내는 데이터
                cache: false,
                contentType: false,
                processData: false,
                success: function(result){
                    //작업이 성공적으로 발생했을 경우
                    console.log(result);
                    if (result.result_code === "SUCCESS") {
                        alert(result.result_str);
                        window.location.reload()
                    }
                    else {

                    }
                },
                error:function(error){
                    //에러가 났을 경우 실행시킬 코드
                }
            });
        }

    })

    function sitePopupDelete(but){

        let $row = $(but).parents('tr');  //accede a la fila
        let $cols = $row.find('td');  //lee campos

        let dataType = $row.attr('data-contents-type')
        console.log($row.attr('id'))

        if(dataType === "1") {
            let param = {
                idx_popup_img: $row.attr('id'),
                contents_type: 1
            }
            $.ajax({
                type: 'post',
                url: 'delete_popup', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(param),//보내는 데이터
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'json',//받는 데이터 타입
                success: function (result) {
                    console.log(result)
                    if (result.result_code === "SUCCESS") {
                        alert(result.result_str);
                        window.location.reload()
                    } else {
                        // alert("상태 변경에 실패하였습니다")
                        console.log(result)
                    }

                },
                error: function (res) {
                    console.log(res)
                }
            });
        }


        if(dataType === "2") {
            let param ={
                idx_popup_img:$row.attr('id'),
                contents_type:2
            }
            $.ajax({
                type: 'post',
                url: 'delete_popup', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(param),//보내는 데이터
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'json',//받는 데이터 타입
                success: function (result) {
                    console.log(result)
                    if (result.result_code === "SUCCESS") {
                        alert(result.result_str);
                        window.location.reload()
                    } else {
                        // alert("상태 변경에 실패하였습니다")
                        console.log(result)
                    }

                },
                error: function (res) {
                    console.log(res)
                }
            });
        }




    }

    $('#brand_popup_submit').on('click',function(event){
        // console.log(this.innerText, '버튼 클릭한 텍스트 값')
        const btnTextState = this.innerText;

        if(btnTextState === '등록') {
            if(document.getElementById('brand_image_upload').files[0] === null || document.getElementById('brand_image_upload').files[0] === undefined){
                return alert('이미지 파일은 필수입니다')
            }
        }

        let formData = new FormData();

        formData.append('subject', $("input[name=brand_subject]").val());
        formData.append('contents_type', '2'); // 타입 1:팝업 , 2:배너
        formData.append('popup_url', $("input[name=brand_popup_url]").val());
        formData.append('is_show', $("#brand_is_show").val()); // 타입 1:팝업 , 2:배너
        formData.append('idx_admin', $("input[name=idx_brand_admin]").val());
        if(document.getElementById('brand_image_upload').files.length > 0) {
            formData.append('file1', document.getElementById('brand_image_upload').files[0]);
        }


        if(btnTextState === '등록') {

            $.ajax({
                type: 'post',
                url :'insert_banner', //데이터를 주고받을 파일 주소 입력
                data: formData,//보내는 데이터
                cache: false,
                contentType: false,
                processData: false,
                success: function(result){
                    //작업이 성공적으로 발생했을 경우
                    console.log(result);
                    if (result.result_code === "SUCCESS") {
                        alert(result.result_str);
                        window.location.reload()
                    }
                    else {

                    }
                },
                error:function(error){
                    //에러가 났을 경우 실행시킬 코드
                }
            });
        }

        if (btnTextState === '수정') {
            formData.append('idx_popup_img', $("input[name=brand_idx_popup]").val());
            $.ajax({
                type: 'post',
                url :'modify_banner', //데이터를 주고받을 파일 주소 입력
                data: formData,//보내는 데이터
                cache: false,
                contentType: false,
                processData: false,
                success: function(result){
                    //작업이 성공적으로 발생했을 경우
                    console.log(result);
                    if (result.result_code === "SUCCESS") {
                        alert(result.result_str);
                        window.location.reload()
                    }
                    else {

                    }
                },
                error:function(error){
                    //에러가 났을 경우 실행시킬 코드
                }
            });
        }

    })
</script>
<!-- / Page content -->

