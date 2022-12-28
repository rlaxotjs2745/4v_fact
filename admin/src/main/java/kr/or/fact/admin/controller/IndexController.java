package kr.or.fact.admin.controller;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.model.PRContentsMapper;
import kr.or.fact.core.service.*;
import kr.or.fact.core.util.*;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.net.URL;
import javax.annotation.Resource;
import javax.mail.*;
import javax.mail.internet.MimeBodyPart;
import javax.mail.search.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.security.Principal;
import java.text.ParseException;
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

    @Resource(name="prContentService")
    public PRContentsService prContentService;

    @Resource(name="webMainPopupService")
    public WebMainPopupService webMainPopupService;

    @Resource(name = "formFileService")
    public FormFileService formFileService;

    @Resource(name = "ruleFileService")
    public RuleFileService ruleFileService;

    @Autowired
    public PRContentsMapper prContentsMapper;

    @Resource(name="adminSessionService")
    AdminSessionService adminSessionService;

    @Autowired
    Environment env;

    public AdminVO getVerityAuth(String access_token){
        AdminVO adminVO = null;

        //1. access_token 찾기
        AdminSessionVO adminSessionVO = adminSessionService.getAdminSessionInfoByToken(access_token);
        if(adminSessionVO!=null)
        {
            //2.access_token expire 검토
            SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");

            Date cur = new Date();
            String today = format.format(cur);
            String expire = format.format(adminSessionVO.getAccess_expire_date());
            int compare = expire.compareTo(today);
            if(compare>=0){//오늘보다 크면
                adminVO = adminService.getAdminInfo(adminSessionVO.getIdx_admin());
            }else {//토큰 만료
                adminVO = new AdminVO();
                adminVO.set_expired(true);
            }
        }

        return adminVO;
    }

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String root(HttpServletRequest req,
                       ModelMap model,
                       @CookieValue(name = "access_token",required = true) String access_token){
        String _path = req.getRequestURI();
        if(access_token!=null){
            AdminVO adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        model.addAttribute("path", _path);
        return "index";
    }

    @RequestMapping(value="/login",method = RequestMethod.GET)
    public String login( Model model,
                         @RequestBody(required = false) ParamVO paramVO){

        return "login";
    }

    //대시보드
    @SneakyThrows
    @RequestMapping(value = "/a10_dashboard" ,method = RequestMethod.POST)
    public String a10_dashboard(@RequestParam(value = "tag", required = false) String tagValue,
                                ModelMap model,
                                @CookieValue(name = "access_token",required = true) String access_token){

        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        ParamPageListFilteredVO param = new ParamPageListFilteredVO();

        param.setOrder_field("IDX_DEMO_BUSINESS");
        param.setPage_num(1);
        param.setAmount(5);

        List<AdminApplDemoBsHeaderListVO> adminApplHeaderListVOS = demoBsApplicationService.getAvailableDemoBsApplPagingList(param);
        model.addAttribute("applicationList", adminApplHeaderListVOS);

        Integer corpCount = corpService.getCorpCount(0);
        model.addAttribute("corpCount", corpCount);

        Integer directCorpCount = corpService.getCorpCount(1);
        model.addAttribute("directCorpCount", directCorpCount);

        DemoBsConsultingVO param0 = new DemoBsConsultingVO();
        param0.setConsulting_status(-1);
        int consultingCount = consultingService.getCountConsulting(param0);

        model.addAttribute("consultingCount", consultingCount);

        param = new ParamPageListFilteredVO();

        int visitCount = visitService.getVisitReqCount(param);

        model.addAttribute("visitCount", visitCount);







        return "a10_dashboard";
    }

    //사업공고문 관리
    @RequestMapping(value = "/b00_demo_bs_mng",method = RequestMethod.POST)
    public String b00_demo_bs_mng(@RequestBody ParamPageListFilteredVO param,
                                  ModelMap model,
                                  @CookieValue(name = "access_token",required = true) String access_token){

        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        int list_amount = 10;;
        int page_amount = 10;

        param.setAmount(10);
        int page = param.getPage_num();

        AdminDemoBSFilterVO adminDemoBSFilterVO = demoBsService.getAdminDemoBsFilter();  // 사업 상태별 카운트
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
        for(int i = 0; i < demoBusinessVOList.size(); i++){
            if(demoBusinessVOList.get(i).getDemo_bs_contents() != null){
                demoBusinessVOList.get(i).setDemo_bs_contents(demoBusinessVOList.get(i).getDemo_bs_contents().replaceAll("(\t)", "  ").replaceAll("(\r\n|\r|\n|\n\r)", "<br/>"));
                System.out.println(demoBusinessVOList.get(i).getDemo_bs_contents());
            }
        }

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
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());
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
                                               ModelMap model,
                                               @CookieValue(name = "access_token",required = true) String access_token){

        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

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

        List<BsAnnouncementVO> bsAnnounceHeaderVOList = bsAnnouncementService.getBsAnnounceVOPagingList(param);
        List<DemoBusinessVO> demoStateBsVOList = demoBsService.getDemoBsstatusList();

        model.addAttribute("bsAnnounceHeaderVOList",bsAnnounceHeaderVOList);
        model.addAttribute("demoStateBsVOList",demoStateBsVOList);
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
                                       ModelMap model,
                                       @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

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
        System.out.println(adminApplHeaderListVOS);
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

        model.addAttribute("cur_page", param.getPage_num());
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
                                                  ModelMap model,
                                                  @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

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
                                               ModelMap model,
                                               @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        return "b23_demo_bs_pre_contract_mng";
    }

    //협약관리
    @RequestMapping(value = "/b30_demo_bs_usage_ext_mng",method = RequestMethod.POST)
    public String b30_demo_bs_usage_ext_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                            ModelMap model,
                                            @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }


        return "b30_demo_bs_usage_ext_mng";
    }

    //실증성적서
    @RequestMapping(value = "/b40_demo_bs_contract_mng",method = RequestMethod.POST)
    public String b40_demo_bs_contract_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                           ModelMap model,
                                           @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        return "b40_demo_bs_contract_mng";
    }

    //현황보고서 작성
    @RequestMapping(value = "/b50_demo_bs_corp_cur_list",method = RequestMethod.POST)
    public String b50_demo_bs_corp_cur_list(@RequestParam(value = "tag", required = false) String tagValue,
                                            ModelMap model,
                                            @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        return "b50_demo_bs_corp_cur_list";
    }

    //분야별 기업현황
    @RequestMapping(value = "/b60_demo_bs_consign_corp_list",method = RequestMethod.POST)
    public String b60_demo_bs_consign_corp_list(@RequestParam(value = "tag", required = false) String tagValue,
                                                ModelMap model,
                                                @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }


        return "b60_demo_bs_consign_corp_list";
    }

    //위탁기업 목록
    @RequestMapping(value = "/b70_demo_bs_usage_pee_mng",method = RequestMethod.POST)
    public String b70_demo_bs_usage_pee_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                            ModelMap model,
                                            @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        return "b70_demo_bs_usage_pee_mng";
    }

    //연장신청 접수
    @RequestMapping(value = "/b80_demo_bs_corp_cur_report_write",method = RequestMethod.POST)
    public String b80_demo_bs_corp_cur_report_write(@RequestParam(value = "tag", required = false) String tagValue,
                                                    ModelMap model,
                                                    @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        return "b80_demo_bs_corp_cur_report_write";
    }

    //상담
    @RequestMapping(value = "/b90_demo_bs_cert_mng",method = RequestMethod.POST)
    public String b90_demo_bs_cert_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                       ModelMap model,
                                       @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        return "b90_demo_bs_cert_mng";
    }

    //문의상담신청 관리
    @RequestMapping(value = "/c10_site_mng_consult_mng",method = RequestMethod.POST)
    public String c10_site_mng_consult_mng(@RequestBody ParamPageListFilteredVO param, ModelMap model,
                                           @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

//접수목록 가져오기 (db table) DemoBsConsultingVO get 요청으로 가져오기
        param.setAmount(10);
        int list_amount = 10;
        int page_amount = param.getAmount();
        int page = param.getPage_num();
        DemoBsConsultingVO param0 = new DemoBsConsultingVO();
        param0.setConsulting_status(-1);
        int consultingCount = consultingService.getCountConsulting(param0);
        if(consultingCount==0){
            return "c10_site_mng_consult_mng";
        }
        model.addAttribute("cur_page",page);
        model.addAttribute("amount",list_amount);
        model.addAttribute("total_count",consultingCount);


        List<DemoBsConsultingVO> consultingList = consultingService.getCunsultingList1(page,list_amount);
        model.addAttribute("consultingList",consultingList);
        int tot_page = consultingCount/list_amount+1;
        if(consultingCount%list_amount==0) tot_page-=1;

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

        return "c10_site_mng_consult_mng";
    }

    //자산현황
    @RequestMapping(value = "/c21_site_visit_list",method = RequestMethod.POST)
    public String c21_site_visit_list(@RequestParam(value = "tag", required = false) String tagValue,
                                      @RequestBody ParamPageListFilteredVO param,
                                      ModelMap model,
                                      @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }




//
//        int page = param.getPage_num();

//
//        AdminAnnounceFilterVO adminAnnounceFilterVO = bsAnnouncementService.getAdminBsAnnouncementFilter();
//        //리스트 총갯수를 이때 빼야 함
//        int filtered_item_total = adminAnnounceFilterVO.getAnnounce_tot();
//        if(filter1==CONSTANT.ANN_STATUS_ON_COUNT)
//            filtered_item_total = adminAnnounceFilterVO.getStatus_on_count();
//        else if(filter1==CONSTANT.ANN_WAIT_COUNT)
//            filtered_item_total = adminAnnounceFilterVO.getWait_count();
//        else if(filter1==CONSTANT.ANN_PAUSE_COUNT)
//            filtered_item_total = adminAnnounceFilterVO.getPause_count();
//
//
//        model.addAttribute("total_count",filtered_item_total);
//        model.addAttribute("adminAnnounceFilterVO",adminAnnounceFilterVO);
//        param.setOrder_field("IDX_BS_ANNOUNCEMENT");
//
        param.setAmount(10);
        param.setOrder_field("IDX_VISIT_REQ");
        int visitCount = visitService.getVisitReqCount(param);
        List<VisitReqVO> visitReqList = visitService.getVisitList(param);

        int list_amount = 10;
        int page_amount = param.getAmount();
        int page = param.getPage_num();
        String filter1 = param.getFil1();
        String filter2 = param.getFil2();
        model.addAttribute("filter1",filter1);
        model.addAttribute("filter2",filter2);
        model.addAttribute("total_count",visitCount);
        model.addAttribute("visitReqList",visitReqList);
        model.addAttribute("cur_page",page);
        model.addAttribute("amount",list_amount);

        // 신규 카운트
        param.setFil1("0");
        int count_new = visitService.getVisitReqCount(param);
        model.addAttribute("count_new",count_new);

        // 접수 카운트
        param.setFil1("1");
        int count_req = visitService.getVisitReqCount(param);
        model.addAttribute("count_req",count_req);

        // 승인 카운트
        param.setFil1("2");
        int count_agree = visitService.getVisitReqCount(param);
        model.addAttribute("count_agree",count_agree);

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
                                     ModelMap model,
                                     @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }


        return "c22_site_visit_mng";
    }

    //자원예약
    @RequestMapping(value = "/c30_site_faq_mng",method = RequestMethod.POST)
    public String c30_site_faq_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                   ModelMap model,
                                   @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }


        return "c30_site_faq_mng";
    }

    //일정관리
    @RequestMapping(value = "/c41_site_notice_mng",method = RequestMethod.POST)
    public String c41_site_notice_mng(@RequestBody ParamPageListFilteredVO param,
                                      ModelMap model,
                                      @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        int list_amount = 10;
        int page_amount = 10;
        int page = param.getPage_num();

        param.setAmount(10);
        int noticeCount = noticeService.getWebpageNoticeCount();
        System.out.println(noticeCount);
//        if(noticeCount==0){
//            return "brd_notice_blank";
//        }
        model.addAttribute("total_count",noticeCount);
//        model.addAttribute("total_count",0);
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
                                     @RequestBody ParamPageListFilteredVO param,
                                     ModelMap model,
                                     @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }
        //행사관리 테이블 추가 .tb_event_content

        param.setAmount(10);
        int list_amount = 10;
        int page_amount = param.getAmount();
        int page = param.getPage_num();
        int eventCount = eventContentService.getMainEventContentCount();
