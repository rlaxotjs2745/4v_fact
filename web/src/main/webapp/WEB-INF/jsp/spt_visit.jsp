<%@ page import="java.time.LocalDate" %>
<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/09/01
  Time: 9:51 오전
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
                    <a href="#" class="under__depth--anchor">견학 신청</a>
                    <div class="under__depth--list">
                        <a href="spt_faq">FAQ</a>
                        <a href="spt_consulting">상담 신청</a>

                        <a href="spt_visit">견학 신청</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="page__menu--box">
            <div class="page__menu--inner">
                <h2 class="page__title">견학 신청</h2>
                <div class="page__location">
                    <div class="location__deco">스마트팜 혁신밸리 실증단지의 이해를 돕기 위하여 현장 견학을 실시하고 있습니다.</div>
                </div>
            </div>
        </div>
        <div class="page__cnt">
            <div class="spt__container">
                <div class="visit__banner">
                    <div class="visit__banner--title"><strong>실증단지의 시설을 확인하고 설명을 들을 수 있습니다.</strong><br>
                        실증단지 견학 시, 사업에 참여중인 기업의 연구 목적에 따라 일부 시설은<br>
                        견학이 제한될 수 있으며, 일정에 따라 견학 코스가 변경 될 수 있습니다.</div>
                </div>
                <%
                    LocalDate now = LocalDate.now();
                    int year = now.getYear();
                %>
                <div class="cnt__title"><%=year%>년 견학 가능일</div>
                <div class="prevent__support">
                    <ul>
                        <li>견학 가능한 일자를 확인해 주시고 신청해 주십시오.</li>
                    </ul>
                </div>
                <section id="demos">
                    <div class="section-content">
                        <!--                    <div class="action-buttons">
                                                <p class="section-desc">Experience evocalendar in every theme</p>
                                                <button class="btn-action active" data-set-theme="Default">DEFAULT</button>
                                                <button class="btn-action" data-set-theme="Midnight Blue">MIDNIGHT BLUE</button>
                                                <button class="btn-action" data-set-theme="Royal Navy">ROYAL NAVY</button>
                                                <button class="btn-action" data-set-theme="Orange Coral">ORANGE CORAL</button>
                                            </div>-->
                        <div class="console-log">
                            <div class="log-content">
                                <div class="--noshadow" id="demoEvoCalendar"></div>
                            </div>
                        </div>
