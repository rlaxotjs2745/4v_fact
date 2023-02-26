<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <div class="row">
        <div class="col-sm-6 col-xl-3">
            <div class="card">
                <button class="btn btn-white">
                    <div class="d-flex align-items-center" onclick="pageLoad('consult_mng',{cur_page:1},'자산현황');">
                        <div class="display-4"><img src="resources/assets/img/img_business_all.png" alt=""></div>
                        <div class="ml-3">
                            <div class="text-muted small">대면기업 신청 수</div>
                            <div class="text-large">${consultingCount}</div>
                        </div>
                    </div>
                </button>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <button class="btn btn-white" >
                    <div class="d-flex align-items-center" onclick="pageLoad('c10_site_mng_consult_mng',{cur_page:1},'자산현황');">
                        <div class="display-4"><img src="resources/assets/img/img_business_on.png" alt=""></div>
                        <div class="ml-3">
                            <div class="text-muted small">온라인 문의 수</div>
                            <div class="text-large">${consultingCount}</div>
                        </div>
                    </div>
                </button>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <button class="btn btn-white">
                    <div class="d-flex align-items-center" onclick="pageLoad('c21_site_visit_list',{cur_page:1},'상담');">
                        <div class="display-4"><img src="resources/assets/img/img_business_week.png" alt=""></div>
                        <div class="ml-3">
                            <div class="text-muted small">견학 신청 수</div>
                            <div class="text-large">${visitCount}</div>
                        </div>
                    </div>
                </button>
            </div>
        </div>
        <div class="col-sm-6 col-xl-3">
            <div class="card mb-3">
                <button class="btn btn-white" >
                    <div class="d-flex align-items-center">
                        <div class="display-4"><img src="resources/assets/img/img_business_off.png" alt=""></div>
                        <div class="ml-3">
                            <div class="text-muted small">자원예약 신청 수</div>
                            <div class="text-large">76</div>
                        </div>
                    </div>
                </button>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-lg-12 col-xl-6">

            <div class="card mb-3" style="min-height: 550px">

                <div class="card-header font-weight-bold with-elements text-white bg-success">
                    <div>사업별 이용신청 현황</div>
                    <div class="card-header-elements ml-auto">
                        <button type="button" class="btn btn-default btn-xs btn-outline-white" onclick="pageLoad('b21_demo_bs_appl_mng',{cur_page:1},'신규신청 접수');">Show more</button>
                    </div>
                </div>


                <div class="card-datatable table-responsive pt-0 pb-3">
                    <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <div class="row">
                            <div class="col-sm-12">

                                <table id="" class="table table-striped table-bordered dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                                    <thead class="bg-light-dark text-white font-weight-bold">
                                    <tr role="row">
                                        <th class="text-center" style="width:100px">공고문 번호</th>
                                        <th class="text-center" style="width:300px">공고문 제목</th>
                                        <th class="text-center" style="width:80px">지원 현황</th>
                                        <th class="text-center" style="width:80px">모집 수</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${applicationList}" var="app">
                                        <tr class="">
                                            <td class="">${app.demo_bs_code}</td>
                                            <td class="text-right">${app.demo_subject}</td>
                                            <td class="text-right">${app.applicant_count}</td>
                                            <td class="text-right">${app.recruit_count_limit}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="row px-3">
                            <div class="col-sm-6">
                                <div class="dataTables_info" id="article-list_info" role="status" aria-live="polite">총 ${total_count}개 중 ${list_amount*(cur_page-1)+1}에서 ${list_amount*page_amount}까지</div>
                            </div>
                            <div class="col-sm-6">
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
        </div>

        <div class="col-md-6 col-lg-12 col-xl-6">
            <div id="list_calendar"  class="card mb-3" style="min-height: 550px;display:none;">
                <div class="card-body" style="padding: 1rem;">
                    <div id="fullcalendar-list-view"></div>
                </div>
            </div>
                <!--//-->

            <div id="month_calendar" class="card mb-3">
                <div class="card-body" style="padding: 1rem;">
                    <div id="fullcalendar-default-view"></div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6 col-xl-4">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">입주 기업 수</div>
                        <div class="text-large">${corpCount}</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-xl-4">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">자율참여 수</div>
                        <div class="text-large">${directCorpCount}</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-xl-4">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="text-muted small mt-2">위탁참여 기업 수</div>
                        <div class="text-large">${corpCount - directCorpCount}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<%--    <div class="row">--%>
