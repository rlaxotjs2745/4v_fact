<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:50 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file ="header.jsp" %>

<div class="content" id="content">
    <div class="page__body">
        <div class="page__breadcrumbs--box">
            <div class="page__breadcrumbs--inner">
                <span>홈</span>
                <span>고객 지원</span>
                <div class="under__depth">
                    <a href="#" class="under__depth--anchor">상담 신청</a>
                    <div class="under__depth--list">
                        <a href="spt_faq">FAQ</a>
                        <a href="spt_consulting">상담 신청</a>
                        <%--<a href="spt_email?page=1">온라인 문의</a>--%>
                        <a href="spt_visit">견학 신청</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">상담 신청</h2>
                <div class="page__location">
                    <div class="location__deco">상담 신청을 통해 실증단지 이용의 심층적인 상담을 진행합니다.</div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <div class="spt__container">
                <div class="prevent__banner">
                    <div class="prevent__banner--title"><strong>실증단지를 이용하고자 하는 고객</strong>께  실증단지의 시설과 장비를 소개하고<br>
                        <strong>실증단지 이용목적과 얻고자 하는 실증결과에 <br>최적화된 실증계획을 도출</strong>할 수 있도록 지원합니다.</div>

                </div>

                <div class="cnt__title">상담 신청 전 당부 말씀</div>
                <div class="prevent__support">
                    <ul>
                        <li>상담을 원하시는 분께서는 실증단지의 시설특성과 사용현황을 파악해 주시기 바랍니다.</li>
                        <li>실증 계획이 있다면 실증 계획을 공유해 주실 수 있는지 검토 바랍니다.</li>
                        <li>상담 시, 실증계획을 확인하고 있습니다. 실증계획의 내용은 홈페이지 ‘실증 안내/신청 &gt; 신청서 작성 &gt; <a href="#none" class="btn btn-anchor">절차 안내 및 다운로드</a>’의 양식을 참고해 주십시오.</li>
                    </ul>
                </div>

                <div class="cnt__title">상담 가능 분야</div>
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
                        <c:if test="${is_login eq true}"><a href="#popup_councelling" class="btn submit btn-jumbo  js-modal-detail">상담 신청</a></c:if>
                        <c:if test="${is_login eq false}"><button href="void(0);" id="consulting_warning" class="btn submit btn-jumbo  js-modal-detail">상담 신청</button></c:if>
                    </div>
                </div>

                <div <c:if test="${is_login eq false}">hidden</c:if>>
                    <div class="table__caption">상담 이력 : 총 ${total_count}회</div>
                    <div id="user_consulting_list" class="table__type "><!--no--head-->

                    </div>
                </div>
            </div>
        </div>


        <div id="popup_councelling" class="pop__detail">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">상담 신청</h5>


                    <div class="popup__scroll--area">
                        <div class="table__hat">기본정보</div>
                        <div class="table__type">
                            <table class="table__type--normal">
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:25%">
                                    <col style="width:20%">
                                    <col style="width:35%">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th class="th__left">신청자</th>
                                    <td class="td__left">${findUserVO.user_name}</td>
                                    <th class="th__left">이메일</th>
                                    <td class="td__left">${findUserVO.email}</td>
                                </tr>
                                <tr>
                                    <th class="th__left">연락처</th>
                                    <td class="td__left">${findUserVO.mphone_num}</td>
                                    <th class="th__left">단체명</th>
                                    <td class="td__left">${corpInfoVO.corp_name_kor}</td>
                                </tr>
                                <tr>
                                    <th class="th__left">신청자 주소</th>
                                    <td class="td__left" colspan="3">${findUserVO.addr}</td>
                                </tr>
                                </tbody>
                            </table>



                        </div>

                        <div class="table__hat">신청내용</div>
                        <div class="table__type">
                            <table class="table__type--normal">
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:80%">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th class="th__left">신청 목적<span class="text__essential">*</span></th>
                                    <td class="td__left">
                                        <div class="radio radio--inline">
                                            <input type="radio" id="prevent-1" name="prevent" value="0" checked>
                                            <label for="prevent-1">이용 신청 안내</label>
                                        </div>
                                        <div class="radio radio--inline">
                                            <input type="radio" id="prevent-2" name="prevent" value="1">
                                            <label for="prevent-2">이용 신청서 작성</label>
                                        </div>
                                        <div class="radio radio--inline">
                                            <input type="radio" id="prevent-3" name="prevent" value="2">
                                            <label for="prevent-3">시설과 장비 이용상황</label>
                                        </div>
                                        <br>
                                        <div class="radio radio--inline">
                                            <input type="radio" id="prevent-4" name="prevent" value="3">
                                            <label for="prevent-4">실증 가능성 검토</label>
                                        </div>
                                        <div class="radio radio--inline">
                                            <input type="radio" id="prevent-5" name="prevent" value="4">
                                            <label for="prevent-5">실증 모델 검토</label>
                                        </div>
                                        <div class="radio radio--inline">
                                            <input type="radio" id="prevent-6" name="prevent" value="5">
                                            <label for="prevent-6">사용 승인 후 상담</label>
                                        </div>
                                        <div class="radio radio--inline">
                                            <input type="radio" id="prevent-7" name="prevent" value="6">
                                            <label for="prevent-7">기타</label>
                                            (<input id="consult_type_etc_str" type="text" class="type__etc" style="width:100px">)
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">신청일</th>
                                    <td class="td__left"><input id="req_date" type="text" class="datepicker" />
                                        <br><span class="text--guide">원활한 상담을 위해 신청요청일 기준 최소 5일 이후의 상담일을 기입해주십시오.<br>상담사의 일정에 따라 상담일정이 변경될 수 있습니다.</span></td>
                                </tr>

                                </tbody>
                            </table>

                        </div>

                        <div class="table__agree">'상담' 서비스 제공을 위한 개인정보 수집·이용을 위하여 개인정보 보호법 제15조 및 제22조에 따라 귀하의 동의를 받고자 합니다. 만일 다음 사항 중 어느 하나의 사항을 변경하는 경우에는 이를 사전에 알리고 동의를 받도록 하겠습니다.<br>
                            가. 개인정보의 수집 및 이용 목적
                            -'상담'서비스에 대한 업무 처리
                            나. 수집하려는 개인정보의 항목
                            필수항목: 이름, 전화번호, 전자우편, 주소
                            다. 개인정보의 보유 및 이용 기간
                            - 참가종료일로부터 6개월
                            라. 동의를 거부할 권리가 있다는 사실과 동의 거부에 따른 불이익 내용
                            - 귀하는 개인정보의 수집 및 이용에 대한 동의를 거부할 권리가 있으나, 동의하지 않은 경우에는 '상담'신청 등에 불이익이 있을 수 있습니다.
                        </div>
                        <div class="checkbox ">
                            <input type="checkbox" id="agree-1" name="agree" value="1">
                            <label for="agree-1">개인정보 수집 및 이용에 동의합니다.</label>
                        </div>
                    </div>
                    <input id="idx_user" hidden value="${findUserVO.idx_user}}">
                </div>
                <div class="popup__btn">
                    <a href="#" class="btn light btn-lg  js-btn-close">취소</a>
                    <button id="save_consulting_req" class="btn submit btn-lg">상담 신청</button>
                </div>
            </div>
        </div>


    </div>
