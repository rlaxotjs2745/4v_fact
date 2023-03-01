<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- Page content -->
    <div class="container-fluid flex-grow-1 container-p-y">

        <h4 class="d-flex justify-content-between align-items-center w-100 mt-4">
            <div>&nbsp;&nbsp;일정 관리</div>
        </h4>



        <!-- / Event modal -->


        <div id="list_calendar" class="card mb-4" style="display:none;">
            <div class="card-body">
                <div id="fullcalendar-list-view"></div>
            </div>
        </div>


        <!--//-->

        <div id="month_calendar" class="card mb-4">
            <div class="card-body">
                <div id="fullcalendar-default-view"></div>
            </div>
        </div>

    </div>
<!-- Event modal -->

    <div class="modal modal fade" id="fullcalendar-default-view-modal">
        <div class="modal-dialog">
            <form class="modal-content">


                <div class="modal-header bg-success">
                    <h5 class="modal-title text-white font-weight-bold">일정추가</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label class="form-label">내용</label>
                        <input id="contents" type="text" class="form-control" placeholder="제목을 입력해 주세요.">
                    </div>
                    <%--<div class="form-group mb-0">
                        <label class="form-label">반복</label>
                        <div class="form-inline mb-2">
                            <label class="custom-control custom-radio d-inline-block">
                                <input name="custom-18" type="radio" class="custom-control-input" checked="">
                                <span class="custom-control-label">없음</span>
                            </label>
                            <label class="custom-control custom-radio d-inline-block">
                                <input name="custom-18" type="radio" class="custom-control-input" checked="">
                                <span class="custom-control-label">매주</span>
                            </label>
                            <label class="custom-control custom-radio d-inline-block">
                                <input name="custom-18" type="radio" class="custom-control-input" checked="">
                                <span class="custom-control-label">매월</span>
                            </label>
                            <label class="custom-control custom-radio d-inline-block">
                                <input name="custom-18" type="radio" class="custom-control-input" checked="">
                                <span class="custom-control-label">매년</span>
                            </label>
                        </div>
                        <!--//매주 일경우-->
                        <div class="form-inline mb-2">
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">월요일</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">화요일</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">수요일</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">목요일</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">금요일</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">토요일</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">일요일</span>
                            </label>
                        </div>
                        <div class="form-inline mb-0">
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="week" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">여러날 지정</span>
                            </label>
                            <input type="text" class="form-control datepickers" id="" style="width:120px;"><span class="text-muted px-2">부터</span>
                            <input type="text" class="form-control datepickers" id="" style="width:120px;"><span class="text-muted px-2">까지</span>
                        </div>
                        <!--//매월일경우-->
                        <div class="form-inline mb-0">
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="month" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">1월</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="month" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">2월</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="month" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">3월</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="month" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">4월</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="month" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">5월</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="month" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">6월</span>
                            </label>
                            <span class="w-lg-100 d-block mb-2"></span>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="month" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">7월</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="month" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">8월</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="month" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">9월</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="month" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">10월</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="month" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">11월</span>
                            </label>
                            <label class="custom-control custom-checkbox mr-2">
                                <input name="month" type="checkbox" class="custom-control-input">
                                <span class="custom-control-label">12월</span>
                            </label>
                        </div>
                        <!--//매년일경우-->
                        <div class="form-inline mb-0">
                            <input type="text" class="form-control" placeholder="" style="width:100px;"><span class="text-muted mx-2">년 까지</span>
                        </div>

                        <!--입력 미리보기-->
                        <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        Aliquid animi dignissimos distinctio, ex ipsam itaque natus neque
                        nisi non odit officia similique ullam voluptatum. Hic laborum magnam
                        nostrum quibusdam tempora.</span>
                    </div>--%>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                    <button id="demo_new_submit" type="submit" class="btn btn-primary">저장</button>
                </div>
            </form>
        </div>
    </div>