<%--        <div class="col-sm-4 col-xl-2">--%>
<%--            <div class="card mb-3">--%>
<%--                <div class="card-body">--%>
<%--                    <div class="d-flex justify-content-between">--%>
<%--                        <div class="text-muted small mt-2">시설자재</div>--%>
<%--                        <div class="text-large">000</div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <div class="col-sm-4 col-xl-2">--%>
<%--            <div class="card mb-3">--%>
<%--                <div class="card-body">--%>
<%--                    <div class="d-flex justify-content-between">--%>
<%--                        <div class="text-muted small mt-2">ICT 실증장비</div>--%>
<%--                        <div class="text-large">000</div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="col-sm-4 col-xl-2">--%>
<%--            <div class="card mb-3">--%>
<%--                <div class="card-body">--%>
<%--                    <div class="d-flex justify-content-between">--%>
<%--                        <div class="text-muted small mt-2">작물보호제/비료</div>--%>
<%--                        <div class="text-large">000</div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="col-sm-4 col-xl-2">--%>
<%--            <div class="card mb-3">--%>
<%--                <div class="card-body">--%>
<%--                    <div class="d-flex justify-content-between">--%>
<%--                        <div class="text-muted small mt-2">스마트팜SW</div>--%>
<%--                        <div class="text-large">000</div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="col-sm-4 col-xl-2">--%>
<%--            <div class="card mb-3">--%>
<%--                <div class="card-body">--%>
<%--                    <div class="d-flex justify-content-between">--%>
<%--                        <div class="text-muted small mt-2">생육모델</div>--%>
<%--                        <div class="text-large">000</div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="col-sm-4 col-xl-2">--%>
<%--            <div class="card mb-3">--%>
<%--                <div class="card-body">--%>
<%--                    <div class="d-flex justify-content-between">--%>
<%--                        <div class="text-muted small mt-2">로봇</div>--%>
<%--                        <div class="text-large">000</div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="row d-flex justify-content-center">--%>
<%--        <div class="col-sm-6 col-xl-3">--%>
<%--            <div class="btn btn-lg btn-block btn-success w-100">--%>
<%--                현황보고서 작성--%>
<%--                <span class="fas fa-arrow-right"></span>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="col-sm-6 col-xl-3">--%>
<%--            <div class="btn btn-lg btn-block btn-success">--%>
<%--                신청서 평가--%>
<%--                <span class="fas fa-arrow-right"></span>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="col-sm-6 col-xl-3">--%>
<%--            <div class="btn btn-lg btn-block btn-success">--%>
<%--                실증성적서 발급--%>
<%--                <span class="fas fa-arrow-right"></span>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="col-sm-6 col-xl-3">--%>
<%--            <div class="btn btn-lg btn-block btn-success">--%>
<%--                SMS 작성--%>
<%--                <span class="fas fa-arrow-right"></span>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
</div>