<%--                        <div class="action-buttons">
                            <button class="btn-action" id="addBtn">ADD EVENT</button>
                            <button class="btn-action" id="removeBtn" disabled>REMOVE EVENT</button>
                        </div>--%>
                    </div>
                </section>

                <!--//-->

                <div class="cnt__btn type--topborder">
                    <div class="btn__group">
                        <c:if test="${is_login eq true}"><a href="#popup_visit" class="btn submit btn-jumbo  js-modal-detail">견학 신청서 작성</a></c:if>
                        <c:if test="${is_login eq false}"><button href="void(0);" id="visit_warning" class="btn submit btn-jumbo  js-modal-detail">견학 신청서 작성</button></c:if>

                    </div>
                </div>
                <div <c:if test="${is_login eq false}">hidden</c:if>>
                    <div class="table__caption">나의 견학 신청</div>
                    <input id="idx_user" value="${idx_user}" hidden>
                    <div id="visit_req_table" class="table__type "><!--no--head-->

                    </div>
                </div>
            </div>
        </div>


        <div id="popup_visit" class="pop__detail">
            <div class="section">
                <button id="popup_visit_close" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></button>
                <div class="popup__cnt">
                    <h5 class="popup__title">견학신청서 작성</h5>

                    <div class="popup__scroll--area">
                        <div class="table__type">
                            <table class="table__type--normal">
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:80%">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th class="th__left">구분<span class="text__essential">*</span></th>
                                    <td class="td__left">
                                        <div class="radio radio--inline">
                                            <input type="radio" id="people-1" name="is_group" value="1" checked>
                                            <label for="people-1">개인</label>
                                        </div>
                                        <div class="radio radio--inline">
                                            <input type="radio" id="people-2" name="is_group" value="2">
                                            <label for="people-2">단체</label>
                                        </div>
                                    </td>
                                </tr>
                                <tr id="group_name_row">
                                    <th class="th__left">단체명<span class="text__essential">*</span></th>
                                    <td class="td__left"><input id="group_name" type="text" placeholder="단체명을 입력해주세요." style="width:350px;">
                                        <br><span class="text--guide">개인의 경우 입력을 하지 않으셔도 됩니다.</span></td>
                                </tr>
                                <tr>
                                    <th class="th__left">신청인 성명<span class="text__essential">*</span></th>
                                    <td class="td__left"><input id="visitor" type="text" placeholder="신청인에 이름을 입력해 주세요." style="width:350px;"></td>
                                </tr>
                                <tr>
                                    <th class="th__left">견학 희망일<span class="text__essential">*</span></th>
                                    <td class="td__left"><input id="resulvation_date" type="text" class="datepicker"><!--<span class="text&#45;&#45;guide">최소 10일 전에 신청해 주세요.</span>-->
                                        &nbsp;&nbsp;&nbsp;&nbsp;<div class="radio radio--inline">
                                            <input type="radio" id="day-1" name="is_duration" value="1">
                                            <label for="day-1">오전</label>
                                        </div>
                                        <div class="radio radio--inline">
                                            <input type="radio" id="day-2" name="is_duration" value="2">
                                            <label for="day-2">오후</label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">견학 인원<span class="text__essential">*</span></th>
                                    <td class="td__left"><div class="input--group"><input id="visitor_count" type="number" placeholder="" style="width:80px;" class="user__input" /><span class="user__text">명</span></div></td>
                                </tr>
                                <tr>
                                    <th class="th__left">연락처<span class="text__essential">*</span></th>
                                    <td class="td__left"><input id="pnum1" type="tel" style="width:80px;" /><span class="text__dash">-</span><input id="pnum2" type="tel" style="width:80px;" /><span class="text__dash">-</span><input id="pnum3" type="tel" style="width:80px;" /></td>
                                </tr>
                                <tr>
                                    <th class="th__left">이메일<span class="text__essential">*</span></th>
                                    <td class="td__left"><input id="email1" type="text" style="width:100px;" /><span class="text__dash">@</span><input id="email2" type="tel" style="width:100px;" />
                                        <select name="sel_email" id="sel_email">
                                            <option value="1">직접입력</option>
                                            <option value="2">naver.com</option>
                                            <option value="3">hanmail.net</option>
                                            <option value="4">gmail.com</option>
                                            <option value="5">nate.com</option>
                                            <option value="6">daum.net</option>
                                        </select>
                                        <br><span class="text--guide">확정 메일 및 확정 결과를 메일로 알려 드립니다. 정확히 입력해 주세요.</span>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">거주지 주소</th>
                                    <td class="td__left"><input id="addr1" type="text" placeholder="우편번호" style="width:180px;" /> <span class="text__zipcode"><a href="#" class="btn dark btn-lg">주소검색</a></span>
                                        <input id="addr2" type="text" placeholder="상세주소">
                                        <input id="addr3" type="text" placeholder="나머지 주소">
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th__left">견학 목적<span class="text__essential">*</span></th>
                                    <td class="td__left"><input id="visit_goal" type="text" placeholder="견학목적을 입력해주세요."></td>
                                </tr>
                                <tr>
                                    <th class="th__left">기타사전 질문</th>
                                    <td class="td__left"><input id="question" type="text" placeholder="입력"></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="table__agree">'센터 단체견학' 서비스 제공을 위한 개인정보 수집·이용을 위하여 개인정보 보호법 제15조 및 제22조에 따라 귀하의 동의를 받고자 합니다. 만일 다음 사항 중 어느 하나의 사항을 변경하는 경우에는 이를 사전에 알리고 동의를 받도록 하겠습니다.<br>
                            가. 개인정보의 수집 및 이용 목적
                            -'센터 단체견학' 서비스에 대한 업무 처리
                            나. 수집하려는 개인정보의 항목
                            필수항목: 이름, 전화번호, 전자우편
                            다. 개인정보의 보유 및 이용 기간
                            - 참가종료일로부터 6개월
                            라. 동의를 거부할 권리가 있다는 사실과 동의 거부에 따른 불이익 내용
                            - 귀하는 개인정보의 수집 및 이용에 대한 동의를 거부할 권리가 있으나, 동의하지 않은 경우에는 '센터 단체견학' 신청 등에 불이익이 있을 수 있습니다.
                        </div>
                        <div class="checkbox ">
                            <input type="checkbox" id="is_privacy_accept" name="prevent">
                            <label for="is_privacy_accept">개인정보 수집 및 이용에 동의합니다.</label>
                        </div>

                    </div>

                </div>
                <div class="popup__btn">
                    <a href="#" class="btn light btn-lg  js-btn-close">취소</a>
                    <button id="save_visit_req" class="btn btn-lg submit">신청</button>
                </div>
            </div>
        </div>

        <div id="popup_visit_view" class="pop__detail">
            <div class="section">
                <button id="popup_visit_view_close" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></button>
                <div class="popup__cnt">
                    <h5 class="popup__title">견학신청 내용</h5>

                    <div class="table__type">
                        <table class="table__type--normal">
                            <colgroup>
                                <col style="width:20%">
                                <col style="width:80%">
                            </colgroup>
                            <tbody>
                            <tr>
                                <th class="th__left">상태</th>
                                <td id="visit_req_status_text" class="td__left"></td>
                            </tr>
                            <tr>
                                <th class="th__left">구분</th>
                                <td id="is_group_text" class="td__left">단체</td>
                            </tr>
                            <tr>
                                <th class="th__left">단체명</th>
                                <td id="group_name_text" class="td__left">도레미파솔라시도</td>
                            </tr>
                            <tr>
                                <th class="th__left">신청인 성명</th>
                                <td id="visitor_text" class="td__left">김도도</td>
                            </tr>
                            <tr>
                                <th class="th__left">견학 희망일</th>
                                <td id="resulvation_date_text" class="td__left">2021년 00월 00일</td>
                            </tr>
                            <tr>
                                <th class="th__left">견학 인원</th>
                                <td id="visitor_count_text" class="td__left">00 명</td>
                            </tr>
                            <tr>
                                <th class="th__left">연락처</th>
                                <td id="visitor_mphone_num_text" class="td__left">000-0000-0000</td>
                            </tr>
                            <tr>
                                <th class="th__left">이메일</th>
                                <td id="visitor_email_text" class="td__left">xxxx@xxxx.xxx</td>
                            </tr>
                            <tr>
                                <th class="th__left">거주지 주소</th>
                                <td id="visitor_adress_text" class="td__left">서울시 xxxxxxxxxxxxxxxx  xxx</td>
                            </tr>
                            <tr>
                                <th class="th__left">견학 목적</th>
                                <td id="visit_goal_text" class="td__left">xxxx xxxx</td>
                            </tr>
                            <tr>
                                <th class="th__left">기타사전 질문</th>
                                <td id="question_text" class="td__left">xxxxxxxx xxxx xxxx</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <input id="idx_visit_req" hidden>
                </div>
                <div class="popup__btn">
                    <button id="" href="#popup_visit_cancel" class="btn cancel btn-lg fl-left js-modal-detail">신청 취소</button>
                    <button class="btn submit btn-lg  js-btn-close">확인</button>
                </div>
            </div>
        </div>

        <div id="popup_visit_cancel" class="pop__mini ">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">스마트팜 혁신밸리<br>실증단지</h5>
                    <span class="popup__message">견학신청을 취소하겠습니까?</span>
                </div>
                <div class="popup__btn">
                    <a href="#" class="btn light btn-lg  js-btn-close">아니오</a>
                    <button id="btn_book_cancel_ok" class="btn submit btn-lg  js-modal-detail">예,취소</button>
                </div>
            </div>
        </div>

        <div id="popup_cancel_ok" class="pop__mini ">
            <div class="section">
                <a href="#none" class="js-modal-close"><img src="resources/assets/image/ico_close.png" alt="닫기"></a>
                <div class="popup__cnt">
                    <h5 class="popup__title">스마트팜 혁신밸리<br>실증단지</h5>
                    <span class="popup__message">견학신청이 취소되었습니다.</span>
                </div>
                <div class="popup__btn align__right">
                    <a href="#" class="btn w-auto submit btn-lg  js-btn-close">확인</a>
                </div>
            </div>
        </div>

    </div>