//        if(eventCount==0){
//            return "brd_event_blank";
//        }
        model.addAttribute("total_count",eventCount);
        List<EventContentVO> eventContentList = eventContentService.getEventContentList(page,list_amount);
        List<EventContentVO> eventContentList1 = eventContentService.getMainEventContentList();
        model.addAttribute("eventcontentlist",eventContentList);

        model.addAttribute("cur_page",page);
        model.addAttribute("amount",list_amount);

        int tot_page = eventCount/list_amount+1;
        if(eventCount%list_amount==0) tot_page-=1;

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



        return "c42_site_event_mng";
    }

    @RequestMapping(value = "/c43_site_adver_mng" ,method = RequestMethod.POST)
    public String c43_site_adver_mng(@RequestParam(value = "page_num", required = false) String tagValue,
                                     @RequestBody ParamPageListFilteredVO param,
                                     ModelMap model,
                                     @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        param.setAmount(10);
        int list_amount = 10;
        int page_amount = param.getAmount();
        int page = param.getPage_num();
        int prCount = prContentService.getPRContentCount(param);
//        if(prCount==0){
//            return "brd_adver_blank";
//        }
        model.addAttribute("total_count",prCount);

        List<PRContentVO> prlist = prContentService.getPRContentList(param);
        //        List<PRContentVO> prlist1 = prContentService.getMainPRContentList();
        model.addAttribute("prlist",prlist);
        model.addAttribute("prcontent",prlist);
        model.addAttribute("cur_page",page);
        model.addAttribute("amount",list_amount);

        int tot_page = prCount/list_amount+1;
        if(prCount%list_amount==0) tot_page-=1;

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

        model.addAttribute("fil1",param.getFil1());
        model.addAttribute("fil2",param.getFil2());

        param.setFil1("1");
        param.setFil2(null);
        int count_req = prContentsMapper.getPRContentCount2(param);
        model.addAttribute("count_req",count_req);

        param.setFil1("0");
        int count_comp = prContentsMapper.getPRContentCount2(param);
        model.addAttribute("count_comp",count_comp);

        return "c43_site_adver_mng";
    }

    @RequestMapping(value = "/c431_site_adver_mng" ,method = RequestMethod.POST)
    public String c431_site_adver_mng(@RequestParam(value = "page_num", required = false) String tagValue,
                                     @RequestBody ParamPageListFilteredVO param, ModelMap model){

        param.setAmount(10);
        int list_amount = 10;
        int page_amount = param.getAmount();
        int page = param.getPage_num();
        int prCount = prContentsMapper.getPRContentCount2(param);
        model.addAttribute("total_count",prCount);

        List<PRContentVO> prlist = prContentService.getPRContentList(param);
        model.addAttribute("prlist",prlist);
        model.addAttribute("prcontent",prlist);
        model.addAttribute("cur_page",page);
        model.addAttribute("amount",list_amount);

        int tot_page = prCount/list_amount+1;
        if(prCount%list_amount==0) tot_page-=1;

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

        model.addAttribute("fil1",param.getFil1());
        model.addAttribute("fil2",param.getFil2());

        param.setFil1("1");
        param.setFil2(null);
        int count_req = prContentsMapper.getPRContentCount2(param);
        model.addAttribute("count_req",count_req);

        param.setFil1("0");
        int count_comp = prContentsMapper.getPRContentCount2(param);
        model.addAttribute("count_comp",count_comp);

        return "c431_site_adver_mng";
    }

    @RequestMapping(value = "/pr_contents",method = RequestMethod.POST)
    public String pr_contents(@RequestParam(value = "page_num", required = false) String tagValue,
                              @RequestBody ParamPageListFilteredVO param,
                              ModelMap model,
                              @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        String content = "";
        PRContentVO prContentVO = prContentService.getMainPRContent(param);
        if(prContentVO!=null) {
            content = prContentVO.getPr_contents();
        }
        model.addAttribute("contentFuck",  content);

        return "pr_contents";
    }


    //직원관리
    @RequestMapping(value = "/c50_site_banner_mng",method = RequestMethod.POST)
    public String c50_site_banner_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                      ModelMap model,
                                      @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }


        return "c50_site_banner_mng";
    }

    //협약담당자 관리
    @RequestMapping(value = "/c60_site_popup_mng",method = RequestMethod.POST)
    public String c60_site_popup_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                     @RequestBody ParamPageListFilteredVO param,
                                     ModelMap model,
                                     @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

