package kr.or.fact.admin.controller;

import kr.or.fact.core.model.DTO.AdminVO;
import kr.or.fact.core.model.DTO.CoWorkerVO;
import kr.or.fact.core.model.DTO.HomepageInfoVO;
import kr.or.fact.core.model.DTO.NoticeVO;
import kr.or.fact.core.service.AdminService;
import kr.or.fact.core.service.CoWorkerNService;
import kr.or.fact.core.service.HomepageInfoService;
import kr.or.fact.core.service.NoticeService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.UUID;

@Controller
public class IndexController {

    @Resource(name = "adminService")
    AdminService adminService;

    @Resource(name = "homepageInfoService")
    HomepageInfoService homepageInfoService;

    @Resource(name = "coWorkerNService")
    CoWorkerNService coWorkerNService;

    @Resource(name = "noticeService")
    NoticeService noticeService;

    @PreAuthorize("hasRole('ROLE_MEMBER')")
    @RequestMapping("/")
    public String root(){



        return "index";
    }
    @PreAuthorize("hasRole('ROLE_MEMBER')")
    @RequestMapping("/home")
    public String home(){



        return "redirect:/";
    }
    @RequestMapping(value = "/api_post_login",method = RequestMethod.POST)
    public String api_post_login(HttpSession session,
                                 ModelMap model,
                                 @RequestParam(value="id") String admin_id,
                                 @RequestParam(value="pw") String admin_pw){

         if(admin_id == null || admin_pw == null){
            return "redirect:login";
        }
        //UserVO findUser = userService.getAuthUser(id,pw);
        //UserVO findUser = userService.getUserInfo(3);
        AdminVO findAdmin = adminService.login(admin_id,admin_pw);

        if(findAdmin!=null){
            model.addAttribute("adminVo",findAdmin);
            session.setAttribute("loginCheck",true);
            session.setAttribute("admin_id",admin_id);
            session.setAttribute("name",findAdmin.getAdmin_name());
            session.setAttribute("isCorpMember",findAdmin.getAdmin_type());
            return "redirect:/";
        }
        else {
            session.setAttribute("loginCheck",false);
        }

        return "redirect:login";
    }

/*    @RequestMapping("/frame_lnb")
    public String frame_lnb(){


        return "frame_lnb";
    }
    @RequestMapping("/frame_gnb")
    public String frame_gnb(){


        return "frame_gnb";
    }
    @RequestMapping("/frame_footer")
    public String frame_footer(){


        return "frame_footer";
    }*/



    @RequestMapping("/login")
    public String login(HttpSession session){
        session.setAttribute("CSRF_TOKEN", UUID.randomUUID().toString());

        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

/*        AdminVO adminVo = adminService.findAdminById("abcdef01@abcde.com");
        if(adminVo !=null)
        {
            adminVo.setAdmin_pw(passwordEncoder.encode(adminVo.getAdmin_pw()));
            adminService.updateAdminPassword(adminVo);
        }*/

        return "login";
    }
    @RequestMapping("/password_reset")
    public String password_reset(){

        return "password_reset";
    }
    //대시보드
    @RequestMapping(value = "/a10_dashboard",method = RequestMethod.POST)
    public String a10_dashboard(@RequestParam(value = "tag", required = false) String tagValue,
                                 ModelMap model
                                ){

        return "a10_dashboard";
    }