</div>
<%@include file ="footer.jsp" %>
<%@include file ="script.jsp" %>
<script>
    $("#visit_warning").click(function() {
        var result = confirm('신청하려면 로그인이 필요합니다. 로그인 페이지로 이동하시겠습니까');
        if(result) {
            location.replace('login');
        } else {

        }
    });

    function getWeeksInMonth(a, b) {
        var c = [], d = new Date(b, a, 1), e = new Date(b, a + 1, 0), f = e.getDate();
        var g = 1;
        var h = 7 - d.getDay();
        while (g <= f) {
            c.push({
                start: g,
                end: h
            });
            g = h + 1;
            h += 7;
            if (h > f) h = f;
        }
        return c;
    }



    $(document).ready(function() {
        $("#demoEvoCalendar").evoCalendar({
            format: "yyyy MM dd",
            titleFormat: "MM",

        });

        var today = {
            start_date: new Date(),
            end_date: new Date()
        }
        setVisitCalendar(today);

        $('#demoEvoCalendar').on('selectEvent', function(event, activeEvent) {
            //alert("1");
            // code here...
        });

        getUserVisitList(1);

        $('#group_name_row').hide();

    });

    function getUserVisitList(page){
        console.log(${idx_user});
        $("#visit_req_table").load('visit_req_list',{"idx_user": ${idx_user},"page":page}).trigger("create");
    }

    $("input:radio[name='is_group']").change(function(){
        if($("input:radio[name='is_group']:checked").val() == 1){
            $('#group_name_row').hide();
        } else {
            $('#group_name_row').show();
        }
    })


    $('[data-go*="#"]').on("click", function(a) {
        a.preventDefault();
        var b = $(this).data().go;
        if ("#top" === b) {
            $("html, body").animate({
                scrollTop: 0
            }, 500);
            return;
        } else var c = $(b)[0].offsetTop - $("header")[0].offsetHeight - 10;
        $("html, body").animate({
            scrollTop: c
        }, 500);
    });

    $('#save_visit_req').on("click", function(a) {

        var email2 = $("#email2").val();

        $('#sel_email').children(":selected").each(function() {

            if($(this).val()!=1)
                email2 = $(this).text();
        });

        let param={
            idx_user:$("#idx_user").val(),
            group_name:$("#group_name").val(),//	varchar2	40					단체이름
            visitor:$("#visitor").val(),//	varchar2	40					신청자이름
            resulvation_date:new Date($("#resulvation_date").val()),//	date						예약일
            visitor_count:$("#visitor_count").val(),//	number	10					방문자 수
            visitor_mphone_num:$("#pnum1").val()+"-"+$("#pnum2").val()+"-"+$("#pnum3").val(),//	varchar2	20					연락처
            visitor_email:$("#email1").val()+email2,//	varchar2	250					방문자 이메일
            visitor_adress: "("+$("#addr1").val()+") "+$("#addr2").val()+" "+$("#addr3").val(),//	varchar2	250					방문자 주소	0:상담요청등록, 1:상담자 지정, 2:상담 계획 보냄, 3: 상담계획 변경, 4:상담완료, 99:상담불가
            visit_goal:$("#visit_goal").val(),//	varchar2	400					방문목표
            question:$("#question").val(),//	varchar2	400					방문전 질문사항
            is_privacy_accept:$('#is_privacy_accept').is(":checked")?1:0,//	number	4		1			개인정보 수집 이용동의	0:동의안함, 1:동의
            is_group:$("input:radio[name='is_group']:checked").val(),//	number	4		0			그룹 여부	0:개인, 1:그룹
            is_duration:$("input:radio[name='is_duration']:checked").val( )//	number	4		0			1:오전, 2:오후, 3:종일, 4, 여러날
        }

        var req_dt = {
            start_date: param.resulvation_date,
            end_date: param.resulvation_date
        }

        $.ajax({
            type: 'post',
            url :'save_visit_req', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
            dataType:'json',//받는 데이터 타입
            success: function(result){
                //작업이 성공적으로 발생했을 경우
                if(result.result_code=="SUCCESS"){
                    alert(result.result_str);

                    setVisitCalendar(req_dt);

                    $('#popup_visit_close').click();
                    getUserVisitList(1);


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

    $('#btn_book_cancel_ok').on("click", function(a) {


        param={
            idx_visit_req:$("#idx_visit_req").val()
        }

        $.ajax({
            type: 'post',
            url: 'cancel_user_visit_req', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
            dataType: 'text',//받는 데이터 타입
            success: function (result) {
                //작업이 성공적으로 발생했을 경우
                var data = JSON.parse(result);

                var popName0 = $("#popup_visit_view");
                popName0.removeClass("is-on");

                $(".dimed").remove();
                var popName1 = $("#popup_visit_cancel");

                popName1.removeClass("is-on");

                var popName2 = $("#popup_cancel_ok");
                popName2.before("<div class='dimed'></div>");
                popName2.addClass("is-on");
                //$("#popup_visit_view").attr("href",

                getUserVisitList(1);
            },
            error: function () {
                //에러가 났을 경우 실행시킬 코드
            }
        });
    });

    function setVisitCalendar(param){

        $.ajax({
            type: 'post',
            url: 'get_monthly_visit_data', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
            dataType: 'text',//받는 데이터 타입
            success: function (result) {
                //작업이 성공적으로 발생했을 경우
                var data = JSON.parse(result);
                var array_data = data["visitDataVOList"];

                $.each(array_data, function(key, item)
                {
                    var item1 = new Object();
                    var item2 = new Object();

                    var cur_date = new Date(item.cur_date);
                    var y = cur_date.getFullYear();
                    var m = cur_date.getMonth();
                    var d = cur_date.getDate();

                    var ampm=item.visit_data_type;
                    if(ampm==1){
                        item1.id= ""+Math.random();
                        item1.name="오전 방문";
                        item1.description="예약 가능";
                        item1.date= new Date(y, m, d, 8, 0);
                        item1.type="birthday";

                        $("#demoEvoCalendar").evoCalendar("addCalendarEvent", item1);
                    }else if(ampm==2){
                        item1.id= ""+Math.random();
                        item1.name="오후 방문";
                        item1.description="예약 가능";
                        item1.date= new Date(y, m, d, 13, 0);
                        item1.type="birthday";

                        $("#demoEvoCalendar").evoCalendar("addCalendarEvent", item1);
                    }else if(ampm==3){

                        item1.id= ""+Math.random();
                        item1.name="오전 방문";
                        item1.description="예약 가능";
                        item1.date= new Date(y, m, d, 8, 0);
                        item1.type="birthday";

                        $("#demoEvoCalendar").evoCalendar("addCalendarEvent", item1);

                        item2.id= ""+Math.random();
                        item2.name="오후 방문";
                        item2.description="예약 가능";
                        item2.date= new Date(y, m, d, 13, 0);
                        item2.type="birthday";
                        $("#demoEvoCalendar").evoCalendar("addCalendarEvent", item2);
                    }
                    else if(ampm==5){

                        item1.id= ""+Math.random();
                        item1.name="오전 예약됨";
                        item1.description="예약 불가";
                        item1.date= new Date(y, m, d, 8, 0);
                        item1.type="event";

                        $("#demoEvoCalendar").evoCalendar("addCalendarEvent", item1);
                    }
                    else if(ampm==6){

                        item1.id= ""+Math.random();
                        item1.name="오후 예약됨";
                        item1.description="예약 불가";
                        item1.date= new Date(y, m, d, 13, 0);
                        item1.type="event";

                        $("#demoEvoCalendar").evoCalendar("addCalendarEvent", item1);
                    }
                    else if(ampm==7){

                        item1.id= ""+Math.random();
                        item1.name="오전 예약됨";
                        item1.description="예약 불가";
                        item1.date= new Date(y, m, d, 8, 0);
                        item1.type="event";

                        $("#demoEvoCalendar").evoCalendar("addCalendarEvent", item1);

                        item2.id= ""+Math.random();
                        item2.name="오후 방문";
                        item2.description="예약 가능";
                        item2.date= new Date(y, m, d, 13, 0);
                        item2.type="holiday";
                        $("#demoEvoCalendar").evoCalendar("addCalendarEvent", item2);
                    }
                    else if(ampm==8){

                        item1.id= ""+Math.random();
                        item1.name="오전 방문";
                        item1.description="예약 가능";
                        item1.date= new Date(y, m, d, 8, 0);
                        item1.type="holiday";

                        $("#demoEvoCalendar").evoCalendar("addCalendarEvent", item1);

                        item2.id= ""+Math.random();
                        item2.name="오후 예약됨";
                        item2.description="예약 불가";
                        item2.date= new Date(y, m, d, 13, 0);
                        item2.type="event";
                        $("#demoEvoCalendar").evoCalendar("addCalendarEvent", item2);
                    }
                    else if(ampm==9){

                        item1.id= ""+Math.random();
                        item1.name="오전 예약됨";
                        item1.description="예약 불가";
                        item1.date= new Date(y, m, d, 8, 0);
                        item1.type="event";

                        $("#demoEvoCalendar").evoCalendar("addCalendarEvent", item1);

                        item2.id= ""+Math.random();
                        item2.name="오후 예약됨";
                        item2.description="예약 불가";
                        item2.date= new Date(y, m, d, 13, 0);
                        item2.type="event";
                        $("#demoEvoCalendar").evoCalendar("addCalendarEvent", item2);
                    }
                });
            },
            error: function () {
                //에러가 났을 경우 실행시킬 코드
            }
        });


    }

    function visit_req_view(idx_visit_req){

        param={
            idx_visit_req:idx_visit_req
        }

        $.ajax({
            type: 'post',
            url: 'get_user_visit_req', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
            dataType: 'text',//받는 데이터 타입
            success: function (result) {
                //작업이 성공적으로 발생했을 경우
                var data = JSON.parse(result);
                var visitReqVo = data["visitReqVO"];

                var visit_req_status = "신청";
                if(visitReqVo.visit_req_status == 0)
                    visit_req_status = "신청";
                else if(visitReqVo.visit_req_status == 1)
                    visit_req_status = "접수";
                else if(visitReqVo.visit_req_status == 2)
                    visit_req_status = "승인";
                else if(visitReqVo.visit_req_status == 3)
                    visit_req_status = "방문";
                else if(visitReqVo.visit_req_status == 4)
                    visit_req_status = "방문 완료";
                else if(visitReqVo.visit_req_status == 5)
                    visit_req_status = "방문 취소";
                else if(visitReqVo.visit_req_status == 6)
                    visit_req_status = "승인 거절";
                else
                    visit_req_status = "확인 요망";

                $("#visit_req_status_text").text(visit_req_status);
                $("#group_name_text").text(visitReqVo.group_name);//	varchar2	40					단체이름
                $("#visitor_text").text(visitReqVo.visitor);//	varchar2	40					신청자이름

                var resulvation_date = new Date(visitReqVo.resulvation_date);
                var ampm = visitReqVo.is_duration=0?" 오전":" 오후";

                $("#resulvation_date_text").text(resulvation_date.yyyymmdd() + ampm);//	date						예약일
                $("#visitor_count_text").text(visitReqVo.visitor_count);//	number	10					방문자 수
                $("#visitor_mphone_num_text").text(visitReqVo.visitor_mphone_num);//	varchar2	20					연락처
                $("#visitor_email_text").text(visitReqVo.visitor_email);//	varchar2	250					방문자 이메일
                $("#visitor_adress_text").text(visitReqVo.visitor_adress);//	varchar2	250					방문자 주소	0:상담요청등록, 1:상담자 지정, 2:상담 계획 보냄, 3: 상담계획 변경, 4:상담완료, 99:상담불가
                $("#visit_goal_text").text(visitReqVo.visit_goal);//	varchar2	400					방문목표
                $("#question_text").text(visitReqVo.question);//	varchar2	400					방문전 질문사항

                $('#is_group_text').text(visitReqVo.is_group=0?"개인":"그룹");//	number	4		1			개인정보 수집 이용동의	0:동의안함, 1:동의

                $('#idx_visit_req').val(idx_visit_req);

                var popName = $("#popup_visit_view");
                $('html').css({
                    "overflow": "hidden"
                });
                popName.before("<div class='dimed'></div>");
                popName.addClass("is-on");
                //$("#popup_visit_view").attr("href", "#popup_visit_view");

            },
            error: function () {
                //에러가 났을 경우 실행시킬 코드
            }
        });
    }


</script>
</div>
</body>
</html>