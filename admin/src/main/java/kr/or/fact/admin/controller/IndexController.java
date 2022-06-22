package kr.or.fact.admin.controller;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.service.*;
import kr.or.fact.core.util.*;
import lombok.SneakyThrows;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.net.URL;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

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

    @Resource(name = "demoBsService")
    DemoBsService demoBsService;

    @Resource(name = "mailService")
    MailService mailService;

    @Resource(name = "smsService")
    public SmsSendService smsSendService;

    @Resource(name = "bsAnnouncementService")
    public BsAnnouncementService bsAnnouncementService;

    @Resource(name = "demoBsApplicationService")
    public DemoBsApplicationService demoBsApplicationService;

    @Resource(name = "fileService")
    public FileService fileService;

    @Resource(name = "corpService")
    public CorpService corpService;

    @Resource(name = "systemService")
    public SystemService systemService;

    @Resource(name = "consultingService")
    public ConsultingService consultingService;

    @Resource(name = "eventContentService")
    public EventContentService eventContentService;

    @Resource(name = "visitService")
    public VisitService visitService;

    @Resource(name = "assetService")
    public AssetService assetService;

    @Resource(name = "userService")
    public UserService userService;


    @PreAuthorize("hasRole('ROLE_MEMBER')")
    @RequestMapping("/")
    public String root(Principal principal, ModelMap model){

        AdminVO adminInfo = adminService.findAdminById(principal.getName());
        model.addAttribute("admin", adminInfo);

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

        System.out.println("api_post_login");
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
    public String login(HttpSession session, @RequestBody(required = false) ParamVO paramVO){
        session.setAttribute("CSRF_TOKEN", UUID.randomUUID().toString());
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

        System.out.println(paramVO);

/*        AdminVO adminVo = adminService.findAdminById("abcdef01@abcde.com");
        if(adminVo !=null)
        {
            adminVo.setAdmin_pw(passwordEncoder.encode(adminVo.getAdmin_pw()));
            adminService.updateAdminPassword(adminVo);
        }*/

        return "login";
    }

    //대시보드
    @SneakyThrows
    @RequestMapping(value = "/a10_dashboard",method = RequestMethod.POST)
    public String a10_dashboard(@RequestParam(value = "tag", required = false) String tagValue,
                                 ModelMap model
                                ){
        return "a10_dashboard";
    }

    //사업공고문 관리
    @RequestMapping(value = "/b00_demo_bs_mng",method = RequestMethod.POST)
    public String b00_demo_bs_mng(@RequestBody ParamPageListFilteredVO param,
/*            @RequestParam("page") int page,
            @RequestParam("filter1") int filter1,
            @RequestParam("filter2") int filter2,*/
            ModelMap model){




        int list_amount = 10;;
        int page_amount = 10;

        param.setAmount(10);
        int page = param.getPage_num();

        AdminDemoBSFilterVO adminDemoBSFilterVO = demoBsService.getAdminDemoBsFilter();
        //리스트 총갯수를 이때 빼야 함
        int filtered_item_total = adminDemoBSFilterVO.getTot_count();

        if(param.getFilter1()==CONSTANT.DEMOBS_FILTER_APPL)
            filtered_item_total = adminDemoBSFilterVO.getAppl_count();
        else if(param.getFilter1()==CONSTANT.DEMOBS_FILTER_REVUIEW)
            filtered_item_total = adminDemoBSFilterVO.getRevuiew_count();
        else if(param.getFilter1()==CONSTANT.DEMOBS_FILTER_AGREE)
            filtered_item_total = adminDemoBSFilterVO.getAgree_count();
        else if(param.getFilter1()==CONSTANT.DEMOBS_FILTER_DEMO)
            filtered_item_total = adminDemoBSFilterVO.getDemo_count();
        else if(param.getFilter1()==CONSTANT.DEMOBS_FILTER_RESULT)
            filtered_item_total = adminDemoBSFilterVO.getResult_count();

        model.addAttribute("total_count",filtered_item_total);
        model.addAttribute("adminDemoBsFilter",adminDemoBSFilterVO);

        param.setOrder_field("IDX_DEMO_BUSINESS");
/*        ListPagingParamVO listPagingParamVO = new ListPagingParamVO();
        listPagingParamVO.setPage_num(page);
        listPagingParamVO.setAmount(list_amount);
        listPagingParamVO.setFilter1(filter1);
        listPagingParamVO.setFilter2(filter2);
        listPagingParamVO.setOrder_field("IDX_DEMO_BUSINESS");*/


        List<DemoBusinessVO>  demoBusinessVOList = demoBsService.getDemoBsPagingList(param);

        model.addAttribute("demoBusinessVOList",demoBusinessVOList);

        model.addAttribute("cur_page",page);
        model.addAttribute("amount",list_amount);

        int tot_page = filtered_item_total/list_amount+1;
        if(filtered_item_total%list_amount==0) tot_page-=1;

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

        return "b00_demo_bs_mng";
    }

    //사업공고문 관리
    @RequestMapping(value = "/b10_demo_bs_announce_doc_mng",method = RequestMethod.POST)
    public String b10_demo_bs_announce_doc_mng(@RequestBody ParamPageListFilteredVO param,
                                                /*@RequestParam("page") int page,
                                               @RequestParam("filter1") int filter1,
                                               @RequestParam("filter2") int filter2,*/

                                               ModelMap model){

        int list_amount = 10;;
        int page_amount = 10;

        param.setAmount(10);

        int page = param.getPage_num();
        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        AdminAnnounceFilterVO adminAnnounceFilterVO = bsAnnouncementService.getAdminBsAnnouncementFilter();
        //리스트 총갯수를 이때 빼야 함
        int filtered_item_total = adminAnnounceFilterVO.getAnnounce_tot();
        if(filter1==CONSTANT.ANN_STATUS_ON_COUNT)
            filtered_item_total = adminAnnounceFilterVO.getStatus_on_count();
        else if(filter1==CONSTANT.ANN_WAIT_COUNT)
            filtered_item_total = adminAnnounceFilterVO.getWait_count();
        else if(filter1==CONSTANT.ANN_PAUSE_COUNT)
            filtered_item_total = adminAnnounceFilterVO.getPause_count();


        model.addAttribute("total_count",filtered_item_total);
        model.addAttribute("adminAnnounceFilterVO",adminAnnounceFilterVO);
        param.setOrder_field("IDX_BS_ANNOUNCEMENT");

       /* ListPagingParamVO listPagingParamVO = new ListPagingParamVO();
        listPagingParamVO.setPage_num(page);
        listPagingParamVO.setAmount(list_amount);
        listPagingParamVO.setFilter1(filter1);
        listPagingParamVO.setFilter2(filter2);
        listPagingParamVO.setOrder_field("IDX_BS_ANNOUNCEMENT");*/

        List<BsAnnounceHeaderVO> bsAnnounceHeaderVOList = bsAnnouncementService.getBsAnnounceHeaderVOPagingList(param);

        model.addAttribute("bsAnnounceHeaderVOList",bsAnnounceHeaderVOList);
        model.addAttribute("filter1",filter1);
        model.addAttribute("filter2",filter2);

        model.addAttribute("cur_page",page);
        model.addAttribute("amount",list_amount);

        int tot_page = filtered_item_total/list_amount+1;
        if(filtered_item_total%list_amount==0) tot_page-=1;

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




        return "b10_demo_bs_announce_doc_mng";
    }

    //신청접수 관리
    @RequestMapping(value = "/b21_demo_bs_appl_mng",method = RequestMethod.POST)
    public String b21_demo_bs_appl_mng(@RequestBody ParamPageListFilteredVO param,
                                       /*@RequestParam("page") int page,*/
                                       ModelMap model){


        //사업 기준
        int list_amount = 5;
        int page_amount = 10;
        int page = param.getPage_num();

        param.setAmount(5);

        int filtered_item_total = demoBsApplicationService.getAvailableDemoBsApplTotalCount();
        model.addAttribute("total_count",filtered_item_total);

        param.setOrder_field("IDX_DEMO_BUSINESS");
        /*ListPagingParamVO listPagingParamVO = new ListPagingParamVO();
        listPagingParamVO.setPage_num(page);
        listPagingParamVO.setAmount(list_amount);
        listPagingParamVO.setFilter1(CONSTANT.FILTER_NOT_USED);
        listPagingParamVO.setFilter2(CONSTANT.FILTER_NOT_USED);
        listPagingParamVO.setOrder_field("IDX_DEMO_BUSINESS");*/


        List<AdminApplDemoBsHeaderListVO>  adminApplHeaderListVOS = demoBsApplicationService.getAvailableDemoBsApplPagingList(param);

        model.addAttribute("adminApplHeaderListVOS",adminApplHeaderListVOS);

        model.addAttribute("cur_page",page);
        model.addAttribute("amount",list_amount);

        int tot_page = filtered_item_total/list_amount+1;
        if(filtered_item_total%list_amount==0) tot_page-=1;

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

        return "b21_demo_bs_appl_mng";
    }

    //심사결과 관리
    @RequestMapping(value = "/b22_demo_bs_doc_eval_result_mng",method = RequestMethod.POST)
    public String b22_demo_bs_doc_eval_result_mng(@RequestBody ParamPageListFilteredVO param,
                                                  /*@RequestParam("page") int page,*/
                                                  ModelMap model){

        //사업 기준
        int list_amount = 5;
        int page_amount = 10;
        int page = param.getPage_num();

        param.setAmount(5);

        int filtered_item_total = demoBsApplicationService.getAvailableDemoBsEvalTotalCount();
        model.addAttribute("total_count",filtered_item_total);

        param.setOrder_field("IDX_DEMO_BUSINESS");
/*
        ListPagingParamVO listPagingParamVO = new ListPagingParamVO();
        listPagingParamVO.setPage_num(page);
        listPagingParamVO.setAmount(list_amount);
        listPagingParamVO.setFilter1(CONSTANT.FILTER_NOT_USED);
        listPagingParamVO.setFilter2(CONSTANT.FILTER_NOT_USED);
        listPagingParamVO.setOrder_field("IDX_DEMO_BUSINESS");
*/


        List<AdminApplDemoBsHeaderListVO>  adminApplHeaderListVOS = demoBsApplicationService.getAvailableDemoBsEvalPagingList(param);

        model.addAttribute("adminApplHeaderListVOS",adminApplHeaderListVOS);

        model.addAttribute("cur_page",page);
        model.addAttribute("amount",list_amount);

        int tot_page = filtered_item_total/list_amount+1;
        if(filtered_item_total%list_amount==0) tot_page-=1;

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

    //문의상담신청 관리
    @RequestMapping(value = "/c10_site_mng_consult_mng",method = RequestMethod.POST)
    public String c10_site_mng_consult_mng(ModelMap model,@RequestBody ParamPageListFilteredVO param){
//접수목록 가져오기 (db table) DemoBsConsultingVO get 요청으로 가져오기
        int type= 1;
        param.setAmount(40);

        List<DemoBsConsultingVO> consultingList = consultingService.getConsultingList(type,param);
        model.addAttribute("consultingList",consultingList);


        return "c10_site_mng_consult_mng";
    }

    //자산현황
    @RequestMapping(value = "/c21_site_visit_list",method = RequestMethod.POST)
    public String c21_site_visit_list(@RequestParam(value = "tag", required = false) String tagValue,
                                      ModelMap model,@RequestBody ParamPageListFilteredVO param){
        param.setAmount(10);
        int list_amount = 10;
        int page_amount = param.getAmount();
        int page = param.getPage_num();
        int visitCount = visitService.getVisitReqCount();
        if(visitCount==0){
            return"c21_site_visit_list";
        }


        model.addAttribute("total_count",visitCount);
        List<VisitReqVO> visitReqList = visitService.getVisitList(page,list_amount);
        model.addAttribute("visitReqList",visitReqList);
        model.addAttribute("cur_page",page);
        model.addAttribute("amount",list_amount);


        int tot_page = visitCount/list_amount+1;
        if(visitCount%list_amount==0) tot_page-=1;

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
    public String c41_site_notice_mng(@RequestBody ParamPageListFilteredVO param,
                                      ModelMap model){

        int list_amount = 10;
        int page_amount = param.getAmount();
        int page = param.getPage_num();

        param.setAmount(10);
        int noticeCount = noticeService.getWebpageNoticeCount();
        if(noticeCount==0){
            return "brd_notice_blank";
        }
        model.addAttribute("total_count",noticeCount);
        List<NoticeVO> noticeList = noticeService.getNoticeWebList(page,list_amount);
        model.addAttribute("noticeList",noticeList);
        //model.addAttribute("filter1",filter1);
        //model.addAttribute("filter2",filter2);
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

    //고객관리진행중
    @RequestMapping(value = "/c42_site_event_mng",method = RequestMethod.POST)
    public String c42_site_event_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                     ModelMap model,ParamPageListFilteredVO param){
        //행사관리 테이블 추가 .tb_event_content
        int page_num=1;
        int count =0;
        int amount =1;
        List<EventContentVO> eventContentList = eventContentService.getEventContentList(page_num,count);
        model.addAttribute("eventcontentlist",eventContentList);

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

    //사이트 정보관리
    @RequestMapping(value = "/c80_site_mng",method = RequestMethod.POST)
    public String c80_site_mng(@RequestParam(value = "tag", required = false) String tagValue
            , Model model){

        //푸터 정보
        HomepageInfoVO homepageInfoVO = homepageInfoService.getHomepageInfo();
        model.addAttribute("homepageInfo",homepageInfoVO);

        //조직도, 직원 정보
        List<CoWorkerVO> coWorkerVOList = coWorkerNService.getCoWorkerList();
        model.addAttribute("coWorkerVOList",coWorkerVOList);
        return "c80_site_mng";
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
    @RequestMapping(value = "/f10_gh_data_mng",method = RequestMethod.POST)
    public String f10_gh_data_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                         ModelMap model){


        return "f10_gh_data_mng";
    }

    //보낸 email
    @RequestMapping(value = "/f20_asset_data_mng",method = RequestMethod.POST)
    public String f20_asset_data_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                      ModelMap model){


        return "f20_asset_data_mng";
    }

    //웹 프론트 메인 페이지 관리
    @RequestMapping(value = "/f30_data_req_history",method = RequestMethod.POST)
    public String f30_data_req_history(@RequestParam(value = "tag", required = false) String tagValue,
                                              ModelMap model){


        return "f30_data_req_history";
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
        List<SystemCodeVO> systemCodeVOList = systemService.getAllSystemCodeList();
        List<SystemCodeVO> mainAssetCodeList = new ArrayList<>();
        List<SystemCodeVO> subAssetCodeList = new ArrayList<>();
        List<SystemCodeVO> detailAssetCodeList = new ArrayList<>();
        systemCodeVOList.forEach(systemCodeVO -> {
            if(systemCodeVO.getCode_value().length() == 1 || Integer.parseInt(systemCodeVO.getCode_value()) == 10){
                mainAssetCodeList.add(systemCodeVO);
            } else if(Integer.parseInt(systemCodeVO.getCode_value()) <= 120){
                subAssetCodeList.add(systemCodeVO);
            } else {
                detailAssetCodeList.add(systemCodeVO);
            }
        });
        model.addAttribute("adminList", adminService.getAdminList());
        model.addAttribute("main_cate", mainAssetCodeList);
        model.addAttribute("sub_cate", subAssetCodeList);
        model.addAttribute("detail_cate", detailAssetCodeList);


        return "g10_cur_asset_mng";
    }

    @RequestMapping(value = "/cur_asset_index",method = RequestMethod.POST)
    public String cur_asset_index(@RequestParam(value = "tag", required = false) String tagValue,
                                  @RequestBody ParamPageListFilteredVO param,
                                    ModelMap model){
        List<AssetVO> assetVOList = assetService.getAssetList(param);

        model.addAttribute("assetList", assetVOList);


        return "cur_asset_index";
    }

    @RequestMapping(value = "/asset_category",method = RequestMethod.POST)
    public String asset_category(@RequestParam(value = "tag", required = false) String tagValue,
                                 @RequestBody SystemCodeVO param,
                                  ModelMap model){
        List<SystemCodeVO> systemCodeVOList = systemService.getAllSystemCodeList();
        List<SystemCodeVO> mainAssetCodeList = new ArrayList<>();
        List<SystemCodeVO> subAssetCodeList = new ArrayList<>();
        List<SystemCodeVO> detailAssetCodeList = new ArrayList<>();
        systemCodeVOList.forEach(systemCodeVO -> {
            if(systemCodeVO.getCode_value().length() == 1 || Integer.parseInt(systemCodeVO.getCode_value()) == 10){
                mainAssetCodeList.add(systemCodeVO);
            } else if(Integer.parseInt(systemCodeVO.getCode_value()) <= 120){
                subAssetCodeList.add(systemCodeVO);
            } else {
                detailAssetCodeList.add(systemCodeVO);
            }
        });
        List<SystemCodeVO> resultCodeList = new ArrayList<>();
        if(param.getCode_name().equals("sub_code")){
            subAssetCodeList.forEach(systemCodeVO -> {
                if(param.getCode_value().length() == 1){
                    if(param.getCode_value().equals(systemCodeVO.getCode_value().substring(0,1))){
                        resultCodeList.add(systemCodeVO);
                    }
                } else {
                    if(param.getCode_value().equals(systemCodeVO.getCode_value().substring(0,2))){
                        resultCodeList.add(systemCodeVO);
                    }
                }
            });
        } else if(param.getCode_name().equals("detail_code")){
            detailAssetCodeList.forEach(systemCodeVO -> {
                if(param.getCode_value().length() == 2){
                    if(param.getCode_value().equals(systemCodeVO.getCode_value().substring(0,2))){
                        resultCodeList.add(systemCodeVO);
                    }
                } else {
                    if(param.getCode_value().equals(systemCodeVO.getCode_value().substring(0,3))){
                        resultCodeList.add(systemCodeVO);
                    }
                }
            });
        }
        boolean bool = true;
        if(resultCodeList.size() == 0){
            bool = false;
        }
        model.addAttribute("codeList", resultCodeList);
        model.addAttribute("curListName", param.getCode_name());
        model.addAttribute("lengthBool", bool);

        return "asset_category";
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
    @RequestMapping(value = "/h11_write_sms",method = RequestMethod.POST)
    public String h11_write_sms(@RequestParam(value = "tag", required = false) String tagValue,
                                ModelMap model){


        return "h11_write_sms";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h12_auto_sms_mng",method = RequestMethod.POST)
    public String h20_auto_sms_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                   ModelMap model){


        return "h12_auto_sms_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h13_reserved_sms_list",method = RequestMethod.POST)
    public String h13_reserved_sms_list(@RequestParam(value = "tag", required = false) String tagValue,
                                        ModelMap model){

        ArrayList<SmsSendVO> smsReservearr = smsSendService.selectReserveMessage();
        model.addAttribute("reserveSms",smsReservearr);
        return "h13_reserved_sms_list";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h14_sent_sms_list",method = RequestMethod.POST)
    public String h14_sent_sms_list(@RequestParam(value = "tag", required = false) String tagValue,
                                    ModelMap model){

        ArrayList<SmsSentVO> smsarr = smsSendService.selectSentmeesage1();
        model.addAttribute("sentSms",smsarr);
        return "h14_sent_sms_list";
    }
    @RequestMapping(value = "/h21_write_mail",method = RequestMethod.POST)
    public String h21_write_mail(@RequestParam(value = "tag", required = false) String tagValue,
                                 ModelMap model){


        return "h21_write_mail";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h22_auto_email_mng",method = RequestMethod.POST)
    public String h22_auto_email_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                     ModelMap model){


        return "h22_auto_email_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h23_reserved_email_list",method = RequestMethod.POST)
    public String h23_reserved_email_list(@RequestParam(value = "tag", required = false) String tagValue,
                                          ModelMap model){

        ArrayList<ReservedMailVO> resultArr;
        if(tagValue == null){
            resultArr = mailService.getReservedMail("1");
        } else {
            resultArr = mailService.getReservedMail(tagValue);
        }

        model.addAttribute("reservedMails", resultArr);
        return "h23_reserved_email_list";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h24_sent_email_list",method = RequestMethod.POST)
    public String h24_sent_email_list(@RequestParam(value = "tag", required = false) String tagValue,
                                      ModelMap model){


        return "h24_sent_email_list";
    }

    //시스템 코드 관리
    @RequestMapping(value = "/i11_user_mng",method = RequestMethod.POST)
    public String i11_user_mng(@RequestBody ParamPageListFilteredVO param,
                               ModelMap model){
        model.addAttribute("allCount", userService.getAllUserListCount());
        return "i11_user_mng";
    }

    @RequestMapping(value = "/user_index",method = RequestMethod.POST)
    public String user_index(@RequestParam(value = "tag", required = false) String tagValue,
                               @RequestBody ParamPageListFilteredVO param,
                               ModelMap model){
        boolean maxBool = false;
        System.out.println("filter: "+ param.getFilter1() + ", page: " + param.getPage_num());
        List<UserVO> userVOList = userService.selectUserbyPage(param.getFilter1(), param.getPage_num());
        model.addAttribute("maxvalue", 0);
        model.addAttribute("page", 0);
        if(userVOList.size() != 0){
            maxBool = true;
            model.addAttribute("maxvalue", userVOList.get(0).getMaxvalue());
            model.addAttribute("page", userVOList.get(0).getPage());
            model.addAttribute("count", userService.getActiveUserTotalCount(param.getFilter1()));
        }
        model.addAttribute("filter", param.getFilter1());
        model.addAttribute("maxBool", maxBool);
        model.addAttribute("userList", userVOList);


        return "user_index";
    }


    //시스템 코드 관리
    @RequestMapping(value = "/i12_dormant_user_mng",method = RequestMethod.POST)
    public String i12_dormant_user_mng(@RequestParam(value = "tag", required = false) String tagValue,

                                       ModelMap model){

        return "i12_dormant_user_mng";
    }

    @RequestMapping(value = "/dormant_user_index",method = RequestMethod.POST)
    public String dormant_user_index(@RequestParam(value = "tag", required = false) String tagValue,
                                     @RequestBody ParamPageListFilteredVO param,
                                       ModelMap model){
        boolean maxBool = false;
        System.out.println("filter: "+ param.getFilter1() + ", page: " + param.getPage_num());
        List<UserVO> userVOList = userService.selectDormantUserbyPage(param.getFilter1(), param.getPage_num());
        model.addAttribute("maxvalue", 0);
        model.addAttribute("page", 0);
        if(userVOList.size() != 0){
            maxBool = true;
            model.addAttribute("maxvalue", userVOList.get(0).getMaxvalue());
            model.addAttribute("page", userVOList.get(0).getPage());
        }
        model.addAttribute("count", userService.getDormantUserTotalCount(param.getFilter1()));
        model.addAttribute("filter", param.getFilter1());
        model.addAttribute("maxBool", maxBool);
        model.addAttribute("userList", userVOList);



        return "dormant_user_index";
    }


    //시스템 코드 관리
    @RequestMapping(value = "/i21_admin_mng" ,method = RequestMethod.POST)
    public String i21_admin_mng(@RequestParam(value = "page_num", required = false) String tagValue,
                                @RequestBody ParamPageListFilteredVO param,
                                ModelMap model){
        ArrayList<CorpInfoVO> resultArray;
        resultArray = corpService.selectCorpInfo();

        int pageBool = 4;
        List<AdminResVO> adminVOList = adminService.selectAdminbyIdx(param.getPage_num() != 0 ? param.getPage_num() + "" : "1", 100);
        if(adminVOList.get(0).getMaxvalue() - adminVOList.get(0).getPage() < 4){
            pageBool = adminVOList.get(0).getMaxvalue() - adminVOList.get(0).getPage();
        }
        model.addAttribute("pageBool", pageBool);
        model.addAttribute("adminList", adminVOList);
        model.addAttribute("corps", resultArray);
        model.addAttribute("adminCount", adminService.selectCount(100));
        model.addAttribute("otherAdminCount", adminService.selectCount(99));
        model.addAttribute("mngAdminCount", adminService.selectCount(0));
        model.addAttribute("centerAdminCount", adminService.selectCount(1));
        model.addAttribute("localAdminCount", adminService.selectCount(2));

        return "i21_admin_mng";
    }

    @RequestMapping(value = "/admin_corporate" ,method = RequestMethod.POST)
    public String admin_corporate(@RequestParam(value = "page_num", required = false) String tagValue,
                                @RequestBody ParamPageListFilteredVO param,
                                ModelMap model){
        ArrayList<CorpInfoVO> resultArray;
        resultArray = corpService.selectCorpInfo();

        int pageBool = 4;
        List<AdminResVO> adminVOList = adminService.selectAdminbyIdx(param.getPage_num() != 0 ? param.getPage_num() + "" : "1", param.getCorp());
        if(adminVOList.size() != 0 && adminVOList.get(0).getMaxvalue() - adminVOList.get(0).getPage() < 4){
            pageBool = adminVOList.get(0).getMaxvalue() - adminVOList.get(0).getPage();
        }
//        adminVOList.sort(Comparator.comparing(AdminResVO::getAdmin_name).thenComparing(AdminResVO::getAdmin_name));
        model.addAttribute("pageBool", pageBool);
        model.addAttribute("corpCategory", param.getCorp());
        model.addAttribute("adminList", adminVOList);
        model.addAttribute("corps", resultArray);
        model.addAttribute("adminCount", adminService.selectCount(param.getCorp()));

        return "admin_index";
    }
    /*
    //시스템 코드 관리
    @RequestMapping(value = "/j10_file_mng",method = RequestMethod.POST)
    public String j10_file_mng(@RequestParam(value = "tag", required = false) String tagValue,
                               ModelMap model){


        return "_j10_file_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/j20_sms_mng",method = RequestMethod.POST)
    public String j20_sms_mng(@RequestParam(value = "tag", required = false) String tagValue,
                              ModelMap model){


        return "_j20_sms_mng";
    }

    //시스템 코드 관리
    @RequestMapping(value = "/j30_email_mng",method = RequestMethod.POST)
    public String j30_email_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                ModelMap model){


        return "_j30_email_mng";
    }*/
    //시스템 코드 관리
    @RequestMapping(value = "/k11_system_authority_mng",method = RequestMethod.POST)
    public String k11_system_authority_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                           ModelMap model){


        return "k11_system_authority_mng";
    }

    //시스템 코드 관리
    @RequestMapping(value = "/k21_admin_dashboad_mng",method = RequestMethod.POST)
    public String k21_admin_dashboad_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                            ModelMap model){


        return "k21_admin_dashboad_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/k31_console_dashboad_mng",method = RequestMethod.POST)
    public String k31_console_dashboad_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                      ModelMap model){


        return "k31_console_dashboad_mng";
    }
   /* //시스템 코드 관리
    @RequestMapping(value = "/k14_system_role_list",method = RequestMethod.POST)
    public String k14_system_role_list(@RequestParam(value = "tag", required = false) String tagValue,
                                       ModelMap model){


        return "k31_console_dashboad_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/k15_system_role_menu_mng",method = RequestMethod.POST)
    public String k15_system_role_menu_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                           ModelMap model){


        return "_k15_system_role_menu_mng";
    }*/
    //서식 관리
    @RequestMapping(value = "/l11_document_form_mng",method = RequestMethod.POST)
    public String l11_document_form_mng(@RequestBody ParamPageListFilteredVO param,
                                           ModelMap model){


        return "l11_document_form_mng";
    }
    @RequestMapping(value = "/l12_document_rule_mng",method = RequestMethod.POST)
    public String l12_document_rule_mng(@RequestBody ParamPageListFilteredVO param,
                                   ModelMap model){
        int page = param.getPage_num();

        //int filter1 = param.getFilter1();
        //int filter2 = param.getFilter2();

        int list_amount = 10;
        int page_amount = 10;

        param.setAmount(10);
        param.setOrder_field("ORDER_NUM");
        int filtered_item_total = fileService.getRuleFileTotalCount();
        List<RuleFileInfoVO> ruleFileInfoVOList = fileService.getRuleFileInfoList(param);

        model.addAttribute("total_count",filtered_item_total);
        model.addAttribute("ruleFileInfoVOList",ruleFileInfoVOList);


        model.addAttribute("cur_page",page);
        model.addAttribute("amount",list_amount);

        int tot_page = filtered_item_total/list_amount+1;
        if(filtered_item_total%list_amount==0) tot_page-=1;

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


        return "l12_document_rule_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/l20_code_mng",method = RequestMethod.POST)
    public String l20_code_mng(@RequestBody ParamPageListFilteredVO param,
                                           ModelMap model){
        int page_num = param.getPage_num();

        int list_amount = 10;
        int page_amount = 10;

        param.setAmount(10);
        param.setOrder_field("REG_DATE");
        int filtered_item_total = systemService.getSystemTotalCount();
        List<SystemCodeVO> systemCodeList = systemService.getSystemCodeList(param);


        model.addAttribute("total_count",filtered_item_total);
        model.addAttribute("systemCodeList",systemCodeList);


        model.addAttribute("cur_page",page_num);
        model.addAttribute("amount",list_amount);

        int tot_page = filtered_item_total/list_amount+1;
        if(filtered_item_total%list_amount==0) tot_page-=1;

        int tot_sector = tot_page/page_amount+1;
        if(tot_page%page_amount==0) tot_sector-=1;

        int cur_sector = page_num/page_amount+1;
        if(page_num%page_amount==0) cur_sector-=1;

        boolean is_past = false;
        boolean is_prev = false;
        boolean is_next = false;
        boolean is_last = false;
        boolean is_active = false;

        if(page_num!=tot_page && tot_page>1) is_next = true;

        if(page_num!=1 && tot_page>1) is_prev = true;

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

        return "l20_code_mng";
    }

}
