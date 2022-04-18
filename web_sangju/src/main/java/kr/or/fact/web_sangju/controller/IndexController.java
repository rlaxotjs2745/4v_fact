package kr.or.fact.web_sangju.controller;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.service.*;
import kr.or.fact.core.util.CONSTANT;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class IndexController {

    @Resource(name = "userService")
    UserService userService;

    @Resource(name = "corpService")
    CorpService corpService;

    @Resource(name = "bsAnnouncementService")
    BsAnnouncementService bsAnnouncementService;

    @Resource(name = "eventContentService")
    EventContentService eventContentService;

    @Resource(name = "noticeService")
    NoticeService noticeService;

    @Resource(name = "prContentService")
    PRContentService prContentService;

    @Resource(name = "consultingService")
    ConsultingService consultingService;

    @Resource(name = "qnaService")
    QnaService qnaService;

    @Resource(name = "visitService")
    VisitService visitService;

    @Resource(name = "userDemoBsService")
    UserDemoBsService userDemoBsService;

    @Resource(name = "demoBsService")
    DemoBsService demoBsService;

    @Resource(name = "homepageInfoService")
    HomepageInfoService homepageInfoService;

    @Resource(name = "coWorkerNService")
    CoWorkerNService coWorkerNService;


    @RequestMapping("/")
    public String home(Model model){

        //List<UserVO> userList = userService.selectList();
        //model.addAttribute("test_data",userList.get(0).getCreat_co());

        getHomepageInfo(model);
        return "index";
    }

    @RequestMapping("/index")
    public String index(HttpSession session
            ,Model model){

        getHomepageInfo(model);
        return "index";
    }

    @RequestMapping(value = "/api_post_login",method = RequestMethod.POST)
    public String api_post_login(HttpSession session,
                                 ModelMap model,
                                 @RequestParam(value="id") String user_id,
                                 @RequestParam(value="pw") String user_pw){

        /*UserVO userVO = new UserVO();
        userVO.setUser_id(id);
        userVO.setUser_pw(pw);*/

        if(user_id == null || user_pw == null){
            return "redirect:login";
        }
        //UserVO findUser = userService.getAuthUser(id,pw);
        //UserVO findUser = userService.getUserInfo(3);
        UserVO findUser = userService.login(user_id,user_pw);

        if(findUser!=null){
            model.addAttribute("userVo",findUser);
            session.setAttribute("loginCheck",true);
            session.setAttribute("userid",user_id);
            session.setAttribute("name",findUser.getUser_name());
            session.setAttribute("isCorpMember",findUser.getIs_corporate_member());
            if(findUser.getIs_corporate_member()==1 && findUser.getIdx_corp_info()!=0){
                CorpInfoVO corpVO = corpService.getCorpInfo(findUser.getIdx_corp_info());
                if(corpVO!=null){
                    session.setAttribute("corpName",corpVO.getCorp_name_kor());
                }
                else {
                    session.setAttribute("corpName","회사등록필요");
                }
            }

            session.setAttribute("isApplicant",findUser.getIs_applicant());
            return "redirect:/";
        }
        else {
            session.setAttribute("loginCheck",false);
        }

        return "redirect:login";
    }

    @RequestMapping("/app_step1")
    public String app_step1(HttpSession session
            ,Model model){
        if(session==null
                || session.getAttribute("loginCheck")==null
                ||(session.getAttribute("loginCheck")!=null&&(Boolean)session.getAttribute("loginCheck")==false)
                || (session.getAttribute("userid")==null)) {//로그인 필요

            clearSessionAndRedirect(session);
            return "index";
        }
        UserVO findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));
        if(findUser==null){
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            return "index";
        }
        model.addAttribute("user",findUser);

        List<DemoBusinessVO> demoBusinessVOs = demoBsService.getAvailibleDemoBs();
        model.addAttribute("demoBusinessVOs",demoBusinessVOs);

        getHomepageInfo(model);

        return "app_step1";
    }

    @RequestMapping("/app_step2")
    public String app_step2(HttpSession session
            ,@RequestParam(value="demobs") long demobs
            ,Model model){
        if(session==null
                || session.getAttribute("loginCheck")==null
                ||(session.getAttribute("loginCheck")!=null&&(Boolean)session.getAttribute("loginCheck")==false)
                || (session.getAttribute("userid")==null)) {//로그인 필요

            clearSessionAndRedirect(session);
            return "index";
        }
        UserVO findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));
        if(findUser==null){
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            return "index";
        }
        model.addAttribute("user",findUser);

        DemoBusinessVO demoBusinessVo = demoBsService.getDemoBsByIdx(demobs);

        if(demoBusinessVo==null){//해당 사업 없음, 에러페이지로 보내야 한다...

            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            return "index";
        }

        model.addAttribute("demoBs",demoBusinessVo);

        UserDemoBsCheckVO userDemoBsCheckVo = new UserDemoBsCheckVO();
        userDemoBsCheckVo.setIdx_user(findUser.getIdx_user());
        userDemoBsCheckVo.setIdx_demo_business(demoBusinessVo.getIdx_demo_business());

        UserDemoBsVO userDemoBsVo = userDemoBsService.getUserDemoBs(userDemoBsCheckVo);
        if(userDemoBsVo==null){//이전에 저장한게 없다, 에러페이지로 보내야 한다...

            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            return "index";
        }
        model.addAttribute("userDemoBs",userDemoBsVo);
        getHomepageInfo(model);
        return "app_step2";
    }

    @RequestMapping("/app_step3")
    public String app_step3(HttpSession session
            ,Model model){
        if(session==null
                || session.getAttribute("loginCheck")==null
                ||(session.getAttribute("loginCheck")!=null&&(Boolean)session.getAttribute("loginCheck")==false)
                || (session.getAttribute("userid")==null)) {//로그인 필요

            clearSessionAndRedirect(session);
            return "index";
        }
        UserVO findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));
        if(findUser==null){
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            return "index";
        }
        model.addAttribute("user",findUser);

        getHomepageInfo(model);
        return "app_step3";
    }

    @RequestMapping("/app_step4")
    public String app_step4(HttpSession session
            ,Model model){
        if(session==null
                || session.getAttribute("loginCheck")==null
                ||(session.getAttribute("loginCheck")!=null&&(Boolean)session.getAttribute("loginCheck")==false)
                || (session.getAttribute("userid")==null)) {//로그인 필요

            clearSessionAndRedirect(session);
            return "index";
        }
        UserVO findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));
        if(findUser==null){
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            return "index";
        }
        model.addAttribute("user",findUser);

        getHomepageInfo(model);
        return "app_step4";
    }

    @RequestMapping("/app_step5")
    public String app_step5(HttpSession session
            ,Model model){
        if(session==null
                || session.getAttribute("loginCheck")==null
                ||(session.getAttribute("loginCheck")!=null&&(Boolean)session.getAttribute("loginCheck")==false)
                || (session.getAttribute("userid")==null)) {//로그인 필요

            clearSessionAndRedirect(session);
            return "index";
        }
        UserVO findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));
        if(findUser==null){
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            return "index";
        }
        model.addAttribute("user",findUser);

        getHomepageInfo(model);
        return "app_step5";
    }

    @RequestMapping("/app_step6")
    public String app_step6(HttpSession session
            ,Model model){
        if(session==null
                || session.getAttribute("loginCheck")==null
                ||(session.getAttribute("loginCheck")!=null&&(Boolean)session.getAttribute("loginCheck")==false)
                || (session.getAttribute("userid")==null)) {//로그인 필요

            clearSessionAndRedirect(session);
            return "index";
        }
        UserVO findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));
        if(findUser==null){
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            return "index";
        }
        model.addAttribute("user",findUser);

        getHomepageInfo(model);
        return "app_step6";
    }


    @RequestMapping("/arc_center")
    public String arc_center(Model model){

        getHomepageInfo(model);
        return "arc_center";
    }

    @RequestMapping("/arc_form")
    public String arc_form(Model model){

        getHomepageInfo(model);
        return "arc_form";
    }

    @RequestMapping("/arc_pee")
    public String arc_pee(Model model){

        getHomepageInfo(model);
        return "arc_pee";
    }

    @RequestMapping("/arc_rule")
    public String arc_rule(Model model){

        getHomepageInfo(model);
        return "arc_rule";
    }

    @RequestMapping("/brd_announce")
    public String brd_announce(@RequestParam("page") int page,
                               Model model){
        int list_amount = 10;
        int page_amount = 10;

        int annouceCount = bsAnnouncementService.getWebpageBsAnnouncementCount();
        if(annouceCount==0){
            return "brd_announce_blank";
        }
        model.addAttribute("total_count",annouceCount);
        List<BsAnnouncementVO> announcementVOList = bsAnnouncementService.getBsAnnouncementList(page,list_amount);
        model.addAttribute("announceList",announcementVOList);

        model.addAttribute("cur_page",page);
        model.addAttribute("amount",list_amount);

        int tot_page = annouceCount/list_amount+1;
        if(annouceCount%list_amount==0) tot_page-=1;

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
        getHomepageInfo(model);
        return "brd_announce";
    }
    @RequestMapping("/brd_announce_detail")
    public String brd_announce_detail(@RequestParam("idx") int idx,
                                      Model model){

        getHomepageInfo(model);
        return "brd_announce_detail";
    }



    @RequestMapping("/brd_announce_blank")
    public String brd_announce_blank(Model model) {

        getHomepageInfo(model);
        return "brd_announce_blank";
    }
    @RequestMapping("/brd_announce_search")
    public String brd_announce_search(@RequestParam("page") int page,
                                     Model model) {

        getHomepageInfo(model);
        return "brd_announce_search";
    }
    @RequestMapping("/brd_announce_search_blank")
    public String brd_announce_search_blank(Model model) {

        getHomepageInfo(model);
        return "brd_announce_search_blank";
    }


    @RequestMapping("/brd_event")
    public String brd_event(@RequestParam("page") int page,
                            Model model){
        int list_amount = 10;
        int page_amount = 10;

        int eventCount = eventContentService.getWebpageEventContentCount();
        if(eventCount==0){
            return "brd_event_blank";
        }
        model.addAttribute("total_count",eventCount);
        List<EventContentVO> eventContentVOList = eventContentService.getEventContentList(page,list_amount);
        model.addAttribute("eventContentVOList",eventContentVOList);

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

        getHomepageInfo(model);
        return "brd_event";
    }
    @RequestMapping("/brd_event_detail")
    public String brd_event_detail(@RequestParam("idx") int idx,
                                      Model model){

        getHomepageInfo(model);
        return "brd_event_detail";
    }
    @RequestMapping("/brd_event_blank")
    public String brd_event_blank(Model model){

        getHomepageInfo(model);
        return "brd_event_blank";
    }

    @RequestMapping("/brd_event_search")
    public String brd_event_search(@RequestParam("page") int page,
                            Model model){

        getHomepageInfo(model);
        return "brd_event_search";
    }
    @RequestMapping("/brd_event_search_blank")
    public String brd_event_search_blank(Model model){

        getHomepageInfo(model);
        return "brd_event_search_blank";
    }



    @RequestMapping("/brd_notice")
    public String brd_notice(@RequestParam("page") int page,
                             Model model){
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

        getHomepageInfo(model);
        return "brd_notice";
    }
    @RequestMapping("/brd_notice_detail")
    public String brd_notice_detail(@RequestParam("idx") int idx,
                                   Model model){

        getHomepageInfo(model);
        return "brd_notice_detail";
    }
    @RequestMapping("/brd_notice_blank")
    public String brd_notice_blank(Model model){

        getHomepageInfo(model);
        return "brd_notice_blank";
    }
    @RequestMapping("/brd_notice_search")
    public String brd_notice_search(@RequestParam("page") int page,
                                   Model model){

        getHomepageInfo(model);
        return "brd_notice_search";
    }
    @RequestMapping("/brd_notice_search_blank")
    public String brd_notice_search_blank(Model model){

        getHomepageInfo(model);
        return "brd_notice_search_blank";
    }

    @RequestMapping("/brd_promotion")
    public String brd_promotion(@RequestParam("page") int page,
                                Model model){
        int list_amount = 10;
        int page_amount = 10;

        int promotionCount = prContentService.getWebpagePRContentCount();
        if(promotionCount==0){
            return "brd_announce_blank";
        }
        model.addAttribute("total_count",promotionCount);
        List<PRContentVO> prContentList = prContentService.getPRContentList(page,list_amount);
        model.addAttribute("prContentList",prContentList);

        model.addAttribute("cur_page",page);
        model.addAttribute("amount",list_amount);

        int tot_page = promotionCount/list_amount+1;
        if(promotionCount%list_amount==0) tot_page-=1;

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

        getHomepageInfo(model);
        return "brd_promotion";
    }
    @RequestMapping("/brd_promotion_detail")
    public String brd_promotion_detail(@RequestParam("idx") int idx,
                                    Model model){

        getHomepageInfo(model);
        return "brd_promotion_detail";
    }
    @RequestMapping("/brd_promotion_blank")
    public String brd_promotion_blank(Model model){

        getHomepageInfo(model);
        return "brd_promotion_blank";
    }
    @RequestMapping("/brd_promotion_search")
    public String brd_promotion_search(@RequestParam("page") int page,
                                    Model model){

        getHomepageInfo(model);
        return "brd_promotion_search";
    }
    @RequestMapping("/brd_promotion_search_blank")
    public String brd_promotion_search_blank(Model model){

        getHomepageInfo(model);
        return "brd_promotion_search_blank";
    }


    @RequestMapping("/cnt_goal")
    public String cnt_goal(Model model){

        getHomepageInfo(model);
        return "cnt_goal";
    }
    @RequestMapping("/cnt_history")
    public String cnt_history(Model model){

        getHomepageInfo(model);
        return "cnt_history";
    }

    @RequestMapping("/cnt_map")
    public String cnt_map(Model model){

        getHomepageInfo(model);
        return "cnt_map";
    }

    @RequestMapping("/cnt_organize")
    public String cnt_organize(Model model){
        //조직도, 직원 정보
        List<CoWorkerVO> coWorkerVOList = coWorkerNService.getCoWorkerList();
        model.addAttribute("coWorkerVOList",coWorkerVOList);

        getHomepageInfo(model);
        return "cnt_organize";
    }

    @RequestMapping("/join")
    public String join(){

        return "join";
    }

    @RequestMapping("/join_2")
    public String join_2(){
        return "join_2";
    }

    @RequestMapping("/join_group")
    public String join_group(HttpSession session,
                             @RequestParam(value="service_agree") String service_agree,
                             @RequestParam(value="privacy_agree") String privacy_agree,
                             @RequestParam(value="third_party_agree") String third_party_agree){

        if( service_agree!=null && service_agree.equals("1")
                && privacy_agree!=null && privacy_agree.equals("1")
                && third_party_agree!=null && third_party_agree.equals("1")){
            session.setAttribute("service_agree",service_agree);
            session.setAttribute("privacy_agree",privacy_agree);
            session.setAttribute("third_party_agree",third_party_agree);
        }
        else {
            return "/errors/404";
        }

        return "join_group";
    }

    @RequestMapping("/join_person")
    public String join_person(HttpSession session,
                              @RequestParam(value="service_agree") String service_agree,
                              @RequestParam(value="privacy_agree") String privacy_agree,
                              @RequestParam(value="third_party_agree") String third_party_agree){

        if(service_agree!=null && service_agree.equals("1")
                && privacy_agree!=null && privacy_agree.equals("1")
                && third_party_agree!=null && third_party_agree.equals("1")){
            session.setAttribute("service_agree",service_agree);
            session.setAttribute("privacy_agree",privacy_agree);
            session.setAttribute("third_party_agree",third_party_agree);
        }
        else {
            return "/errors/404";
        }

        return "join_person";
    }

    @RequestMapping("/juso_search")
    public String juso_search(){
        return "juso_search";
    }

    @RequestMapping("/join_welcome")
    public String join_welcome(){
        return "join_welcome";
    }

    @RequestMapping("/login")
    public String login(HttpSession session){

        clearSessionAndRedirect(session);

        return "login";
    }

    @RequestMapping("/my_agreement")
    public String my_agreement(Model model){

        getHomepageInfo(model);
        return "my_agreement";
    }

    @RequestMapping("/my_business")
    public String my_business(HttpSession session
            ,Model model){

        if(session==null
                || session.getAttribute("loginCheck")==null
                ||(session.getAttribute("loginCheck")!=null&&(Boolean)session.getAttribute("loginCheck")==false)
                || (session.getAttribute("userid")==null)) {//로그인 필요

            clearSessionAndRedirect(session);

            return "index";
        }
        UserVO findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));
        if(findUser==null){
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            return "index";
        }
        model.addAttribute("user",findUser);


        List<UserDemoBsVO> userDemoBsVOs = userDemoBsService.getUserDemoBsListByUserIdx(findUser.getIdx_user());

        if(userDemoBsVOs==null || userDemoBsVOs.isEmpty())//찾고 보니 지원 정보가 없네......
        {
            //개인정보 업데이트 필요!
            //userService.update();
            return "my_business_blank";
        }
        model.addAttribute("user_demo_bs_count",userDemoBsVOs.size());


        for(int i=0;i<userDemoBsVOs.size();i++)
        {
            List<DemoBsMsgVO> demoBsMsgVOs = userDemoBsService.getDemoBsMsgByUserDemoBSIdx(userDemoBsVOs.get(i).getIdx_user_demo_bs());
            userDemoBsVOs.get(i).setDemoBsMsgVo(demoBsMsgVOs.get(0));
        }
        model.addAttribute("demoList",userDemoBsVOs);

        getHomepageInfo(model);
        return "my_business";
    }

    @RequestMapping("/my_business_blank")
    public String my_business_blank(Model model){

        getHomepageInfo(model);
        return "my_business_blank";
    }

    @RequestMapping("/my_consignment")
    public String my_consignment(Model model){


        getHomepageInfo(model);
        return "my_consignment";
    }

    @RequestMapping("/my_group")
    public String my_group(Model model){

        getHomepageInfo(model);
        return "my_group";
    }

    @RequestMapping("/my_info")
    public String my_info(HttpSession session
                          ,Model model){

        if(session==null
                || session.getAttribute("loginCheck")==null
                ||(session.getAttribute("loginCheck")!=null&&(Boolean)session.getAttribute("loginCheck")==false)
                || (session.getAttribute("userid")==null)) {//로그인 필요

            clearSessionAndRedirect(session);
            return "index";
        }

        UserVO findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));
        if(findUser==null){
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            return "index";
        }
        model.addAttribute("user",findUser);

        if(findUser.getIs_corporate_member()==CONSTANT.yes){
            CorpInfoVO corpInfoVO = corpService.getCorpInfo(findUser.getIdx_corp_info());
            if(corpInfoVO==null || corpInfoVO.getIdx_corp_info()==0)//찾고 보니 회사 정보가 없네......
            {
                //개인정보 업데이트 필요!
                //userService.update();
                findUser.setIs_corporate_member(CONSTANT.no);
            }
            model.addAttribute("corp",corpInfoVO);

        }

        getHomepageInfo(model);
        return "my_info";
    }

    @RequestMapping("/prv_application")
    public String prv_application(Model model){

        getHomepageInfo(model);
        return "prv_application";
    }

    @RequestMapping("/prv_bill")
    public String prv_bill(Model model){

        getHomepageInfo(model);
        return "prv_bill";
    }

    @RequestMapping("/prv_facility")
    public String prv_facility(Model model){

        getHomepageInfo(model);
        return "prv_facility";
    }

    @RequestMapping("/prv_fee")
    public String prv_fee(Model model){

        getHomepageInfo(model);
        return "prv_fee";
    }

    @RequestMapping("/prv_location")
    public String prv_location(Model model){

        getHomepageInfo(model);
        return "prv_location";
    }

    @RequestMapping("/prv_office")
    public String prv_office(Model model){

        getHomepageInfo(model);
        return "prv_office";
    }

    @RequestMapping("/prv_part")
    public String prv_part(Model model){

        getHomepageInfo(model);
        return "prv_part";
    }

    @RequestMapping("/prv_prepare")
    public String prv_prepare(Model model){

        getHomepageInfo(model);
        return "prv_prepare";
    }

    @RequestMapping("/prv_register")
    public String prv_register(HttpSession session
            , Model model){

        if(session!=null
                &&(session.getAttribute("loginCheck")!=null&&(Boolean)session.getAttribute("loginCheck")==true)
                && (session.getAttribute("userid")!=null&&session.getAttribute("userid") !=null)){//로그인 유저

            UserVO findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));

            if(findUser!=null) {
                //session.setAttribute("loginCheck", true);
                model.addAttribute("is_login",true);

                List<DemoBusinessVO> demoBsList = demoBsService.getAvailibleDemoBs();
                model.addAttribute("demoBsList",demoBsList);

            }
            else {//세션 만료 혹은 부정 접근
                model.addAttribute("is_login",false);
                clearSessionAndRedirect(session);
            }

        }
        else {
            model.addAttribute("is_login",false);
        }


        getHomepageInfo(model);
        return "prv_register";
    }

    @RequestMapping("/prv_step")
    public String prv_step(Model model){

        getHomepageInfo(model);
        return "prv_step";
    }

    @RequestMapping("/prv_subsidy")
    public String prv_subsidy(Model model){


        getHomepageInfo(model);
        return "prv_subsidy";
    }

    @RequestMapping("/prv_support")
    public String prv_support(Model model){

        getHomepageInfo(model);
        return "prv_support";
    }

    @RequestMapping("/prv_use")
    public String prv_use(Model model){

        getHomepageInfo(model);
        return "prv_use";
    }

    @RequestMapping("/spt_email")
    public String spt_email(HttpSession session
            ,@Param("page") int page
            , Model model){

        UserVO findUser = null;
        //model.addAttribute("is_login",false);


        if(session!=null
                &&(session.getAttribute("loginCheck")!=null&&(Boolean)session.getAttribute("loginCheck")==true)
                && (session.getAttribute("userid")!=null&&session.getAttribute("userid") !=null)){//로그인 유저

            findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));

            if(findUser!=null) {
                //session.setAttribute("loginCheck", true);
                model.addAttribute("is_login",true);
                int list_amount = 10;
                int page_amount = 10;

                int qnaCount = qnaService.getDemoBSQnaCount(CONSTANT.user_idx,findUser.getIdx_user());
                model.addAttribute("total_count",qnaCount);

                if(qnaCount==0){ //컨설팅한게 업다

                    return "spt_email";
                }

                List<DemoBsQnaVO> demoBsQnaVOList = qnaService.getDemoBsQnaList(CONSTANT.user_idx,findUser.getIdx_user(),page,list_amount);

                model.addAttribute("demoBsQnaVOList",demoBsQnaVOList);
                model.addAttribute("cur_page",page);
                model.addAttribute("amount",list_amount);

                int tot_page = qnaCount/list_amount+1;
                if(qnaCount%list_amount==0) tot_page-=1;

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

            }
            else {//세션 만료 혹은 부정 접근
                model.addAttribute("is_login",false);
                clearSessionAndRedirect(session);
                return "spt_email";
            }

        }
        else {
            model.addAttribute("is_login",false);
        }

        getHomepageInfo(model);
        return "spt_email";
    }

    @RequestMapping("/spt_faq")
    public String spt_faq(Model model){

        getHomepageInfo(model);
        return "spt_faq";
    }

    @RequestMapping("/spt_prevent")
    public String spt_prevent(HttpSession session
                              ,@Param("page") int page
            , Model model){


        UserVO findUser = null;
        //model.addAttribute("is_login",false);


        if(session!=null
                &&(session.getAttribute("loginCheck")!=null&&(Boolean)session.getAttribute("loginCheck")==true)
                && (session.getAttribute("userid")!=null&&session.getAttribute("userid") !=null)){//로그인 유저

            findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));

            if(findUser!=null) {
                //session.setAttribute("loginCheck", true);
                model.addAttribute("is_login",true);
                int list_amount = 10;
                int page_amount = 10;

                int consultingCount = consultingService.getConsultingCount(CONSTANT.user_idx,findUser.getIdx_user());
                model.addAttribute("total_count",consultingCount);

                if(consultingCount==0){ //컨설팅한게 업다

                    return "spt_prevent";
                }

                List<DemoBsConsultingVO> demoBsConsultingVOList = consultingService.getConsultingList(CONSTANT.user_idx,findUser.getIdx_user(),page,list_amount);



                model.addAttribute("demoBsConsultingVOList",demoBsConsultingVOList);
                model.addAttribute("cur_page",page);
                model.addAttribute("amount",list_amount);

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

            }
            else {//세션 만료 혹은 부정 접근
                model.addAttribute("is_login",false);
                clearSessionAndRedirect(session);
                return "spt_prevent";
            }

        }
        else {
            model.addAttribute("is_login",false);
        }

        getHomepageInfo(model);
        return "spt_prevent";
    }

    @RequestMapping("/spt_visit")
    public String spt_visit(HttpSession session
            ,@Param("page") int page
            , Model model){



        UserVO findUser = null;
        //model.addAttribute("is_login",false);


        if(session!=null
                &&(session.getAttribute("loginCheck")!=null&&(Boolean)session.getAttribute("loginCheck")==true)
                && (session.getAttribute("userid")!=null&&session.getAttribute("userid") !=null)){//로그인 유저

            findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));

            if(findUser!=null) {
                //session.setAttribute("loginCheck", true);
                model.addAttribute("is_login",true);
                int list_amount = 10;
                int page_amount = 10;

                int visitReqCount = visitService.getUserVisitReqCount(findUser.getIdx_user());
                model.addAttribute("total_count",visitReqCount);

                if(visitReqCount==0){ //컨설팅한게 업다

                    return "spt_visit";
                }

                List<VisitReqVO> visitReqVOS = visitService.getUserVisitReq(findUser.getIdx_user(),page,list_amount);



                model.addAttribute("visitReqVOS",visitReqVOS);
                model.addAttribute("cur_page",page);
                model.addAttribute("amount",list_amount);

                int tot_page = visitReqCount/list_amount+1;
                if(visitReqCount%list_amount==0) tot_page-=1;

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

            }
            else {//세션 만료 혹은 부정 접근
                model.addAttribute("is_login",false);
                clearSessionAndRedirect(session);
                return "spt_visit";
            }

        }
        else {
            model.addAttribute("is_login",false);
        }

        getHomepageInfo(model);
        return "spt_visit";
    }

    @RequestMapping("/template")
    public String template(Model model){

        getHomepageInfo(model);
        return "template";
    }

    @RequestMapping("/util_search")
    public String util_search(Model model){

        getHomepageInfo(model);
        return "util_search";
    }

    @RequestMapping("/util_search_blant")
    public String util_search_blant(Model model){


        getHomepageInfo(model);
        return "util_search_blant";
    }


    //== Helper Function=========================
    public void clearSessionAndRedirect(HttpSession session){

        session.removeAttribute("loginCheck");
        session.removeAttribute("userid");
        session.removeAttribute("name");
        session.removeAttribute("isCorpMember");
        session.removeAttribute("corpName");
        session.removeAttribute("isApplicant");
        session.removeAttribute("loginCheck");
    }


    //===========================================



    @RequestMapping("/denied")
    public String denied(){
        return "util_search_blant";
    }

    public void getHomepageInfo(Model model){
        HomepageInfoVO homepageInfoVO = homepageInfoService.getHomepageInfo();
        model.addAttribute("homepageInfo",homepageInfoVO);

    }

}