<!-- Layout footer -->
<%@include file ="../layouts/frame_footer.jsp" %>
<!-- / Layout footer -->
<script>

    $(function() {

        $('.datepickers').datepicker({
            orientation: 'auto left'
        });

        var today = new Date();
        var y = today.getFullYear();
        var m = today.getMonth();
        var d = today.getDate();


        var eventList = [
<c:forEach items="${scheduleItemVOList}" var="item" varStatus="status">
            {
                title: '${item.contents}',
                start: '<fmt:formatDate value="${item.start_date}" pattern="yyyy-MM-dd hh:mm:ss" />',
                end: '<fmt:formatDate value="${item.end_date}" pattern="yyyy-MM-dd hh:mm:ss" />',
                classNames: '${item.grade eq 0 ? 'fc-event-success' : item.grade eq 1 ? 'fc-event-warning' : item.grade eq 2 ? 'fc-event-dark': item.grade eq 3 ?'fc-event-secondary': item.grade eq 4 ? 'fc-event-info' : 'fc-event-warning'}'
            },
            </c:forEach>
            ];

        // List view
        // color classes: [ fc-event-success | fc-event-info | fc-event-warning | fc-event-danger | fc-event-dark ]
        var listCalendar = new Calendar($('#fullcalendar-list-view')[0], {
            customButtons: {
                myCustomButton2: {
                    text: 'month',
                    click: function() {
                        //alert("Custom Button");
                        $("#list_calendar").hide();
                        $("#month_calendar").show();
                    }
                }
            },
            plugins: [
                calendarPlugins.bootstrap,
                calendarPlugins.list
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

            headerToolbar: {
                start: 'title',
                center: 'myCustomButton2,listWeek,listDay',
                end: 'prev,next today'
            },

            // customize the button names,
            views: {
                listDay: {
                    buttonText: 'Day'
                },
                listWeek: {
                    buttonText: 'Week'
                },
                listMonth: {
                    buttonText: 'Month'
                }
            },
            height: 'auto',
            initialView: 'listDay',
            firstDay: 1, // Set "Monday" as start of a week
            navLinks: true, // can click day/week names to navigate views
            events: eventList
        });

        listCalendar.render();




        // Default view
        // color classes: [ fc-event-success | fc-event-info | fc-event-warning | fc-event-danger | fc-event-dark ]
        var defaultCalendar = new Calendar($('#fullcalendar-default-view')[0], {

            customButtons: {
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
            },
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

            headerToolbar: {
                start: 'title',
                center: 'dayGridMonth,myWeekButton,myDayButton',
                end: 'prev,next today'
            },

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
            editable: true,
            dayMaxEventRows: false, // allow "more" link when too many events
            events: eventList,
            aspectRatio: 2.0,

            locale: 'ko',
            views: {
                dayGrid: {
                    dayMaxEventRows: 5
                }
            },
            select: function (selectionData) {
                var isOneDay = function (startStr, endStr) {
                    var start = new Date(startStr);
                    start.setDate(start.getDate() + 1);
                    return start.toString() === new Date(endStr).toString();
                }

                $('#fullcalendar-default-view-modal')
                    .on('shown.bs.modal', function() {
                        $(this).find('input[type="text"]').trigger('focus');
                    })
                    .on('hidden.bs.modal', function() {
                        $(this).off('shown.bs.modal hidden.bs.modal submit').find('input[type="text"], select').val('');
                        defaultCalendar.unselect();
                    })
                    .on('submit', function(e) {




                        e.preventDefault();
                        var title = $(this).find('input[type="text"]').val();
                        var className = $(this).find('select').val() || null;

                        if (title) {


                            var param = {

                            "idx_admin": '${admin.idx_admin}',
                            "start_date":selectionData.startStr,
                            "end_date":selectionData.startStr,
                            "schedule_type":isOneDay(selectionData.startStr, selectionData.endStr) ? 0:1,
                            "noti_type":2,
                            "show_type":0,
                            "grade":0,
                            "contents":title
                            }

                                $.ajax({
                                    url: 'insert_scheule_item',
                                    method: 'post',
                                    data: JSON.stringify(param),//보내는 데이터
                                    contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
                                    dataType: 'json',//받는 데이터 타입
                                    success: function (result) {
                                        if (result.result_code == "SUCCESS") {

                                        } else {
                                            alert("일정등록에 실패했습니다.");
                                        }
                                    }

                                });

                            var eventData = {
                                title: title,
                                start: selectionData.startStr,
                                end: selectionData.endStr,
                                classNames: className,
                                display: isOneDay(selectionData.startStr, selectionData.endStr) ? 'list-item' : 'block'
                            }
                            defaultCalendar.addEvent(eventData);
                        }

                        $(this).modal('hide');
                    })
                    .modal('show');
            },

            eventClick: function(calEvent) {
                alert('Event: ' + calEvent.event.title);
            }
        });

        defaultCalendar.render();

    });

    var contentsBool = false;
    $("#demo_bs_code").change(function(){

        duplBool = false;

    })




</script>



<!-- / Page content -->
