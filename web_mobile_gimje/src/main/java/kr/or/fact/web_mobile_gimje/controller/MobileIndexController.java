package kr.or.fact.web_mobile_gimje.controller;

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
public class MobileIndexController {

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
    PRContentsService prContentService;

    @Resource(name = "consultingService")
    ConsultingService consultingService;

    @Resource(name = "qnaService")
    QnaService qnaService;

    @Resource(name = "visitService")
    VisitService visitService;

    @Resource(name = "userDemoBsService")
    UserDemoBsService userDemoBsService;



    @RequestMapping("/")
    public String home(Model model){

        //List<UserVO> userList = userService.selectList();
        //model.addAttribute("test_data",userList.get(0).getCreat_co());
        return "index";
    }

    @RequestMapping("/index")
    public String index(){

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




    @RequestMapping("/arc_center")
    public String arc_center(){
        return "arc_center";
    }









    @RequestMapping("/arc_form")
    public String arc_form(){
        return "arc_form";
    }

    @RequestMapping("/arc_pee")
    public String arc_pee(){
        return "arc_pee";
    }

    @RequestMapping("/arc_rule")
    public String arc_rule(){
        return "arc_rule";
    }

    @RequestMapping("/brd_announce")
    public String brd_announce(@RequestParam("page") int page,
                               Model model){
        int list_amount = param.getAmount();;
        int page_amount = 10;

        int annouceCount = bsAnnouncementService.getWebpageBsAnnouncementCount();
        if(annouceCount==0){
            return "brd_announce_blank";
        }
        model.addAttribute("total_count",annouceCount);
        List<BsAnnouncementVO> announcementVOList = bsAnnouncementService.getBsAnnouncementWebList(page,list_amount);
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
        return "brd_announce";
    }
    @RequestMapping("/brd_announce_detail")
    public String brd_announce_detail(@RequestParam("idx") int idx,
                                      Model model){
        return "brd_announce_detail";
    }



    @RequestMapping("/brd_announce_blank")
    public String brd_announce_blank() {


        return "brd_announce_blank";
    }
    @RequestMapping("/brd_announce_search")
    public String brd_announce_search(@RequestParam("page") int page,
                                      Model model) {


        return "brd_announce_search";
    }
    @RequestMapping("/brd_announce_search_blank")
    public String brd_announce_search_blank() {


        return "brd_announce_search_blank";
    }


    @RequestMapping("/brd_event")
    public String brd_event(@RequestParam("page") int page,
                            Model model){
        int list_amount = param.getAmount();;
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
        return "brd_event";
    }
    @RequestMapping("/brd_event_detail")
    public String brd_event_detail(@RequestParam("idx") int idx,
                                   Model model){
        return "brd_event_detail";
    }
    @RequestMapping("/brd_event_blank")
    public String brd_event_blank(){
        return "brd_event_blank";
    }

    @RequestMapping("/brd_event_search")
    public String brd_event_search(@RequestParam("page") int page,
                                   Model model){
        return "brd_event_search";
    }
    @RequestMapping("/brd_event_search_blank")
    public String brd_event_search_blank(){
        return "brd_event_search_blank";
    }



    @RequestMapping("/brd_notice")
    public String brd_notice(@RequestParam("page") int page,
                             Model model){
        int list_amount = param.getAmount();;
        int page_amount = 10;

        int noticeCount = noticeService.getWebpageNoticeCount();
        if(noticeCount==0){
            return "brd_notice_blank";
        }
        model.addAttribute("total_count",noticeCount);
        List<NoticeVO> noticeList = noticeService.getNoticeWebList(page,list_amount);
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
        return "brd_notice";
    }
    @RequestMapping("/brd_notice_detail")
    public String brd_notice_detail(@RequestParam("idx") int idx,
                                    Model model){
        return "brd_notice_detail";
    }
    @RequestMapping("/brd_notice_blank")
    public String brd_notice_blank(){
        return "brd_notice_blank";
    }
    @RequestMapping("/brd_notice_search")
    public String brd_notice_search(@RequestParam("page") int page,
                                    Model model){
        return "brd_notice_search";
    }
    @RequestMapping("/brd_notice_search_blank")
    public String brd_notice_search_blank(){
        return "brd_notice_search_blank";
    }

    @RequestMapping("/brd_promotion")
    public String brd_promotion(@RequestParam("page") int page,
                                Model model){
        int list_amount = param.getAmount();;
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
        return "brd_promotion";
    }
    @RequestMapping("/brd_promotion_detail")
    public String brd_promotion_detail(@RequestParam("idx") int idx,
                                       Model model){
        return "brd_promotion_detail";
    }
    @RequestMapping("/brd_promotion_blank")
    public String brd_promotion_blank(){
        return "brd_promotion_blank";
    }
    @RequestMapping("/brd_promotion_search")
    public String brd_promotion_search(@RequestParam("page") int page,
                                       Model model){
        return "brd_promotion_search";
    }
    @RequestMapping("/brd_promotion_search_blank")
    public String brd_promotion_search_blank(){
        return "brd_promotion_search_blank";
    }


    @RequestMapping("/cnt_goal")
    public String cnt_goal(){
        return "cnt_goal";
    }
    @RequestMapping("/cnt_history")
    public String cnt_history(){
        return "cnt_history";
    }

    @RequestMapping("/cnt_map")
    public String cnt_map(){
        return "cnt_map";
    }

    @RequestMapping("/cnt_organize")
    public String cnt_organize(){
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
    public String my_agreement(){
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


        List<UserDemoBsVO> userDemoBsVOS = userDemoBsService.getUserDemoBsListByUserIdx(findUser.getIdx_user());

        if(userDemoBsVOS==null || userDemoBsVOS.isEmpty())//찾고 보니 지원 정보가 없네......
        {
            //개인정보 업데이트 필요!
            //userService.update();
            return "my_business_blank";
        }
        model.addAttribute("total_count",userDemoBsVOS.size());


        for(int i=0;i<userDemoBsVOS.size();i++)
        {
            List<DemoBsMsgVO> demoBsMsgVOS = userDemoBsService.getDemoBsMsgByUserDemoBSIdx(userDemoBsVOS.get(i).getIdx_user_demo_bs());
            userDemoBsVOS.get(i).setDemoBsMsgVo(demoBsMsgVOS.get(0));
        }
        model.addAttribute("demoList",userDemoBsVOS);
        return "my_business";
    }

    @RequestMapping("/my_business_blank")
    public String my_business_blank(){
        return "my_business_blank";
    }

    @RequestMapping("/my_consignment")
    public String my_consignment(){
        return "my_consignment";
    }

    @RequestMapping("/my_group")
    public String my_group(){
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

        return "my_info";
    }

    @RequestMapping("/prv_application")
    public String prv_application(){
        return "prv_application";
    }

    @RequestMapping("/prv_bill")
    public String prv_bill(){
        return "prv_bill";
    }

    @RequestMapping("/prv_facility")
    public String prv_facility(){
        return "prv_facility";
    }

    @RequestMapping("/prv_fee")
    public String prv_fee(){
        return "prv_fee";
    }

    @RequestMapping("/prv_location")
    public String prv_location(){
        return "prv_location";
    }

    @RequestMapping("/prv_office")
    public String prv_office(){
        return "prv_office";
    }

    @RequestMapping("/prv_part")
    public String prv_part(){
        return "prv_part";
    }

    @RequestMapping("/prv_prepare")
    public String prv_prepare(){
        return "prv_prepare";
    }

    @RequestMapping("/prv_register")
    public String prv_register(){
        return "prv_register";
    }

    @RequestMapping("/prv_step")
    public String prv_step(){
        return "prv_step";
    }

    @RequestMapping("/prv_subsidy")
    public String prv_subsidy(){
        return "prv_subsidy";
    }

    @RequestMapping("/prv_support")
    public String prv_support(){
        return "prv_support";
    }

    @RequestMapping("/prv_use")
    public String prv_use(){
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
                int list_amount = param.getAmount();;
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
        return "spt_email";
    }

    @RequestMapping("/spt_faq")
    public String spt_faq(){
        return "spt_faq";
    }

    @RequestMapping("/spt_consulting")
    public String spt_consulting(HttpSession session
            , Model model){


        UserVO findUser = null;
        //model.addAttribute("is_login",false);


        if(session!=null
                &&(session.getAttribute("loginCheck")!=null&&(Boolean)session.getAttribute("loginCheck")==true)
                && (session.getAttribute("userid")!=null&&session.getAttribute("userid") !=null)){//로그인 유저

            findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));

            if(findUser!=null) {


            }
            else {//세션 만료 혹은 부정 접근
                model.addAttribute("is_login",false);
                clearSessionAndRedirect(session);
                return "spt_consulting";
            }

        }
        else {
            model.addAttribute("is_login",false);
        }
        return "spt_consulting";
    }

    @RequestMapping("/spt_visit")
    public String spt_visit(HttpSession session
            , Model model){



        UserVO findUser = null;
        //model.addAttribute("is_login",false);


        if(session!=null
                &&(session.getAttribute("loginCheck")!=null&&(Boolean)session.getAttribute("loginCheck")==true)
                && (session.getAttribute("userid")!=null&&session.getAttribute("userid") !=null)){//로그인 유저

            findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));

            if(findUser!=null) {


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

        return "spt_visit";
    }

    @RequestMapping("/template")
    public String template(){
        return "template";
    }

    @RequestMapping("/util_search")
    public String util_search(){
        return "util_search";
    }

    @RequestMapping("/util_search_blant")
    public String util_search_blant(){
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


}