    //사업공고문 관리
    @RequestMapping(value = "/b10_demo_bs_announce_doc_mng",method = RequestMethod.POST)
    public String b10_demo_bs_announce_doc_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                               ModelMap model){

        return "b10_demo_bs_announce_doc_mng";
    }

    //신규 신청 접수
    @RequestMapping(value = "/b21_demo_bs_appl_mng",method = RequestMethod.POST)
    public String b21_demo_bs_appl_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                       ModelMap model){


        return "b21_demo_bs_appl_mng";
    }

    //심사결과 관리
    @RequestMapping(value = "/b22_demo_bs_doc_eval_result_mng",method = RequestMethod.POST)
    public String b22_demo_bs_doc_eval_result_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                                  ModelMap model){


        return "b22_demo_bs_doc_eval_result_mng";
    }

    //협약 전 업무관리
    @RequestMapping(value = "/b23_demo_bs_pre_contract_mng",method = RequestMethod.POST)
    public String b23_demo_bs_pre_contract_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                               ModelMap model){



        return "b23_demo_bs_pre_contract_mng";
    }

    //협약관리
    @RequestMapping(value = "/b30_demo_bs_usage_ext_mng",method = RequestMethod.POST)
    public String b30_demo_bs_usage_ext_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                            ModelMap model){


        return "b30_demo_bs_usage_ext_mng";
    }

    //실증성적서
    @RequestMapping(value = "/b40_demo_bs_contract_mng",method = RequestMethod.POST)
    public String b40_demo_bs_contract_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                           ModelMap model){


        return "b40_demo_bs_contract_mng";
    }

    //현황보고서 작성
    @RequestMapping(value = "/b50_demo_bs_corp_cur_list",method = RequestMethod.POST)
    public String b50_demo_bs_corp_cur_list(@RequestParam(value = "tag", required = false) String tagValue,
                                            ModelMap model){


        return "b50_demo_bs_corp_cur_list";
    }

    //분야별 기업현황
    @RequestMapping(value = "/b60_demo_bs_consign_corp_list",method = RequestMethod.POST)
    public String b60_demo_bs_consign_corp_list(@RequestParam(value = "tag", required = false) String tagValue,
                                                ModelMap model){


        return "b60_demo_bs_consign_corp_list";
    }

    //위탁기업 목록
    @RequestMapping(value = "/b70_demo_bs_usage_pee_mng",method = RequestMethod.POST)
    public String b70_demo_bs_usage_pee_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                            ModelMap model){


        return "b70_demo_bs_usage_pee_mng";
    }

    //연장신청 접수
    @RequestMapping(value = "/b80_demo_bs_corp_cur_report_write",method = RequestMethod.POST)
    public String b80_demo_bs_corp_cur_report_write(@RequestParam(value = "tag", required = false) String tagValue,
                                                    ModelMap model){


        return "b80_demo_bs_corp_cur_report_write";
    }

    //상담
    @RequestMapping(value = "/b90_demo_bs_cert_mng",method = RequestMethod.POST)
    public String b90_demo_bs_cert_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                       ModelMap model){


        return "b90_demo_bs_cert_mng";
    }

    //문의
    @RequestMapping(value = "/c00_site_mng",method = RequestMethod.POST)
    public String c00_site_mng(@RequestParam(value = "tag", required = false) String tagValue
    , Model model){

        //푸터 정보
        HomepageInfoVO homepageInfoVO = homepageInfoService.getHomepageInfo();
        model.addAttribute("homepageInfo",homepageInfoVO);

        //조직도, 직원 정보
        List<CoWorkerVO> coWorkerVOList = coWorkerNService.getCoWorkerList();
        model.addAttribute("coWorkerVOList",coWorkerVOList);
        return "c00_site_mng";
    }

    //문의
    @RequestMapping(value = "/c10_site_mng_consult_mng",method = RequestMethod.POST)
    public String c10_site_mng_consult_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                           ModelMap model){


        return "c10_site_mng_consult_mng";
    }

    //자산현황
    @RequestMapping(value = "/c21_site_visit_list",method = RequestMethod.POST)
    public String c21_site_visit_list(@RequestParam(value = "tag", required = false) String tagValue,
                                      ModelMap model){


        return "c21_site_visit_list";
    }
    //자원예약 관리
    @RequestMapping(value = "/c22_site_visit_mng",method = RequestMethod.POST)
    public String c22_site_visit_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                     ModelMap model){


        return "c22_site_visit_mng";
    }

    //자원예약
    @RequestMapping(value = "/c30_site_faq_mng",method = RequestMethod.POST)
    public String c30_site_faq_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                   ModelMap model){


        return "c30_site_faq_mng";
    }

    //일정관리
    @RequestMapping(value = "/c41_site_notice_mng",method = RequestMethod.POST)
    public String c41_site_notice_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                      @RequestParam("page") int page,
                                      ModelMap model){

        int list_amount = 10;
        int page_amount = 10;

        int noticeCount = noticeService.getWebpageNoticeCount();
        if(noticeCount==0){
            return "brd_notice_blank";
        }
        model.addAttribute("total_count",noticeCount);
        List<NoticeVO> noticeList = noticeService.getNoticeList(page,list_amount);
        model.addAttribute("noticeList",noticeList);

        model.addAttribute("cur_page",page);
        model.addAttribute("amount",list_amount);

        int tot_page = noticeCount/list_amount+1;
        if(noticeCount%list_amount==0) tot_page-=1;

        int tot_sector = tot_page/page_amount+1;
        if(tot_page%page_amount==0) tot_sector-=1;

        int cur_sector = page/page_amount+1;
        if(page%page_amount==0) cur_sector-=1;

        boolean is_past = false;
        boolean is_prev = false;
        boolean is_next = false;
        boolean is_last = false;
        boolean is_active = false;

        if(page!=tot_page && tot_page>1) is_next = true;

        if(page!=1 && tot_page>1) is_prev = true;

        if(cur_sector!=tot_sector && tot_sector>1 ) is_last = true;

        if(cur_sector!=1 && tot_sector>1 ) is_past = true;

        if(tot_page<=page_amount){
            is_past = false;
            is_last = false;
            page_amount = tot_page;
        }

        model.addAttribute("tot_page",tot_page);
        model.addAttribute("tot_sector",tot_sector);
        model.addAttribute("cur_sector",cur_sector);
        model.addAttribute("is_past",is_past);
        model.addAttribute("is_prev",is_prev);
        model.addAttribute("is_next",is_next);
        model.addAttribute("is_last",is_last);
        model.addAttribute("list_amount",list_amount);
        model.addAttribute("page_amount",page_amount);






        return "c41_site_notice_mng";
    }

    //고객관리
    @RequestMapping(value = "/c42_site_event_mng",method = RequestMethod.POST)
    public String c42_site_event_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                     ModelMap model){


        return "c42_site_event_mng";
    }

    //휴면회원관리
    @RequestMapping(value = "/c43_site_adver_mng",method = RequestMethod.POST)
    public String c43_site_adver_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                     ModelMap model){


        return "c43_site_adver_mng";
    }

    //직원관리
    @RequestMapping(value = "/c50_site_banner_mng",method = RequestMethod.POST)
    public String c50_site_banner_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                      ModelMap model){


        return "c50_site_banner_mng";
    }

    //협약담당자 관리
    @RequestMapping(value = "/c60_site_popup_mng",method = RequestMethod.POST)
    public String c60_site_popup_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                     ModelMap model){


        return "c60_site_popup_mng";
    }

    //재배사 관리
    @RequestMapping(value = "/c71_site_form_doc_mng",method = RequestMethod.POST)
    public String c71_site_form_doc_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                        ModelMap model){


        return "c71_site_form_doc_mng";
    }

    //sms 작성
    @RequestMapping(value = "/c72_site_rule_doc_mng",method = RequestMethod.POST)
    public String c72_site_rule_doc_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                        ModelMap model){


        return "c72_site_rule_doc_mng";
    }

    //자동 sms 관리
    @RequestMapping(value = "/d10_schedule_mng",method = RequestMethod.POST)
    public String d10_schedule_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                   ModelMap model){


        return "d10_schedule_mng";
    }

    //예약된 SMS
    @RequestMapping(value = "/e10_document_issued_req_list",method = RequestMethod.POST)
    public String e10_document_issued_req_list(@RequestParam(value = "tag", required = false) String tagValue,
                                               ModelMap model){


        return "e10_document_issued_req_list";
    }

    //보낸 sms
    @RequestMapping(value = "/e20_document_issued",method = RequestMethod.POST)
    public String e20_document_issued(@RequestParam(value = "tag", required = false) String tagValue,
                                      ModelMap model){


        return "e20_document_issued";
    }

    //자동 email 관리
    @RequestMapping(value = "/e30_document_issued_history",method = RequestMethod.POST)
    public String e30_document_issued_history(@RequestParam(value = "tag", required = false) String tagValue,
                                              ModelMap model){


        return "e30_document_issued_history";
    }

    // 이메일 작성
