<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
        <div>견학일정 관리</div>
    </h4>
    <!--//-->

    <div id="month_calendar" class="card mb-4">
        <div class="card-body">
            <div id="fullcalendar-default-view"></div>
        </div>
    </div>


    <!-- Event modal -->
    <form class="modal fade" id="visit-req-modal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

                <div class="modal-header bg-success">
                    <h5 class="modal-title text-white font-weight-bold">신청 가능일 추가/변경</h5>
                    <button type="button" class="close text-white font-weight-bold" data-dismiss="modal" aria-label="Close">×</button>
                </div>

                <div class="modal-body">

                    <!--반복 선택-->
                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">반복</label>
                        <div class="form-inline col-md-10">
                            <label class="custom-control custom-radio d-inline-block">
                                <input name="repeat_type" type="radio" class="custom-control-input" value="0" checked>
                                <span class="custom-control-label">없음</span>
                            </label>
                            <label class="custom-control custom-radio d-inline-block">
                                <input name="repeat_type" type="radio" class="custom-control-input" value="1">
                                <span class="custom-control-label">매주</span>
                            </label>
                            <label class="custom-control custom-radio d-inline-block">
                                <input name="repeat_type" type="radio" class="custom-control-input" value="2">
                                <span class="custom-control-label">매월</span>
                            </label>
                        </div>
                    </div>
                    <!--반복 없이 기간등록-->
                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">선택기간</label>
                        <div class="col-md-10">
                            <div id="repeat_none_datepicker" class="input-daterange input-group" style="width: 80%;">
                                <input type="text" class="form-control" name="start">
                                <div class="input-group-prepend repeat__none">
                                    <span class="input-group-text">~</span>
                                </div>
                                <input type="text" class="form-control repeat__none" name="end">
                                <span class="form-text repeat__none">동안 매일</span>
                                <span class="form-text repeat__weekly repeat_date_monthly repeat_week_monthly">부터</span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group row repeat_date_monthly repeat_week_monthly d-none">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">날짜/요일 반복</label>
                        <div class="form-inline col-md-10">
                            <label class="custom-control custom-radio d-inline-block">
                                <input name="repeat_dnw" type="radio" class="custom-control-input" value="0" checked>
                                <span class="custom-control-label">날짜</span>
                            </label>
                            <label class="custom-control custom-radio d-inline-block">
                                <input name="repeat_dnw" type="radio" class="custom-control-input" value="1">
                                <span class="custom-control-label">요일</span>
                            </label>
                        </div>
                    </div>

                    <div class="form-group row repeat_date_monthly d-none">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">날짜</label>
                        <div class="form-inline col-md-10">
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">1  </span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">2  </span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">3  </span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">4  </span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">5  </span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">6  </span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">7  </span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">8  </span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">9  </span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">10</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">11</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">12</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">13</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">14</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">15</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">16</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">17</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">18</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">19</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">20</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">21</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">22</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">23</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">24</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">25</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">26</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">27</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">28</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">29</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">30</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">31</span>
                            </label>

                        </div>
                    </div>

                    <!--매주 반복 선택-->
                    <div class="form-group row repeat_week_monthly d-none">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">주간</label>
                        <div class="form-inline col-md-10">
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">첫째주</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">둘째주</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">셋째주</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">넷째주</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">다섯째주</span>
                            </label>

                        </div>
                    </div>

                    <!--매주 반복 선택-->
                    <div class="form-group row repeat__weekly repeat_week_monthly d-none">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">요일</label>
                        <div class="form-inline col-md-10">
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">월요일</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">화요일</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">수요일</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">목요일</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">금요일</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">토요일</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">일요일</span>
                            </label>
                        </div>
                    </div>

                    <div class="form-group row repeat__weekly repeat_date_monthly repeat_week_monthly d-none">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">규칙 적용기간</label>
                        <div class="form-inline col-md-6">
                            <label class="custom-control custom-radio d-inline-block">
                                <input name="custom-18" type="radio" class="custom-control-input" checked>
                                <span class="custom-control-label">1개월</span>
                            </label>
                            <label class="custom-control custom-radio d-inline-block">
                                <input name="custom-18" type="radio" class="custom-control-input">
                                <span class="custom-control-label">3개월</span>
                            </label>
                            <label class="custom-control custom-radio d-inline-block">
                                <input name="custom-18" type="radio" class="custom-control-input">
                                <span class="custom-control-label">6개월</span>
                            </label>
                            <label class="custom-control custom-radio d-inline-block">
                                <input name="custom-18" type="radio" class="custom-control-input">
                                <span class="custom-control-label">직접 선택</span>
                            </label>

                        </div>
                        <div class="form-inline col-md-4 mode-edit mode-new">
                            <input id="datepicker-base" type="text" class="form-control form-control-md text-md-right" style="width: 60%;" placeholder="0" value="">
                            <small class="form-text text-muted">
                                동안
                            </small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">오전 / 오후 선택</label>
                        <div class="form-inline col-md-10">
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="ampm" type="checkbox" class="custom-control-input" value="1" checked>
                                <span class="custom-control-label">오전</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-16">
                                <input name="ampm" type="checkbox" class="custom-control-input" value="2" checked>
                                <span class="custom-control-label">오후</span>
                            </label>
                        </div>
                    </div>


                    <div class="form-group row justify-content-between">
                        <div class="col-md-12">
                            <button id="btn_add_date" type="button" class="btn btn-primary float-right">추가</button>
                        </div>
                    </div>


                    <hr>

                        <!--입력 미리보기-->
                    <div class="form-group row">
                        <label class="col-form-label col-form-label-md col-md-2 text-md-right font-weight-bold">선택된 날짜</label>
                        <div class="input-group col-md-10 mode-new">
                            <select multiple id="available_visit_date_list" class="custom-select form-control" style="width: 100%;height: 200px;">

                            </select>
                        </div>
                    </div>
                    <div class="form-group row justify-content-between">
                        <span class="text-muted">*Shift키를 누르고 선택하거나 마우스로 드래그하면 여러개를 선택할 수 있습니다</span>
                        <div class="col-md-12">
                            <button id="btn_del_selected" type="button" class="btn btn-default float-right" disabled>삭제</button>
                        </div>
                    </div>

                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                    <button id="btn_visit_save" type="button" class="btn btn-primary">저장</button>
                </div>
            </div>
        </div>
    </form>
    <!-- / Event modal -->
