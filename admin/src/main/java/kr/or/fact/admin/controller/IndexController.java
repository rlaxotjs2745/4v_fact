package kr.or.fact.admin.controller;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.service.*;
import kr.or.fact.core.util.*;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import javax.annotation.Resource;
import javax.mail.*;
import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.text.ParseException;
import java.util.*;

@Controller
public class IndexController extends BaseController {

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

    @Resource(name = "emailService")
    EMailService emailService;

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

    @Resource(name = "prContentsService")
    public PRContentsService prContentsService;

    @Resource(name = "webMainPopupService")
    public WebMainPopupService webMainPopupService;

    @Resource(name = "formFileService")
    public FormFileService formFileService;

    @Resource(name = "ruleFileService")
    public RuleFileService ruleFileService;

    @Resource(name = "adminSessionService")
    AdminSessionService adminSessionService;

    @Resource(name = "schedulerService")
    SchedulerService schedulerService;

    @Resource(name = "envDataService")
    EnvDataService envDataService;

    @Autowired
    Environment env;

    @RequestMapping(value = "/*",method = RequestMethod.GET)
    public String rootContents(HttpServletRequest req,
                       Model model,
                       @CookieValue(name = "access_token",required = false) String access_token){
        String _path = req.getRequestURI();

        String _uri = "index";
        if(access_token!=null){
            AdminVO adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                _uri = "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            _uri = "redirect:/login";
        }

        String _srv = "";
        String[] activeProfiles = env.getActiveProfiles();
        if (activeProfiles.length != 0) {
            String activeProfile = activeProfiles[0];
            if (activeProfile.equals("local")) {
                model.addAttribute("pageOnLoad", 1);
                model.addAttribute("path", _path);
            }
        }
        return _uri;
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest req,
                               Model model,
                               @CookieValue(name = "access_token",required = false) String access_token){
        if(access_token!=null){
            //AdminVO adminVO = getVerityAuth(access_token);
            AdminSessionVO adminSessionVO = adminSessionService.getAdminSessionInfoByToken(access_token);
            adminSessionService.deleteAdminSessionInfo(adminSessionVO);
        }
        return "redirect:/login";
    }

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String root(HttpServletRequest req,
                       Model model,
                       @CookieValue(name = "access_token",required = false) String access_token){
        String _path = req.getRequestURI();
        if(access_token!=null){
            AdminVO adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        String[] activeProfiles = env.getActiveProfiles();
        if (activeProfiles.length != 0) {
            String activeProfile = activeProfiles[0];
            if (activeProfile.equals("local")) {
                if(!_path.equals("/") && !_path.equals("")) {
                    model.addAttribute("pageOnLoad", 1);
                    model.addAttribute("path", _path);
                }
            }
        }

        return "index";
    }

    @RequestMapping(value="/login",method = RequestMethod.GET)
    public String login( HttpServletRequest req,
                         Model model,
                         @RequestBody(required = false) ParamVO paramVO){

        setProfile(model);
        String _path = req.getRequestURI();
        model.addAttribute("path", _path);
        return "login";
    }

    //대시보드
    @SneakyThrows
    @RequestMapping(value = "/dashboard" ,method = RequestMethod.POST)
    public String dashboard(Model model,
                                @CookieValue(name = "access_token",required = false) String access_token){

        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        //Param check
        ParamPageListFilteredVO param = new ParamPageListFilteredVO();
        if(param.getList_amount()==0) param.setList_amount(10);
        if(param.getCur_page()==0) param.setCur_page(1);
        param.setOrder_field("IDX_DEMO_BUSINESS");

        List<AdminApplDemoBsHeaderListVO> adminApplHeaderListVOS = demoBsApplicationService.getAvailableDemoBsApplPagingList(param);
        model.addAttribute("applicationList", adminApplHeaderListVOS);

        Integer corpCount = corpService.getCorpCount(0);
        model.addAttribute("corpCount", corpCount);

        Integer directCorpCount = corpService.getCorpCount(1);
        model.addAttribute("directCorpCount", directCorpCount);

        param.setList_amount(10);
        param.setCur_page(1);
        param.setFilter1(9999);
        param.setOrder_field("CONSULTING_STATUS");

        int consultingCount = consultingService.getCountConsulting(param);
        model.addAttribute("consultingCount", consultingCount);

        VisitReqCountVO visitReqCountVO = visitService.getVisitReqCount();

        return "a_dashboard/dashboard";
    }

    //사업공고문 관리
    @RequestMapping(value = "/demobs_mng",method = RequestMethod.POST)
    public String demobs_mng(@RequestBody ParamPageListFilteredVO param,
                                  Model model,
                                  @CookieValue(name = "access_token",required = false) String access_token){

        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        param.setOrder_field("IDX_DEMO_BUSINESS");

        //총 갯수 설정
        DemoBSFilteredCountVO demoBSFilteredCountVO = demoBsService.getAdminDemoBsFilteredCount();  // 사업 상태별 카운트
        //종류당 총갯수 얻기
        int total_count = demoBSFilteredCountVO.getTot_count();

        if(param.getFilter1()>=0 && param.getFilter1()<3)
            total_count = demoBSFilteredCountVO.getWrite_count();
        else if(param.getFilter1()>=3 && param.getFilter1()<5)
            total_count = demoBSFilteredCountVO.getAppl_count();
        else if(param.getFilter1()>=5 && param.getFilter1()<7)
            total_count = demoBSFilteredCountVO.getReview_count();
        else if(param.getFilter1()>=7 && param.getFilter1()<11)
            total_count = demoBSFilteredCountVO.getAgree_count();
        else if(param.getFilter1()==11)
            total_count = demoBSFilteredCountVO.getDemo_count();
        else if(param.getFilter1()>=12 && param.getFilter1()<15)
            total_count = demoBSFilteredCountVO.getResult_count();

        model.addAttribute("adminDemoBsFilter", demoBSFilteredCountVO);

        param.setOrder_field("IDX_DEMO_BUSINESS");

        List<DemoBusinessVO>  demoBusinessVOList = demoBsService.getDemoBsPagingList(param);
        for(int i = 0; i < demoBusinessVOList.size(); i++){
            if(demoBusinessVOList.get(i).getDemo_bs_contents() != null){
                demoBusinessVOList.get(i).setDemo_bs_contents(demoBusinessVOList.get(i).getDemo_bs_contents().replaceAll("(\t)", "  ").replaceAll("(\r\n|\r|\n|\n\r)", "<br/>"));
                //System.out.println(demoBusinessVOList.get(i).getDemo_bs_contents());
            }
        }

        model.addAttribute("demoBusinessVOList",demoBusinessVOList);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "b_demobs/demobs_mng";
    }

    //사업공고문 관리
    @RequestMapping(value = "/announce_mng",method = RequestMethod.POST)
    public String announce_mng(@RequestBody ParamPageListFilteredVO param,
                                               Model model,
                                               @CookieValue(name = "access_token",required = false) String access_token){

        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        DemoBsAnnounceFilteredCountVO demoBsAnnounceFilteredCountVO = bsAnnouncementService.getDemoBsAnnouncementFilteredCount();
        //리스트 총갯수를 이때 빼야 함
        int total_count = demoBsAnnounceFilteredCountVO.getAnnounce_tot();
        if(filter1==CONSTANT.ANN_STATUS_ON_COUNT)
            total_count = demoBsAnnounceFilteredCountVO.getStatus_on_count();
        else if(filter1==CONSTANT.ANN_WAIT_COUNT)
            total_count = demoBsAnnounceFilteredCountVO.getWait_count();
        else if(filter1==CONSTANT.ANN_PAUSE_COUNT)
            total_count = demoBsAnnounceFilteredCountVO.getPause_count();


        model.addAttribute("total_count",total_count);
        model.addAttribute("announce_tot",demoBsAnnounceFilteredCountVO.getAnnounce_tot());
        model.addAttribute("status_on_count",demoBsAnnounceFilteredCountVO.getStatus_on_count());
        model.addAttribute("wait_count",demoBsAnnounceFilteredCountVO.getWait_count());
        model.addAttribute("pause_count",demoBsAnnounceFilteredCountVO.getPause_count());

        param.setOrder_field("IDX_BS_ANNOUNCEMENT");


        List<BsAnnouncementVO> bsAnnounceHeaderVOList = bsAnnouncementService.getBsAnnounceVOPagingList(param);
        model.addAttribute("bsAnnounceHeaderVOList",bsAnnounceHeaderVOList);
        List<DemoBusinessVO> demoStateBsVOList = demoBsService.getDemoBsstatusList();
        model.addAttribute("demoStateBsVOList",demoStateBsVOList);


        model.addAttribute("filter1",filter1);
        model.addAttribute("filter2",filter2);
        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "b_demobs/announce_mng";
    }

    //신청접수 관리
    @RequestMapping(value = "/demobs_appl",method = RequestMethod.POST)
    public String demobs_appl(@RequestBody ParamPageListFilteredVO param,
                                       Model model,
                                       @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        if(param.getList_amount()==0) param.setList_amount(3);
        int list_amount = 3;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        int total_count = demoBsApplicationService.getDemobsForEvalTotalCount();

        param.setOrder_field("REG_DATE");

        List<DemoBSForEvalVO>  demobsForEvalPagedList = demoBsApplicationService.getDemobsForEvalPagedList(param);
        model.addAttribute("demobsForEvalPagedList",demobsForEvalPagedList);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "b_demobs/demobs_appl";
    }

    //신청접수 관리
    @RequestMapping(value = "/demobs_commitment",method = RequestMethod.POST)
    public String demobs_commitment(@RequestBody ParamPageListFilteredVO param,
                                       Model model,
                                       @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }


        if(param.getList_amount()==0) param.setList_amount(3);
        int list_amount = 3;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        int total_count = demoBsApplicationService.getAvailableDemoBsApplTotalCount();

        param.setOrder_field("IDX_DEMO_BUSINESS");

        List<AdminApplDemoBsHeaderListVO>  adminApplHeaderListVOS = demoBsApplicationService.getAvailableDemoBsApplPagingList(param);
        //System.out.println(adminApplHeaderListVOS);
        model.addAttribute("adminApplHeaderListVOS",adminApplHeaderListVOS);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "b_demobs/demobs_commitment";
    }
    //신청접수 관리
    @RequestMapping(value = "/demobs_maintenance",method = RequestMethod.POST)
    public String demobs_maintenance(@RequestBody ParamPageListFilteredVO param,
                                       Model model,
                                       @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        if(param.getList_amount()==0) param.setList_amount(3);
        int list_amount = 3;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        int total_count = demoBsApplicationService.getAvailableDemoBsApplTotalCount();

        param.setOrder_field("IDX_DEMO_BUSINESS");

        List<AdminApplDemoBsHeaderListVO>  adminApplHeaderListVOS = demoBsApplicationService.getAvailableDemoBsApplPagingList(param);
        //System.out.println(adminApplHeaderListVOS);
        model.addAttribute("adminApplHeaderListVOS",adminApplHeaderListVOS);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "b_demobs/demobs_maintenance";
    }