/*    @RequestMapping(value = "/f21_write_email",method = RequestMethod.POST)
    public String f21_write_email(@RequestParam(value = "tag", required = false) String tagValue){

        return "f21_write_email";
    }*/

    //예약된 이메일
    @RequestMapping(value = "/f10_gh_data_event_list",method = RequestMethod.POST)
    public String f10_gh_data_event_list(@RequestParam(value = "tag", required = false) String tagValue,
                                         ModelMap model){


        return "f10_gh_data_event_list";
    }

    //보낸 email
    @RequestMapping(value = "/f20_gh_data_extract",method = RequestMethod.POST)
    public String f20_gh_data_extract(@RequestParam(value = "tag", required = false) String tagValue,
                                      ModelMap model){


        return "f20_gh_data_extract";
    }

    //웹 프론트 메인 페이지 관리
    @RequestMapping(value = "/f30_gh_data_extract_history",method = RequestMethod.POST)
    public String f30_gh_data_extract_history(@RequestParam(value = "tag", required = false) String tagValue,
                                              ModelMap model){


        return "f30_gh_data_extract_history";
    }

    //시스템 모니터링
/*    @RequestMapping(value = "/g12_system_monitoring",method = RequestMethod.POST)
    public String g12_system_monitoring(@RequestParam(value = "tag", required = false) String tagValue){

        return "g12_system_monitoring";
    }*/

    //보안 관리
