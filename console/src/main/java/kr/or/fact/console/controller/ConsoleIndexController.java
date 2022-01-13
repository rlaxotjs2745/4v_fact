package kr.or.fact.console.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ConsoleIndexController {

    @RequestMapping("/")
    public String home(){


        return "index";
    }

    @RequestMapping("/index")
    public String index(){


        return "redirect:/";
    }

    @RequestMapping("/user")
    public String home_user(@Param("id")String user_id){


        return "index_user";
    }

    @RequestMapping("/login")
    public String login(){

        return "login";
    }

    //대시보드
    @RequestMapping(value = "/a10_dashboard",method = RequestMethod.POST)
    public String a10_dashboard(@RequestParam(value = "tag", required = true) String tagValue){

        return "a10_dashboard";
    }

    //사업공고문 관리
    @RequestMapping(value = "/b10_gh_total_monitor",method = RequestMethod.POST)
    public String b10_gh_total_monitor(@RequestParam(value = "tag", required = true) String tagValue){

        return "b10_gh_total_monitor";
    }

    //신규 신청 접수
    @RequestMapping(value = "/b21_gh_glass",method = RequestMethod.POST)
    public String b21_gh_glass(@RequestParam(value = "tag", required = true) String tagValue){

        return "b21_gh_glass";
    }

    //심사결과 관리
    @RequestMapping(value = "/b22_gh_vinyl",method = RequestMethod.POST)
    public String b22_gh_vinyl(@RequestParam(value = "tag", required = true) String tagValue){

        return "b22_gh_vinyl";
    }

    //협약 전 업무관리
    @RequestMapping(value = "/b23_gh_silgle",method = RequestMethod.POST)
    public String b23_gh_silgle(@RequestParam(value = "tag", required = true) String tagValue){


        return "b23_gh_silgle";
    }

    //협약관리
    @RequestMapping(value = "/b24_gh_complex",method = RequestMethod.POST)
    public String b24_gh_complex(@RequestParam(value = "tag", required = true) String tagValue){

        return "b24_gh_complex";
    }

    //실증성적서
    @RequestMapping(value = "/b30_gh_sensor",method = RequestMethod.POST)
    public String b30_gh_sensor(@RequestParam(value = "tag", required = true) String tagValue){

        return "b30_gh_sensor";
    }

    //현황보고서 작성
    @RequestMapping(value = "/b41_cctv_01",method = RequestMethod.POST)
    public String b41_cctv_01(@RequestParam(value = "tag", required = true) String tagValue){

        return "b41_cctv_01";
    }

    //분야별 기업현황
    @RequestMapping(value = "/b42_cctv_02",method = RequestMethod.POST)
    public String b42_cctv_02(@RequestParam(value = "tag", required = true) String tagValue){

        return "b42_cctv_02";
    }

    //위탁기업 목록
    @RequestMapping(value = "/b51_facility_monitor",method = RequestMethod.POST)
    public String b51_facility_monitor(@RequestParam(value = "tag", required = true) String tagValue){

        return "b51_facility_monitor";
    }

    //연장신청 접수
    @RequestMapping(value = "/b52_facility_history",method = RequestMethod.POST)
    public String b52_facility_history(@RequestParam(value = "tag", required = true) String tagValue){

        return "b52_facility_history";
    }

    //상담
    @RequestMapping(value = "/b60_gh_guest",method = RequestMethod.POST)
    public String b60_gh_guest(@RequestParam(value = "tag", required = true) String tagValue){

        return "b60_gh_guest";
    }

    //문의
    @RequestMapping(value = "/c10_event_alert",method = RequestMethod.POST)
    public String c10_event_alert(@RequestParam(value = "tag", required = true) String tagValue){

        return "c10_event_alert";
    }

    //자산현황
    @RequestMapping(value = "/c20_event_facility",method = RequestMethod.POST)
    public String c20_event_facility(@RequestParam(value = "tag", required = true) String tagValue){

        return "c20_event_facility";
    }
    //자원예약 관리
    @RequestMapping(value = "/c30_event_bs",method = RequestMethod.POST)
    public String c30_event_bs(@RequestParam(value = "tag", required = true) String tagValue){

        return "c30_event_bs";
    }

    //자원예약
    @RequestMapping(value = "/d11_gh_data",method = RequestMethod.POST)
    public String d11_gh_data(@RequestParam(value = "tag", required = true) String tagValue){

        return "d11_gh_data";
    }

    //일정관리
    @RequestMapping(value = "/d12_facility_data",method = RequestMethod.POST)
    public String d12_facility_data(@RequestParam(value = "tag", required = true) String tagValue){

        return "d12_facility_data";
    }

    //고객관리
    @RequestMapping(value = "/d21_consign_data",method = RequestMethod.POST)
    public String d21_consign_data(@RequestParam(value = "tag", required = true) String tagValue){

        return "d21_consign_data";
    }

    //휴면회원관리
    @RequestMapping(value = "/d22_self_data",method = RequestMethod.POST)
    public String d22_self_data(@RequestParam(value = "tag", required = true) String tagValue){

        return "d22_self_data";
    }

    //직원관리
    @RequestMapping(value = "/d31_big_data_log",method = RequestMethod.POST)
    public String d31_big_data_log(@RequestParam(value = "tag", required = true) String tagValue){

        return "d31_big_data_log";
    }

    //협약담당자 관리
    @RequestMapping(value = "/d32_big_data_manage",method = RequestMethod.POST)
    public String d32_big_data_manage(@RequestParam(value = "tag", required = true) String tagValue){

        return "d32_big_data_manage";
    }

    //재배사 관리
    @RequestMapping(value = "/e10_cur_asset_mng",method = RequestMethod.POST)
    public String e10_cur_asset_mng(@RequestParam(value = "tag", required = true) String tagValue){

        return "e10_cur_asset_mng";
    }



    //sms 작성
    @RequestMapping(value = "/e20_asset_book_mng",method = RequestMethod.POST)
    public String e20_asset_book_mng(@RequestParam(value = "tag", required = true) String tagValue){

        return "e20_asset_book_mng";
    }

    //자동 sms 관리
    @RequestMapping(value = "/e30_asset_booking",method = RequestMethod.POST)
    public String e30_asset_booking(@RequestParam(value = "tag", required = true) String tagValue){

        return "e30_asset_booking";
    }

    //예약된 SMS
    @RequestMapping(value = "/f10_schedule_mng",method = RequestMethod.POST)
    public String f10_schedule_mng(@RequestParam(value = "tag", required = true) String tagValue){

        return "f10_schedule_mng";
    }

    //보낸 sms
    @RequestMapping(value = "/g10_write_sms",method = RequestMethod.POST)
    public String g10_write_sms(@RequestParam(value = "tag", required = true) String tagValue){

        return "g10_write_sms";
    }

    //자동 email 관리
    @RequestMapping(value = "/g20_auto_sms_mng",method = RequestMethod.POST)
    public String g20_auto_sms_mng(@RequestParam(value = "tag", required = true) String tagValue){

        return "g20_auto_sms_mng";
    }

    //예약된 이메일
    @RequestMapping(value = "/g30_reserved_sms_list_",method = RequestMethod.POST)
    public String g30_reserved_sms_list_(@RequestParam(value = "tag", required = true) String tagValue){

        return "g30_reserved_sms_list";
    }

    //보낸 email
    @RequestMapping(value = "/g40_sent_sms_list",method = RequestMethod.POST)
    public String g40_sent_sms_list(@RequestParam(value = "tag", required = true) String tagValue){

        return "g40_sent_sms_list";
    }

    //웹 프론트 메인 페이지 관리
    @RequestMapping(value = "/g11_web_front_main_mng",method = RequestMethod.POST)
    public String g11_web_front_main_mng(@RequestParam(value = "tag", required = true) String tagValue){

        return "/WEB-INF/jsp/z_web_front_main_mng.jsp";
    }

}
