"use strict";

(function () {
  var $window = $(window);
  var $document = $(document);
  var $this = $(this); //POPUP

  $(document.body).on('click', '.js-modal-detail', function () {
    var popName = $($(this).attr("href")),
        popAnchor = $($(this).data("target"));
    $('html').css({
      "overflow": "hidden"
    });
    popName.before("<div class='dimed'></div>");
    popName.addClass("is-on");
  }); //POPUP-mini

  $(document.body).on('click', '.js-modal-mini', function () {
    var popName = $($(this).attr("href")),
        popAnchor = $($(this).data("target"));
    $('html').css({
      "overflow": "hidden"
    }); //popName.before("<div class='dimed'></div>");

    popName.addClass("is-on");
  });
  $(document.body).on('click', '.js-modal-next', function () {
    var popName = $($(this).attr("href")),
        popAnchor = $($(this).data("target"));
    $(this).parents().removeClass("is-on");
    popName.addClass("is-on");
  });
  $(document.body).on('click', '.pop__detail .js-modal-close', function () {
    $(".dimed").remove();
    $(this).parents().removeClass("is-on");
    $('html').css({
      'overflow': 'auto'
    });
  });
  $(document.body).on('click', '.pop__detail .js-btn-close', function () {
    $(".dimed").remove();
    $(this).parent().parent().parent().removeClass("is-on");
    $('html').css({
      'overflow': 'auto'
    });
  }); //main popup /*20211123*/

  $(document.body).on('click', '.pop__main .js-main-close', function () {
    //$(".dimed").remove();
    $(this).parents().removeClass("is-on"); //$('html').css({'overflow':'auto'});
  }); //POPUP mini

  $(document.body).on('click', '.pop__mini .js-modal-close', function () {
    $(".dimed").remove();
    $(this).parents().removeClass("is-on");
    $('html').css({
      'overflow': 'auto'
    });
  });
  $(document.body).on('click', '.pop__mini .js-btn-close', function () {
    $(".dimed").remove();
    $(this).parents().removeClass("is-on");
    $('html').css({
      'overflow': 'auto'
    });
  }); //organize - diagram

  $(document.body).on('click', '.diagram__office .office__team', function () {
    var targetName = $($(this).attr("href"));
    $(".team--table").removeClass("is-active");
    targetName.addClass("is-active");
  }); //common - search box

  $(document.body).on('click', '.js-search-box', function (e) {
    e.preventDefault();
    var targetName = $($(this).attr("href"));
    targetName.addClass("is-active");
  });
  $(document.body).on('click', '.btn-close-search', function (e) {
    e.preventDefault();
    $("#search__box").removeClass("is-active");
  }); //scroll top btn

  $(function () {
    //$('.container').append('<div class="gotop"><a href="#skipnav"><img src="../../images/webhome/gotop.png" alt="??? ???????"></a></div>');
    var $gotop = $('.wrapper .btn_top');
    var $gotopMovBtn = $gotop.find('>a');
    var footerHeight = $('.footer').height();
    var $header = $('.header');
    var $sub_menu = $(".page__menu--box");

    if ($(document).scrollTop() > 0) {
      if ($(window).scrollTop() + $(window).height() >= $(document).height() - footerHeight) {
        $gotop.css({
          'bottom': 160
        });
      } else {
        $gotop.css({
          'bottom': 30
        });
      }

      $gotop.show();
      $header.addClass('is-block');
    } else {
      $gotop.hide();
      $header.removeClass('is-block');
    }

    $(window).scroll(function () {
      if ($(document).scrollTop() > 0) {
        if ($(window).scrollTop() + $(window).height() >= $(document).height() - footerHeight) {
          $gotop.css({
            'bottom': 160
          });
        } else {
          $gotop.css({
            'bottom': 30
          });
        }

        if ($(window).scrollTop() > 190) {
          $sub_menu.addClass('is-block');
        } else {
          $sub_menu.removeClass('is-block');
        }

        $gotop.show();
        $header.addClass('is-block');
      } else {
        $gotop.hide();
        $header.removeClass('is-block');
      }
    });
  });
  $(document).on('click', '.btn_top a', function (e) {
    e.preventDefault();
    $("html, body").animate({
      scrollTop: 0
    }, 'slow');
  }); //전체메뉴

  $(document).on('click', '.menu__anchor a', function (e) {
    e.preventDefault();
    $(".nav__full--box").addClass("is-block"); //menu

    $(".nav--depth2").hide();
    $(".nav--depth1 > li > a").removeClass("is-active");
  });
  $(document).on('click', '.nav__full--box .btn-close-menu', function (e) {
    e.preventDefault();
    $(".nav__full--box").removeClass("is-block");
  }); //nav

  $(document).on('mouseenter', '.nav--depth1 > li > a', function (e) {
    e.preventDefault();
    console.log("d1");
    $(".nav--depth2").hide();
    $(".nav--depth1 > li > a").removeClass("is-active");
    $(this).next(".nav--depth2").show();
    $(this).addClass("is-active");
  });
  $(document).on('mouseleave', '.nav--depth2', function (e) {
    e.preventDefault();
    console.log("d2");
    $(this).hide();
    $(this).prev(".is-active").removeClass("is-active");
  }); //breadcrumbs--box

  $(document).on('mouseenter', '.under__depth--anchor', function (e) {
    e.preventDefault();
    console.log("d3");
    $(this).next().addClass("is-show");
  });
  $(document).on('mouseleave', '.under__depth--list', function (e) {
    e.preventDefault();
    console.log("d2-2");
    $(this).removeClass("is-show");
  }); //popup tab

  $(document).on('click', '.popup__tabs .popup__tab', function (e) {
    e.preventDefault();
    var targetName = $($(this).attr("href"));
    $(".popup__tabs .popup__tab").removeClass("is-selected");
    $(this).addClass("is-selected");
    $(".popup__tab--contents").removeClass("is-active");
    targetName.addClass("is-active");
  });
  $(".popup__tab--contents").first().addClass("is-active"); //faq

  $(document).on('click', '.faq__list dt a', function (e) {
    e.preventDefault();

    if ($(this).parent().hasClass("is-fold")) {
      $(".faq__list dt, .faq__list dd").removeClass("is-extend").addClass("is-fold");
      $(this).parent().addClass("is-extend").removeClass("is-fold");
      $(this).parent().next().addClass("is-extend").removeClass("is-fold");
    } else {
      $(".faq__list dt, .faq__list dd").removeClass("is-extend").addClass("is-fold");
      $(this).parent().addClass("is-fold").removeClass("is-extend");
      $(this).parent().next().addClass("is-fold").removeClass("is-extend");
    }
  });
  $(function () {
    //input을 datepicker로 선언
    $(".datepicker").datepicker({
      dateFormat: 'yy-mm-dd' //Input Display Format 변경
      ,
      showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
      ,
      showMonthAfterYear: true //년도 먼저 나오고, 뒤에 월 표시
      ,
      changeYear: false //콤보박스에서 년 선택 가능
      ,
      changeMonth: false //콤보박스에서 월 선택 가능
      //,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시
      //,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
      ,
      buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
      ,
      buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트
      ,
      yearSuffix: "." //달력의 년도 부분 뒤에 붙는 텍스트
      ,
      closeText: '닫기',
      prevText: '이전달',
      nextText: '다음달',
      currentText: '오늘',
      duration: 200,
      showAnim: 'show',
      monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'] //달력의 월 부분 텍스트
      ,
      monthNames: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'] //달력의 월 부분 Tooltip 텍스트
      ,
      dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'] //달력의 요일 부분 텍스트
      ,
      dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'] //달력의 요일 부분 Tooltip 텍스트
      ,
      minDate: "-1Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
      ,
      maxDate: "+1Y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)

    }); //초기값을 오늘 날짜로 설정
    // $('.datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
  });
})();