//        AdminVO adminInfo = adminService.findAdminById(principal.getName());
//        model.addAttribute("admin", adminInfo);

        param.setAmount(10);
        int list_amount = 10;
        int page_amount = param.getAmount();
        int page = param.getPage_num();

        model.addAttribute("cur_page",page);
        model.addAttribute("vamount",list_amount);

        int cur_sector = page/page_amount+1;
        if(page%page_amount==0) cur_sector-=1;

        //팝업 정보
        int popupInfoCount = webMainPopupService.getWebMainPopupCount();
        model.addAttribute("pop_total_count", popupInfoCount);

        List<WebMainPopupVO> webMainPopupList = webMainPopupService.getWebMainPopupList(param);
        model.addAttribute("webMainPopupList", webMainPopupList);

        int pop_tot_page = popupInfoCount/list_amount+1;
        if(popupInfoCount%list_amount==0) pop_tot_page-=1;

        int pop_tot_sector = pop_tot_page/page_amount+1;
        if(pop_tot_page%page_amount==0) pop_tot_sector-=1;

        boolean pop_is_past = false;
        boolean pop_is_prev = false;
        boolean pop_is_next = false;
        boolean pop_is_last = false;
        boolean is_active = false;

        if(page!=pop_tot_page && pop_tot_page>1) pop_is_next = true;

        if(page!=1 && pop_tot_page>1) pop_is_prev = true;

        if(cur_sector!=pop_tot_sector && pop_tot_sector>1 ) pop_is_last = true;

        if(cur_sector!=1 && pop_tot_sector>1 ) pop_is_past = true;

        if(pop_tot_page<=page_amount){
            pop_is_past = false;
            pop_is_last = false;
            page_amount = pop_tot_page;
        }

        model.addAttribute("pop_tot_page",pop_tot_page);
        model.addAttribute("pop_tot_sector",pop_tot_sector);
        model.addAttribute("pop_cur_sector",cur_sector);
        model.addAttribute("pop_is_past",pop_is_past);
        model.addAttribute("pop_is_prev",pop_is_prev);
        model.addAttribute("pop_is_next",pop_is_next);
        model.addAttribute("pop_is_last",pop_is_last);
        model.addAttribute("pop_list_amount",list_amount);
        model.addAttribute("pop_page_amount",page_amount);

        //배너 정보
        int bannerInfoCount = webMainPopupService.getWebMainBannerCount();
        model.addAttribute("banner_total_count", bannerInfoCount);

        List<WebMainPopupVO> webMainBannerList = webMainPopupService.getWebMainBannerList();
        model.addAttribute("webMainBannerList", webMainBannerList);

        return "c60_site_popup_mng";
    }

    //재배사 관리
    @RequestMapping(value = "/c71_site_form_doc_mng",method = RequestMethod.POST)
    public String c71_site_form_doc_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                        ModelMap model,
                                        @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        Integer maxPageNum = fileService.getFormFileTotalCount();
        model.addAttribute("max_page_num", maxPageNum);

        return "c71_site_form_doc_mng";
    }

    //sms 작성
    @RequestMapping(value = "/c72_site_rule_doc_mng",method = RequestMethod.POST)
    public String c72_site_rule_doc_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                        @RequestBody ParamPageListFilteredVO param,
                                        ModelMap model,
                                        @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        List<RuleFileInfoVO> ruleFileInfoList=fileService.getRuleFileInfoList1();
        model.addAttribute("rulefilelist",ruleFileInfoList);
        System.out.println(ruleFileInfoList.size());

        model.addAttribute("page_num", param.getPage_num());

        Integer maxPageNum = fileService.getRuleFileTotalCount();
        model.addAttribute("max_page_num", maxPageNum);
        return "c72_site_rule_doc_mng";
    }

    //사이트 정보관리
    @RequestMapping(value = "/c80_site_mng",method = RequestMethod.POST)
    public String c80_site_mng(@RequestParam(value = "tag", required = false) String tagValue, @RequestBody ParamPageListFilteredVO param,
                               ModelMap model,
                               @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        param.setAmount(10);
        int list_amount = 10;
        int page_amount = param.getAmount();
        int page = param.getPage_num();

        model.addAttribute("cur_page",page);
        model.addAttribute("vamount",list_amount);

        int cur_sector = page/page_amount+1;
        if(page%page_amount==0) cur_sector-=1;


        //푸터 정보
        HomepageInfoVO homepageInfoVO = homepageInfoService.getHomepageInfo();
        model.addAttribute("homepageInfo",homepageInfoVO);

        int homepageInfoCount = homepageInfoService.getHomepageInfoCount();
        model.addAttribute("hi_total_count",homepageInfoCount);

        List<HomepageInfoVO> homepageInfoList = homepageInfoService.getHomepageInfoList(param);
        model.addAttribute("homepageInfoList",homepageInfoList);

        int hi_tot_page = homepageInfoCount/list_amount+1;
        if(homepageInfoCount%list_amount==0) hi_tot_page-=1;

        int hi_tot_sector = hi_tot_page/page_amount+1;
        if(hi_tot_page%page_amount==0) hi_tot_sector-=1;

        boolean hi_is_past = false;
        boolean hi_is_prev = false;
        boolean hi_is_next = false;
        boolean hi_is_last = false;
        boolean is_active = false;

        if(page!=hi_tot_page && hi_tot_page>1) hi_is_next = true;

        if(page!=1 && hi_tot_page>1) hi_is_prev = true;

        if(cur_sector!=hi_tot_sector && hi_tot_sector>1 ) hi_is_last = true;

        if(cur_sector!=1 && hi_tot_sector>1 ) hi_is_past = true;

        if(hi_tot_page<=page_amount){
            hi_is_past = false;
            hi_is_last = false;
            page_amount = hi_tot_page;
        }

        model.addAttribute("hi_tot_page",hi_tot_page);
        model.addAttribute("hi_tot_sector",hi_tot_sector);
        model.addAttribute("hi_cur_sector",cur_sector);
        model.addAttribute("hi_is_past",hi_is_past);
        model.addAttribute("hi_is_prev",hi_is_prev);
        model.addAttribute("hi_is_next",hi_is_next);
        model.addAttribute("hi_is_last",hi_is_last);
        model.addAttribute("hi_list_amount",list_amount);
        model.addAttribute("hi_page_amount",page_amount);

        //조직도, 직원 정보
        page_amount = 10;

        int coWorkerCount = coWorkerNService.getCoWorkerCount();
        model.addAttribute("cw_total_count", coWorkerCount);

        List<CoWorkerVO> coWorkerVOList = coWorkerNService.getCoWorkerListPage(param);
        model.addAttribute("coWorkerVOList",coWorkerVOList);

        int cw_tot_page = coWorkerCount/list_amount+1;
        if(coWorkerCount%list_amount==0) cw_tot_page-=1;

        int cw_tot_sector = cw_tot_page/page_amount+1;
        if(cw_tot_page%page_amount==0) cw_tot_sector-=1;

        boolean cw_is_past = false;
        boolean cw_is_prev = false;
        boolean cw_is_next = false;
        boolean cw_is_last = false;

        if(page!=cw_tot_page && cw_tot_page>1) cw_is_next = true;

        if(page!=1 && cw_tot_page>1) cw_is_prev = true;

        if(cur_sector!=cw_tot_sector && cw_tot_sector>1 ) cw_is_last = true;

        if(cur_sector!=1 && cw_tot_sector>1 ) cw_is_past = true;

        if(cw_tot_page<=page_amount){
            cw_is_past = false;
            cw_is_last = false;
            page_amount = cw_tot_page;
        }

        model.addAttribute("cw_tot_page",cw_tot_page);
        model.addAttribute("cw_tot_sector",cw_tot_sector);
        model.addAttribute("cw_cur_sector",cur_sector);
        model.addAttribute("cw_is_past",cw_is_past);
        model.addAttribute("cw_is_prev",cw_is_prev);
        model.addAttribute("cw_is_next",cw_is_next);
        model.addAttribute("cw_is_last",cw_is_last);
        model.addAttribute("cw_list_amount",list_amount);
        model.addAttribute("cw_page_amount",page_amount);

        return "c80_site_mng";
    }

    //자동 sms 관리
    @RequestMapping(value = "/d10_schedule_mng",method = RequestMethod.POST)
    public String d10_schedule_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                   ModelMap model,
                                   @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        return "d10_schedule_mng";
    }

    //예약된 SMS
    @RequestMapping(value = "/e10_document_issued_req_list",method = RequestMethod.POST)
    public String e10_document_issued_req_list(@RequestParam(value = "tag", required = false) String tagValue,
                                               ModelMap model,
                                               @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        return "e10_document_issued_req_list";
    }

    //보낸 sms
    @RequestMapping(value = "/e20_document_issued",method = RequestMethod.POST)
    public String e20_document_issued(@RequestParam(value = "tag", required = false) String tagValue,
                                      ModelMap model,
                                      @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        return "e20_document_issued";
    }

    //자동 email 관리
    @RequestMapping(value = "/e30_document_issued_history",method = RequestMethod.POST)
    public String e30_document_issued_history(@RequestParam(value = "tag", required = false) String tagValue,
                                              ModelMap model,
                                              @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

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
                                  ModelMap model,
                                  @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        return "f10_gh_data_mng";
    }

    //보낸 email
    @RequestMapping(value = "/f20_asset_data_mng",method = RequestMethod.POST)
    public String f20_asset_data_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                     ModelMap model,
                                     @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }


        return "f20_asset_data_mng";
    }

    //웹 프론트 메인 페이지 관리
    @RequestMapping(value = "/f30_data_req_history",method = RequestMethod.POST)
    public String f30_data_req_history(@RequestParam(value = "tag", required = false) String tagValue,
                                       ModelMap model,
                                       @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }


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
                                    ModelMap model,
                                    @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }
        List<SystemCodeVO> systemCodeVOList = systemService.getAllSystemCodeList();
        List<SystemCodeVO> mainAssetCodeList = new ArrayList<>();
        List<SystemCodeVO> subAssetCodeList = new ArrayList<>();
        List<SystemCodeVO> detailAssetCodeList = new ArrayList<>();
        systemCodeVOList.forEach(systemCodeVO -> {
            String code = systemCodeVO.getCode_value();
            if(code.charAt(0) == 'A'){
                code = code.substring(1);
                if(code.length() == 1 || Integer.parseInt(code) == 10){
                    mainAssetCodeList.add(systemCodeVO);
                } else if(Integer.parseInt(code) <= 120){
                    subAssetCodeList.add(systemCodeVO);
                } else {
                    detailAssetCodeList.add(systemCodeVO);
                }
            }
        });
        model.addAttribute("adminList", adminService.getAdminList());
        model.addAttribute("main_cate", mainAssetCodeList);
        model.addAttribute("sub_cate", subAssetCodeList);
        model.addAttribute("detail_cate", detailAssetCodeList);


        return "g10_cur_asset_mng";
    }

    @RequestMapping(value = "/asset_reservation_list",method = RequestMethod.POST)
    public String asset_reservation_list(@RequestParam(value = "tag", required = false) String tagValue,
                                         @RequestBody ParamPageListFilteredVO param,
                                         ModelMap model,
                                         @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        List<AssetReservationVO> assetReservationVOList = assetService.getAssetReservationList(param);
        int count = assetService.getAssetReservationCount(param);
        int maxValue = 0;

        if(assetReservationVOList.size() != 0){
            maxValue = assetReservationVOList.get(0).getMaxvalue();
        }


        model.addAttribute("maxvalue", maxValue);
        model.addAttribute("assetResList", assetReservationVOList);
        model.addAttribute("count", count);
        model.addAttribute("page_num", param.getPage_num());
        model.addAttribute("curStatus", param.getFilter1());
        model.addAttribute("proto_page", param.getFilter2());

        return "asset_reservation_list";
    }

    @RequestMapping(value = "/asset_reservation_items_list",method = RequestMethod.POST)
    public String asset_reservation_items_list(@RequestParam(value = "tag", required = false) String tagValue,
                                               @RequestBody ParamPageListFilteredVO param,
                                               ModelMap model,
                                               @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }
        List<AssetReservationItemVO> assetReservationItemVOList = assetService.getAssetReservationItemList(Long.parseLong("" + param.getFilter1()));
        ParamPageListFilteredVO newParam = new ParamPageListFilteredVO();
        newParam.setPage_num(0);
        newParam.setFilter1(100);
        newParam.setFilter2(0);
        newParam.setFilter3(0);

        List<AssetVO> assetVOList = assetService.getAssetList(newParam);

        model.addAttribute("assetList", assetVOList);
        model.addAttribute("itemList", assetReservationItemVOList);

        return "asset_reservation_items_list";
    }

    @RequestMapping(value = "/cur_asset_index",method = RequestMethod.POST)
    public String cur_asset_index(@RequestParam(value = "tag", required = false) String tagValue,
                                  @RequestBody ParamPageListFilteredVO param,
                                  ModelMap model,
                                  @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }
        List<AssetVO> assetVOList = assetService.getAssetList(param);
        List<SystemCodeVO> systemCodeList = systemService.getAllSystemCodeList();

        model.addAttribute("assetList", assetVOList);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());
        model.addAttribute("filter3", param.getFilter3());
        model.addAttribute("page_num", param.getPage_num());
        model.addAttribute("count", assetService.getCount(param));
        model.addAttribute("maxvalue", assetVOList.get(0).getMaxvalue());
        model.addAttribute("systemCodeList",systemCodeList);

        return "cur_asset_index";
    }

    @RequestMapping(value = "/asset_category",method = RequestMethod.POST)
    public String asset_category(@RequestParam(value = "tag", required = false) String tagValue,
                                 @RequestBody SystemCodeVO param,
                                 ModelMap model,
                                 @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }
        List<SystemCodeVO> systemCodeVOList = systemService.getAllSystemCodeList();
        List<SystemCodeVO> mainAssetCodeList = new ArrayList<>();
        List<SystemCodeVO> subAssetCodeList = new ArrayList<>();
        List<SystemCodeVO> detailAssetCodeList = new ArrayList<>();
        systemCodeVOList.forEach(systemCodeVO -> {
            String code = systemCodeVO.getCode_value();
            if(code.charAt(0) == 'A'){
                code = code.substring(1);
                if(code.length() == 1 || Integer.parseInt(code) == 10){
                    mainAssetCodeList.add(systemCodeVO);
                } else if(Integer.parseInt(code) <= 120){
                    subAssetCodeList.add(systemCodeVO);
                } else {
                    detailAssetCodeList.add(systemCodeVO);
                }
            }
        });
        List<SystemCodeVO> resultCodeList = new ArrayList<>();
        if(param.getCode_name().equals("sub_code")){
            subAssetCodeList.forEach(systemCodeVO -> {
                if(param.getCode_value().length() == 2){
                    String code = systemCodeVO.getCode_value();
                    if(code.charAt(0) == 'A'){
                        if(param.getCode_value().equals(systemCodeVO.getCode_value().substring(0,2))){
                            resultCodeList.add(systemCodeVO);
                        }
                    } else {
                        if(param.getCode_value().equals(systemCodeVO.getCode_value().substring(0,3))){
                            resultCodeList.add(systemCodeVO);
                        }
                    }
                }
            });
        } else if(param.getCode_name().equals("detail_code")){
            detailAssetCodeList.forEach(systemCodeVO -> {
                if(param.getCode_value().length() == 3){
                    String code = systemCodeVO.getCode_value();
                    if(code.charAt(0) == 'A'){
                        if(param.getCode_value().equals(systemCodeVO.getCode_value().substring(0,3))){
                            resultCodeList.add(systemCodeVO);
                        }
                    } else {
                        if(param.getCode_value().equals(systemCodeVO.getCode_value().substring(0,4))){
                            resultCodeList.add(systemCodeVO);
                        }
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
                                    Principal principal,

                                    ModelMap model,
                                    @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        AdminVO adminInfo = adminService.findAdminById(principal.getName());

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
        model.addAttribute("myInfo", adminInfo);
        model.addAttribute("adminList", adminService.getAdminList());
        model.addAttribute("main_cate", mainAssetCodeList);
        model.addAttribute("sub_cate", subAssetCodeList);
        model.addAttribute("detail_cate", detailAssetCodeList);

        return "g20_asset_booking";
    }

    @RequestMapping(value = "/get_asset_list",method = RequestMethod.POST)
    public String get_asset_list (@RequestParam(value = "tag", required = false) String tagValue,
                                  @RequestBody ParamPageListFilteredVO param,
                                  ModelMap model,
                                  @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }
        List<AssetVO> assetVOList = assetService.getAssetList(param);
        model.addAttribute("assetList", assetVOList);

        return "asset_list";
    }

    //서식관리
    @RequestMapping(value = "/g30_asset_book_mng",method = RequestMethod.POST)
    public String g30_asset_book_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                     ModelMap model,
                                     @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

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
        model.addAttribute("myInfo", adminVO);
        model.addAttribute("adminList", adminService.getAdminList());
        model.addAttribute("main_cate", mainAssetCodeList);
        model.addAttribute("sub_cate", subAssetCodeList);
        model.addAttribute("detail_cate", detailAssetCodeList);

        return "g30_asset_book_mng";
    }

    @RequestMapping(value = "/reserve_view",method = RequestMethod.POST)
    public String reserve_view (@RequestParam(value = "tag", required = false) String tagValue,
                                @RequestBody ParamPageListFilteredVO param,
                                ModelMap model,
                                @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }
        AssetReservationVO assetReservationVO = assetService.getAssetReservation(param.getIdx());
        List<AssetReservationItemVO> assetReservationItemVOList = assetService.getAssetReservationItemList(param.getIdx());
        AdminVO applicant = adminService.getAdminInfo(assetReservationVO.getIdx_user());
        param.setFilter1(100);
        List<AssetVO> assetVOList = assetService.getAssetList(param);


        model.addAttribute("assetList", assetVOList);
        model.addAttribute("curReservation", assetReservationVO);
        model.addAttribute("itemList", assetReservationItemVOList);
        model.addAttribute("applicant", applicant);
        model.addAttribute("myIdx", adminVO.getIdx_admin());

        return "reserve_view";
    }

    //시스템 코드 관리
    @RequestMapping(value = "/h11_write_sms",method = RequestMethod.POST)
    public String h11_write_sms(@RequestParam(value = "tag", required = false) String tagValue,
                                ModelMap model,
                                @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }


        return "h11_write_sms";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h12_auto_sms_mng",method = RequestMethod.POST)
    public String h20_auto_sms_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                   ModelMap model,
                                   @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        return "h12_auto_sms_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h13_reserved_sms_list",method = RequestMethod.POST)
    public String h13_reserved_sms_list(@RequestParam(value = "tag", required = false) String tagValue,
                                        ModelMap model,
                                        @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        ArrayList<SmsSendVO> smsReservearr = smsSendService.selectReserveMessage();
        model.addAttribute("reserveSms",smsReservearr);
        return "h13_reserved_sms_list";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h14_sent_sms_list",method = RequestMethod.POST)
    public String h14_sent_sms_list(@RequestParam(value = "tag", required = false) String tagValue,
                                    ModelMap model,
                                    @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        ArrayList<SmsSentVO> smsarr = smsSendService.selectSentmeesage1();
        model.addAttribute("sentSms",smsarr);
        return "h14_sent_sms_list";
    }
    @RequestMapping(value = "/h21_write_mail",method = RequestMethod.POST)
    public String h21_write_mail(@RequestParam(value = "tag", required = false) String tagValue,
                                 ModelMap model,
                                 @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }


        return "h21_write_mail";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h22_auto_email_mng",method = RequestMethod.POST)
    public String h22_auto_email_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                     ModelMap model,
                                     @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }


        return "h22_auto_email_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/h23_reserved_email_list",method = RequestMethod.POST)
    public String h23_reserved_email_list(@RequestParam(value = "tag", required = false) String tagValue,
                                          ModelMap model,
                                          @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

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
                                      ModelMap model) throws MessagingException, IOException {
/*

        Store store;
        Folder folder;

//        URLName url = new URLName("imaps", "imap.gmail.com", 993, "INBOX", "seeshow202106", "27452745ts~~");
        URLName url = new URLName("imaps", "imap.gmail.com", 993, "INBOX", "seeshow202106", "gcyqljnhdzyascpg");
        if (session == null) {
            Properties props = null;
            try {
                props = System.getProperties();
//                System.out.println(props);
                props.put("mail.smtp.starttls.required", "true");
                props.put("mail.smtp.ssl.protocols", "TLSv1.2");
            } catch (SecurityException se) {
                props = new Properties();
            }
            session = Session.getInstance(props, null);
        }
        store = session.getStore(url);

        store.connect();
        System.out.println(store.toString());
        folder = store.getFolder("inbox"); //inbox는 받은 메일함을 의미
        //folder.open(Folder.READ_WRITE);
        folder.open(Folder.READ_ONLY); //읽기 전용

        int messageCount = 0;
        try {
            messageCount = folder.getMessageCount();
        } catch (MessagingException me) {
            me.printStackTrace();
        }

        if(messageCount > 5){
            messageCount = 5;
        }

        Message[] messages = folder.getMessages();

        for(int i = 0; i < messageCount; i++){
            Message msg = messages[i];
            if(msg.getSubject() != null){
                System.out.println(String.format("컨텐츠타입: %s", msg.getContentType()));
                System.out.println(String.format("발신자[0]: %s", msg.getFrom()));
                System.out.println(String.format("메일 제목: %s", msg.getSubject()));
                System.out.println(String.format("메일 내용: %s", msg.getContent()));
            }
        }
*/



        return "h24_sent_email_list";
    }

    //시스템 코드 관리
    @RequestMapping(value = "/i11_user_mng",method = RequestMethod.POST)
    public String i11_user_mng(@RequestBody ParamPageListFilteredVO param,
                               ModelMap model,
                               @CookieValue(name = "access_token",required = true) String access_token){

        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }
        model.addAttribute("allCount", userService.getAllUserListCount());
        return "i11_user_mng";
    }

    @RequestMapping(value = "/user_index",method = RequestMethod.POST)
    public String user_index(@RequestParam(value = "tag", required = false) String tagValue,
                             @RequestBody ParamPageListFilteredVO param,
                             ModelMap model,
                             @CookieValue(name = "access_token",required = true) String access_token){

        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }
        boolean maxBool = false;
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
                                       ModelMap model,
                                       @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }

        return "i12_dormant_user_mng";
    }

    @RequestMapping(value = "/dormant_user_index",method = RequestMethod.POST)
    public String dormant_user_index(@RequestParam(value = "tag", required = false) String tagValue,
                                     @RequestBody ParamPageListFilteredVO param,
                                     ModelMap model,
                                     @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }
        boolean maxBool = false;
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
                                ModelMap model,
                                @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }
        ArrayList<CorpInfoVO> resultArray;
        resultArray = corpService.selectCorpInfo();

        int pageBool = 4;
        List<AdminResVO> adminVOList = adminService.selectAdminbyIdx(param.getPage_num() != 0 ? param.getPage_num() + "" : "1", 100);
        System.out.println(adminVOList);
        if(adminVOList.size() != 0){
            if(adminVOList.get(0).getMaxvalue() - adminVOList.get(0).getPage() < 4){
                pageBool = adminVOList.get(0).getMaxvalue() - adminVOList.get(0).getPage();
            }
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
                                  ModelMap model,
                                  @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }
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
                                           ModelMap model,
                                           @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }


        return "k11_system_authority_mng";
    }

    //시스템 코드 관리
    @RequestMapping(value = "/k21_admin_dashboad_mng",method = RequestMethod.POST)
    public String k21_admin_dashboad_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                         ModelMap model,
                                         @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }


        return "k21_admin_dashboad_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/k31_console_dashboad_mng",method = RequestMethod.POST)
    public String k31_console_dashboad_mng(@RequestParam(value = "tag", required = false) String tagValue,
                                           ModelMap model,
                                           @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }


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
                                        ModelMap model,
                                        @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }
        int list_amount = 10;
        int page_amount = 10;
        int page = param.getPage_num();

        param.setAmount(10);
        int formFileCountCount = formFileService.getFormFileCount();
        model.addAttribute("total_count",formFileCountCount);

        List<FormFileInfoVO> formFileList = formFileService.getFormFileList(param);
        model.addAttribute("formfilelist",formFileList);

        model.addAttribute("cur_page",page);
        model.addAttribute("amount",list_amount);

        int tot_page = formFileCountCount/list_amount+1;
        if(formFileCountCount%list_amount==0) tot_page-=1;

        int tot_sector = tot_page/page_amount+1;
        if(tot_page%page_amount==0) tot_sector-=1;

        int cur_sector = page/page_amount+1;
        if(page%page_amount==0) cur_sector-=1;

        boolean is_past = false;
        boolean is_prev = false;
        boolean is_next = false;
        boolean is_last = false;

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


        return "l11_document_form_mng";
    }
    @RequestMapping(value = "/l12_document_rule_mng",method = RequestMethod.POST)
    public String l12_document_rule_mng(@RequestBody ParamPageListFilteredVO param,
                                        ModelMap model,
                                        @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }
        int list_amount = 10;
        int page_amount = 10;
        int page = param.getPage_num();

        param.setAmount(10);
        int ruleFileCountCount = ruleFileService.getRuleFileCount();
        model.addAttribute("total_count",ruleFileCountCount);

        List<FormFileInfoVO> ruleFileList = ruleFileService.getRuleFileList(param);
        model.addAttribute("rulefilelist",ruleFileList);

        model.addAttribute("cur_page",page);
        model.addAttribute("amount",list_amount);

        int tot_page = ruleFileCountCount/list_amount+1;
        if(ruleFileCountCount%list_amount==0) tot_page-=1;

        int tot_sector = tot_page/page_amount+1;
        if(tot_page%page_amount==0) tot_sector-=1;

        int cur_sector = page/page_amount+1;
        if(page%page_amount==0) cur_sector-=1;

        boolean is_past = false;
        boolean is_prev = false;
        boolean is_next = false;
        boolean is_last = false;

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
                               ModelMap model,
                               @CookieValue(name = "access_token",required = true) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }
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
    private void setProfile(ModelMap model) {
        String[] activeProfiles = env.getActiveProfiles();
        if (activeProfiles.length != 0) {
            String activeProfile = activeProfiles[0];

            if (activeProfile.equals("local")) {
                model.addAttribute("profile", "gimje-prod");
            } else {
                model.addAttribute("profile", activeProfile);
            }
        }
    }

}
