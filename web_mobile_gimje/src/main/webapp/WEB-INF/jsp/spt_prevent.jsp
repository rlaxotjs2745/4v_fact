<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:50 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="header.jsp" %>


<div class="page__h1">대면상담 신청</div>
</header>
<div class="content" id="content">
    <div class="page__body">

        <div class="page__cnt">
            <div class="spt__container">
                <div class="prevent__banner">
                    <div class="prevent__banner--title"><strong>실증단지를 이용하고자 하는  고객께<br>
                        실증단진의 시설과 장비를 소개</strong>하고<br>
                        실증단지 이용목적과 얻고자 하는 <strong>실증결과에<br>
                            최적화된 실증계획을 도출할 수 있도록<br>
                            지원합니다.</strong></div>
                </div>

                <div class="cnt__title">대면상담 신청 전 당부 말씀</div>
                <div class="prevent__support">
                    <ul>
                        <li>상담을 원하시는 분께서는 실증단지의 시설특성과 사용현황을 파악해 주시기 바랍니다.</li>
                        <li>실증 계획이 있다면 실증 계획을 공유해 주실 수 있는지 검토 바랍니다.</li>
                        <li>대면상담시, 실증계획을 확인하고 있습니다. 실증계획의 내용은 홈페이지 ‘실증 안내/신청 &gt; 신청서 작성 &gt; <a href="#none" class="btn btn-anchor">절차 안내 및 내려받기</a>’의 양식을 참고해 주십시오.</li>
                    </ul>
                </div>

                <div class="cnt__title">대면상담 가능 분야</div>
                <div class="prevent__support">
                    <ul>
                        <li>이용 신청서 작성 요령</li>
                        <li>실증단지의 시설과 장비 이용상황 (사용승인일, 계약만료, 연장사용신청 가능성 등)</li>
                        <li>실증 가능성 검토</li>
                        <li>실증모델에 대한 최적 실증시설 검토</li>
                        <li>이용 신청 안내 (이용료 설명)</li>
                        <li>사용승인 후 상담 – 실증계획 최종검검, 실증서비스 이용료 산출, 계약사항 확정 지원</li>
                    </ul>
                </div>
                <!--//-->

                <div class="cnt__btn type--topborder">
                    <div class="btn__group">
                        <a href="#popup_councelling" class="btn submit btn-jumbo  js-modal-detail">대면상담 신청</a>
                    </div>
                </div>

                <div class="table__caption">대면상담 이력 : 총 10회</div>
                <div class="table__type "><!--no--head-->
                    <table class="table__type--my">
                        <colgroup>
                            <col style="width:10%">
                            <col style="width:12%">
                            <col>
                            <col style="width:13%">
                            <col style="width:15%">
                        </colgroup>
                        <thead>
                        <tr>
                            <th>상담수</th>
                            <th>상담일</th>
                            <th>주제</th>
                            <th>상담사</th>
                            <th>상담 형식</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>10</td>
                            <td>YYYY.MM.DD</td>
                            <td class="td__left">신청서 작성</td>
                            <td>홍순이</td>
                            <td>방문</td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>YYYY.MM.DD</td>
                            <td class="td__left">신청서 작성</td>
                            <td>홍순이</td>
                            <td>전화</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>YYYY.MM.DD</td>
                            <td class="td__left">신청서 작성</td>
                            <td>홍순이</td>
                            <td>방문</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>YYYY.MM.DD</td>
                            <td class="td__left">신청서 작성</td>
                            <td>홍순이</td>
                            <td>전화</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>YYYY.MM.DD</td>
                            <td class="td__left">신청서 작성</td>
                            <td>홍순이</td>
                            <td>방문</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>YYYY.MM.DD</td>
                            <td class="td__left">신청서 작성</td>
                            <td>홍순이</td>
                            <td>방문</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>YYYY.MM.DD</td>
                            <td class="td__left">신청서 작성</td>
                            <td>홍순이</td>
                            <td>전화</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>YYYY.MM.DD</td>
                            <td class="td__left">신청서 작성</td>
                            <td>홍순이</td>
                            <td>방문</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>YYYY.MM.DD</td>
                            <td class="td__left">신청서 작성</td>
                            <td>홍순이</td>
                            <td>전화</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>YYYY.MM.DD</td>
                            <td class="td__left">신청서 작성</td>
                            <td>홍순이</td>
                            <td>방문</td>
                        </tr>
                        </tbody>
                    </table>
                    <!--//-->
                    <div class="table__paging">
                        <a href="#none" class="paging__prev2 disabled"><img src="resources/assets/image/ico_paging_prev_02.png" alt=""></a>
                        <a href="#none" class="paging__prev disabled"><img src="resources/assets/image/ico_paging_prev.png" alt=""></a>
                        <a href="#none" class="is-active">1</a>
                        <a href="#none">2</a>
                        <a href="#none">3</a>
                        <a href="#none" class="paging__next"><img src="resources/assets/image/ico_paging_next.png" alt=""></a>
                        <a href="#none" class="paging__next2"><img src="resources/assets/image/ico_paging_next_02.png" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="popup_councelling" class="pop__detail">
    <div class="section">
        <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
        <div class="popup__cnt">
            <h5 class="popup__title">대면상담 신청</h5>

            <div class="popup__scroll--area">
                <div class="table__hat">기본정보</div>
                <div class="table__type">
                    <table class="table__type--my table__fixed">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">신청자</div>
                                <div class="td__block">홍길동</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">이메일</div>
                                <div class="td__block">abcd@domain.com</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">연락처</div>
                                <div class="td__block">010-0000-0000</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">단체명</div>
                                <div class="td__block">아름다운 농장</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">주소</div>
                                <div class="td__block">서울시 0000구 0000로 00</div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="table__hat">신청내용</div>
                <div class="table__type">
                    <table class="table__type--my table__fixed">
                        <colgroup>
                            <col style="width:100%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">신청목적<span class="text__essential">*</span></div>
                                <div class="td__block">
                                    <div class="checkbox checkbox--inline">
                                        <input type="checkbox" id="prevent-1" name="prevent">
                                        <label for="prevent-1">이용 신청 안내</label>
                                    </div>
                                    <div class="checkbox checkbox--inline">
                                        <input type="checkbox" id="prevent-2" name="prevent">
                                        <label for="prevent-2">이용 신청서 작성</label>
                                    </div>
                                    <div class="checkbox checkbox--inline">
                                        <input type="checkbox" id="prevent-3" name="prevent">
                                        <label for="prevent-3">시설과 장비 이용상황</label>
                                    </div>
                                    <br>
                                    <div class="checkbox checkbox--inline">
                                        <input type="checkbox" id="prevent-4" name="prevent">
                                        <label for="prevent-4">실증 가능성 검토</label>
                                    </div>
                                    <div class="checkbox checkbox--inline">
                                        <input type="checkbox" id="prevent-5" name="prevent">
                                        <label for="prevent-5">실증 모델 검토</label>
                                    </div>
                                    <div class="checkbox checkbox--inline">
                                        <input type="checkbox" id="prevent-6" name="prevent">
                                        <label for="prevent-6">사용 승인 후 상담</label>
                                    </div>
                                    <div class="checkbox checkbox--inline">
                                        <input type="checkbox" id="prevent-7" name="prevent">
                                        <label for="prevent-7">기타</label>
                                        (<input type="text" class="type__etc" style="width:100px">)
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__form">
                                <div class="th__block">신청일</div>
                                <div class="td__block">
                                    <input type="text" class="datepicker" />
                                    <br><span class="text--guide">원활한 상담을 위해 신청요청일 기준 최소 5일 이후의 상담일을 기입해주십시오.
                    <br>상담사의 일정에 따라 대면 상담일정이 변경될 수 있습니다.</span>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                </div>

                <div class="table__agree">'대면상담' 서비스 제공을 위한 개인정보 수집·이용을 위하여 개인정보 보호법 제15조 및 제22조에 따라 귀하의 동의를 받고자 합니다. 만일 다음 사항 중 어느 하나의 사항을 변경하는 경우에는 이를 사전에 알리고 동의를 받도록 하겠습니다.<br>
                    가. 개인정보의 수집 및 이용 목적
                    -'대면상담'서비스에 대한 업무 처리
                    나. 수집하려는 개인정보의 항목
                    필수항목: 이름, 전화번호, 전자우편, 주소
                    다. 개인정보의 보유 및 이용 기간
                    - 참가종료일로부터 6개월
                    라. 동의를 거부할 권리가 있다는 사실과 동의 거부에 따른 불이익 내용
                    - 귀하는 개인정보의 수집 및 이용에 대한 동의를 거부할 권리가 있으나, 동의하지 않은 경우에는 '대면상담'신청 등에 불이익이 있을 수 있습니다.
                </div>
                <div class="checkbox ">
                    <input type="checkbox" id="agree-1" name="prevent">
                    <label for="agree-1">개인정보 수집 및 이용에 동의합니다.</label>
                </div>
            </div>
        </div>
        <div class="popup__btn">
            <a href="#" class="btn light btn-lg  js-btn-close">취소</a>
            <a href="#" class="btn submit btn-lg">상담신청</a>
        </div>

        <!--<div class="form__btn">
          <a href="#none" class="btn-line js-btn-close">이벤트 참여하기</a>
        </div>-->

    </div>
</div>
<script src="resources/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="resources/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="resources/assets/js/ui.common.js" type="text/javascript"></script>

<%@include file ="footer.jsp" %>
