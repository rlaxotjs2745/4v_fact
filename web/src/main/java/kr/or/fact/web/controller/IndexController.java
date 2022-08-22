package kr.or.fact.web.controller;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.service.*;
import kr.or.fact.core.util.CONSTANT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
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
    PRContentsService prContentService;

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

    @Resource(name = "jusoService")
    JusoService jusoService;

    @Resource(name = "fileService")
    FileService fileService;

    @Autowired
    Environment env;

    @RequestMapping("/")
    public String home(Model model) {

        //List<UserVO> userList = userService.selectList();
        //model.addAttribute("test_data",userList.get(0).getCreat_co());
        List<NoticeVO> noticeVOList = noticeService.getMainNoticeList();

        List<BsAnnouncementVO> bsAnnouncementVOList = bsAnnouncementService.getMainBsAnnouncementList();

        List<EventContentVO> eventContentVOList = eventContentService.getMainEventContentList();

        model.addAttribute("noticeList", noticeVOList);
        model.addAttribute("annoList", bsAnnouncementVOList);
        model.addAttribute("eventList", eventContentVOList);
        getHomepageInfo(model);
        satProfile(model);
        return "index";
    }

    @RequestMapping("/index")
    public String index(HttpSession session
            , Model model) {

        List<NoticeVO> noticeVOList = noticeService.getMainNoticeList();

        List<BsAnnouncementVO> bsAnnouncementVOList = bsAnnouncementService.getMainBsAnnouncementList();

        List<EventContentVO> eventContentVOList = eventContentService.getMainEventContentList();

        model.addAttribute("noticeList", noticeVOList);
        model.addAttribute("annoList", bsAnnouncementVOList);
        model.addAttribute("eventList", eventContentVOList);

        getHomepageInfo(model);
        satProfile(model);
        return "index";
    }

    @RequestMapping(value = "/api_post_login", method = RequestMethod.POST)
    public String api_post_login(HttpSession session,
                                 ModelMap model,
                                 @RequestParam(value = "id") String user_id,
                                 @RequestParam(value = "pw") String user_pw) {

        /*UserVO userVO = new UserVO();
        userVO.setUser_id(id);
        userVO.setUser_pw(pw);*/

        if (user_id == null || user_pw == null) {
            return "redirect:login";
        }
        //UserVO findUser = userService.getAuthUser(id,pw);
        //UserVO findUser = userService.getUserInfo(3);


        UserVO findUser = userService.getUserInfoById(user_id);
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

        if (findUser != null && passwordEncoder.matches(user_pw, findUser.getUser_pw())) {
            model.addAttribute("userVo", findUser);
            session.setAttribute("loginCheck", true);
            session.setAttribute("userid", user_id);
            session.setAttribute("name", findUser.getUser_name());
            session.setAttribute("isCorpMember", findUser.getIs_corporate_member());
            if (findUser.getIs_corporate_member() == 1 && findUser.getIdx_corp_info() != 0) {
                CorpInfoVO corpVO = corpService.getCorpInfo(findUser.getIdx_corp_info());
                if (corpVO != null) {
                    session.setAttribute("corpName", corpVO.getCorp_name_kor());
                } else {
                    session.setAttribute("corpName", "회사등록필요");
                }
            }
            session.setAttribute("isApplicant", findUser.getIs_applicant());
            return "redirect:/";
        } else {
            session.setAttribute("loginCheck", false);
        }

        return "redirect:login";
    }

    @RequestMapping("/app_step1")
    public String app_step1(HttpSession session
            , Model model) {
        if (session == null
                || session.getAttribute("loginCheck") == null
                || (session.getAttribute("loginCheck") != null && (Boolean) session.getAttribute("loginCheck") == false)
                || (session.getAttribute("userid") == null)) {//로그인 필요

            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        UserVO findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));
        if (findUser == null) {
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        model.addAttribute("user", findUser);

        List<DemoBusinessVO> demoBusinessVOs = demoBsService.getAvailibleDemoBs();

        model.addAttribute("demoBusinessVOs", demoBusinessVOs);

        getHomepageInfo(model);

        satProfile(model);

        return "app_step1";
    }

    @PostMapping(value = "/app_step2")
    public String app_step2(HttpSession session
            , UserDemoBsCheckVO userDemoBsCheckVO
            , Model model) {
        if (session == null
                || session.getAttribute("loginCheck") == null
                || (session.getAttribute("loginCheck") != null && (Boolean) session.getAttribute("loginCheck") == false)
                || (session.getAttribute("userid") == null)) {//로그인 필요

            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }

        UserVO findUser = userService.getUserInfo(userDemoBsCheckVO.getIdx_user());

        if (findUser == null
                || !findUser.getUser_id().equals(String.valueOf(session.getAttribute("userid")))) {
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        model.addAttribute("user", findUser);

        DemoBusinessVO demoBusinessVo = demoBsService.getDemoBsByIdx(userDemoBsCheckVO.getIdx_demo_business());

        if (demoBusinessVo == null) {//해당 사업 없음, 에러페이지로 보내야 한다...

            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }

        model.addAttribute("demoBs", demoBusinessVo);

        UserDemoBsVO userDemoBsVo = userDemoBsService.getUserDemoBs(userDemoBsCheckVO);
        if (userDemoBsVo == null) {//이전에 저장한게 없다, 에러페이지로 보내야 한다...
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        model.addAttribute("userDemoBs", userDemoBsVo);
        getHomepageInfo(model);
        satProfile(model);

        return "app_step2";
    }

    @PostMapping(value = "/app_step3")
    public String app_step3(HttpSession session
            , UserDemoBsCheckVO userDemoBsCheckVO
            , Model model) {
        if (session == null
                || session.getAttribute("loginCheck") == null
                || (session.getAttribute("loginCheck") != null && (Boolean) session.getAttribute("loginCheck") == false)
                || (session.getAttribute("userid") == null)) {//로그인 필요

            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        UserVO findUser = userService.getUserInfo(userDemoBsCheckVO.getIdx_user());

        if (findUser == null
                || !findUser.getUser_id().equals(String.valueOf(session.getAttribute("userid")))) {
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        model.addAttribute("user", findUser);

        DemoBusinessVO demoBusinessVo = demoBsService.getDemoBsByIdx(userDemoBsCheckVO.getIdx_demo_business());

        if (demoBusinessVo == null) {//해당 사업 없음, 에러페이지로 보내야 한다...

            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }

        model.addAttribute("demoBs", demoBusinessVo);

        UserDemoBsVO userDemoBsVo = userDemoBsService.getUserDemoBs(userDemoBsCheckVO);
        if (userDemoBsVo == null) {//이전에 저장한게 없다, 에러페이지로 보내야 한다...
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        model.addAttribute("userDemoBs", userDemoBsVo);

        UserDemoBsDetailVO userDemoBsDetailVO = userDemoBsService.getUserDemoBsDetail(userDemoBsVo.getIdx_user_demo_bs());

        List<UserBsHumanResourceVO> userBsHumanResourceVOList = userDemoBsService.getUserDemoBsHumanResourceList(userDemoBsVo.getIdx_user_demo_bs());

        if (userDemoBsDetailVO == null) {
            userDemoBsDetailVO = new UserDemoBsDetailVO();

            userDemoBsDetailVO.setIdx_user_demo_bs(userDemoBsVo.getIdx_user_demo_bs());//number	32	n			◯	지원사업 상세
            userDemoBsDetailVO.setCeo_rnd_result1("");//varchar2	100					대표자의 연구개발 과제, 논문명
            userDemoBsDetailVO.setCeo_rnd_result1_org("");//varchar2	40					연구개발 기관
            userDemoBsDetailVO.setCeo_rnd_result1_dur("");//varchar2	40					연구개발 기간
            userDemoBsDetailVO.setCeo_rnd_result1_role("");//varchar2	40					연구개발 역할
            userDemoBsDetailVO.setCeo_rnd_result1_result("");//varchar2	100					연구개발 주요성과
            userDemoBsDetailVO.setCeo_rnd_result2("");//varchar2	100					대표자의 연구개발 과제, 논문명
            userDemoBsDetailVO.setCeo_rnd_result2_org("");//varchar2	40					연구개발 기관
            userDemoBsDetailVO.setCeo_rnd_result2_dur("");//varchar2	40					연구개발 기간
            userDemoBsDetailVO.setCeo_rnd_result2_role("");//varchar2	40					연구개발 역할
            userDemoBsDetailVO.setCeo_rnd_result2_result("");//varchar2	100					연구개발 주요성과
            userDemoBsDetailVO.setRnd_effort1("");//varchar2	200					연구개발추진현황
            userDemoBsDetailVO.setRnd_effort1_type(0);//number	4					연구개발 타입	0:자체개발, 1:국가과제
            userDemoBsDetailVO.setRnd_effort1_etc("");//varchar2	40					연구개발 비고, 특허, 인증
            userDemoBsDetailVO.setRnd_effort2("");//varchar2	200					연구개발추진현황
            userDemoBsDetailVO.setRnd_effort2_type(0);//number	4					연구개발 타입	0:자체개발, 1:국가과제
            userDemoBsDetailVO.setRnd_effort2_etc("");//varchar2	40					연구개발 비고, 특허, 인증
            userDemoBsDetailVO.setRnd_effort3("");//varchar2	200					연구개발추진현황
            userDemoBsDetailVO.setRnd_effort3_type(0);//number	4					연구개발 타입	0:자체개발, 1:국가과제
            userDemoBsDetailVO.setRnd_effort3_etc("");//varchar2	40					연구개발 비고, 특허, 인증
            userDemoBsDetailVO.setRnd_effort4("");//varchar2	200					연구개발추진현황
            userDemoBsDetailVO.setRnd_effort4_type(0);//number	4					연구개발 타입	0:자체개발, 1:국가과제
            userDemoBsDetailVO.setRnd_effort4_etc("");//varchar2	40					연구개발 비고, 특허, 인증
            userDemoBsDetailVO.setRnd_effort5("");//varchar2	200					연구개발추진현황
            userDemoBsDetailVO.setRnd_effort5_type(0);//number	4					연구개발 타입	0:자체개발, 1:국가과제
            userDemoBsDetailVO.setRnd_effort5_etc("");//varchar2	40					연구개발 비고, 특허, 인증
            userDemoBsDetailVO.setRnd_effort6("");//varchar2	200					연구개발추진현황
            userDemoBsDetailVO.setRnd_effort6_type(0);//number	4					연구개발 타입	0:자체개발, 1:국가과제
            userDemoBsDetailVO.setRnd_effort6_etc("");//varchar2	40					연구개발 비고, 특허, 인증
            userDemoBsDetailVO.setOwn_ip1("");//varchar2	100					지재권보유 명칭
            userDemoBsDetailVO.setOwn_ip1_type("");//varchar2	40					지재권 타입
            userDemoBsDetailVO.setOwn_ip1_code("");//varchar2	40					지재권 출원번호
            userDemoBsDetailVO.setOwn_ip1_date("");//varchar2	40					지재권 출원날짜
            userDemoBsDetailVO.setOwn_ip1_org("");//varchar2	40					지재권 담당기관
            userDemoBsDetailVO.setOwn_ip1_etc("");//varchar2	40					지재권 비고
            userDemoBsDetailVO.setOwn_ip2("");//varchar2	100					지재권보유 명칭
            userDemoBsDetailVO.setOwn_ip2_type("");//varchar2	40					지재권 타입
            userDemoBsDetailVO.setOwn_ip2_code("");//varchar2	40					지재권 출원번호
            userDemoBsDetailVO.setOwn_ip2_date("");//varchar2	40					지재권 출원날짜
            userDemoBsDetailVO.setOwn_ip2_org("");//varchar2	40					지재권 담당기관
            userDemoBsDetailVO.setOwn_ip2_etc("");//varchar2	40					지재권 비고
            userDemoBsDetailVO.setOwn_ip3("");//varchar2	100					지재권보유 명칭
            userDemoBsDetailVO.setOwn_ip3_type("");//varchar2	40					지재권 타입
            userDemoBsDetailVO.setOwn_ip3_code("");//varchar2	40					지재권 출원번호
            userDemoBsDetailVO.setOwn_ip3_date("");//varchar2	40					지재권 출원날짜
            userDemoBsDetailVO.setOwn_ip3_org("");//varchar2	40					지재권 담당기관
            userDemoBsDetailVO.setOwn_ip3_etc("");//varchar2	40					지재권 비고
            userDemoBsDetailVO.setOwn_cert1("");//varchar2	100					인증보유 명칭
            userDemoBsDetailVO.setOwn_cert1_type("");//varchar2	40					인증 타입
            userDemoBsDetailVO.setOwn_cert1_code("");//varchar2	40					인증등록번호
            userDemoBsDetailVO.setOwn_cert1_date("");//varchar2	40					인증 출원날짜
            userDemoBsDetailVO.setOwn_cert2("");//varchar2	100					인증보유 명칭
            userDemoBsDetailVO.setOwn_cert2_type("");//varchar2	40					인증 타입
            userDemoBsDetailVO.setOwn_cert2_code("");//varchar2	40					인증등록번호
            userDemoBsDetailVO.setOwn_cert2_date("");//varchar2	40					인증 출원날짜
            userDemoBsDetailVO.setOwn_cert3("");//varchar2	100					인증보유 명칭
            userDemoBsDetailVO.setOwn_cert3_type("");//varchar2	40					인증 타입
            userDemoBsDetailVO.setOwn_cert3_code("");//varchar2	40					인증등록번호
            userDemoBsDetailVO.setOwn_cert3_date("");//varchar2	40					인증 출원날짜
            userDemoBsDetailVO.setOwn_device1("");//varchar2	100					보유장비명
            userDemoBsDetailVO.setOwn_device1_weight("");//varchar2	40					무게
            userDemoBsDetailVO.setOwn_device1_size("");//varchar2	40					크기(wxdxh)
            userDemoBsDetailVO.setOwn_device1_pw("");//varchar2	10					사용전원
            userDemoBsDetailVO.setOwn_device1_wat("");//varchar2	10					소비전력
            userDemoBsDetailVO.setOwn_device1_type("");//varchar2	10					용도
            userDemoBsDetailVO.setIs_in_own_device1(0);//number	4					설치여부	0:n, 1:y
            userDemoBsDetailVO.setOwn_device2("");//varchar2	100					보유장비명
            userDemoBsDetailVO.setOwn_device2_weight("");//varchar2	40					무게
            userDemoBsDetailVO.setOwn_device2_size("");//varchar2	40					크기(wxdxh)
            userDemoBsDetailVO.setOwn_device2_pw("");//varchar2	10					사용전원
            userDemoBsDetailVO.setOwn_device2_wat("");//varchar2	10					소비전력
            userDemoBsDetailVO.setOwn_device2_type("");//varchar2	10					용도
            userDemoBsDetailVO.setIs_in_own_device2(0);//number	4					설치여부	0:n, 1:y
            userDemoBsDetailVO.setOwn_device3("");//varchar2	100					보유장비명
            userDemoBsDetailVO.setOwn_device3_weight("");//varchar2	40					무게
            userDemoBsDetailVO.setOwn_device3_size("");//varchar2	40					크기(wxdxh)
            userDemoBsDetailVO.setOwn_device3_pw("");//varchar2	10					사용전원
            userDemoBsDetailVO.setOwn_device3_wat("");//varchar2	10					소비전력
            userDemoBsDetailVO.setOwn_device3_type("");//varchar2	10					용도
            userDemoBsDetailVO.setIs_in_own_device3(0);//number	4					설치여부	0:n, 1:y
            userDemoBsDetailVO.setDemo_needs("");//varchar2	3000					실증배경, 필요성, 목표
            userDemoBsDetailVO.setDemo_main_point("");//varchar2	3000					실증관리 핵심요소
            userDemoBsDetailVO.setDemo_use_plan("");//varchar2	3000					실증결과 활용계획
            userDemoBsDetailVO.setDemo_facil_mat("");//varchar2	200					실증대상 기자재 시설자재
            userDemoBsDetailVO.setDemo_facil_ict("");//varchar2	200					실증대상 ict 기자재
            userDemoBsDetailVO.setDemo_facil_fer("");//varchar2	200					실증대상 작물보호제 및 비료
            userDemoBsDetailVO.setDemo_facil_sw("");//varchar2	200					실증대상 sw
            userDemoBsDetailVO.setDemo_facil_robot("");//varchar2	200					실증대상 로봇
            userDemoBsDetailVO.setDemo_facil_model("");//varchar2	200					실증대상 생육모델
            userDemoBsDetailVO.setDemo_paln_gh("");//varchar2	3000					실증설계 온실설치
            userDemoBsDetailVO.setDemo_paln_facil("");//varchar2	3000					실증설계 기자재 설치
            userDemoBsDetailVO.setDemo_paln_exper("");//varchar2	3000					실증설계 실험분석
            userDemoBsDetailVO.setDemo_paln_mng("");//varchar2	3000					실증관리
            userDemoBsDetailVO.setDemo_plan_ip("");//varchar2	3000					사업계획 지자재, 인증
            userDemoBsDetailVO.setDemo_plan_target("");//varchar2	3000					사업계획 국내외 시장
            userDemoBsDetailVO.setDemo_plan_sales("");//varchar2	3000					사업계획 판매계획
            userDemoBsDetailVO.setDemo_plan_post("");//varchar2	3000					사업계획 향후
            userDemoBsDetailVO.setIn_facil_mat("");//varchar2	40					반입기자재 시설자재명칭
            userDemoBsDetailVO.setIn_facil_mat_type("");//varchar2	10					반입기자재 용도
            userDemoBsDetailVO.setIn_facil_mat_stnrd("");//varchar2	10					반입기자재 단위,규격
            userDemoBsDetailVO.setIn_facil_mat_amount(0);//number	4					 반입기자재 수량
            userDemoBsDetailVO.setIn_facil_mat_val(0);//number	4					반입기자재 단가
            userDemoBsDetailVO.setIn_facil_mat_price(0);//number	10					반입기자재 가격
            userDemoBsDetailVO.setIn_facil_ict("");//varchar2	40					ict 반입기자재 시설자재명칭
            userDemoBsDetailVO.setIn_facil_ict_type("");//varchar2	10					반입기자재 용도
            userDemoBsDetailVO.setIn_facil_ict_stnrd("");//varchar2	10					반입기자재 단위,규격
            userDemoBsDetailVO.setIn_facil_ict_amount(0);//number	4					 반입기자재 수량
            userDemoBsDetailVO.setIn_facil_ict_val(0);//number	4					반입기자재 단가
            userDemoBsDetailVO.setIn_facil_ict_price(0);//number	10					반입기자재 가격
            userDemoBsDetailVO.setIn_facil_fer("");//varchar2	40					fer 반입기자재 시설자재명칭
            userDemoBsDetailVO.setIn_facil_fer_type("");//varchar2	10					반입기자재 용도
            userDemoBsDetailVO.setIn_facil_fer_stnrd("");//varchar2	10					반입기자재 단위,규격
            userDemoBsDetailVO.setIn_facil_fer_amount(0);//number	4					 반입기자재 수량
            userDemoBsDetailVO.setIn_facil_fer_val(0);//number	4					반입기자재 단가
            userDemoBsDetailVO.setIn_facil_fer_price(0);//number	10					반입기자재 가격
            userDemoBsDetailVO.setIn_facil_sw("");//varchar2	40					sw 반입기자재 시설자재명칭
            userDemoBsDetailVO.setIn_facil_sw_type("");//varchar2	10					반입기자재 용도
            userDemoBsDetailVO.setIn_facil_sw_stnrd("");//varchar2	10					반입기자재 단위,규격
            userDemoBsDetailVO.setIn_facil_sw_amount(0);//number	4					 반입기자재 수량
            userDemoBsDetailVO.setIn_facil_sw_val(0);//number	4					반입기자재 단가
            userDemoBsDetailVO.setIn_facil_sw_price(0);//number	10					반입기자재 가격
            userDemoBsDetailVO.setIn_facil_seeding("");//varchar2	40					seed 반입기자재 시설자재명칭
            userDemoBsDetailVO.setIn_facil_seedingtype("");//varchar2	10					반입기자재 용도
            userDemoBsDetailVO.setIn_facil_seeding_stnrd("");//varchar2	10					반입기자재 단위,규격
            userDemoBsDetailVO.setIn_facil_seeding_amount(0);//number	4					 반입기자재 수량
            userDemoBsDetailVO.setIn_facil_seeding_val(0);//number	4					반입기자재 단가
            userDemoBsDetailVO.setIn_facil_seeding_price(0);//number	10					반입기자재 가격
            userDemoBsDetailVO.setIn_facil_robot("");//varchar2	40					robot 반입기자재 시설자재명칭
            userDemoBsDetailVO.setIn_facil_robot_type("");//varchar2	10					반입기자재 용도
            userDemoBsDetailVO.setIn_facil_robot_stnrd("");//varchar2	10					반입기자재 단위,규격
            userDemoBsDetailVO.setIn_facil_robot_amount(0);//number	4					 반입기자재 수량
            userDemoBsDetailVO.setIn_facil_robot_val(0);//number	4					반입기자재 단가
            userDemoBsDetailVO.setIn_facil_robot_price(0);//number	10					반입기자재 가격
            userDemoBsDetailVO.setIn_hazd_chemical1("");//varchar2	40					반입 유해화학물질 명
            userDemoBsDetailVO.setIn_hazd_chemical1_form("");//varchar2	20					반입 유해화학물질 화학식
            userDemoBsDetailVO.setIn_hazd_chemical1_amount("");//varchar2	20					반입 유해화학물질 예상사용량
            userDemoBsDetailVO.setIn_hazd_chemical1_case("");//varchar2	20					반입 유해화학물질 보관함
            userDemoBsDetailVO.setIn_hazd_chemical1_loc("");//varchar2	20					반입 유해화학물질 보관장소
            userDemoBsDetailVO.setIn_hazd_chemical1_etc("");//varchar2	40					반입 유해화학물질 특이사항
            userDemoBsDetailVO.setIn_hazd_chemical2("");//varchar2	40					반입 유해화학물질 명
            userDemoBsDetailVO.setIn_hazd_chemical2_form("");//varchar2	20					반입 유해화학물질 화학식
            userDemoBsDetailVO.setIn_hazd_chemical2_amount("");//varchar2	20					반입 유해화학물질 예상사용량
            userDemoBsDetailVO.setIn_hazd_chemical2_case("");//varchar2	20					반입 유해화학물질 보관함
            userDemoBsDetailVO.setIn_hazd_chemical2_loc("");//varchar2	20					반입 유해화학물질 보관장소
            userDemoBsDetailVO.setIn_hazd_chemical2_etc("");//varchar2	40					반입 유해화학물질 특이사항
            userDemoBsDetailVO.setIn_hazd_chemical3("");//varchar2	40					반입 유해화학물질 명
            userDemoBsDetailVO.setIn_hazd_chemical3_form("");//varchar2	20					반입 유해화학물질 화학식
            userDemoBsDetailVO.setIn_hazd_chemical3_amount("");//varchar2	20					반입 유해화학물질 예상사용량
            userDemoBsDetailVO.setIn_hazd_chemical3_case("");//varchar2	20					반입 유해화학물질 보관함
            userDemoBsDetailVO.setIn_hazd_chemical3_loc("");//varchar2	20					반입 유해화학물질 보관장소
            userDemoBsDetailVO.setIn_hazd_chemical3_etc("");//varchar2	40					반입 유해화학물질 특이사항
            userDemoBsDetailVO.setWaste_water_amount("");//varchar2	20					폐기물 오염수 발생량
            userDemoBsDetailVO.setWaste_water_case("");//varchar2	20					폐기물 오염수보관장소
            userDemoBsDetailVO.setWaste_water_ext_plan("");//varchar2	100					폐기물 오염수 방출계획
            userDemoBsDetailVO.setWaste_soil_amount("");//varchar2	20					폐기물 토양 발생량
            userDemoBsDetailVO.setWaste_soil_case("");//varchar2	20					폐기물 토양 보관장소
            userDemoBsDetailVO.setWaste_soil_ext_plan("");//varchar2	100					폐기물 토양 방출계획
            userDemoBsDetailVO.setFacil_pw1("");//varchar2	100					소요전력 장비명
            userDemoBsDetailVO.setFacil_pw1_type("");//varchar2	20					소요전력 장비 용도
            userDemoBsDetailVO.setFacil_pw1_v("");//varchar2	10					소요전력 장비 사용전원
            userDemoBsDetailVO.setFacil_pw1_w("");//varchar2	10					소요전력 장비 소비전력
            userDemoBsDetailVO.setFacil_pw2("");//varchar2	100					소요전력 장비명
            userDemoBsDetailVO.setFacil_pw2_type("");//varchar2	20					소요전력 장비 용도
            userDemoBsDetailVO.setFacil_pw2_v("");//varchar2	10					소요전력 장비 사용전원
            userDemoBsDetailVO.setFacil_pw2_w("");//varchar2	10					소요전력 장비 소비전력
            userDemoBsDetailVO.setFacil_pw3("");//varchar2	100					소요전력 장비명
            userDemoBsDetailVO.setFacil_pw3_type("");//varchar2	20					소요전력 장비 용도
            userDemoBsDetailVO.setFacil_pw3_v("");//varchar2	10					소요전력 장비 사용전원
            userDemoBsDetailVO.setFacil_pw3_w("");//varchar2	10					소요전력 장비 소비전력

            userDemoBsService.saveUserDemoBsDetail(userDemoBsDetailVO);

            if (userBsHumanResourceVOList != null && !userBsHumanResourceVOList.isEmpty()) {
                userDemoBsService.deleteUserDemoBsHumanResource(userDemoBsVo.getIdx_user_demo_bs());
            } else {
                userBsHumanResourceVOList = new ArrayList<UserBsHumanResourceVO>();
            }

            for (int i = 1; i < 4; i++) {
                UserBsHumanResourceVO userBsHumanResourceVO = new UserBsHumanResourceVO();

                userBsHumanResourceVO.setIdx_user_demo_bs(userDemoBsVo.getIdx_user_demo_bs());//	number	32
                userBsHumanResourceVO.setRnd_user_order(i);//	number	4
                userBsHumanResourceVO.setRnd_user_name("");//	varchar2	20
                userBsHumanResourceVO.setRnd_user_role("");//	varchar2	20
                userBsHumanResourceVO.setRnd_user_code("");//	varchar2	40
                userBsHumanResourceVO.setRnd_user_birth("");//	varchar2	20
                userBsHumanResourceVO.setRnd_user_grad("");//	varchar2	40
                userBsHumanResourceVO.setRnd_user_col("");//	varchar2	40
                userBsHumanResourceVO.setRnd_user_school("");//	varchar2	40
                userBsHumanResourceVO.setRnd_user_col_date("");//	varchar2	20
                userBsHumanResourceVO.setRnd_user_col_part("");//	varchar2	20
                userBsHumanResourceVO.setRnd_user_6t("");//	varchar2	40
                userBsHumanResourceVO.setRnd_user_result("");//	varchar2	100

                userBsHumanResourceVOList.add(userBsHumanResourceVO);
            }
        } else {

        }
        List<UserDemoBsFileResultVO> fileList = fileService.getUserDemoFileList(userDemoBsVo.getIdx_user_demo_bs());

        model.addAttribute("fileArr", fileList);

        model.addAttribute("userDemoBsDetailVO", userDemoBsDetailVO);

        model.addAttribute("userBsHumanResourceVOList", userBsHumanResourceVOList);

        getHomepageInfo(model);
        satProfile(model);
        return "app_step3";
    }

    @RequestMapping("/app_step4")
    public String app_step4(HttpSession session
            , UserDemoBsCheckVO userDemoBsCheckVO
            , Model model) {
        if (session == null
                || session.getAttribute("loginCheck") == null
                || (session.getAttribute("loginCheck") != null && (Boolean) session.getAttribute("loginCheck") == false)
                || (session.getAttribute("userid") == null)) {//로그인 필요

            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        UserVO findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));
        if (findUser == null) {
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        model.addAttribute("user", findUser);
        DemoBusinessVO demoBusinessVo = demoBsService.getDemoBsByIdx(userDemoBsCheckVO.getIdx_demo_business());

        if (demoBusinessVo == null) {//해당 사업 없음, 에러페이지로 보내야 한다...

            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }

        model.addAttribute("demoBs", demoBusinessVo);

        UserDemoBsVO userDemoBsVo = userDemoBsService.getUserDemoBs(userDemoBsCheckVO);
        if (userDemoBsVo == null) {//이전에 저장한게 없다, 에러페이지로 보내야 한다...
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        model.addAttribute("userDemoBs", userDemoBsVo);

        UserDemoBsDetailVO userDemoBsDetailVO = userDemoBsService.getUserDemoBsDetail(userDemoBsVo.getIdx_user_demo_bs());

        List<UserBsHumanResourceVO> userBsHumanResourceVOList = userDemoBsService.getUserDemoBsHumanResourceList(userDemoBsVo.getIdx_user_demo_bs());

        if (userDemoBsDetailVO == null || userBsHumanResourceVOList == null || userBsHumanResourceVOList.isEmpty()) {
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }

        model.addAttribute("userDemoBsDetailVO", userDemoBsDetailVO);

        model.addAttribute("userBsHumanResourceVOList", userBsHumanResourceVOList);

        getHomepageInfo(model);
        satProfile(model);
        return "app_step4";
    }

    @RequestMapping("/app_step5")
    public String app_step5(HttpSession session
            , UserDemoBsCheckVO userDemoBsCheckVO
            , Model model) {
        if (session == null
                || session.getAttribute("loginCheck") == null
                || (session.getAttribute("loginCheck") != null && (Boolean) session.getAttribute("loginCheck") == false)
                || (session.getAttribute("userid") == null)) {//로그인 필요

            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        UserVO findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));
        if (findUser == null) {
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        model.addAttribute("user", findUser);

        DemoBusinessVO demoBusinessVo = demoBsService.getDemoBsByIdx(userDemoBsCheckVO.getIdx_demo_business());

        if (demoBusinessVo == null) {//해당 사업 없음, 에러페이지로 보내야 한다...

            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }

        model.addAttribute("demoBs", demoBusinessVo);

        UserDemoBsVO userDemoBsVo = userDemoBsService.getUserDemoBs(userDemoBsCheckVO);
        if (userDemoBsVo == null) {//이전에 저장한게 없다, 에러페이지로 보내야 한다...
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        model.addAttribute("userDemoBs", userDemoBsVo);

        UserDemoBsDetailVO userDemoBsDetailVO = userDemoBsService.getUserDemoBsDetail(userDemoBsVo.getIdx_user_demo_bs());

        List<UserBsHumanResourceVO> userBsHumanResourceVOList = userDemoBsService.getUserDemoBsHumanResourceList(userDemoBsVo.getIdx_user_demo_bs());

        if (userDemoBsDetailVO == null || userBsHumanResourceVOList == null || userBsHumanResourceVOList.isEmpty()) {
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }

        List<UserDemoBsFileResultVO> fileList = fileService.getUserDemoFileList(userDemoBsVo.getIdx_user_demo_bs());

        model.addAttribute("fileArr", fileList);

        model.addAttribute("userDemoBsDetailVO", userDemoBsDetailVO);

        model.addAttribute("userBsHumanResourceVOList", userBsHumanResourceVOList);

        getHomepageInfo(model);
        satProfile(model);
        satProfile(model);
        return "app_step5";
    }

    @RequestMapping("/app_step6")
    public String app_step6(HttpSession session
            , UserDemoBsCheckVO userDemoBsCheckVO
            , Model model) {
        if (session == null
                || session.getAttribute("loginCheck") == null
                || (session.getAttribute("loginCheck") != null && (Boolean) session.getAttribute("loginCheck") == false)
                || (session.getAttribute("userid") == null)) {//로그인 필요

            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        UserVO findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));
        if (findUser == null) {
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        model.addAttribute("user", findUser);

        UserDemoBsVO userDemoBsVo = userDemoBsService.getUserDemoBs(userDemoBsCheckVO);
        if (userDemoBsVo == null) {//이전에 저장한게 없다, 에러페이지로 보내야 한다...
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        model.addAttribute("userDemoBs", userDemoBsVo);

        getHomepageInfo(model);
        satProfile(model);
        return "app_step6";
    }


    @RequestMapping("/arc_center")
    public String arc_center(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "arc_center";
    }

    @RequestMapping("/arc_form")
    public String arc_form(Model model) {
        List<FormFileInfoVO> formFileInfoVO = fileService.getFormFileList();
        model.addAttribute("formfileList", formFileInfoVO);
        getHomepageInfo(model);
        satProfile(model);
        return "arc_form";
    }

    @RequestMapping("/arc_pee")
    public String arc_pee(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "arc_pee";
    }

    @RequestMapping("/arc_rule")
    public String arc_rule(Model model) {
        List<RuleFileInfoVO> ruleFileInfoList = fileService.getRuleFileInfoList1();
        model.addAttribute("rulefileList", ruleFileInfoList);
        getHomepageInfo(model);
        satProfile(model);
        return "arc_rule";
    }

    @RequestMapping("/brd_announce")
    public String brd_announce(@RequestParam(value = "page", required = false) Integer page,
                               @RequestParam(name = "filter", required = false) String filter,
                               @RequestParam(name = "query", required = false) String query,
                               Model model) {
        if (page == null || page <= 0) {
            page = 1;
        }

        int list_amount = 10;
        int page_amount = 10;

        query = decodeUrlValue(query);

        model.addAttribute("page", page);
        model.addAttribute("filter", filter);
        model.addAttribute("query", query);

        int annouceCount = bsAnnouncementService.getOpenBsAnnouncementCount(filter, query);
        if (annouceCount == 0) {
            satProfile(model);
            return "brd_announce_blank";
        }
        model.addAttribute("total_count", annouceCount);
        List<BsAnnouncementVO> announcementVOList = bsAnnouncementService.getOpenBsAnnouncementWebList(page, list_amount, filter, query);
        model.addAttribute("announceList", announcementVOList);

        model.addAttribute("cur_page", page);
        model.addAttribute("amount", list_amount);

        int tot_page = annouceCount / list_amount + 1;
        if (annouceCount % list_amount == 0) tot_page -= 1;

        int tot_sector = tot_page / page_amount + 1;
        if (tot_page % page_amount == 0) tot_sector -= 1;

        int cur_sector = page / page_amount + 1;
        if (page % page_amount == 0) cur_sector -= 1;

        boolean is_past = false;
        boolean is_prev = false;
        boolean is_next = false;
        boolean is_last = false;
        boolean is_active = false;

        if (page != tot_page && tot_page > 1) is_next = true;

        if (page != 1 && tot_page > 1) is_prev = true;

        if (cur_sector != tot_sector && tot_sector > 1) is_last = true;

        if (cur_sector != 1 && tot_sector > 1) is_past = true;

        if (tot_page <= page_amount) {
            is_past = false;
            is_last = false;
            page_amount = tot_page;
        }

        model.addAttribute("tot_page", tot_page);
        model.addAttribute("tot_sector", tot_sector);
        model.addAttribute("cur_sector", cur_sector);
        model.addAttribute("is_past", is_past);
        model.addAttribute("is_prev", is_prev);
        model.addAttribute("is_next", is_next);
        model.addAttribute("is_last", is_last);
        model.addAttribute("list_amount", list_amount);
        model.addAttribute("page_amount", page_amount);
        getHomepageInfo(model);
        satProfile(model);
        return "brd_announce";
    }

    @RequestMapping("/brd_announce_detail")
    public String brd_announce_detail(@RequestParam("idx") int idx,
                                      Model model) {
        BsAnnouncementVO bsAnnouncementVO = new BsAnnouncementVO();
        bsAnnouncementVO.setIdx_bs_announcement(idx);
        bsAnnouncementService.updateBsAnnounceViewCount(bsAnnouncementVO);
        BsAnnouncementVO bsAnnouncementInfo = bsAnnouncementService.getBsAnnouncementByIdx(idx);
        model.addAttribute("bsAnnouns", bsAnnouncementInfo);

        getHomepageInfo(model);
        satProfile(model);
        return "brd_announce_detail";
    }


    @RequestMapping("/brd_announce_blank")
    public String brd_announce_blank(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "brd_announce_blank";
    }

    @RequestMapping("/brd_announce_search")
    public String brd_announce_search(@RequestParam("page") int page,
                                      Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "brd_announce_search";
    }

    @RequestMapping("/brd_announce_search_blank")
    public String brd_announce_search_blank(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "brd_announce_search_blank";
    }


    @RequestMapping("/brd_event")
    public String brd_event(@RequestParam(name = "filter", required = false) String filter,
                            @RequestParam(name = "query", required = false) String query,
                            Model model) {

        int page = 1;

        int list_amount = 10;
        int page_amount = 10;

        query = decodeUrlValue(query);

        model.addAttribute("page", page);
        model.addAttribute("filter", filter);
        model.addAttribute("query", query);

        int eventCount = eventContentService.getOpenEventContentCount(filter, query);
        if (eventCount == 0) {
            satProfile(model);
            return "brd_event_blank";
        }
        model.addAttribute("total_count", eventCount);
        List<EventContentVO> eventContentVOList = eventContentService.getOpenEventContentList(page, list_amount, filter, query);
        model.addAttribute("eventContentVOList", eventContentVOList);

        model.addAttribute("cur_page", page);
        model.addAttribute("amount", list_amount);

        int tot_page = eventCount / list_amount + 1;
        if (eventCount % list_amount == 0) tot_page -= 1;

        int tot_sector = tot_page / page_amount + 1;
        if (tot_page % page_amount == 0) tot_sector -= 1;

        int cur_sector = page / page_amount + 1;
        if (page % page_amount == 0) cur_sector -= 1;

        boolean is_past = false;
        boolean is_prev = false;
        boolean is_next = false;
        boolean is_last = false;
        boolean is_active = false;

        if (page != tot_page && tot_page > 1) is_next = true;

        if (page != 1 && tot_page > 1) is_prev = true;

        if (cur_sector != tot_sector && tot_sector > 1) is_last = true;

        if (cur_sector != 1 && tot_sector > 1) is_past = true;

        if (tot_page <= page_amount) {
            is_past = false;
            is_last = false;
            page_amount = tot_page;
        }

        model.addAttribute("tot_page", tot_page);
        model.addAttribute("tot_sector", tot_sector);
        model.addAttribute("cur_sector", cur_sector);
        model.addAttribute("is_past", is_past);
        model.addAttribute("is_prev", is_prev);
        model.addAttribute("is_next", is_next);
        model.addAttribute("is_last", is_last);
        model.addAttribute("list_amount", list_amount);
        model.addAttribute("page_amount", page_amount);

        getHomepageInfo(model);
        satProfile(model);
        return "brd_event";
    }

    @RequestMapping("/brd_event_detail")
    public String brd_event_detail(@RequestParam("idx") int idx,
                                   Model model) {


        int view = eventContentService.getEventViewCount(idx);
        EventContentVO eventContentVO1 = new EventContentVO();
        eventContentVO1.setIdx_event_content(idx);
        eventContentVO1.setView_count(view + 1);
        eventContentService.updateEventViewCount(eventContentVO1);

//        EventContentVO event = eventContentService.getEventContentByIdx(idx);
        EventFileJoinSelectVO eventContentVO = eventContentService.getEventContentFileJoin(idx);
        model.addAttribute("eventContent", eventContentVO);
//        if (event.getIs_file() == 0) {
//
//            model.addAttribute("eventContent", event);
//        } else {
//
//            EventFileJoinSelectVO eventContentVO = eventContentService.getEventContentFileJoin(idx);
//            model.addAttribute("eventContent", eventContentVO);
//
//        }

        getHomepageInfo(model);
        satProfile(model);
        return "brd_event_detail";
    }

    @RequestMapping("/brd_event_blank")
    public String brd_event_blank(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "brd_event_blank";
    }

    @RequestMapping("/brd_event_search")
    public String brd_event_search(@RequestParam("page") int page,
                                   Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "brd_event_search";
    }

    @RequestMapping("/brd_event_search_blank")
    public String brd_event_search_blank(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "brd_event_search_blank";
    }


    @RequestMapping("/brd_notice")
    public String brd_notice(@RequestParam(value = "page", required = false) Integer page,
                             @RequestParam(name = "filter", required = false) String filter,
                             @RequestParam(name = "query", required = false) String query,
                             Model model) {
        if (page == null || page <= 0) {
            page = 1;
        }

        int list_amount = 10;
        int page_amount = 10;

        query = decodeUrlValue(query);

        model.addAttribute("page", page);
        model.addAttribute("filter", filter);
        model.addAttribute("query", query);

        int noticeCount = noticeService.getOpenNoticeCount(filter, query);
        if (noticeCount == 0) {
            satProfile(model);
            return "brd_notice_blank";
        }
        model.addAttribute("total_count", noticeCount);
        List<NoticeVO> noticeList = noticeService.getOpenNoticeList(page, list_amount, filter, query);
        model.addAttribute("noticeList", noticeList);

        model.addAttribute("cur_page", page);
        model.addAttribute("amount", list_amount);

        int tot_page = noticeCount / list_amount + 1;
        if (noticeCount % list_amount == 0) tot_page -= 1;

        int tot_sector = tot_page / page_amount + 1;
        if (tot_page % page_amount == 0) tot_sector -= 1;

        int cur_sector = page / page_amount + 1;
        if (page % page_amount == 0) cur_sector -= 1;

        boolean is_past = false;
        boolean is_prev = false;
        boolean is_next = false;
        boolean is_last = false;
        boolean is_active = false;

        if (page != tot_page && tot_page > 1) is_next = true;

        if (page != 1 && tot_page > 1) is_prev = true;

        if (cur_sector != tot_sector && tot_sector > 1) is_last = true;

        if (cur_sector != 1 && tot_sector > 1) is_past = true;

        if (tot_page <= page_amount) {
            is_past = false;
            is_last = false;
            page_amount = tot_page;
        }

        model.addAttribute("tot_page", tot_page);
        model.addAttribute("tot_sector", tot_sector);
        model.addAttribute("cur_sector", cur_sector);
        model.addAttribute("is_past", is_past);
        model.addAttribute("is_prev", is_prev);
        model.addAttribute("is_next", is_next);
        model.addAttribute("is_last", is_last);
        model.addAttribute("list_amount", list_amount);
        model.addAttribute("page_amount", page_amount);

//        getHomepageInfo(model);
        satProfile(model);
        return "brd_notice";
    }

    @RequestMapping("/brd_notice_detail")
    public String brd_notice_detail(@RequestParam("idx") int idx,
                                    Model model) {
        NoticeVO noticeVO1 = new NoticeVO();
        noticeVO1.setIdx_notice(idx);
        noticeService.updateNoticeViewCount(noticeVO1);

        NoticeVO noticeVO = noticeService.getNoticeIsFile(idx);
        model.addAttribute("noticeInfo", noticeVO);

//        NoticeVO noticeInfo = noticeService.getNoticeByIdx(idx);
//        if (noticeInfo.getIs_file() == 0) {
//            model.addAttribute("noticeInfo", noticeInfo);
//        } else {
//            NoticeVO noticeVO = noticeService.getNoticeIsFile(idx);
//            model.addAttribute("noticeInfo", noticeVO);
//
//        }


        getHomepageInfo(model);
        satProfile(model);
        return "brd_notice_detail";
    }

    @RequestMapping("/brd_notice_blank")
    public String brd_notice_blank(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "brd_notice_blank";
    }

    @RequestMapping("/brd_notice_search")
    public String brd_notice_search(@RequestParam("page") int page,
                                    Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "brd_notice_search";
    }

    @RequestMapping("/brd_notice_search_blank")
    public String brd_notice_search_blank(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "brd_notice_search_blank";
    }

    @RequestMapping("/brd_promotion")
    public String brd_promotion(@RequestParam(name = "filter", required = false) String filter,
                                @RequestParam(name = "query", required = false) String query,
                                Model model) {
        int page = 1;

        int list_amount = 10;
        int page_amount = 10;

        query = decodeUrlValue(query);

        model.addAttribute("page", page);
        model.addAttribute("filter", filter);
        model.addAttribute("query", query);

        int promotionCount = prContentService.getOpenPRContentCount(filter, query);
        if (promotionCount == 0) {
            satProfile(model);
            return "brd_promotion_blank";
        }
        model.addAttribute("total_count", promotionCount);
        List<PRContentVO> prContentList = prContentService.getOpenPRContentList(page, list_amount, filter, query);
        model.addAttribute("prContentList", prContentList);

        model.addAttribute("cur_page", page);
        model.addAttribute("amount", list_amount);

        int tot_page = promotionCount / list_amount + 1;
        if (promotionCount % list_amount == 0) tot_page -= 1;

        int tot_sector = tot_page / page_amount + 1;
        if (tot_page % page_amount == 0) tot_sector -= 1;

        int cur_sector = page / page_amount + 1;
        if (page % page_amount == 0) cur_sector -= 1;

        boolean is_past = false;
        boolean is_prev = false;
        boolean is_next = false;
        boolean is_last = false;
        boolean is_active = false;

        if (page != tot_page && tot_page > 1) is_next = true;

        if (page != 1 && tot_page > 1) is_prev = true;

        if (cur_sector != tot_sector && tot_sector > 1) is_last = true;

        if (cur_sector != 1 && tot_sector > 1) is_past = true;

        if (tot_page <= page_amount) {
            is_past = false;
            is_last = false;
            page_amount = tot_page;
        }

        model.addAttribute("tot_page", tot_page);
        model.addAttribute("tot_sector", tot_sector);
        model.addAttribute("cur_sector", cur_sector);
        model.addAttribute("is_past", is_past);
        model.addAttribute("is_prev", is_prev);
        model.addAttribute("is_next", is_next);
        model.addAttribute("is_last", is_last);
        model.addAttribute("list_amount", list_amount);
        model.addAttribute("page_amount", page_amount);

        getHomepageInfo(model);
        satProfile(model);
        return "brd_promotion";
    }

    @RequestMapping("/brd_promotion_detail")
    public String brd_promotion_detail(@RequestParam("idx") int idx,
                                       Model model) {

        int view = prContentService.getPrViewCount(idx);
        PRContentVO prContentVO2 = new PRContentVO();
        prContentVO2.setIdx_pr_content(idx);
        prContentService.updatePrViewCount(prContentVO2);
        PRContentVO prContentVO1 = prContentService.getPRContentFileJoin(idx);
        model.addAttribute("pr", prContentVO1);

        getHomepageInfo(model);
        satProfile(model);
        return "brd_promotion_detail";
    }

    @RequestMapping("/brd_promotion_blank")
    public String brd_promotion_blank(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "brd_promotion_blank";
    }

    @RequestMapping("/brd_promotion_search")
    public String brd_promotion_search(@RequestParam("page") int page,
                                       Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "brd_promotion_search";
    }

    @RequestMapping("/brd_promotion_search_blank")
    public String brd_promotion_search_blank(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "brd_promotion_search_blank";
    }


    @RequestMapping("/cnt_goal")
    public String cnt_goal(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "cnt_goal";
    }

    @RequestMapping("/cnt_history")
    public String cnt_history(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "cnt_history";
    }

    @RequestMapping("/cnt_map")
    public String cnt_map(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "cnt_map";
    }

    @RequestMapping("/cnt_organize")
    public String cnt_organize(Model model) {
        //조직도, 직원 정보
        List<CoWorkerVO> coWorkerVOList = coWorkerNService.getCoWorkerList();
        model.addAttribute("coWorkerVOList", coWorkerVOList);

        getHomepageInfo(model);
        satProfile(model);
        return "cnt_organize";
    }

    @RequestMapping("/join")
    public String join() {

        return "join";
    }

    @RequestMapping("/join_2")
    public String join_2() {
        return "join_2";
    }

    @RequestMapping("/join_group")
    public String join_group(HttpSession session,
                             Model model,
                             @RequestParam(value = "service_agree") String service_agree,
                             @RequestParam(value = "privacy_agree") String privacy_agree,
                             @RequestParam(value = "third_party_agree") String third_party_agree) {

        if (service_agree != null && service_agree.equals("1")
                && privacy_agree != null && privacy_agree.equals("1")
                && third_party_agree != null && third_party_agree.equals("1")) {
            session.setAttribute("service_agree", service_agree);
            session.setAttribute("privacy_agree", privacy_agree);
            session.setAttribute("third_party_agree", third_party_agree);
        } else {
            return "/errors/404";
        }
        ArrayList<CorpInfoVO> corpInfoVOList = corpService.selectCorpInfo();

        model.addAttribute("corps", corpInfoVOList);


        return "join_group";
    }

    @RequestMapping("/join_person")
    public String join_person(HttpSession session,
                              Model model,
                              @RequestParam(value = "service_agree") String service_agree,
                              @RequestParam(value = "privacy_agree") String privacy_agree,
                              @RequestParam(value = "third_party_agree") String third_party_agree) {

        if (service_agree != null && service_agree.equals("1")
                && privacy_agree != null && privacy_agree.equals("1")
                && third_party_agree != null && third_party_agree.equals("1")) {
            session.setAttribute("service_agree", service_agree);
            session.setAttribute("privacy_agree", privacy_agree);
            session.setAttribute("third_party_agree", third_party_agree);
        } else {
            satProfile(model);
            return "/errors/404";
        }

        ArrayList<CorpInfoVO> corpInfoVOList = corpService.selectCorpInfo();

        model.addAttribute("corps", corpInfoVOList);

        satProfile(model);
        return "join_person";
    }

    @RequestMapping("/juso_search")
    public String juso_search(@RequestParam(value = "juso_type") String juso_type,
                              Model model) {

        model.addAttribute("searchSeverUrl", jusoService.getSearchServerUrl());
        model.addAttribute("juso_type", juso_type);
        satProfile(model);
        return "juso_search";
    }

    @RequestMapping("/join_welcome")
    public String join_welcome() {
        return "join_welcome";
    }

    @RequestMapping("/login")
    public String login(HttpSession session, Model model) {
        clearSessionAndRedirect(session);
        getHomepageInfo(model);
        satProfile(model);
        return "login";
    }

    @RequestMapping("/my_agreement")
    public String my_agreement(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "my_agreement";
    }

    @RequestMapping("/my_business")
    public String my_business(HttpSession session
            , Model model) {
        if (session == null
                || session.getAttribute("loginCheck") == null
                || (session.getAttribute("loginCheck") != null && (Boolean) session.getAttribute("loginCheck") == false)
                || (session.getAttribute("userid") == null)) {//로그인 필요

            clearSessionAndRedirect(session);

            satProfile(model);
            return "index";
        }
        UserVO findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));
        if (findUser == null) {
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        model.addAttribute("user", findUser);

        List<UserDemoBsVO> userDemoBsVOs = userDemoBsService.getUserDemoBsListByUserIdx(findUser.getIdx_user());

        if (userDemoBsVOs == null || userDemoBsVOs.isEmpty())//찾고 보니 지원 정보가 없네......
        {
            //개인정보 업데이트 필요!
            //userService.update();
            satProfile(model);
            return "my_business_blank";
        }
        model.addAttribute("user_demo_bs_count", userDemoBsVOs.size());


//        for(int i=0;i<userDemoBsVOs.size();i++)
//        {
//            List<DemoBsMsgVO> demoBsMsgVOs = userDemoBsService.getDemoBsMsgByUserDemoBSIdx(userDemoBsVOs.get(i).getIdx_user_demo_bs());
//            userDemoBsVOs.get(i).setDemoBsMsgVo(demoBsMsgVOs.get(0));
//        System.out.println("왔음2 ");
//        }
//        System.out.println("왔음3");
//        System.out.println(userDemoBsVOs);
        model.addAttribute("demoList", userDemoBsVOs);

        getHomepageInfo(model);
        satProfile(model);
        return "my_business";
    }

    @RequestMapping("/my_business_blank")
    public String my_business_blank(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "my_business_blank";
    }

    @RequestMapping("/my_consignment")
    public String my_consignment(Model model) {


        getHomepageInfo(model);
        satProfile(model);
        return "my_consignment";
    }

    @RequestMapping("/my_group")
    public String my_group(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "my_group";
    }

    @RequestMapping("/my_info")
    public String my_info(HttpSession session
            , Model model) {

        if (session == null
                || session.getAttribute("loginCheck") == null
                || (session.getAttribute("loginCheck") != null && (Boolean) session.getAttribute("loginCheck") == false)
                || (session.getAttribute("userid") == null)) {//로그인 필요

            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }

        UserVO findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));
        if (findUser == null) {
            session.removeAttribute("loginCheck");
            clearSessionAndRedirect(session);
            satProfile(model);
            return "index";
        }
        model.addAttribute("user", findUser);

        if (findUser.getIs_corporate_member() == CONSTANT.yes) {
            CorpInfoVO corpInfoVO = corpService.getCorpInfo(findUser.getIdx_corp_info());
            if (corpInfoVO == null || corpInfoVO.getIdx_corp_info() == 0)//찾고 보니 회사 정보가 없네......
            {
                //개인정보 업데이트 필요!
                //userService.update();
                findUser.setIs_corporate_member(CONSTANT.no);
            }
            model.addAttribute("corp", corpInfoVO);

        }

        getHomepageInfo(model);
        satProfile(model);
        return "my_info";
    }

    @RequestMapping("/prv_application")
    public String prv_application(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "prv_application";
    }

    @RequestMapping("/prv_bill")
    public String prv_bill(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "prv_bill";
    }

    @RequestMapping("/prv_facility")
    public String prv_facility(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "prv_facility";
    }

    @RequestMapping("/prv_fee")
    public String prv_fee(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "prv_fee";
    }

    @RequestMapping("/prv_location")
    public String prv_location(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "prv_location";
    }

    @RequestMapping("/prv_office")
    public String prv_office(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "prv_office";
    }

    @RequestMapping("/prv_part")
    public String prv_part(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "prv_part";
    }

    @RequestMapping("/prv_prepare")
    public String prv_prepare(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "prv_prepare";
    }

    @RequestMapping("/prv_register")
    public String prv_register(HttpSession session
            , Model model) {

        if (session != null
                && (session.getAttribute("loginCheck") != null && (Boolean) session.getAttribute("loginCheck") == true)
                && (session.getAttribute("userid") != null && session.getAttribute("userid") != null)) {//로그인 유저

            UserVO findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));

            if (findUser != null) {
                //session.setAttribute("loginCheck", true);
                model.addAttribute("is_login", true);

                List<DemoBusinessVO> demoBsList = demoBsService.getAvailibleDemoBs();
                model.addAttribute("demoBsList", demoBsList);

            } else {//세션 만료 혹은 부정 접근
                model.addAttribute("is_login", false);
                clearSessionAndRedirect(session);
            }

        } else {
            model.addAttribute("is_login", false);
        }


        getHomepageInfo(model);
        satProfile(model);
        return "prv_register";
    }

    @RequestMapping("/prv_step")
    public String prv_step(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "prv_step";
    }

    @RequestMapping("/prv_subsidy")
    public String prv_subsidy(Model model) {


        getHomepageInfo(model);
        satProfile(model);
        return "prv_subsidy";
    }

    @RequestMapping("/prv_support")
    public String prv_support(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "prv_support";
    }

    @RequestMapping("/prv_use")
    public String prv_use(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "prv_use";
    }

    @RequestMapping("/spt_faq")
    public String spt_faq(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "spt_faq";
    }

    @RequestMapping("/spt_consulting")
    public String spt_consulting(HttpSession session
            , Model model) {


        UserVO findUserVO = null;


        if (session != null
                && (session.getAttribute("loginCheck") != null && (Boolean) session.getAttribute("loginCheck") == true)
                && (session.getAttribute("userid") != null && session.getAttribute("userid") != null)) {//로그인 유저

            findUserVO = userService.findUserById(String.valueOf(session.getAttribute("userid")));

            if (findUserVO != null) {
                //session.setAttribute("loginCheck", true);
                model.addAttribute("is_login", true);


                model.addAttribute("findUserVO", findUserVO);
                model.addAttribute("idx_user", findUserVO.getIdx_user());
                //CorpInfoVO corpInfoVO = corpService.getCorpInfo(findUserVO.getIdx_corp_info());
                //model.addAttribute("corpInfoVO",corpInfoVO);
            } else {//세션 만료 혹은 부정 접근
                model.addAttribute("is_login", false);
                clearSessionAndRedirect(session);
                satProfile(model);
                return "spt_consulting";
            }

        } else {
            model.addAttribute("idx_user", 0);
            model.addAttribute("is_login", false);
        }

        getHomepageInfo(model);
        satProfile(model);
        return "spt_consulting";
    }

    @RequestMapping("/spt_visit")
    public String spt_visit(HttpSession session
            , Model model) {
        UserVO findUser = null;
        //model.addAttribute("is_login",false);


        if (session != null
                && (session.getAttribute("loginCheck") != null && (Boolean) session.getAttribute("loginCheck") == true)
                && (session.getAttribute("userid") != null && session.getAttribute("userid") != null)) {//로그인 유저

            findUser = userService.findUserById(String.valueOf(session.getAttribute("userid")));

            if (findUser != null) {
                //session.setAttribute("loginCheck", true);

                model.addAttribute("is_login", true);
                //int list_amount = 10;
                //int page_amount = 10;

                //int visitReqCount = visitService.getUserVisitReqCount(findUser.getIdx_user());
                //model.addAttribute("total_count",visitReqCount);

                /*if(visitReqCount==0){ //컨설팅한게 업다

                    satProfile(model);
return "spt_visit";
                }*/

                model.addAttribute("idx_user", findUser.getIdx_user());

                //List<VisitReqVO> visitReqVOS = visitService.getUserVisitReq(findUser.getIdx_user(),page,list_amount);


            } else {//세션 만료 혹은 부정 접근
                model.addAttribute("is_login", false);
                clearSessionAndRedirect(session);
                satProfile(model);
                return "spt_visit";
            }

        } else {
            model.addAttribute("idx_user", 0);
            model.addAttribute("is_login", false);
        }

        getHomepageInfo(model);
        satProfile(model);
        return "spt_visit";
    }

    @RequestMapping("/template")
    public String template(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "template";
    }

    @RequestMapping("/util_search")
    public String util_search(Model model) {

        getHomepageInfo(model);
        satProfile(model);
        return "util_search";
    }

    @RequestMapping("/util_search_blant")
    public String util_search_blant(Model model) {


        getHomepageInfo(model);
        satProfile(model);
        return "util_search_blant";
    }

    @RequestMapping("/our_sitemap")
    public String our_sitemap(Model model) {


        getHomepageInfo(model);
        satProfile(model);
        return "our_sitemap";
    }

    @RequestMapping("/our_tos")
    public String our_tos(Model model) {


        getHomepageInfo(model);
        satProfile(model);
        return "our_tos";
    }

    @RequestMapping("/personal_data")
    public String personal_data(Model model) {


        getHomepageInfo(model);
        satProfile(model);
        return "personal_data";
    }


    //== Helper Function=========================
    public void clearSessionAndRedirect(HttpSession session) {

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
    public String denied() {
        return "util_search_blant";
    }



    public void getHomepageInfo(Model model) {
        HomepageInfoVO homepageInfoVO = homepageInfoService.getHomepageInfo();


        model.addAttribute("homepageInfo", homepageInfoVO);

    }

    private void satProfile(Model model) {
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

    private String decodeUrlValue(String value) {

        if (value == null) {
            return null;
        }

        try {
            return URLDecoder.decode(value, StandardCharsets.UTF_8.toString());
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