<!-- / Page content -->
<script>

    $(function() {

        $('.datepickers').datepicker({
            orientation: 'auto left'
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
            height:516,
            locale: 'ko',
            views: {
                dayGrid: {
                    dayMaxEventRows: 2
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
        $('.fc .fc-toolbar.fc-header-toolbar').attr('style', 'margin-bottom: 1rem !important');
        if(!$('.fc-scroller-harness').hasClass('bg-light-dark'))
            $('.fc-col-header').addClass('bg-light-dark text-white font-weight-bold !important');
        //$('.fc-scroller-harness').attr('c', 'bg-light-dark text-white font-weight-bold !important');

    });







    $(function() {
        // var isRtl = $('html').attr('dir') === 'rtl';
        // $('.datepickers').datepicker({
        //     orientation: isRtl ? 'auto right' : 'auto left'
        // });
        //
        // var today = new Date();
        // var y = today.getFullYear();
        // var m = today.getMonth();
        // var d = today.getDate();
        //
        // var eventList = [{
        //     title: '일정관리',
        //     start: new Date(y, m, d - 12)
        // },
        //     {
        //         title: '자산관리 시작, 홍순이님에게 온실 관련 협조 받아야함',
        //         start: new Date(y, m, d),
        //         end: new Date(y, m, d),
        //         classNames: 'fc-event-warning'
        //     },
        //     {
        //         id: 999,
        //         title: '누구에게 무엇을 할 것인지 나에게 물어보기',
        //         start: new Date(y, m, d, 16, 0),
        //         classNames: 'fc-event-danger'
        //     },
        //     {
        //         id: 999,
        //         title: '오늘은 칼퇴하는날',
        //         start: new Date(y, m, d, 18, 0),
        //         classNames: 'fc-event-success',
        //     },
        //     {
        //         title: '시스템 이벤트 : AAA기업 사업종료 30일전',
        //         start: new Date(y, m, d),
        //         classNames: 'fc-event-dark'
        //     },
        //     {
        //         title: '시스템 이벤트 : CCC기업 퇴거일',
        //         start: new Date(y, m, d, 10, 30),
        //         classNames: 'fc-event-danger'
        //     },
        //     {
        //         title: 'Lunch',
        //         start: new Date(y, m, d, 12, 0),
        //         end: new Date(y, m, d, 12, 30),
        //         classNames: 'fc-event-info'
        //     },
        //     {
        //         title: 'Happy Hour',
        //         start: new Date(y, m, d, 17, 30),
        //         classNames: 'fc-event-secondary'
        //     },
        //     {
        //         title: 'Dinner',
        //         start: new Date(y, m, d, 20, 0)
        //     },
        //     {
        //         title: 'Background event',
        //         start: new Date(y, m, d + 5),
        //         end: new Date(y, m, d + 7),
        //         display: 'background'
        //     },
        //     {
        //         title: 'Click for Google',
        //         url: 'http://google.com/',
        //         start: new Date(y, m, d + 13)
        //     }];
        //
        // // List view
        // // color classes: [ fc-event-success | fc-event-info | fc-event-warning | fc-event-danger | fc-event-dark ]
        // var listCalendar = new Calendar($('#fullcalendar-list-view')[0], {
        //     customButtons: {
        //         myCustomButton2: {
        //             text: 'month',
        //             click: function() {
        //                 //alert("Custom Button");
        //                 $("#list_calendar").hide();
        //                 $("#month_calendar").show();
        //             }
        //         }
        //     },
        //     plugins: [
        //         calendarPlugins.bootstrap,
        //         calendarPlugins.list
        //     ],
        //     direction: $('html').attr('dir') || 'ltr',
        //
        //     // Bootstrap styling
        //     themeSystem: 'bootstrap',
        //     bootstrapFontAwesome: {
        //         close: ' ion ion-md-close',
        //         prev: ' ion ion-ios-arrow-back scaleX--1-rtl',
        //         next: ' ion ion-ios-arrow-forward scaleX--1-rtl',
        //         prevYear: ' ion ion-ios-arrow-dropleft-circle scaleX--1-rtl',
        //         nextYear: ' ion ion-ios-arrow-dropright-circle scaleX--1-rtl'
        //     },
        //
        //     headerToolbar: {
        //         start: 'title',
        //         center: 'myCustomButton2,listWeek,listDay',
        //         end: 'prev,next today'
        //     },
        //
        //     // customize the button names,
        //     views: {
        //         listDay: {
        //             buttonText: 'Day'
        //         },
        //         listWeek: {
        //             buttonText: 'Week'
        //         },
        //         listMonth: {
        //             buttonText: 'Month'
        //         }
        //     },
        //     height: '500px',
        //     initialView: 'listDay',
        //     firstDay: 1, // Set "Monday" as start of a week
        //     navLinks: true, // can click day/week names to navigate views
        //     events: eventList
        // });
        //
        // listCalendar.render();
        //
        //
        //
        //
        // // Default view
        // // color classes: [ fc-event-success | fc-event-info | fc-event-warning | fc-event-danger | fc-event-dark ]
        // var defaultCalendar = new Calendar($('#fullcalendar-default-view')[0], {
        //
        //     customButtons: {
        //         myWeekButton: {
        //             text: 'week',
        //             click: function() {
        //                 //alert("Custom Button");
        //                 $("#list_calendar").show();
        //                 $("#month_calendar").hide();
        //             }
        //         },
        //         myDayButton: {
        //             text: 'day',
        //             click: function() {
        //                 //alert("Custom Button");
        //                 $("#list_calendar").show();
        //                 $("#month_calendar").hide();
        //             }
        //         }
        //     },
        //     plugins: [
        //         calendarPlugins.bootstrap,
        //         calendarPlugins.dayGrid,
        //         calendarPlugins.timeGrid,
        //         calendarPlugins.interaction
        //     ],
        //     direction: $('html').attr('dir') || 'ltr',
        //
        //     // Bootstrap styling
        //     themeSystem: 'bootstrap',
        //     bootstrapFontAwesome: {
        //         close: ' ion ion-md-close',
        //         prev: ' ion ion-ios-arrow-back scaleX--1-rtl',
        //         next: ' ion ion-ios-arrow-forward scaleX--1-rtl',
        //         prevYear: ' ion ion-ios-arrow-dropleft-circle scaleX--1-rtl',
        //         nextYear: ' ion ion-ios-arrow-dropright-circle scaleX--1-rtl'
        //     },
        //
        //     headerToolbar: {
        //         start: 'title',
        //         center: 'dayGridMonth,myWeekButton,myDayButton',
        //         end: 'prev,next today'
        //     },
        //
        //     initialDate: today,
        //     navLinks: true, // can click day/week names to navigate views
        //     selectable: true,
        //     weekNumbers: false, // Show week numbers
        //     nowIndicator: true, // Show "now" indicator
        //     firstDay: 0, // Set "Monday" as start of a week
        //     businessHours: {
        //         dow: [1, 2, 3, 4, 5], // Monday - Friday
        //         start: '9:00',
        //         end: '18:00',
        //     },
        //     editable: true,
        //     dayMaxEventRows: false, // allow "more" link when too many events
        //     events: eventList,
        //     aspectRatio: 2.0,
        //     /!*minHeight:'500px',*!/
        //     height:'500px',
        //     locale: 'ko',
        //     views: {
        //         dayGrid: {
        //             dayMaxEventRows: 1
        //         }
        //     },
        //     select: function (selectionData) {
        //         var isOneDay = function (startStr, endStr) {
        //             var start = new Date(startStr);
        //             start.setDate(start.getDate() + 1);
        //             return start.toString() === new Date(endStr).toString();
        //         }
        //
        //         $('#fullcalendar-default-view-modal')
        //             .on('shown.bs.modal', function() {
        //                 $(this).find('input[type="text"]').trigger('focus');
        //             })
        //             .on('hidden.bs.modal', function() {
        //                 $(this).off('shown.bs.modal hidden.bs.modal submit').find('input[type="text"], select').val('');
        //                 defaultCalendar.unselect();
        //             })
        //             .on('submit', function(e) {
        //                 e.preventDefault();
        //                 var title = $(this).find('input[type="text"]').val();
        //                 var className = $(this).find('select').val() || null;
        //
        //                 if (title) {
        //                     var eventData = {
        //                         title: title,
        //                         start: selectionData.startStr,
        //                         end: selectionData.endStr,
        //                         classNames: className,
        //                         display: isOneDay(selectionData.startStr, selectionData.endStr) ? 'list-item' : 'block'
        //                     }
        //                     defaultCalendar.addEvent(eventData);
        //                 }
        //
        //                 $(this).modal('hide');
        //             })
        //             .modal('show');
        //     },
        //
        //     eventClick: function(calEvent) {
        //         alert('Event: ' + calEvent.event.title);
        //     }
        // });
        //
        // defaultCalendar.render();

        // pageLoad('c22_site_visit_mng','1:1문의', '','#dashboard_calendar_view');

    });


</script>

