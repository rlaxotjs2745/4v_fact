package kr.or.fact.console.controller;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.service.*;
import kr.or.fact.core.util.CONSTANT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class ConsoleIndexController {

    @Resource(name = "authService")
    AuthService authService;

    @Resource(name = "consoleService")
    ConsoleService consoleService;

    @Resource(name = "demoBsService")
    DemoBsService demoBsService;

    @Resource(name = "adminService")
    AdminService adminService;

    @Resource(name = "userService")
    UserService userService;

    @Resource(name = "consoleSessionService")
    ConsoleSessionService consoleSessionService;

    @Resource(name = "corpService")
    CorpService corpService;

    @Resource(name = "assetService")
    AssetService assetService;

    @Resource(name = "systemService")
    SystemService systemService;

    @Resource(name = "envDataService")
    EnvDataService envDataService;


    @Autowired
    Environment env;

    public ConsoleSessionVO getVerityAuth(String console_token){
        //UserVO userVO = null;

        //1. access_token 찾기
        ConsoleSessionVO consoleSessionVO = consoleSessionService.getConsoleSessionInfoByToken(console_token);
        if(consoleSessionVO!=null)
        {
            //2.access_token expire 검토
            SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");

            Date cur = new Date();
            String today = format.format(cur);
            String expire = format.format(consoleSessionVO.getConsole_expire_date());
            int compare = expire.compareTo(today);
            if(compare<0){//오늘보다 크면
                consoleSessionService.deleteConsoleSessionInfo(consoleSessionVO);
                consoleSessionVO.setIs_valid(0);
            }
        }
        return consoleSessionVO;
    }
    @GetMapping("/logout")
    public String logout(HttpServletRequest req,
                         ModelMap model,
                         @CookieValue(name = "console_token",required = false) String console_token){
        if(console_token!=null){
            //AdminVO adminVO = getVerityAuth(access_token);
            ConsoleSessionVO consoleSessionVO = consoleSessionService.getConsoleSessionInfoByToken(console_token);
            consoleSessionService.deleteConsoleSessionInfo(consoleSessionVO);
        }
        return "redirect:/login";
    }
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String root(HttpServletRequest req,
                       ModelMap model,
                       @CookieValue(name = "console_token",required = false) String console_token){
        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            //콘솔유저 생성, 일반 유저이면 일반 유저 정보로, 어드민이면 어드민 정보로


            if(consoleSessionVO.getIs_admin()==1){

                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());

                ConsoleUserVO findConsoleUserVO = consoleService.getConsoleUserByAdminIdx(consoleSessionVO.getIdx_admin());

                findConsoleUserVO.setUser_id(adminVO.getAdmin_id());
                findConsoleUserVO.setUser_name(adminVO.getAdmin_name());
                findConsoleUserVO.setMphone_num(adminVO.getMphone_num());
                findConsoleUserVO.setCorporate_name(adminVO.getCorporate_name());
                findConsoleUserVO.setJob_title(adminVO.getJob_title());
                findConsoleUserVO.setTel_num(adminVO.getTel_num());
                findConsoleUserVO.setAuth_status(adminVO.getAuth_status());

                findConsoleUserVO.setConsole_token(console_token);

                model.addAttribute("user", findConsoleUserVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                ConsoleUserVO findConsoleUserVO = consoleService.getConsoleUserByUserIdx(consoleSessionVO.getIdx_user());

                findConsoleUserVO.setUser_id(userVO.getUser_id());
                findConsoleUserVO.setUser_name(userVO.getUser_name());
                findConsoleUserVO.setMphone_num(userVO.getMphone_num());

                CorpInfoVO corpVO = corpService.getCorpInfo(userVO.getIdx_corp_info());
                if (corpVO != null) {
                    findConsoleUserVO.setCorporate_name(corpVO.getCorp_name_kor());
                } else {
                    findConsoleUserVO.setCorporate_name("회사등록필요");
                }
                findConsoleUserVO.setJob_title("콘솔 관리자");
                findConsoleUserVO.setTel_num(corpVO.getTel_num());
                findConsoleUserVO.setAuth_status(1);

                findConsoleUserVO.setConsole_token(console_token);

                model.addAttribute("user", findConsoleUserVO);
            }
        }
        else {
            return "redirect:/login";
        }



        return "index";
    }

    @RequestMapping(value="/login",method = RequestMethod.GET)
    public String login( HttpServletRequest req,
                         ModelMap model,
                         @RequestBody(required = false) ParamVO paramVO){

        setProfile(model);
        String _path = req.getRequestURI();
        model.addAttribute("path", _path);

        return "login";
    }

    //대시보드
    @PostMapping(value = "/dashboard")
    public String dashboard(HttpServletRequest req,
                            ModelMap model,
                            @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }
        RangeVO rangeVO = new RangeVO();
        rangeVO.setStart(1);
        rangeVO.setAmount(200);
        List<ExternalEnvVO> externalEnvVOs = envDataService.getExternalEnvData(rangeVO);;
        List<RootZoneEnvVO> rootZoneEnvVOs = envDataService.getRootZoneEnvData(rangeVO);



        List<InternalEnvVO> internalEnvVOs = envDataService.getInternalEnvData(rangeVO);

        List<InternalEnvVO> internalEnvVOs_1 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_2 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_3 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_4 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_5 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_6 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_7 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_8 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_9 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_10 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_11 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_12 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_13 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_14 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_15 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_16 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_17 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_18 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_19 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_20 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_21 = new ArrayList<InternalEnvVO>();
        List<InternalEnvVO> internalEnvVOs_22 = new ArrayList<InternalEnvVO>();


        for(int i=0;i<22;i++){

            switch (internalEnvVOs.get(i).getGuyok()){
                case 0: internalEnvVOs_1.add(internalEnvVOs.get(i)); break;
                case 1: internalEnvVOs_2.add(internalEnvVOs.get(i)); break;
                case 2: internalEnvVOs_3.add(internalEnvVOs.get(i)); break;
                case 3: internalEnvVOs_4.add(internalEnvVOs.get(i)); break;
                case 4: internalEnvVOs_5.add(internalEnvVOs.get(i)); break;
                case 5: internalEnvVOs_6.add(internalEnvVOs.get(i)); break;
                case 6: internalEnvVOs_7.add(internalEnvVOs.get(i)); break;
                case 7: internalEnvVOs_8.add(internalEnvVOs.get(i)); break;
                case 8: internalEnvVOs_9.add(internalEnvVOs.get(i)); break;
                case 9: internalEnvVOs_10.add(internalEnvVOs.get(i)); break;
                case 10: internalEnvVOs_11.add(internalEnvVOs.get(i)); break;
                case 11: internalEnvVOs_12.add(internalEnvVOs.get(i)); break;
                case 12: internalEnvVOs_13.add(internalEnvVOs.get(i)); break;
                case 13: internalEnvVOs_14.add(internalEnvVOs.get(i)); break;
                case 14: internalEnvVOs_15.add(internalEnvVOs.get(i)); break;
                case 15: internalEnvVOs_16.add(internalEnvVOs.get(i)); break;
                case 16: internalEnvVOs_17.add(internalEnvVOs.get(i)); break;
                case 17: internalEnvVOs_18.add(internalEnvVOs.get(i)); break;
                case 18: internalEnvVOs_19.add(internalEnvVOs.get(i)); break;
                case 19: internalEnvVOs_20.add(internalEnvVOs.get(i)); break;
                case 20: internalEnvVOs_21.add(internalEnvVOs.get(i)); break;
                case 21: internalEnvVOs_22.add(internalEnvVOs.get(i)); break;
            }
        }
        List<List<InternalEnvVO>> internalEnvVOs_List = new ArrayList<List<InternalEnvVO>>();
        internalEnvVOs_List.add(internalEnvVOs_1);
        internalEnvVOs_List.add(internalEnvVOs_2);
        internalEnvVOs_List.add(internalEnvVOs_3);
        internalEnvVOs_List.add(internalEnvVOs_4);
        internalEnvVOs_List.add(internalEnvVOs_5);
        internalEnvVOs_List.add(internalEnvVOs_6);
        internalEnvVOs_List.add(internalEnvVOs_7);
        internalEnvVOs_List.add(internalEnvVOs_8);
        internalEnvVOs_List.add(internalEnvVOs_9);
        internalEnvVOs_List.add(internalEnvVOs_10);
        internalEnvVOs_List.add(internalEnvVOs_11);
        internalEnvVOs_List.add(internalEnvVOs_12);
        internalEnvVOs_List.add(internalEnvVOs_13);
        internalEnvVOs_List.add(internalEnvVOs_14);
        internalEnvVOs_List.add(internalEnvVOs_15);
        internalEnvVOs_List.add(internalEnvVOs_16);
        internalEnvVOs_List.add(internalEnvVOs_17);
        internalEnvVOs_List.add(internalEnvVOs_18);
        internalEnvVOs_List.add(internalEnvVOs_19);
        internalEnvVOs_List.add(internalEnvVOs_20);
        internalEnvVOs_List.add(internalEnvVOs_21);
        internalEnvVOs_List.add(internalEnvVOs_22);



        model.addAttribute("internalEnvVOs_L", internalEnvVOs_List);


        model.addAttribute("exEnvs", externalEnvVOs);
        model.addAttribute("rootEnvs", rootZoneEnvVOs);
        model.addAttribute("inEnvs", internalEnvVOs);



        return "a_dashboard/dashboard";
    }




    //공지사항
    @RequestMapping(value = "/notice",method = RequestMethod.POST)
    public String notice(@RequestBody ParamPageListFilteredVO param,
                         HttpServletRequest req,
                         ModelMap model,
                         @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "b_demobs_manage/notice";
    }


    @RequestMapping(value = "/bm_demo_corp_cur",method = RequestMethod.POST)
    public String bm_demo_corp_list(@RequestBody ParamPageListFilteredVO param,
                                    HttpServletRequest req,
                                    ModelMap model,
                                    @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "b_demobs_manage/bm_demo_corp_cur";
    }





    //실증사업 현황
    @RequestMapping(value = "/demobs",method = RequestMethod.POST)
    public String demobs(@RequestBody ParamPageListFilteredVO param,
                         HttpServletRequest req,
                         ModelMap model,
                         @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        if(param.getList_amount()==0) param.setList_amount(3);
        int list_amount = 3;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();



        DemoBSFilteredCountVO demoBSFilteredCountVO = demoBsService.getAdminDemoBsFilteredCount();  // 사업 상태별 카운트
        //리스트 총갯수를 이때 빼야 함
        int filtered_item_total = demoBSFilteredCountVO.getTot_count();

        if(param.getFilter1()==CONSTANT.DEMOBS_FILTER_APPL)
            filtered_item_total = demoBSFilteredCountVO.getAppl_count();
        else if(param.getFilter1()==CONSTANT.DEMOBS_FILTER_REVUIEW)
            filtered_item_total = demoBSFilteredCountVO.getReview_count();
        else if(param.getFilter1()==CONSTANT.DEMOBS_FILTER_AGREE)
            filtered_item_total = demoBSFilteredCountVO.getAgree_count();
        else if(param.getFilter1()==CONSTANT.DEMOBS_FILTER_DEMO)
            filtered_item_total = demoBSFilteredCountVO.getDemo_count();
        else if(param.getFilter1()==CONSTANT.DEMOBS_FILTER_RESULT)
            filtered_item_total = demoBSFilteredCountVO.getResult_count();

        model.addAttribute("total_count",filtered_item_total);
        model.addAttribute("adminDemoBsFilter", demoBSFilteredCountVO);

        param.setOrder_field("IDX_DEMO_BUSINESS");
/*        ListPagingParamVO listPagingParamVO = new ListPagingParamVO();
        listPagingParamVO.setCur_page(page);
        listPagingParamVO.setAmount(list_amount);
        listPagingParamVO.setFilter1(filter1);
        listPagingParamVO.setFilter2(filter2);
        listPagingParamVO.setOrder_field("IDX_DEMO_BUSINESS");*/


        List<DemoBusinessVO> demoBusinessVOList = demoBsService.getDemoBsPagingList(param);
        for(int i = 0; i < demoBusinessVOList.size(); i++){
            if(demoBusinessVOList.get(i).getDemo_bs_contents() != null){
                demoBusinessVOList.get(i).setDemo_bs_contents(demoBusinessVOList.get(i).getDemo_bs_contents().replaceAll("(\t)", "  ").replaceAll("(\r\n|\r|\n|\n\r)", "<br/>"));
                //System.out.println(demoBusinessVOList.get(i).getDemo_bs_contents());
            }
        }
        model.addAttribute("demoBusinessVOList",demoBusinessVOList);
//        model.addAttribute("admin_idx", );
        model.addAttribute("cur_page",cur_page);
        model.addAttribute("list_amount",list_amount);

        int tot_page = filtered_item_total/list_amount+1;
        if(filtered_item_total%list_amount==0) tot_page-=1;

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


        return "demobs1";
    }

    //온실 전체 현황
    @RequestMapping(value = "/gh_total_monitor",method = RequestMethod.POST)
    public String gh_total_monitor(@RequestBody ParamPageListFilteredVO param,
                                   HttpServletRequest req,
                                   ModelMap model,
                                   @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }


        return "c_center_manage/gh_total_monitor";
    }

    //유리온실 현황
    @RequestMapping(value = "/gh_glass",method = RequestMethod.POST)
    public String gh_glass(@RequestBody ParamPageListFilteredVO param,
                           HttpServletRequest req,
                           ModelMap model,
                           @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "c_center_manage/gh_glass";
    }

    //비닐온실 현황
    @RequestMapping(value = "/gh_vinyl",method = RequestMethod.POST)
    public String gh_vinyl(@RequestBody ParamPageListFilteredVO param,
                           HttpServletRequest req,
                           ModelMap model,
                           @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "c_center_manage/gh_vinyl";
    }

    //단동온실 현황
    @RequestMapping(value = "/gh_silgle",method = RequestMethod.POST)
    public String b23_gh_silgle(@RequestBody ParamPageListFilteredVO param,
                                HttpServletRequest req,
                                ModelMap model,
                                @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "c_center_manage/gh_silgle";
    }

    //복합온실 현황
    @RequestMapping(value = "/gh_complex",method = RequestMethod.POST)
    public String gh_complex(@RequestBody ParamPageListFilteredVO param,
                             HttpServletRequest req,
                             ModelMap model,
                             @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "c_center_manage/gh_complex";
    }

    //실증성적서
    @RequestMapping(value = "/b30_gh_sensor",method = RequestMethod.POST)
    public String b30_gh_sensor(@RequestBody ParamPageListFilteredVO param,
                                HttpServletRequest req,
                                ModelMap model,
                                @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "c_center_manage/gh_sensor";
    }

    //센서별 현황
    @RequestMapping(value = "/gh_sensor",method = RequestMethod.POST)
    public String gh_sensor(@RequestBody ParamPageListFilteredVO param,
                            HttpServletRequest req,
                            ModelMap model,
                            @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "c_center_manage/gh_sensor";
    }

    //실증장비 현황
    @RequestMapping(value = "/facility_monitor",method = RequestMethod.POST)
    public String facility_monitor(@RequestBody ParamPageListFilteredVO param,
                                   HttpServletRequest req,
                                   ModelMap model,
                                   @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "c_center_manage/facility_monitor";
    }

    //실증장비 사용이력
    @RequestMapping(value = "/facility_history",method = RequestMethod.POST)
    public String facility_history(@RequestBody ParamPageListFilteredVO param,
                                   HttpServletRequest req,
                                   ModelMap model,
                                   @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "c_center_manage/facility_history";
    }


    //장애 이벤트
    @RequestMapping(value = "/event_alert",method = RequestMethod.POST)
    public String event_alert(@RequestBody ParamPageListFilteredVO param,
                              HttpServletRequest req,
                              ModelMap model,
                              @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "d_event_manage/event_alert";
    }

    //시설 및 장비 이벤트
    @RequestMapping(value = "/event_facility",method = RequestMethod.POST)
    public String event_facility(@RequestBody ParamPageListFilteredVO param,
                                 HttpServletRequest req,
                                 ModelMap model,
                                 @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "d_event_manage/event_facility";
    }
    //운영 이벤트
    @RequestMapping(value = "/event_bs",method = RequestMethod.POST)
    public String event_bs(@RequestBody ParamPageListFilteredVO param,
                           HttpServletRequest req,
                           ModelMap model,
                           @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "d_event_manage/event_bs";
    }

    //온실 생성 데이터
    @RequestMapping(value = "/gh_data",method = RequestMethod.POST)
    public String d11_gh_data(@RequestBody ParamPageListFilteredVO param,
                              HttpServletRequest req,
                              ModelMap model,
                              @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "e_data_manage/gh_data";
    }

    //장비 생성 데이터
    @RequestMapping(value = "/facility_data",method = RequestMethod.POST)
    public String facility_data(@RequestBody ParamPageListFilteredVO param,
                                HttpServletRequest req,
                                ModelMap model,
                                @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "e_data_manage/facility_data";
    }

    //위탁사업 데이터
    @RequestMapping(value = "/consign_data",method = RequestMethod.POST)
    public String consign_data(@RequestBody ParamPageListFilteredVO param,
                               HttpServletRequest req,
                               ModelMap model,
                               @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "e_data_manage/consign_data";
    }

    //자율사업 데이터
    @RequestMapping(value = "/self_data",method = RequestMethod.POST)
    public String self_data(@RequestBody ParamPageListFilteredVO param,
                            HttpServletRequest req,
                            ModelMap model,
                            @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "e_data_manage/self_data";
    }

    //전송 기록
    @RequestMapping(value = "/big_data_log",method = RequestMethod.POST)
    public String d31_big_data_log(@RequestBody ParamPageListFilteredVO param,
                                   HttpServletRequest req,
                                   ModelMap model,
                                   @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "e_data_manage/big_data_log";
    }

    //빅데이터센터 데이터 관리
    @RequestMapping(value = "/big_data_manage",method = RequestMethod.POST)
    public String d32_big_data_manage(@RequestBody ParamPageListFilteredVO param,
                                      HttpServletRequest req,
                                      ModelMap model,
                                      @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "e_data_manage/big_data_manage";
    }

    //자산 현황
    @RequestMapping(value = "/cur_asset_mng",method = RequestMethod.POST)
    public String e10_cur_asset_mng(@RequestBody ParamPageListFilteredVO param,
                                    HttpServletRequest req,
                                    ModelMap model,
                                    @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "f_assets_manage/cur_asset_mng";
    }



    //자원예약 관리
    @RequestMapping(value = "/asset_book_mng",method = RequestMethod.POST)
    public String asset_book_mng(@RequestBody ParamPageListFilteredVO param,
                                 HttpServletRequest req,
                                 ModelMap model,
                                 @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "f_assets_manage/asset_book_mng";
    }

    //자원 예약
    @RequestMapping(value = "/asset_booking",method = RequestMethod.POST)
    public String asset_booking(@RequestBody ParamPageListFilteredVO param,
                                HttpServletRequest req,
                                ModelMap model,
                                @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "f_assets_manage/asset_booking";
    }
    @RequestMapping(value = "/cur_asset_index",method = RequestMethod.POST)
    public String cur_asset_index(@RequestParam(value = "tag", required = false) String tagValue,
                                  @RequestBody ParamPageListFilteredVO param,
                                  HttpServletRequest req,
                                  ModelMap model,
                                  @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        List<AssetVO> assetVOList = assetService.getAssetList(param);
        List<SystemCodeVO> systemCodeList = systemService.getAllSystemCodeList();

        model.addAttribute("assetList", assetVOList);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());
        model.addAttribute("filter3", param.getFilter3());
        model.addAttribute("cur_page", param.getCur_page());
        model.addAttribute("count", assetService.getCount(param));
        model.addAttribute("maxvalue", assetVOList.get(0).getMaxvalue());
        model.addAttribute("systemCodeList",systemCodeList);



        return "f_assets_manage/cur_asset_index";
    }
    //일정 관리
    @RequestMapping(value = "/schedule_mng",method = RequestMethod.POST)
    public String f10_schedule_mng(@RequestBody ParamPageListFilteredVO param,
                                   HttpServletRequest req,
                                   ModelMap model,
                                   @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "g_schedule_manage/schedule_mng";
    }

    //SMS 작성
    @RequestMapping(value = "/write_sms",method = RequestMethod.POST)
    public String g10_write_sms(@RequestBody ParamPageListFilteredVO param,
                                HttpServletRequest req,
                                ModelMap model,
                                @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "h_comm_manage/write_sms";
    }

    //자동 SMS 관리
    @RequestMapping(value = "/auto_sms_mng",method = RequestMethod.POST)
    public String g20_auto_sms_mng(@RequestBody ParamPageListFilteredVO param,
                                   HttpServletRequest req,
                                   ModelMap model,
                                   @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "h_comm_manage/auto_sms_mng";
    }

    //예약된 SMS
    @RequestMapping(value = "/reserved_sms_list_",method = RequestMethod.POST)
    public String reserved_sms_list_(@RequestBody ParamPageListFilteredVO param,
                                     HttpServletRequest req,
                                     ModelMap model,
                                     @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "h_comm_manage/reserved_sms_list";
    }

    //보낸 SMS
    @RequestMapping(value = "/system_mng",method = RequestMethod.POST)
    public String system_mng(@RequestBody ParamPageListFilteredVO param,
                             HttpServletRequest req,
                             ModelMap model,
                             @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "i_system_manage/system_mng";
    }

    //보낸 SMS
    @RequestMapping(value = "/admin_mng",method = RequestMethod.POST)
    public String admin_mng(@RequestBody ParamPageListFilteredVO param,
                            HttpServletRequest req,
                            ModelMap model,
                            @CookieValue(name = "console_token",required = false) String console_token){

        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
            return "redirect:/login";
        }

        return "i_system_manage/admin_mng";
    }


    @RequestMapping(value = "/admin_corporate" ,method = RequestMethod.POST)
    public String admin_corporate(@RequestParam(value = "cur_page", required = false) String tagValue,
                                  @RequestBody ParamPageListFilteredVO param,
                                  HttpServletRequest req,
                                  ModelMap model,
                                  @CookieValue(name = "console_token",required = false) String console_token){
        String _path = req.getRequestURI();
        setProfile(model);
        model.addAttribute("path", _path);

        if(console_token!=null){
            ConsoleSessionVO consoleSessionVO = getVerityAuth(console_token);
            if(consoleSessionVO==null || consoleSessionVO.getIs_valid()==0)
            {
                return "redirect:/login";
            }
            if(consoleSessionVO.getIs_admin()==1){
                AdminVO adminVO = adminService.getAdminInfo(consoleSessionVO.getIdx_admin());
                model.addAttribute("user", adminVO);
            }
            else {
                UserVO userVO = userService.getUserInfo(consoleSessionVO.getIdx_user());
                model.addAttribute("user", userVO);
            }
        }
        else {
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

        return "i_system_manage/admin_index";
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
            model.addAttribute("login_from", activeProfile);
        }
    }
}