/*    @RequestMapping(value = "/g13_security_mng",method = RequestMethod.POST)
    public String g13_security_mng(@RequestParam(value = "tag", required = false) String tagValue){

        return "g13_security_mng";
    }*/

    //관리자 프론트 대시보드 관리
    @RequestMapping(value = "/g10_cur_asset_mng",method = RequestMethod.POST)
    public String g10_cur_asset_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                    ModelMap model){


        return "g10_cur_asset_mng";
    }

    //콘솔 프론트 대시보드 관리
    @RequestMapping(value = "/g20_asset_booking",method = RequestMethod.POST)
    public String g20_asset_booking(@RequestParam(value = "tag", required = false) String tagValue,
                                    ModelMap model){


        return "g20_asset_booking";
    }

    //서식관리
    @RequestMapping(value = "/g30_asset_book_mng",method = RequestMethod.POST)
    public String g30_asset_book_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                     ModelMap model){


        return "g30_asset_book_mng";
    }

    //시스템 코드 관리
    @RequestMapping(value = "/h10_write_sms",method = RequestMethod.POST)
    public String h10_write_sms(@RequestParam(value = "tag", required = false) String tagValue,
                                ModelMap model){


        return "h10_write_sms";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h20_auto_sms_mng",method = RequestMethod.POST)
    public String h20_auto_sms_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                   ModelMap model){


        return "h20_auto_sms_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h30_reserved_sms_list",method = RequestMethod.POST)
    public String h30_reserved_sms_list(@RequestParam(value = "tag", required = false) String tagValue,
                                        ModelMap model){


        return "h30_reserved_sms_list";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h40_sent_sms_list",method = RequestMethod.POST)
    public String h40_sent_sms_list(@RequestParam(value = "tag", required = false) String tagValue,
                                    ModelMap model){


        return "h40_sent_sms_list";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h50_auto_email_mng",method = RequestMethod.POST)
    public String h50_auto_email_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                     ModelMap model){


        return "h50_auto_email_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h60_reserved_email_list",method = RequestMethod.POST)
    public String h60_reserved_email_list(@RequestParam(value = "tag", required = false) String tagValue,
                                          ModelMap model){


        return "h60_reserved_email_list";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h70_sent_email_list",method = RequestMethod.POST)
    public String h70_sent_email_list(@RequestParam(value = "tag", required = false) String tagValue,
                                      ModelMap model){


        return "h70_sent_email_list";
    }
    @RequestMapping(value = "/h71_write_mail",method = RequestMethod.POST)
    public String h71_write_mail(@RequestParam(value = "tag", required = false) String tagValue,
                                      ModelMap model){


        return "h71_write_mail";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/i10_user_mng",method = RequestMethod.POST)
    public String i10_user_mng(@RequestParam(value = "tag", required = false) String tagValue,
                               ModelMap model){


        return "i10_user_mng";
    }

    //시스템 코드 관리
    @RequestMapping(value = "/i20_admin_mng",method = RequestMethod.POST)
    public String i20_admin_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                ModelMap model){


        return "i20_admin_mng";
    }

    //시스템 코드 관리
    @RequestMapping(value = "/i30_dormant_user_mng",method = RequestMethod.POST)
    public String i30_dormant_user_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                       ModelMap model){


        return "i30_dormant_user_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/j10_file_mng",method = RequestMethod.POST)
    public String j10_file_mng(@RequestParam(value = "tag", required = false) String tagValue,
                               ModelMap model){


        return "j10_file_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/j20_sms_mng",method = RequestMethod.POST)
    public String j20_sms_mng(@RequestParam(value = "tag", required = false) String tagValue,
                              ModelMap model){


        return "j20_sms_mng";
    }

    //시스템 코드 관리
    @RequestMapping(value = "/j30_email_mng",method = RequestMethod.POST)
    public String j30_email_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                ModelMap model){


        return "j30_email_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/k11_system_authority_mng",method = RequestMethod.POST)
    public String k11_system_authority_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                           ModelMap model){


        return "k11_system_authority_mng";
    }    //시스템 코드 관리
    @RequestMapping(value = "/k12_system_authority_list",method = RequestMethod.POST)
    public String k12_system_authority_list(@RequestParam(value = "tag", required = false) String tagValue,
                                            ModelMap model){


        return "k12_system_authority_list";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/k13_system_role_mng",method = RequestMethod.POST)
    public String k13_system_role_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                      ModelMap model){


        return "k13_system_role_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/k14_system_role_list",method = RequestMethod.POST)
    public String k14_system_role_list(@RequestParam(value = "tag", required = false) String tagValue,
                                       ModelMap model){


        return "k14_system_role_list";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/k15_system_role_menu_mng",method = RequestMethod.POST)
    public String k15_system_role_menu_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                           ModelMap model){


        return "k15_system_role_menu_mng";
    }



}
