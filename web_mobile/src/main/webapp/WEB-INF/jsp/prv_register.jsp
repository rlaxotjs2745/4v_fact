<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/07/30
  Time: 4:56 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="header.jsp" %>


<div class="page__h1">신청서 작성</div>
</header>
<div class="content" id="content">
    <div class="page__body">
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <div class="page__location">
                    <div class="location__link">
                        <a href="prv_application" class="location__link--anchor ">절차 안내 및 내려받기</a>
                        <a href="prv_prepare" class="location__link--anchor ">작성 안내</a>
                        <a href="prv_register" class="location__link--anchor is-selected">신청서 등록/보완</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <h3 class="page__subject">신청서 등록/보완</h3>
            <div class="cnt__text">신청서 제출 서류를 확인하셔서 해당 항목에 파일을 등록해 주십시오.</div>

            <div class="fee__container">

                <div class="cnt__title">실증단지 이용 신청서 제출 서류</div>
                <div class="cnt__text">사업별로 제출 서류는 일부 다를 수 있습니다.</div>
                <div class="application__document">
                    <ol>
                        <li>[서식 1호]실증단지 이용신청서 1부(필수)</li>
                        <li>[서식 2호]실증계획서 1부 (필수)</li>
                        <li>[서식 3호]개인정보 수집·이용·제공에 관한 동의서 1부(필수)</li>
                        <li>사업자등록증 사본1부(해당자에 한함)</li>
                        <li>법인등기부등본 1부(해당자에 한함)</li>
                        <li>법인인감증명서 1부(해당자에 한함)</li>
                        <li>4대보험 완납증명서 1부(해당자에 한함)</li>
                        <li>최근 2년간 재무제표 또는 회계감사 보고서 1부(해당자에 한함)</li>
                        <li>기타(가점서류 및 기업역량을 보여줄 수 있는 자료(자유 양식)</li>
                    </ol>
                </div>

                <div class="cnt__btn">
                    <div class="btn__group">
                        <a href="#popup_fileupload" class="btn submit btn-jumbo  js-modal-detail">신청서 등록<br></a>
                    </div>
                    <div class="btn__alert"><i class="ico ico-alert"></i>신청서 접수, 보완을 위해서는 로그인 후 업무를 보실 수 있습니다.</div>
                </div>

            </div>
            <!--//-->
        </div>

        <div id="popup_fileupload" class="pop__detail">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="<%=request.getContextPath()%>/static/assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">신청서 제출 서류 등록</h5>

                    <div class="popup__scroll--area">
                        <div class="table__matter"><span class="text__essential">* 표시는 필수사항 입니다.</span></div>
                        <div class="table__type">
                            <table class="table__type--normal table__fixed">
                                <colgroup>
                                    <col style="width:100%"></col>
                                </colgroup>
                                <tbody>
                                <tr>
                                    <td class="td__upload">
                                        <p class="upload--paper">[서식 1호] 실증단지 이용신청서 1부<span class="text__essential">*</span></p>
                                        <input type="file" class="fileupload">
                                        <span class="text__check">HWP, PDF, DOC, PPT 파일 첨부 가능</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td__upload">
                                        <p class="upload--paper">[서식 2호] 실증계획서 1부<span class="text__essential">*</span></p>
                                        <input type="file" class="fileupload">
                                        <span class="text__check">HWP, PDF, DOC, PPT 파일 첨부 가능</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td__upload">
                                        <p class="upload--paper">[서식 3호] 개인정보 수집·이용·제공에 <br>관한 동의서 1부</p>
                                        <input type="file" class="fileupload">
                                        <span class="text__check">HWP, PDF, DOC, PPT 파일 첨부 가능</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td__upload">
                                        <p class="upload--paper">사업자등록증 사본1부<span class="text__comment">(해당자에 한함)</span></p>
                                        <input type="file" class="fileupload">
                                        <span class="text__check">PDF, JPG, JPEG, PNG 파일 첨부 가능</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td__upload">
                                        <p class="upload--paper">법인등기부등본 1부<span class="text__comment">(해당자에 한함)</span></p>
                                        <input type="file" class="fileupload">
                                        <span class="text__check">PDF, JPG, JPEG, PNG 파일 첨부 가능</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td__upload">
                                        <p class="upload--paper">법인인감증명서 1부<span class="text__comment">(해당자에 한함)</span></p>
                                        <input type="file" class="fileupload">
                                        <span class="text__check">PDF, JPG, JPEG, PNG 파일 첨부 가능</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td__upload">
                                        <p class="upload--paper">4대보험 완납증명서 1부<span class="text__comment">(해당자에 한함)</span></p>
                                        <input type="file" class="fileupload">
                                        <span class="text__check">PDF, JPG, JPEG, PNG 파일 첨부 가능</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td__upload">
                                        <p class="upload--paper">최근 2년간 재무제표 또는 회계감사 <br>보고서 1부<span class="text__comment">(해당자에 한함)</span></p>
                                        <input type="file" class="fileupload">
                                        <span class="text__check">PDF, JPG, JPEG, PNG 파일 첨부 가능</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td__upload">
                                        <p class="upload--paper">기타(가점서류 및 기업역량을 <br>보여줄 수 있는 자료)<span class="text__comment">(자유 양식)</span></p>
                                        <input type="file" class="fileupload">
                                        <span class="text__check">HWP, PDF, DOC, PPT 파일 첨부 가능</span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="table__desc">
                            <ul>
                                <li>서류 등록 후, 변경이 필요한 경우는 ‘실증 안내/신청 > 신청서 작성 > 신청서 등록/보완’ 메뉴 화면의 ‘신청서 보완’ 버튼을 통해 변경하실 수 있습니다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="popup__btn">
                    <a href="#" class="btn light btn-lg  js-btn-close">제출 취소</a>
                    <a href="#" class="btn submit btn-lg">신청서 제출</a>
                </div>

                <!--<div class="form__btn">
                  <a href="#none" class="btn-line js-btn-close">이벤트 참여하기</a>
                </div>-->

            </div>
        </div>

    </div>
</div>

<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/ui.common.js" type="text/javascript"></script>

<%@include file ="footer.jsp" %>