    //심사결과 관리
    @RequestMapping(value = "/b22_demo_bs_doc_eval_result_mng",method = RequestMethod.POST)
    public String b22_demo_bs_doc_eval_result_mng(@RequestBody ParamPageListFilteredVO param,
                                                  Model model,
                                                  @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        if(param.getList_amount()==0) param.setList_amount(5);
        int list_amount = 5;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        int total_count = demoBsApplicationService.getAvailableDemoBsEvalTotalCount();

        param.setOrder_field("IDX_DEMO_BUSINESS");

        List<AdminApplDemoBsHeaderListVO>  adminApplHeaderListVOS = demoBsApplicationService.getAvailableDemoBsEvalPagingList(param);

        model.addAttribute("adminApplHeaderListVOS",adminApplHeaderListVOS);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "/b_demobs/b22_demo_bs_doc_eval_result_mng";
    }

    //협약 전 업무관리
    @RequestMapping(value = "/b23_demo_bs_pre_contract_mng",method = RequestMethod.POST)
    public String b23_demo_bs_pre_contract_mng(@RequestBody(required = false) ParamPageListFilteredVO param,
                                                Model model,
                                               @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        return "/b_demobs/b23_demo_bs_pre_contract_mng";
    }

    //협약관리
    @RequestMapping(value = "/b30_demo_bs_usage_ext_mng",method = RequestMethod.POST)
    public String b30_demo_bs_usage_ext_mng(@RequestBody(required = false) ParamPageListFilteredVO param,
                                            Model model,
                                            @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }


        return "/b_demobs/b30_demo_bs_usage_ext_mng";
    }

    //실증성적서
    @RequestMapping(value = "/b40_demo_bs_contract_mng",method = RequestMethod.POST)
    public String b40_demo_bs_contract_mng(@RequestBody(required = false) ParamPageListFilteredVO param,
                                           Model model,
                                           @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        return "/b_demobs/b40_demo_bs_contract_mng";
    }

    //현황보고서 작성
    @RequestMapping(value = "/b50_demo_bs_corp_cur_list",method = RequestMethod.POST)
    public String b50_demo_bs_corp_cur_list(@RequestBody(required = false) ParamPageListFilteredVO param,
                                            Model model,
                                            @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        return "/b_demobs/b50_demo_bs_corp_cur_list";
    }

    //분야별 기업현황
    @RequestMapping(value = "/b60_demo_bs_consign_corp_list",method = RequestMethod.POST)
    public String b60_demo_bs_consign_corp_list(@RequestBody(required = false) ParamPageListFilteredVO param,
                                                Model model,
                                                @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }


        return "/b_demobs/b60_demo_bs_consign_corp_list";
    }

    //위탁기업 목록
    @RequestMapping(value = "/b70_demo_bs_usage_pee_mng",method = RequestMethod.POST)
    public String b70_demo_bs_usage_pee_mng(@RequestBody(required = false) ParamPageListFilteredVO param,
                                            Model model,
                                            @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        return "/b_demobs/b70_demo_bs_usage_pee_mng";
    }

    //연장신청 접수
    @RequestMapping(value = "/b80_demo_bs_corp_cur_report_write",method = RequestMethod.POST)
    public String b80_demo_bs_corp_cur_report_write(@RequestBody(required = false) ParamPageListFilteredVO param,
                                                    Model model,
                                                    @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        return "/b_demobs/b80_demo_bs_corp_cur_report_write";
    }

    //상담
    @RequestMapping(value = "/b90_demo_bs_cert_mng",method = RequestMethod.POST)
    public String b90_demo_bs_cert_mng(@RequestBody(required = false) ParamPageListFilteredVO param,
                                       Model model,
                                       @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        return "/b_demobs/b90_demo_bs_cert_mng";
    }

    //문의상담신청 관리
    @RequestMapping(value = "/consult_mng",method = RequestMethod.POST)
    public String consult_mng(@RequestBody ParamPageListFilteredVO param,
                              Model model,
                              @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();
        
        int total_count = consultingService.getCountConsulting(param);

        param.setOrder_field("CONSULTING_STATUS");
        List<DemoBsConsultingVO> consultingList = consultingService.getConsultingList(CONSTANT.admin_idx,param);

        model.addAttribute("consultingList",consultingList);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "c_site/consult_mng";
    }

    //자산현황
    @RequestMapping(value = "/visit_req",method = RequestMethod.POST)
    public String visit_req(@RequestBody ParamPageListFilteredVO param,
                                      Model model,
                                      @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        param.setOrder_field("IDX_VISIT_REQ");

        VisitReqCountVO visitReqCountVO = visitService.getVisitReqCount();
        int total_count = visitReqCountVO.getTot_count();

        if(filter1==0)
            total_count = visitReqCountVO.getNew_count();
        else if(filter1==1)
            total_count = visitReqCountVO.getCheck_count();
        else if(filter1==2)
            total_count = visitReqCountVO.getAccept_count();
        else if(filter1==3)
            total_count = visitReqCountVO.getVisit_count();
        else if(filter1==4)
            total_count = visitReqCountVO.getDone_count();
        else if(filter1==5)
            total_count = visitReqCountVO.getCancel_count();
        else if(filter1==6)
            total_count = visitReqCountVO.getRefuse_count();

        List<VisitReqVO> visitReqList = visitService.getVisitList(param);
        model.addAttribute("visitReqList",visitReqList);

        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());
        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "c_site/visit_req";
    }
    //자원예약 관리
    @RequestMapping(value = "/visit_mng",method = RequestMethod.POST)
    public String visit_mng(@RequestBody(required = false) ParamPageListFilteredVO param,
                            Model model,
                            @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        return "c_site/visit_mng";
    }

    //자원예약
    @RequestMapping(value = "/c30_site_faq_mng",method = RequestMethod.POST)
    public String c30_site_faq_mng(@RequestBody(required = false) ParamPageListFilteredVO param,
                                   Model model,
                                   @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }


        return "c_site/c30_site_faq_mng";
    }

    //일정관리
    @RequestMapping(value = "/notice_mng",method = RequestMethod.POST)
    public String notice_mng(@RequestBody ParamPageListFilteredVO param,
                                      Model model,
                                      @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        int total_count = noticeService.getWebpageNoticeCount();

        param.setOrder_field("IDX_NOTICE");
        List<NoticeVO> noticeList = noticeService.getNoticeWebList(param);
        model.addAttribute("noticeList",noticeList);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "c_site/notice_mng";
    }

    //행사 관리
    @RequestMapping(value = "/event_mng",method = RequestMethod.POST)
    public String event_mng(@RequestBody ParamPageListFilteredVO param,
                                     Model model,
                                     @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        //행사관리 테이블 추가 .tb_event_content

        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();
        int total_count = eventContentService.getEventContentCount(param);
        param.setOrder_field("IDX_EVENT_CONTENT");
        List<EventContentVO> eventContentList = eventContentService.getEventContentList(param);

        model.addAttribute("eventContentList",eventContentList);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);


        return "c_site/event_mng";
    }


    @RequestMapping(value = "/adver_mng" ,method = RequestMethod.POST)
    public String adver_mng(@RequestBody ParamPageListFilteredVO param,
                                     Model model,
                                     @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();
        int total_count = prContentsService.getPRContentCount(param);

        List<PRContentVO> prlist = prContentsService.getPRContentList(param);
        model.addAttribute("prlist",prlist);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "c_site/adver_mng";
    }

    @RequestMapping(value = "/pr_contents",method = RequestMethod.POST)
    public String pr_contents(@RequestBody ParamPageListFilteredVO param,
                              Model model,
                              @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        String content = "";
        PRContentVO prContentVO = prContentsService.getMainPRContent(param);
        if(prContentVO!=null) {
            content = prContentVO.getPr_contents();
        }
        model.addAttribute("contentFuck",  content);

        return "pr_contents";
    }


    //직원관리
    @RequestMapping(value = "/c50_site_banner_mng",method = RequestMethod.POST)
    public String c50_site_banner_mng(@RequestBody(required = false) ParamPageListFilteredVO param,
                                      Model model,
                                      @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }


        return "/c_site/c50_site_banner_mng";
    }

    //협약담당자 관리
    @RequestMapping(value = "/popup_mng",method = RequestMethod.POST)
    public String popup_mng(@RequestBody ParamPageListFilteredVO param,
                                     Model model,
                                     @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

//        AdminVO adminInfo = adminService.findAdminById(principal.getName());
//        model.addAttribute("admin", adminInfo);

        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        //팝업 정보
        int total_count = webMainPopupService.getWebMainPopupCount();

        List<WebMainPopupVO> webMainPopupList = webMainPopupService.getWebMainPopupList(param);
        model.addAttribute("webMainPopupList", webMainPopupList);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "c_site/popup_mng";
    }

    //재배사 관리
    @RequestMapping(value = "/c71_site_form_doc_mng",method = RequestMethod.POST)
    public String c71_site_form_doc_mng(@RequestBody ParamPageListFilteredVO param,
                                        Model model,
                                        @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        int total_count = formFileService.getFormFileCount();

        List<FormFileInfoVO> formFileList = formFileService.getFormFileList(param);
        model.addAttribute("formfilelist",formFileList);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "c_site/c71_site_form_doc_mng";
    }

    //sms 작성
    @RequestMapping(value = "/c72_site_rule_doc_mng",method = RequestMethod.POST)
    public String c72_site_rule_doc_mng(@RequestBody ParamPageListFilteredVO param,
                                        Model model,
                                        @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        int total_count = ruleFileService.getRuleFileCount();

        List<FormFileInfoVO> ruleFileList = ruleFileService.getRuleFileList(param);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "c_site/c72_site_rule_doc_mng";
    }

    //사이트 정보관리
    @RequestMapping(value = "/site_mng",method = RequestMethod.POST)
    public String site_mng(@RequestBody ParamPageListFilteredVO param,
                               Model model,
                               @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        //푸터 정보
        HomepageInfoVO homepageInfoVO = homepageInfoService.getHomepageInfo();
        model.addAttribute("homepageInfo",homepageInfoVO);

        param.setOrder_field("CO_WORKER_ODER");
        List<CoWorkerVO> coWorkerVOList = coWorkerNService.getCoWorkerListPage(param);
        model.addAttribute("coWorkerVOList", coWorkerVOList);
        int total_count = coWorkerNService.getCoWorkerCount();

        //HomepageInfoVO ho = homepageInfoService.getHomepageInfoList(param);
        //model.addAttribute("homepageInfoList",homepageInfoList);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "c_site/site_mng";
    }

    //자동 sms 관리
    @RequestMapping(value = "/schedule_mng",method = RequestMethod.POST)
    public String schedule_mng(@RequestBody ParamSchedulerVO param,
                                   Model model,
                                   @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        if(param.getThe_day()==null){
            Date the_day=new Date();
            param.setThe_day(the_day);
        }

        List<ScheduleItemVO> scheduleItemVOList = schedulerService.getYearlyScheduleList(param);

        model.addAttribute("scheduleItemVOList",scheduleItemVOList);



        return "d_schedule/schedule_mng";
    }

    //예약된 SMS
    @RequestMapping(value = "/e10_document_issued_req_list",method = RequestMethod.POST)
    public String e10_document_issued_req_list(@RequestParam(value = "cur_page", required = false) String cur_page,
                                               Model model,
                                               @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        return "/e_document/e10_document_issued_req_list";
    }

    //보낸 sms
    @RequestMapping(value = "/e20_document_issued",method = RequestMethod.POST)
    public String e20_document_issued(@RequestParam(value = "cur_page", required = false) String cur_page,
                                      Model model,
                                      @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        return "/e_document/e20_document_issued";
    }

    //자동 email 관리
    @RequestMapping(value = "/e30_document_issued_history",method = RequestMethod.POST)
    public String e30_document_issued_history(@RequestParam(value = "cur_page", required = false) String cur_page,
                                              Model model,
                                              @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        return "/e_document/e30_document_issued_history";
    }

    //예약된 이메일
    @RequestMapping(value = "/ghdata_mng",method = RequestMethod.POST)
    public String ghdata_mng(@RequestBody ParamPageListFilteredVO param,
                                  Model model,
                                  @CookieValue(name = "access_token",required = false) String access_token) throws ParseException {
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        if(param.getList_amount()==0) param.setList_amount(20);
        int list_amount = 20;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();

        List<FarmVO> farmVOList = null;
        int total_count = 0;

        if(filter1==9999 || filter1==0){
            farmVOList = envDataService.getGuyokData();
            total_count = 0;
            if(filter1==0){
                filter1=9999;
                param.setFilter1(filter1);
            }

            if(param.getStart_dt()==null || param.getEnd_dt()==null){
                Date end_dt = new Date();

                Calendar cal = Calendar.getInstance();
                cal.setTime(end_dt);
                cal.add(Calendar.HOUR, -1);
                Date start_dt = cal.getTime();
                param.setStart_dt(start_dt);
                param.setEnd_dt(end_dt);
            }
        }
        else{
            farmVOList = envDataService.getEachGHEnvData(param);
            total_count = envDataService.getEachGHEnvDataTotalCount(param);

            if(param.getStart_dt()==null || param.getEnd_dt()==null){
                Date end_dt = new Date();

                Calendar cal = Calendar.getInstance();
                cal.setTime(end_dt);
                cal.add(Calendar.HOUR, -1);
                Date start_dt = cal.getTime();
                param.setStart_dt(start_dt);
                param.setEnd_dt(end_dt);
            }
        }
        model.addAttribute("start_dt",param.getStart_dt());
        model.addAttribute("end_dt",param.getEnd_dt());

        model.addAttribute("farmVOList",farmVOList);

        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "f_data/ghdata_mng";
    }

    //보낸 email
    @RequestMapping(value = "/assetdata_mng",method = RequestMethod.POST)
    public String assetdata_mng(@RequestParam(value = "cur_page", required = false) String cur_page,
                                     Model model,
                                     @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }


        return "f_data/assetdata_mng";
    }

    //웹 프론트 메인 페이지 관리
    @RequestMapping(value = "/datareq_history",method = RequestMethod.POST)
    public String datareq_history(@RequestParam(value = "cur_page", required = false) String cur_page,
                                       Model model,
                                       @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }


        return "f_data/datareq_history";
    }

    //시스템 모니터링