</div>

<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
<!-- / Layout footer -->
<script>


    $(function() {
        var isRtl = $('html').attr('dir') === 'rtl';
        $('.datepickers').datepicker({
            orientation: isRtl ? 'auto right' : 'auto left'
        });


        var today = new Date();
        var y = today.getFullYear();
        var m = today.getMonth();
        var d = today.getDate();



        // Default view
        // color classes: [ fc-event-success | fc-event-info | fc-event-warning | fc-event-danger | fc-event-dark ]
        var defaultCalendar = new Calendar($('#fullcalendar-default-view')[0], {

            /*customButtons: {
                myWeekButton: {
                    text: 'week',
                    click: function() {
                        //alert("Custom Button");
                        $("#list_calendar").show();
                        $("#month_calendar").hide();
                    }
                },
                myDayButton: {
                    text: 'day',
                    click: function() {
                        //alert("Custom Button");
                        $("#list_calendar").show();
                        $("#month_calendar").hide();
                    }
                }
            },*/
            plugins: [
                calendarPlugins.bootstrap,
                calendarPlugins.dayGrid,
                calendarPlugins.timeGrid,
                calendarPlugins.interaction
            ],
            direction: $('html').attr('dir') || 'ltr',

            // Bootstrap styling
            themeSystem: 'bootstrap',
            bootstrapFontAwesome: {
                close: ' ion ion-md-close',
                prev: ' ion ion-ios-arrow-back scaleX--1-rtl',
                next: ' ion ion-ios-arrow-forward scaleX--1-rtl',
                prevYear: ' ion ion-ios-arrow-dropleft-circle scaleX--1-rtl',
                nextYear: ' ion ion-ios-arrow-dropright-circle scaleX--1-rtl'
            },

            /*headerToolbar: {
                start: 'title',
                center: 'dayGridMonth,myWeekButton,myDayButton',
                end: 'prev,next today'
            },*/

            initialDate: today,
            navLinks: true, // can click day/week names to navigate views
            selectable: true,
            weekNumbers: false, // Show week numbers
            nowIndicator: true, // Show "now" indicator
            firstDay: 0, // Set "Monday" as start of a week
            businessHours: {
                dow: [1, 2, 3, 4, 5], // Monday - Friday
                start: '9:00',
                end: '18:00',
            },
            editable: false,
            dayMaxEventRows: false, // allow "more" link when too many events
            /*events: eventList,*/
            aspectRatio: 2.0,

            locale: 'ko',
            views: {
                dayGrid: {
                    dayMaxEventRows: 5
                }
            },
            select: function (selectionData) {

/*                var isOneDay = function (startStr, endStr) {
                    var start = new Date(startStr);
                    start.setDate(start.getDate() + 1);
                    return start.toString() === new Date(endStr).toString();
                }*/


                $('#visit-req-modal')
                    .on('shown.bs.modal', function() {

                        //달력 날짜 선택했을때
                        var sDate = new Date(selectionData.startStr);
                        var eDate = new Date(selectionData.endStr);

                        $('#repeat_none_datepicker').children('input[name="start"]').val(sDate.yyyymmdd());
                        $('#repeat_none_datepicker').children('input[name="end"]').val(eDate.yyyymmdd());


                        //console.log(selectionData);
                        var param = {
                            start_date:sDate,
                            end_date:eDate
                        }

                        $.ajax({
                            type: 'post',
                            url: 'get_visit_data', //데이터를 주고받을 파일 주소 입력
                            data: JSON.stringify(param),//보내는 데이터
                            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                            dataType: 'text',//받는 데이터 타입
                            success: function (result) {
                                //작업이 성공적으로 발생했을 경우
                                var data = JSON.parse(result);

                                var array_data = data["visitDataVOList"];



                                $.each(array_data, function(key, item)
                                {
                                    var sDate = new Date(item.cur_date);
                                    var ampm=item.visit_data_type;
                                    var ampm_text = "오전, 오후";
                                    if(ampm==1){
                                        ampm_text = "오전, 저장됨";
                                    }else if(ampm==2){
                                        ampm_text = "오후, 저장됨";
                                    }else{
                                        ampm_text = "오전, 오후, 저장됨";
                                        ampm=3;
                                    }
                                    var keyvalue_txt = sDate.yyyymmdd() + ", " + ampm_text;

                                    var saved = "yes";

                                    var keyvalue=[sDate,ampm,saved];

                                    $("#available_visit_date_list")
                                        .append($("<option></option>")
                                            .attr("value", keyvalue)
                                            .text(keyvalue_txt));


                                });

                                //STATUS_001 :
                            },
                            error: function () {
                                //에러가 났을 경우 실행시킬 코드
                            }
                        });

                        //$(this).find('input[type="text"]').trigger('focus');





                    })
                    .on('hidden.bs.modal', function() {

                        $(this).off('shown.bs.modal hidden.bs.modal submit').find('input[type="text"], select').val('');
                        defaultCalendar.unselect();

                        $("#available_visit_date_list").empty();
                    })
                    .on('submit', function(e) {
                        e.preventDefault();
                        var title = $(this).find('input[type="text"]').val();
                        var className = $(this).find('select').val() || null;

                        /*if (title) {
                            var eventData = {
                                title: title,
                                start: selectionData.startStr,
                                end: selectionData.endStr,
                                classNames: className,
                                display: isOneDay(selectionData.startStr, selectionData.endStr) ? 'list-item' : 'block'
                            }
                            defaultCalendar.addEvent(eventData);
                        }*/

                        $(this).modal('hide');
                    })
                    .modal('show');
            },
            eventSources: [{
                events: function(info, successCallback, failureCallback) {

                    var cal_data= new Array();

                    var today = {
                        start_date: new Date(),
                        end_date: new Date()
                    }
                    $.ajax({
                        type: 'post',
                        url: 'get_monthly_visit_data', //데이터를 주고받을 파일 주소 입력
                        data: JSON.stringify(today),//보내는 데이터
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
                                    item1.title="방문:";
                                    item1.start= new Date(y, m, d, 8, 0);
                                    item1.classNames='fc-event-success';

                                    cal_data.push(item1);
                                }else if(ampm==2){
                                    item1.title="방문:";
                                    item1.start= new Date(y, m, d, 13, 0);
                                    item1.classNames='fc-event-success';
                                    cal_data.push(item1);
                                }else{
                                    item1.title="방문:";
                                    item1.start= new Date(y, m, d, 8, 0);
                                    item1.classNames='fc-event-success';
                                    cal_data.push(item1);
                                    item2.title="방문:";
                                    item2.start= new Date(y, m, d, 13, 0);
                                    item2.classNames='fc-event-success';
                                    cal_data.push(item2);
                                }
                            });
                            successCallback(cal_data);
                        },
                        error: function () {
                            //에러가 났을 경우 실행시킬 코드
                        }
                    });
                }
            }],
            eventClick: function(calEvent) {

                //alert('Event: ' + calEvent.event.title);

            }
        });











        defaultCalendar.render();

        var enableRequest = true;

        $.ajaxPrefilter( function( options, originalOptions, jqXHR ) {
            // Modify options, control originalOptions, store jqXHR, etc

            if (!enableRequest ){
                jqXHR.abort();
            }
        });

        $("button.fc-next-button").click(function(){

            //var date = new Date($('#fullcalendar-default-view').fullCalendar("getDate"));

            //alert();
            //console.log(date.yyyymmdd());
            var currentDate = defaultCalendar.getDate();
            //var calDate = currentDate.format('DD.MM.YYYY');
            console.log(currentDate.yyyymmdd());

            enableRequest = false;
            setTimeout(setEnabled(), 2000);
        });


        function setEnabled()
        {
            enableRequest = true;
        };



        $('#datepicker-base').datepicker({
            format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
            startDate: '-1d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
            endDate: '+10d',	//달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
            autoclose : true,	//사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
            calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
            clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
            datesDisabled : ['2019-06-24','2019-06-26'],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
            daysOfWeekDisabled : [0,6],	//선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
            daysOfWeekHighlighted : [3], //강조 되어야 하는 요일 설정
            disableTouchKeyboard : false,	//모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
            immediateUpdates: false,	//사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false
            multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false
            multidateSeparator :",", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
            templates : {
                leftArrow: '&laquo;',
                rightArrow: '&raquo;'
            }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징
            showWeekDays : true ,// 위에 요일 보여주는 옵션 기본값 : true
            title: "규칙 종료 날짜",	//캘린더 상단에 보여주는 타이틀
            todayHighlight : true ,	//오늘 날짜에 하이라이팅 기능 기본값 :false
            toggleActive : true,	//이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
            weekStart : 0 ,//달력 시작 요일 선택하는 것 기본값은 0인 일요일
            sideBySide: true,
            language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.

        });//datepicker end


        $("input:radio[name=repeat_type]").click(function()
        {
            var repeat_type = $("input:radio[name='repeat_type']:checked").val( ) ;
           if(repeat_type=='0'){
               $(".repeat__weekly").addClass('d-none');
               $(".repeat_date_monthly").addClass('d-none');
               $(".repeat_week_monthly").addClass('d-none');
               $(".repeat__none").removeClass('d-none');
           }else if(repeat_type=='1'){
               $(".repeat_date_monthly").addClass('d-none');
               $(".repeat_week_monthly").addClass('d-none');
               $(".repeat__none").addClass('d-none');
               $(".repeat__weekly").removeClass('d-none');
           }else if(repeat_type=='2'){

               $(".repeat__weekly").addClass('d-none');
               $(".repeat__none").addClass('d-none');

               var repeat_date_n_week = $("input:radio[name='repeat_dnw']:checked").val( ) ;

               if(repeat_date_n_week=='0'){

                   $(".repeat_week_monthly").addClass('d-none');
                   $(".repeat_date_monthly").removeClass('d-none');
               }else {
                   $(".repeat_date_monthly").addClass('d-none');
                   $(".repeat_week_monthly").removeClass('d-none');
               }
           }
        });
        $("input:radio[name=repeat_dnw]").click(function()
        {
            var repeat_date_n_week = $("input:radio[name='repeat_dnw']:checked").val( ) ;
            if(repeat_date_n_week=='0'){
                $(".repeat_week_monthly").addClass('d-none');
                $(".repeat_date_monthly").removeClass('d-none');
            }else if(repeat_date_n_week=='1'){

                $(".repeat_date_monthly").addClass('d-none');
                $(".repeat_week_monthly").removeClass('d-none');

            }
        });


        $("#btn_add_date").click(function()
        {
            var repeat_type = $("input:radio[name='repeat_type']:checked").val( );

            if(repeat_type=='0'){


                var sDate = new Date($('#repeat_none_datepicker').children('input[name="start"]').val());
                var eDate = new Date($('#repeat_none_datepicker').children('input[name="end"]').val());

                let diffDate = eDate.getTime()-sDate.getTime();
                const dateDays = Math.abs(diffDate / (1000 * 3600 * 24));

                for(var i=0;i<dateDays;i++){

                    var ampm=0;
                    $('input:checkbox[name="ampm"]:checked').each(function() {
                        ampm+=$(this).val();
                    });

                    var ampm_text = "오전, 오후";
                    if(ampm==1){
                        ampm_text = "오전";
                    }else if(ampm==2){
                        ampm_text = "오후";
                    }else{
                        ampm_text = "오전, 오후";
                        ampm=3;
                    }
                    var keyvalue_txt = sDate.yyyymmdd() + ", " + ampm_text;
                    var saved = "no";
                    var keyvalue=[sDate,ampm,saved];

                    if(isNotDuple(sDate)=="yes"){
                        $("#available_visit_date_list")
                            .append($("<option></option>")
                                .attr("value", keyvalue)
                                .text(keyvalue_txt));
                    }

                    //다음 날 셋팅
                    sDate.setHours(sDate.getHours()+24);
                }

                //console.log(dateDays);


            }else if(repeat_type=='1'){





            }else if(repeat_type=='2'){







            }



        });

        function isNotDuple(sDate){

            var result = "yes";
            $('#available_visit_date_list').children().each(function() {

                var keyvalue=$(this).val().split(',');//[sDate,ampm,var saved];
                let list_item_date = new Date(keyvalue[0]);//	date						해당일
                let saved = keyvalue[2];

                if(sDate.yyyymmdd() == list_item_date.yyyymmdd() && saved =='yes'){
                    //console.log("찾았다. "+sDate.yyyymmdd() +","+list_item_date.yyyymmdd()+","+saved);
                    result = "no";
                    return false;
                }
            });
            return result;
        }

        $('#available_visit_date_list').on('change',function (){
            console.log('선택했다');
            if($(this).children(":selected").length>0){
                $("#btn_del_selected").attr('disabled', false);
            }
            else {
                $("#btn_del_selected").attr('disabled', true);
            }
        });


        $("#btn_del_selected").click(function()
        {
            var isSaved = "no";

            $('#available_visit_date_list').children(":selected").each(function() {

                var keyvalue=$(this).val().split(',');//[sDate,ampm,var saved];

                let saved = keyvalue[2];
                if(saved=='yes'){
                    isSaved="yes";
                    return false;
                }
            });

            if(isSaved=="yes"){
                if(confirm("DB에 저장된 데이터가 포함되어 있습니다. DB에서 삭제할까요?"))
                {
                    //예
                    $('#available_visit_date_list').children(":selected").each(function() {
                        $(this).remove();
                    });
                }
                else
                {
                    return;
                }
            }else {
                $('#available_visit_date_list').children(":selected").each(function() {
                    $(this).remove();
                });
            }
        });

        $('#repeat_none_datepicker').datepicker({
            orientation: 'auto left',
            format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
            startDate: '-10d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
            language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
        });


        $("#btn_visit_save").click(function()
        {
            let visitDataVOList = Array();

            $('#available_visit_date_list').children().each(function() {
                let item = new Object();
                var keyvalue=$(this).val().split(',');//[sDate,ampm];

                item.cur_date = new Date(keyvalue[0]);//	date						해당일
                item.visit_data_type = keyvalue[1]*1;//	number	4		0			0:관리자 취소, 1:오전, 2:오후, 3:오전오후(1+2), 4:전일
                var possible_count = 0;
                if(item.visit_data_type==1) possible_count = 1;
                else if((item.visit_data_type==2)) possible_count = 1000;
                else if((item.visit_data_type==3)) possible_count = 1001;
                item.possible_count = possible_count;
                visitDataVOList.push(item);
            });


            console.log(JSON.stringify(visitDataVOList));


            $.ajax({
                type: 'post',
                url: 'save_visit_date', //데이터를 주고받을 파일 주소 입력
                data: JSON.stringify(visitDataVOList),//보내는 데이터
                contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                dataType: 'text',//받는 데이터 타입
                success: function (result) {
                    //작업이 성공적으로 발생했을 경우

                    alert(result.result_str);


                    //STATUS_001 :
                },
                error: function () {
                    //에러가 났을 경우 실행시킬 코드
                }
            });

        });


    });
    Date.prototype.yyyymmdd = function() {
        var mm = this.getMonth() + 1; // getMonth() is zero-based
        var dd = this.getDate();

        return [this.getFullYear(),
            (mm>9 ? '' : '0') + mm,
            (dd>9 ? '' : '0') + dd
        ].join('-');
    };

</script>



<!-- Layout footer -->
<%@include file ="layouts/frame_footer.jsp" %>
<!-- / Layout footer -->

<!-- / Page content -->
