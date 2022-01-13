<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <div class="row">
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <div class="display-4"><img src="/static/assets/img/img_business_all.png" alt=""></div>
                        <div class="ml-3">
                            <div class="text-muted small">대면기업 신청 수</div>
                            <div class="text-large">42</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <div class="display-4"><img src="/static/assets/img/img_business_on.png" alt=""></div>
                        <div class="ml-3">
                            <div class="text-muted small">온라인 문의 수</div>
                            <div class="text-large">16</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <div class="display-4"><img src="/static/assets/img/img_business_week.png" alt=""></div>
                        <div class="ml-3">
                            <div class="text-muted small">견학 신청 수</div>
                            <div class="text-large">21</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <div class="display-4"><img src="/static/assets/img/img_business_off.png" alt=""></div>
                        <div class="ml-3">
                            <div class="text-muted small">자원예약 신청 수</div>
                            <div class="text-large">76</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-lg-12 col-xl-6">
            <div class="card mb-4" style="min-height: 550px">
                <h6 class="card-header with-elements">
                    <div class="card-header-title">공고별 이용신청 현황</div>

                    <div class="card-header-elements ml-auto">
                        <button type="button" class="btn btn-default btn-xs md-btn-flat">Show more</button>
                    </div>

                </h6>
                <div class="table-responsive">
                    <table id="" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                        <thead>
                        <tr role="row">
                            <th class="text-center" style="width:100px">공고문 번호</th>
                            <th class="text-center" style="width:300px">공고문 제목</th>
                            <th class="text-center" style="width:80px">모집 수</th>
                            <th class="text-center" style="width:80px">지원 현황</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="">
                            <td class="">12345678901</td>
                            <td class=""><a href="#none" data-toggle="modal" data-target="#modals-business-view">공고문제목 제목 공고문 공고문제목 제목 공고문</a></td>
                            <td class="text-right">1,234</td>
                            <td class="text-right">58</td>
                        </tr>
                        <tr class="">
                            <td class="">12345678901</td>
                            <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                            <td class="text-right">1,234</td>
                            <td class="text-right">58</td>
                        </tr>
                        <tr class="">
                            <td class="">12345678901</td>
                            <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                            <td class="text-right">1,234</td>
                            <td class="text-right">58</td>
                        </tr>
                        <tr class="">
                            <td class="">12345678901</td>
                            <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                            <td class="text-right">1,234</td>
                            <td class="text-right">58</td>
                        </tr>
                        <tr class="">
                            <td class="">12345678901</td>
                            <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                            <td class="text-right">1,234</td>
                            <td class="text-right">58</td>
                        </tr>
                        <tr class="">
                            <td class="">12345678901</td>
                            <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                            <td class="text-right">1,234</td>
                            <td class="text-right">58</td>
                        </tr>
                        <tr class="">
                            <td class="">12345678901</td>
                            <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                            <td class="text-right">1,234</td>
                            <td class="text-right">58</td>
                        </tr>
                        <tr class="">
                            <td class="">12345678901</td>
                            <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                            <td class="text-right">1,234</td>
                            <td class="text-right">58</td>
                        </tr>
                        <tr class="">
                            <td class="">12345678901</td>
                            <td class="">공고문제목 제목 공고문 공고문제목 제목 공고문</td>
                            <td class="text-right">1,234</td>
                            <td class="text-right">58</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="card-footer d-flex justify-content-center" >
                    <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate" style="float: bottom;alignment: center;">
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


        <div class="col-md-6 col-lg-12 col-xl-6">
            <!-- Comments -->
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
            <!-- / Comments -->
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6 col-xl-4">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">입주 기업 수</div>
                        <div class="text-large">133</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-xl-4">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">자율참여 수</div>
                        <div class="text-large">43</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-xl-4">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">위탁참여 기업 수</div>
                        <div class="text-large">90</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-4 col-xl-2">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">시설자재</div>
                        <div class="text-large">000</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-4 col-xl-2">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">ICT 실증장비</div>
                        <div class="text-large">000</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-4 col-xl-2">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">작물보호제/비료</div>
                        <div class="text-large">000</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-4 col-xl-2">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">스마트팜SW</div>
                        <div class="text-large">000</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-4 col-xl-2">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">생육모델</div>
                        <div class="text-large">000</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-4 col-xl-2">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">로봇</div>
                        <div class="text-large">000</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row d-flex justify-content-center">
        <div class="col-sm-6 col-xl-3">
            <div class="btn btn-lg btn-block btn-success w-100">
                현황보고서 작성
                <span class="fas fa-arrow-right"></span>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="btn btn-lg btn-block btn-success">
                신청서 평가
                <span class="fas fa-arrow-right"></span>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="btn btn-lg btn-block btn-success">
                실증성적서 발급
                <span class="fas fa-arrow-right"></span>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="btn btn-lg btn-block btn-success">
                SMS 작성
                <span class="fas fa-arrow-right"></span>
            </div>
        </div>
    </div>
</div>
<!-- / Page content -->
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

        var eventList = [{
            title: '일정관리',
            start: new Date(y, m, d - 12)
        },
            {
                title: '자산관리 시작, 홍순이님에게 온실 관련 협조 받아야함',
                start: new Date(y, m, d),
                end: new Date(y, m, d),
                classNames: 'fc-event-warning'
            },
            {
                id: 999,
                title: '누구에게 무엇을 할 것인지 나에게 물어보기',
                start: new Date(y, m, d, 16, 0),
                classNames: 'fc-event-danger'
            },
            {
                id: 999,
                title: '오늘은 칼퇴하는날',
                start: new Date(y, m, d, 18, 0),
                classNames: 'fc-event-success',
            },
            {
                title: '시스템 이벤트 : AAA기업 사업종료 30일전',
                start: new Date(y, m, d),
                classNames: 'fc-event-dark'
            },
            {
                title: '시스템 이벤트 : CCC기업 퇴거일',
                start: new Date(y, m, d, 10, 30),
                classNames: 'fc-event-danger'
            },
            {
                title: 'Lunch',
                start: new Date(y, m, d, 12, 0),
                end: new Date(y, m, d, 12, 30),
                classNames: 'fc-event-info'
            },
            {
                title: 'Happy Hour',
                start: new Date(y, m, d, 17, 30),
                classNames: 'fc-event-secondary'
            },
            {
                title: 'Dinner',
                start: new Date(y, m, d, 20, 0)
            },
            {
                title: 'Background event',
                start: new Date(y, m, d + 5),
                end: new Date(y, m, d + 7),
                display: 'background'
            },
            {
                title: 'Click for Google',
                url: 'http://google.com/',
                start: new Date(y, m, d + 13)
            }];

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
            height: '500px',
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
            minHeight:'500px',
            height:'500px',
            locale: 'ko',
            views: {
                dayGrid: {
                    dayMaxEventRows: 1
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


</script>