/*    @RequestMapping(value = "/g12_system_monitoring",method = RequestMethod.POST)
    public String g12_system_monitoring(@RequestParam(value = "cur_page", required = false) String cur_page){

        return "g12_system_monitoring";
    }*/

    //보안 관리
/*    @RequestMapping(value = "/g13_security_mng",method = RequestMethod.POST)
    public String g13_security_mng(@RequestParam(value = "cur_page", required = false) String cur_page){

        return "g13_security_mng";
    }*/

    //관리자 프론트 대시보드 관리
    @RequestMapping(value = "/g10_cur_asset_mng",method = RequestMethod.POST)
    public String g10_cur_asset_mng(@RequestParam(value = "cur_page", required = false) String cur_page,
                                    Model model,
                                    @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
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



        return "/g_asset/g10_cur_asset_mng";
    }

    @RequestMapping(value = "/asset_reservation_list",method = RequestMethod.POST)
    public String asset_reservation_list(@RequestBody ParamPageListFilteredVO param,
                                         Model model,
                                         @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        int total_count = assetService.getAssetReservationCount(param);

        List<AssetReservationVO> assetReservationVOList = assetService.getAssetReservationList(param);
        int count = assetService.getAssetReservationCount(param);
        int maxValue = 0;

        if(assetReservationVOList.size() != 0){
            maxValue = assetReservationVOList.get(0).getMaxvalue();
        }
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "asset_reservation_list";
    }

    @RequestMapping(value = "/asset_reservation_items_list",method = RequestMethod.POST)
    public String asset_reservation_items_list(@RequestBody ParamPageListFilteredVO param,
                                               Model model,
                                               @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        List<AssetReservationItemVO> assetReservationItemVOList = assetService.getAssetReservationItemList(Long.parseLong("" + param.getFilter1()));
        ParamPageListFilteredVO newParam = new ParamPageListFilteredVO();
        newParam.setCur_page(0);
        newParam.setFilter1(100);
        newParam.setFilter2(0);
        newParam.setFilter3(0);

        List<AssetVO> assetVOList = assetService.getAssetList(newParam);


        model.addAttribute("assetList", assetVOList);
        model.addAttribute("itemList", assetReservationItemVOList);


        return "asset_reservation_items_list";
    }

    @RequestMapping(value = "/cur_asset_index",method = RequestMethod.POST)
    public String cur_asset_index(@RequestBody ParamPageListFilteredVO param,
                                  Model model,
                                  @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        int total_count = assetService.getAssetReservationCount(param);

        List<AssetVO> assetVOList = assetService.getAssetList(param);
        model.addAttribute("assetList", assetVOList);
        List<SystemCodeVO> systemCodeList = systemService.getAllSystemCodeList();
        model.addAttribute("systemCodeList",systemCodeList);

        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());
        model.addAttribute("filter3", param.getFilter3());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);
        model.addAttribute("maxvalue", assetVOList.get(0).getMaxvalue());

        return "cur_asset_index";
    }

    @RequestMapping(value = "/asset_category",method = RequestMethod.POST)
    public String asset_category(@RequestBody SystemCodeVO param,
                                 Model model,
                                 @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
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
    public String g20_asset_booking(Principal principal,
                                    Model model,
                                    @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
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

        return "/g_asset/g20_asset_booking";
    }

    @RequestMapping(value = "/get_asset_list",method = RequestMethod.POST)
    public String get_asset_list (@RequestBody ParamPageListFilteredVO param,
                                  Model model,
                                  @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        List<AssetVO> assetVOList = assetService.getAssetList(param);
        model.addAttribute("assetList", assetVOList);

        return "asset_list";
    }

    //서식관리
    @RequestMapping(value = "/g30_asset_book_mng",method = RequestMethod.POST)
    public String g30_asset_book_mng(@RequestBody(required = false) ParamPageListFilteredVO param,
                                     Model model,
                                     @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
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

        return "/g_asset/g30_asset_book_mng";
    }

    @RequestMapping(value = "/reserve_view",method = RequestMethod.POST)
    public String reserve_view (@RequestBody ParamPageListFilteredVO param,
                                Model model,
                                @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        param.setFilter1(100);

        AssetReservationVO assetReservationVO = assetService.getAssetReservation(param.getIdx());
        model.addAttribute("curReservation", assetReservationVO);

        List<AssetReservationItemVO> assetReservationItemVOList = assetService.getAssetReservationItemList(param.getIdx());
        model.addAttribute("itemList", assetReservationItemVOList);

        AdminVO applicant = adminService.getAdminInfo(assetReservationVO.getIdx_user());
        model.addAttribute("applicant", applicant);

        List<AssetVO> assetVOList = assetService.getAssetList(param);
        model.addAttribute("assetList", assetVOList);

        model.addAttribute("myIdx", adminVO.getIdx_admin());

        return "reserve_view";
    }

    //시스템 코드 관리
    @RequestMapping(value = "/h11_write_sms",method = RequestMethod.POST)
    public String h11_write_sms(@RequestParam(value = "cur_page", required = false) String cur_page,
                                Model model,
                                @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }


        return "/h_comm/h11_write_sms";
    }
    //문자 전송 관리
    @RequestMapping(value = "/sms_mng",method = RequestMethod.POST)
    public String sms_mng(@RequestBody(required = false) ParamPageListFilteredVO param,
                                   Model model,
                                   @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        List<SmsTemplateVO> smsTemplateVOS = smsSendService.getSmsTemplateList(param);
        int total_count = smsTemplateVOS.size();
        model.addAttribute("smsTemplateVOS",smsTemplateVOS);

        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);


        return "h_comm/sms_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/reserved_sms",method = RequestMethod.POST)
    public String reserved_sms(@RequestBody(required = false) ParamPageListFilteredVO param,
                                        Model model,
                                        @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();


        List<SmsItemVO> smsItemVOList = smsSendService.getReservedSMSList(param);
        int total_count = smsItemVOList.size();

        model.addAttribute("smsItemVOList",smsItemVOList);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);


        return "/h_comm/reserved_sms";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/sent_sms",method = RequestMethod.POST)
    public String sent_sms(@RequestBody ParamPageListFilteredVO param,
                                    Model model,
                                    @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        List<SmsItemVO> smsItemVOList = smsSendService.getSentSMSList(param);
        int total_count = smsItemVOList.size();

        model.addAttribute("smsItemVOList",smsItemVOList);

        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "/h_comm/sent_sms";
    }
    @RequestMapping(value = "/h21_write_mail",method = RequestMethod.POST)
    public String h21_write_mail(@RequestBody(required = false) ParamPageListFilteredVO param,
                                 Model model,
                                 @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }


        return "/h_comm/h21_write_mail";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/email_mng",method = RequestMethod.POST)
    public String email_mng(@RequestBody(required = false) ParamPageListFilteredVO param,
                                     Model model,
                                     @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();


        int total_count = emailService.getEmailFilteredTotalCount(param);
        List<EmailTemplateVO> emailTemplateVOList = emailService.getEmailTemplateList(param);

        model.addAttribute("emailTemplateVOList",emailTemplateVOList);

        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);


        return "h_comm/email_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/email_list",method = RequestMethod.POST)
    public String email_list(@RequestBody(required = false) ParamPageListFilteredVO param,
                                          Model model,
                                          @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();


        int total_count = emailService.getEmailFilteredTotalCount(param);
        List<EMailItemVO> eMailItemVOList = emailService.getEmailList(param);

        model.addAttribute("eMailItemVOList",eMailItemVOList);

        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "h_comm/email_list";
    }


    //시스템 코드 관리
    @RequestMapping(value = "/h24_sent_email_list",method = RequestMethod.POST)
    public String h24_sent_email_list(@RequestBody(required = false) ParamPageListFilteredVO param,
                                      Model model) throws MessagingException, IOException {



        return "sent_email";
    }

    //회원 관리
    @RequestMapping(value = "/user_mng",method = RequestMethod.POST)
    public String user_mng(@RequestBody ParamPageListFilteredVO param,
                               Model model,
                               @CookieValue(name = "access_token",required = false) String access_token){

        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();


        int total_count = userService.getUserFilteredEachCount(param);
        List<UserVO> userVOList = userService.getUserFilteredList(param);

        model.addAttribute("userVOList",userVOList);

        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "i_human/user_mng";
    }

    @RequestMapping(value = "/user_index",method = RequestMethod.POST)
    public String user_index(@RequestBody ParamPageListFilteredVO param,
                             Model model,
                             @CookieValue(name = "access_token",required = false) String access_token){

        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        boolean maxBool = false;
        List<UserVO> userVOList = userService.selectUserbyPage(param.getFilter1(), param.getCur_page());
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
    public String i12_dormant_user_mng(@RequestBody(required = false) ParamPageListFilteredVO param,
                                       Model model,
                                       @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        return "/i_human/i12_dormant_user_mng";
    }

    @RequestMapping(value = "/dormant_user_index",method = RequestMethod.POST)
    public String dormant_user_index(@RequestBody ParamPageListFilteredVO param,
                                     Model model,
                                     @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        boolean maxBool = false;
        List<UserVO> userVOList = userService.selectDormantUserbyPage(param.getFilter1(), param.getCur_page());
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
    @RequestMapping(value = "/admin_mng" ,method = RequestMethod.POST)
    public String admin_mng(@RequestBody ParamPageListFilteredVO param,
                                Model model,
                                @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();


        ArrayList<CorpInfoVO> resultArray;
        resultArray = corpService.selectCorpInfo();


        List<AdminVO> adminVOList = adminService.getAdminPagingList(param);

        int total_count = adminService.getAdminFilteredEachCount(param);
        model.addAttribute("adminVOList", adminVOList);
        model.addAttribute("corps", resultArray);

        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);


        return "i_human/admin_mng";
    }

    @RequestMapping(value = "/admin_corporate" ,method = RequestMethod.POST)
    public String admin_corporate(@RequestBody ParamPageListFilteredVO param,
                                  Model model,
                                  @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        ArrayList<CorpInfoVO> resultArray;
        resultArray = corpService.selectCorpInfo();

        int pageBool = 4;
        List<AdminResVO> adminVOList = adminService.selectAdminbyIdx(param.getCur_page() != 0 ? param.getCur_page() + "" : "1", param.getCorp());
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

    //시스템 코드 관리
    @RequestMapping(value = "/admin_auth",method = RequestMethod.POST)
    public String admin_auth(@RequestBody(required = false) ParamPageListFilteredVO param,
                                           Model model,
                                           @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }


        return "k_system/admin_auth";
    }

    //시스템 코드 관리
    @RequestMapping(value = "/console_auth",method = RequestMethod.POST)
    public String console_auth(@RequestBody(required = false) ParamPageListFilteredVO param,
                                           Model model,
                                           @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }


        return "k_system/console_auth";
    }

    //시스템 코드 관리
    @RequestMapping(value = "/k21_admin_dashboad_mng",method = RequestMethod.POST)
    public String k21_admin_dashboad_mng(@RequestBody(required = false) ParamPageListFilteredVO param,
                                         Model model,
                                         @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }


        return "/k_system/k21_admin_dashboad_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/k31_console_dashboad_mng",method = RequestMethod.POST)
    public String k31_console_dashboad_mng(@RequestBody(required = false) ParamPageListFilteredVO param,
                                           Model model,
                                           @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }


        return "/k_system/k31_console_dashboad_mng";
    }

    //모니터링
    @RequestMapping(value = "/monitoring",method = RequestMethod.POST)
    public String monitoring(@RequestBody(required = false) ParamPageListFilteredVO param,
                                           Model model,
                                           @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }


        return "k_system/monitoring";
    }

    //서식 관리
    @RequestMapping(value = "/form_mng",method = RequestMethod.POST)
    public String form_mng(@RequestBody ParamPageListFilteredVO param,
                                        Model model,
                                        @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        int total_count = formFileService.getFormFileCount();

        List<FormFileInfoVO> formFileList = formFileService.getFormFileList(param);
        model.addAttribute("formfilelist",formFileList);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "m_resource/form_mng";
    }
    @RequestMapping(value = "/rule_mng",method = RequestMethod.POST)
    public String rule_mng(@RequestBody ParamPageListFilteredVO param,
                                        Model model,
                                        @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }
        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        int total_count = ruleFileService.getRuleFileCount();

        List<FormFileInfoVO> ruleFileList = ruleFileService.getRuleFileList(param);
        model.addAttribute("rulefilelist",ruleFileList);

        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "m_resource/rule_mng";
    }
    //시스템 코드 관리
    @RequestMapping(value = "/code_mng",method = RequestMethod.POST)
    public String code_mng(@RequestBody ParamPageListFilteredVO param,
                               Model model,
                               @CookieValue(name = "access_token",required = false) String access_token){
        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                return "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            return "redirect:/login";
        }

        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        param.setOrder_field("REG_DATE");

        int total_count = systemService.getSystemTotalCount();

        List<SystemCodeVO> systemCodeList = systemService.getSystemCodeList(param);
        model.addAttribute("systemCodeList",systemCodeList);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "m_resource/code_mng";
    }


    private void setProfile(Model model) {
        String[] activeProfiles = env.getActiveProfiles();
        if (activeProfiles.length != 0) {
            String activeProfile = activeProfiles[0];

            if (activeProfile.equals("local")) {
                model.addAttribute("profile", "gimje-prod");
            } else {
                model.addAttribute("profile", activeProfile);
            }
            model.addAttribute("login_from", activeProfile);
        }
    }

    /*
    total_count: item 총 갯수
    list_amount: 한 페이지의 갯수
    page_amount: 섹터당 페이지 갯수
    cur_page: 현재 페이지 번호
    */

    private void makePagedItem(Model model,int total_count,int list_amount,int page_amount,int cur_page){

        int tot_page = (total_count/list_amount)+1;
        if(total_count%list_amount==0) tot_page-=1;

        int tot_sector = tot_page/page_amount+1;
        if(tot_page%page_amount==0) tot_sector-=1;

        int cur_sector = cur_page/page_amount+1;
        if(cur_page%page_amount==0) cur_sector-=1;

        boolean is_past = false;
        boolean is_prev = false;
        boolean is_next = false;
        boolean is_last = false;
        boolean is_active = false;

        if(cur_page!=tot_page && tot_page>1) is_next = true;

        if(cur_page!=1 && tot_page>1) is_prev = true;

        if(cur_sector!=tot_sector && tot_sector>1 ) is_last = true;

        if(cur_sector!=1 && tot_sector>1 ) is_past = true;

        int remain_page = page_amount;

        if(cur_sector*page_amount>tot_page)
            remain_page =tot_page%page_amount;

        if(tot_page<=page_amount){
            is_past = false;
            is_last = false;
            //page_amount = tot_page;
        }

        model.addAttribute("total_count",total_count);
        model.addAttribute("list_amount",list_amount);
        model.addAttribute("cur_page",cur_page);
        model.addAttribute("page_amount",page_amount);
        model.addAttribute("tot_page",tot_page);
        model.addAttribute("tot_sector",tot_sector);
        model.addAttribute("cur_sector",cur_sector);
        model.addAttribute("is_past",is_past);
        model.addAttribute("is_prev",is_prev);
        model.addAttribute("is_next",is_next);
        model.addAttribute("is_last",is_last);
        model.addAttribute("list_amount",list_amount);
        model.addAttribute("remain_page",remain_page);

    }

}