</div>

<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>
<script>
    $(document).ready(function() {

        getUserConsultingList(1);

    });
    $("#consulting_warning").click(function() {
        var result = confirm('신청하려면 로그인이 필요합니다. 로그인 페이지로 이동하시겠습니까');
        if(result) {
            location.replace('login');
        } else {

        }
    });


    $('#save_consulting_req').on("click", function(a) {

        let param={
            idx_user:$("#idx_user").val()*1.0,
            consulting_type:$("input:radio[name='prevent']:checked").val(),

            req_date:new Date($("#req_date").val()),

            is_privacy_accept:$("input[name='agree']:checked").val( )*1//	number	4		0			1:오전, 2:오후, 3:종일, 4, 여러날
        }

        $.ajax({
            type: 'post',
            url :'save_user_consulting_req', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                if(result.result_code=="SUCCESS"){
                    alert(result.result_str);

                    $('#popup_councelling').click();
                    getUserConsultingList(1);

                }
                else {
                    alert(result.result_str);
                }
                //STATUS_001 :
            },
            error:function(){
                //에러가 났을 경우 실행시킬 코드
            }
        });

    });

    function getUserConsultingList(page){
        //console.log(${idx_user});
        $("#user_consulting_list").load('user_consulting_list',{"idx_user": ${idx_user},"page":page}).trigger("create");
    }
</script>
</div>
</body>
</html>
