package kr.or.fact.console.controller;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.service.*;
import kr.or.fact.core.util.CONSTANT;
import org.apache.commons.lang3.time.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
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

    @Resource(name = "consoleNoticeService")
    ConsoleNoticeService consoleNoticeService;

    @Resource(name = "farmSectorService")
    FarmSectorService farmSectorService;

    @Autowired
    Environment env;

    @RequestMapping(value = "/*",method = RequestMethod.GET)
    public String rootContents(HttpServletRequest req,
                               Model model,
                               @CookieValue(name = "console_token",required = false) String console_token){
        String _path = req.getRequestURI();

        String _uri = "index";

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




  /*      if(access_token!=null){
            
            AdminVO adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                _uri = "redirect:/login";
            }
            model.addAttribute("admin", adminVO);
            setProfile(model);
        }else{
            
            _uri = "redirect:/login";
            
        }*/
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

            model.addAttribute("consoleUser", findConsoleUserVO);
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

            model.addAttribute("consoleUser", findConsoleUserVO);
        }
        String _srv = "";
        String[] activeProfiles = env.getActiveProfiles();
        if (activeProfiles.length != 0) {
            String activeProfile = activeProfiles[0];
            if (activeProfile.equals("local")) {
                model.addAttribute("pageOnLoad", 1);

                //model.addAttribute("path", _path);
                setProfile(model,_path);
            }
        }
        return _uri;
    }
    
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
                         Model model,
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
                       Model model,
                       @CookieValue(name = "console_token",required = false) String console_token){


        String _path = req.getRequestURI();
        //setProfile(model,req.getRequestURI());



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

                model.addAttribute("consoleUser", findConsoleUserVO);
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

                model.addAttribute("consoleUser", findConsoleUserVO);
            }
        }
        else {
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

        //
/*        String _path = req.getRequestURI();
        model.addAttribute("path", _path);*/
        setProfile(model,req.getRequestURI());
        return "login";
    }

    //대시보드
    @PostMapping(value = "/dashboard")
    public String dashboard(HttpServletRequest req,
                            Model model,
                            @CookieValue(name = "console_token",required = false) String console_token) throws ParseException {

        //setProfile(model,req.getRequestURI());

/*        if(console_token!=null){
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
        */
        ParamPageListFilteredVO param = new ParamPageListFilteredVO();
        param.setCur_page(1);
        param.setList_amount(22);
        param.setFilter2(9999);
        param.setOrder_field("GUYOK");

        List<UserDemoFarmSectorVO> userDemoFarmSectorVOList = farmSectorService.getActiveFarmSectorList(param);
        int total_count = userDemoFarmSectorVOList.size();
        model.addAttribute("userDemoFarmSectorVOList", userDemoFarmSectorVOList);

        List<FarmVO> curFarmVOList = envDataService.getGuyokData();
        model.addAttribute("curFarmVOList", curFarmVOList);

        List<List<FarmVO>> lisfOfFarmListVO = new ArrayList<>();

        ParamEnvQueryVO paramEnv = new ParamEnvQueryVO();



        Calendar cal = Calendar.getInstance();
        cal.set(2023,1,23,17,2,0);
        //Date to_date = new Date();
        Date to_date = cal.getTime();
        paramEnv.setTo_date(to_date);

        cal.add(Calendar.HOUR, -1);
        Date from_date = cal.getTime();
        paramEnv.setFrom_date(from_date);

        for(int i=1;i<curFarmVOList.size()+1;i++){
            FarmVO findVO = curFarmVOList.get(i-1);
            paramEnv.setGuyok((int)findVO.getGuyok());
            List<FarmVO> farmVOS =  envDataService.getGuyokAVGDataEachTenMin(paramEnv);
            lisfOfFarmListVO.add(farmVOS);
        }
        model.addAttribute("lisfOfFarmListVO", lisfOfFarmListVO);



        
/*        RangeVO rangeVO = new RangeVO();
        rangeVO.setStart(1);
        rangeVO.setAmount(200);
        List<ExternalEnvVO> externalEnvVOs = envDataService.getExternalEnvData(rangeVO);;
        List<RootZoneEnvVO> rootZoneEnvVOs = envDataService.getRootZoneEnvData(rangeVO);*/





        //model.addAttribute("internalEnvVOs_L", internalEnvVOs_List);


        //model.addAttribute("exEnvs", externalEnvVOs);
        //model.addAttribute("rootEnvs", rootZoneEnvVOs);
        //model.addAttribute("inEnvs", internalEnvVOs);



        return "a_dashboard/dashboard";
    }

    //공지사항
    @RequestMapping(value = "/notice",method = RequestMethod.POST)
    public String notice(@RequestBody ParamPageListFilteredVO param,
                         HttpServletRequest req,
                         Model model,
                         @CookieValue(name = "console_token",required = false) String console_token){
        if(console_token==null){
            return "redirect:/login";
        }

        //setProfile(model,req.getRequestURI());


/*        if(console_token!=null){
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
        }*/

        if(param.getList_amount()==0) param.setList_amount(10);
        int list_amount = 10;
        int page_amount = 10;
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        int total_count = consoleNoticeService.getConsoleNoticeFilteredCount(param);

        param.setOrder_field("IDX_CONSOLE_NOTICE");
        List<ConsoleNoticeVO> noticeList = consoleNoticeService.getConsoleNoticeFilteredList(param);
        model.addAttribute("noticeList",noticeList);
        model.addAttribute("filter1", param.getFilter1());
        model.addAttribute("filter2", param.getFilter2());

        makePagedItem(model,total_count,list_amount,page_amount,cur_page);

        return "b_demobs/notice";
    }


    @RequestMapping(value = "/corp_cur",method = RequestMethod.POST)
    public String corp_cur(@RequestBody ParamPageListFilteredVO param,
                                    HttpServletRequest req,
                                    Model model,
                                    @CookieValue(name = "console_token",required = false) String console_token){
        if(console_token==null){
            return "redirect:/login";
        }

        int list_amount = 21;
        int page_amount = 10;

        if(param.getList_amount()==0) param.setList_amount(list_amount);
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        //int total_count = farmSectorService.getEachFarmSectorFilteredCount(param);

        List<UserDemoFarmSectorVO> userDemoFarmSectorVOList = farmSectorService.getActiveFarmSectorList(param);
        int total_count = userDemoFarmSectorVOList.size();

        model.addAttribute("userDemoFarmSectorVOList",userDemoFarmSectorVOList);

        makePagedItem(model, total_count, list_amount, page_amount, cur_page);

        return "b_demobs/corp_cur";
    }

    @RequestMapping(value = "/corp_list",method = RequestMethod.POST)
    public String corp_list(@RequestBody ParamPageListFilteredVO param,
                                    HttpServletRequest req,
                                    Model model,
                                    @CookieValue(name = "console_token",required = false) String console_token){
        if(console_token==null){
            return "redirect:/login";
        }
        int list_amount = 10;
        int page_amount = 10;

        if(param.getList_amount()==0) param.setList_amount(list_amount);
        if(param.getCur_page()==0) param.setCur_page(1);
        int cur_page = param.getCur_page();

        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();


        int total_count = farmSectorService.getEachFarmSectorFilteredCount(param);

        List<FarmSectorVO> farmSectorVOList = farmSectorService.getFarmSectorFilteredList(param);



        model.addAttribute("farmSectorVOList",farmSectorVOList);

        makePagedItem(model, total_count, list_amount, page_amount, cur_page);

        return "b_demobs/corp_list";
    }


    //실증사업 현황
    @RequestMapping(value = "/demobs",method = RequestMethod.POST)
    public String demobs(@RequestBody ParamPageListFilteredVO param,
                         HttpServletRequest req,
                         Model model,
                         @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

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

                int total_count = filtered_item_total;
        model.addAttribute("adminDemoBsFilter", demoBSFilteredCountVO);

        param.setOrder_field("IDX_DEMO_BUSINESS");

        List<DemoBusinessVO> demoBusinessVOList = demoBsService.getDemoBsPagingList(param);
        for(int i = 0; i < demoBusinessVOList.size(); i++){
            if(demoBusinessVOList.get(i).getDemo_bs_contents() != null){
                demoBusinessVOList.get(i).setDemo_bs_contents(demoBusinessVOList.get(i).getDemo_bs_contents().replaceAll("(\t)", "  ").replaceAll("(\r\n|\r|\n|\n\r)", "<br/>"));
                //System.out.println(demoBusinessVOList.get(i).getDemo_bs_contents());
            }
        }
        model.addAttribute("demoBusinessVOList",demoBusinessVOList);

        makePagedItem(model, total_count, list_amount, page_amount, cur_page);
        /*

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

*/
        return "b_deomobs/demobs1";
    }

    //온실 전체 현황
    @RequestMapping(value = "/gh_total_monitor",method = RequestMethod.POST)
    public String gh_total_monitor(
                                   HttpServletRequest req,
                                   Model model,
                                   @CookieValue(name = "console_token",required = false) String console_token) throws ParseException {

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        ParamPageListFilteredVO param = new ParamPageListFilteredVO();
        param.setCur_page(1);
        param.setList_amount(22);
        param.setFilter2(9999);
        param.setOrder_field("GUYOK");

        List<FarmSectorVO> farmSectorVOList = farmSectorService.getAllFarmSectorList();

        int total_count = farmSectorVOList.size();

        model.addAttribute("userDemoFarmSectorVOList", farmSectorVOList);

        List<FarmVO> curFarmVOList = envDataService.getGuyokData();
        model.addAttribute("curFarmVOList", curFarmVOList);

        List<List<FarmVO>> lisfOfFarmListVO = new ArrayList<>();
        ParamEnvQueryVO paramEnv = new ParamEnvQueryVO();



        Calendar cal = Calendar.getInstance();
        cal.set(2023,1,23,17,2,0);
        //Date to_date = new Date();
        Date to_date = cal.getTime();
        paramEnv.setTo_date(to_date);

        cal.add(Calendar.HOUR, -1);
        Date from_date = cal.getTime();
        paramEnv.setFrom_date(from_date);

        for(int i=1;i<curFarmVOList.size()+1;i++){
            FarmVO findVO = curFarmVOList.get(i-1);
            paramEnv.setGuyok((int)findVO.getGuyok());
            List<FarmVO> farmVOS =  envDataService.getGuyokAVGDataEachTenMin(paramEnv);
            lisfOfFarmListVO.add(farmVOS);
        }
        model.addAttribute("lisfOfFarmListVO", lisfOfFarmListVO);


        return "c_center/gh_total_monitor";
    }

    //유리온실 현황
    @RequestMapping(value = "/gh_glass",method = RequestMethod.POST)
    public String gh_glass(@RequestBody ParamPageListFilteredVO param,
                           HttpServletRequest req,
                           Model model,
                           @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
      /*  if(console_token!=null){
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
        }*/

        return "c_center/gh_glass";
    }

    //비닐온실 현황
    @RequestMapping(value = "/gh_vinyl",method = RequestMethod.POST)
    public String gh_vinyl(@RequestBody ParamPageListFilteredVO param,
                           HttpServletRequest req,
                           Model model,
                           @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

        return "c_center/gh_vinyl";
    }

    //단동온실 현황
    @RequestMapping(value = "/gh_silgle",method = RequestMethod.POST)
    public String b23_gh_silgle(@RequestBody ParamPageListFilteredVO param,
                                HttpServletRequest req,
                                Model model,
                                @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
*/
        return "c_center/gh_silgle";
    }

    //복합온실 현황
    @RequestMapping(value = "/gh_complex",method = RequestMethod.POST)
    public String gh_complex(@RequestBody ParamPageListFilteredVO param,
                             HttpServletRequest req,
                             Model model,
                             @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
       /* if(console_token!=null){
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
        }*/

        return "c_center/gh_complex";
    }

    //실증성적서
    @RequestMapping(value = "/b30_gh_sensor",method = RequestMethod.POST)
    public String b30_gh_sensor(@RequestBody ParamPageListFilteredVO param,
                                HttpServletRequest req,
                                Model model,
                                @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

        return "c_center/gh_sensor";
    }

    //센서별 현황
    @RequestMapping(value = "/gh_sensor",method = RequestMethod.POST)
    public String gh_sensor(@RequestBody ParamPageListFilteredVO param,
                            HttpServletRequest req,
                            Model model,
                            @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
/*
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
        }*/

        return "c_center/gh_sensor";
    }

    //실증장비 현황
    @RequestMapping(value = "/facility_monitor",method = RequestMethod.POST)
    public String facility_monitor(@RequestBody ParamPageListFilteredVO param,
                                   HttpServletRequest req,
                                   Model model,
                                   @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

        return "c_center/facility_monitor";
    }

    //실증장비 사용이력
    @RequestMapping(value = "/facility_history",method = RequestMethod.POST)
    public String facility_history(@RequestBody ParamPageListFilteredVO param,
                                   HttpServletRequest req,
                                   Model model,
                                   @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

        return "c_center/facility_history";
    }


    //장애 이벤트
    @RequestMapping(value = "/event_alert",method = RequestMethod.POST)
    public String event_alert(@RequestBody ParamPageListFilteredVO param,
                              HttpServletRequest req,
                              Model model,
                              @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }

        /*if(console_token!=null){
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
        }*/

        return "d_event/event_alert";
    }

    //시설 및 장비 이벤트
    @RequestMapping(value = "/event_facility",method = RequestMethod.POST)
    public String event_facility(@RequestBody ParamPageListFilteredVO param,
                                 HttpServletRequest req,
                                 Model model,
                                 @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());

        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

        return "d_event/event_facility";
    }
    //운영 이벤트
    @RequestMapping(value = "/event_bs",method = RequestMethod.POST)
    public String event_bs(@RequestBody ParamPageListFilteredVO param,
                           HttpServletRequest req,
                           Model model,
                           @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

        return "d_event/event_bs";
    }

    //온실 생성 데이터
    @RequestMapping(value = "/gh_data",method = RequestMethod.POST)
    public String d11_gh_data(@RequestBody ParamPageListFilteredVO param,
                              HttpServletRequest req,
                              Model model,
                              @CookieValue(name = "console_token",required = false) String console_token) throws ParseException {

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
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

        return "e_data/gh_data";
    }

    //장비 생성 데이터
    @RequestMapping(value = "/facility_data",method = RequestMethod.POST)
    public String facility_data(@RequestBody ParamPageListFilteredVO param,
                                HttpServletRequest req,
                                Model model,
                                @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

        return "e_data/facility_data";
    }

    //위탁사업 데이터
    @RequestMapping(value = "/consign_data",method = RequestMethod.POST)
    public String consign_data(@RequestBody ParamPageListFilteredVO param,
                               HttpServletRequest req,
                               Model model,
                               @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
*/
        return "e_data/consign_data";
    }

    //자율사업 데이터
    @RequestMapping(value = "/self_data",method = RequestMethod.POST)
    public String self_data(@RequestBody ParamPageListFilteredVO param,
                            HttpServletRequest req,
                            Model model,
                            @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

        return "e_data/self_data";
    }

    //전송 기록
    @RequestMapping(value = "/big_data_log",method = RequestMethod.POST)
    public String d31_big_data_log(@RequestBody ParamPageListFilteredVO param,
                                   HttpServletRequest req,
                                   Model model,
                                   @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
       /* if(console_token!=null){
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
        }*/

        return "e_data/big_data_log";
    }

    //빅데이터센터 데이터 관리
    @RequestMapping(value = "/big_data",method = RequestMethod.POST)
    public String d32_big_data(@RequestBody ParamPageListFilteredVO param,
                                      HttpServletRequest req,
                                      Model model,
                                      @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

        return "e_data/big_data";
    }

    //자산 현황
    @RequestMapping(value = "/cur_asset_mng",method = RequestMethod.POST)
    public String e10_cur_asset_mng(@RequestBody ParamPageListFilteredVO param,
                                    HttpServletRequest req,
                                    Model model,
                                    @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
/*
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
        }*/

        return "f_assets/cur_asset_mng";
    }



    //자원예약 관리
    @RequestMapping(value = "/asset_book_mng",method = RequestMethod.POST)
    public String asset_book_mng(@RequestBody ParamPageListFilteredVO param,
                                 HttpServletRequest req,
                                 Model model,
                                 @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
       /* if(console_token!=null){
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
*/
        return "f_assets/asset_book_mng";
    }

    //자원 예약
    @RequestMapping(value = "/asset_booking",method = RequestMethod.POST)
    public String asset_booking(@RequestBody ParamPageListFilteredVO param,
                                HttpServletRequest req,
                                Model model,
                                @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

        return "f_assets/asset_booking";
    }
    @RequestMapping(value = "/cur_asset_index",method = RequestMethod.POST)
    public String cur_asset_index(@RequestParam(value = "tag", required = false) String tagValue,
                                  @RequestBody ParamPageListFilteredVO param,
                                  HttpServletRequest req,
                                  Model model,
                                  @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

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



        return "f_assets/cur_asset_index";
    }
    //일정 관리
    @RequestMapping(value = "/schedule_mng",method = RequestMethod.POST)
    public String f10_schedule_mng(@RequestBody ParamPageListFilteredVO param,
                                   HttpServletRequest req,
                                   Model model,
                                   @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

        return "g_schedule/schedule_mng";
    }

    //SMS 작성
    @RequestMapping(value = "/write_sms",method = RequestMethod.POST)
    public String g10_write_sms(@RequestBody ParamPageListFilteredVO param,
                                HttpServletRequest req,
                                Model model,
                                @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
       /* if(console_token!=null){
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
        }*/

        return "h_comm/write_sms";
    }

    //자동 SMS 관리
    @RequestMapping(value = "/auto_sms_mng",method = RequestMethod.POST)
    public String g20_auto_sms_mng(@RequestBody ParamPageListFilteredVO param,
                                   HttpServletRequest req,
                                   Model model,
                                   @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

        return "h_comm/auto_sms_mng";
    }

    //예약된 SMS
    @RequestMapping(value = "/reserved_sms_list_",method = RequestMethod.POST)
    public String reserved_sms_list_(@RequestBody ParamPageListFilteredVO param,
                                     HttpServletRequest req,
                                     Model model,
                                     @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
*/
        return "h_comm/reserved_sms_list";
    }

    //보낸 SMS
    @RequestMapping(value = "/system_mng",method = RequestMethod.POST)
    public String system_mng(@RequestBody ParamPageListFilteredVO param,
                             HttpServletRequest req,
                             Model model,
                             @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

        return "i_system/system_mng";
    }

    //보낸 SMS
    @RequestMapping(value = "/admin_mng",method = RequestMethod.POST)
    public String admin_mng(@RequestBody ParamPageListFilteredVO param,
                            HttpServletRequest req,
                            Model model,
                            @CookieValue(name = "console_token",required = false) String console_token){

        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

        return "i_system/admin_mng";
    }


    @RequestMapping(value = "/admin_corporate" ,method = RequestMethod.POST)
    public String admin_corporate(@RequestParam(value = "cur_page", required = false) String tagValue,
                                  @RequestBody ParamPageListFilteredVO param,
                                  HttpServletRequest req,
                                  Model model,
                                  @CookieValue(name = "console_token",required = false) String console_token){
        //setProfile(model,req.getRequestURI());
        if(console_token==null){
            return "redirect:/login";
        }
        /*if(console_token!=null){
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
        }*/

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

        return "i_system/admin_index";
    }


    private void setProfile(Model model,String _path) {
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
        model.addAttribute("path", _path);
    }

    private void makePagedItem(Model model, int total_count, int list_amount, int page_amount, int cur_page){

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
