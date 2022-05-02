package kr.or.fact.admin.controller;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.service.*;
import kr.or.fact.core.util.CONSTANT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Controller
public class APIController {
    @Resource(name = "userService")
    UserService userService;

    @Resource(name = "corpService")
    CorpService corpService;

    @Resource(name = "adminService")
    AdminService adminService;

    @Resource(name = "demoBsService")
    DemoBsService demoBsService;

    @Resource(name = "mailService")
    MailService mailService;

    @Resource(name = "smsService")
    public SmsSendService smsSendService;

    @Resource(name = "demoBsApplicationService")
    public DemoBsApplicationService demoBsApplicationService;

    @Resource(name = "userDemoBsService")
    public UserDemoBsService userDemoBsService;

    @Autowired
    private JavaMailSender mailSender;



    @RequestMapping(value = "/admin_login",method = RequestMethod.POST)
    public @ResponseBody ResultVO admin_login(HttpSession session
            ,ModelMap model
            ,@RequestBody AdminVO adminVo) {

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("아이디 또는 비밀번호를 찾을수 없습니다");
        resultVO.setResult_code("ERROR_1000");
        session.setAttribute("loginCheck", false);

        if (adminVo.getAdmin_id() != null && adminVo.getAdmin_pw() != null) {
            AdminVO findAdmin = adminService.login(adminVo.getAdmin_id(), adminVo.getAdmin_pw());

            if (findAdmin != null) {
                model.addAttribute("adminVo", findAdmin);
                session.setAttribute("loginCheck", true);
                session.setAttribute("admin_id", findAdmin.getAdmin_id());
                session.setAttribute("name", findAdmin.getAdmin_name());

                resultVO.setResult_str("로그인 성공");
                resultVO.setResult_code(CONSTANT.Success);
            }
        }

        return resultVO;
    }

    @RequestMapping(value = "/user_id_check",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO user_id_check(HttpSession session,
                           @RequestBody UserVO userVo){
        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("아이디 형식을 확인해 주세요");
        resultVO.setResult_code("ERROR_1000");

        if(userVo!=null && userVo.getUser_id() !=null){
            UserVO userVO = userService.findUserById(userVo.getUser_id());
            if(userVO !=null){
                resultVO.setResult_str("아이디를 사용할 수 없습니다");
                resultVO.setResult_code("ERROR_1001");
            }
            else {
                resultVO.setResult_str("아이디를 사용할 수 있습니다");
                resultVO.setResult_code("SUCCESS");
            }
        }
        return resultVO;
    }
    @RequestMapping(value = "/search_corp_list",method = RequestMethod.POST)
    public String search_corp_list(HttpSession session,
                                      Model model,
                                      @RequestParam(value="corp_name") String corp_name){
        if(corp_name !=null){
            List<SimpleCorpInfoVO> simpleCorpInfoVOList = corpService.getSimpleCorpInfoList( corp_name);
            if(simpleCorpInfoVOList==null || simpleCorpInfoVOList.isEmpty()){
                model.addAttribute("count",0);
            }
            else {
                model.addAttribute("count",simpleCorpInfoVOList.size());
                model.addAttribute("corpList",simpleCorpInfoVOList);
            }
        }
        return "include/corp_list";
    }
    @RequestMapping(value = "/join_confirm",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO  join_confirm(HttpSession session,
                           @RequestBody UserVO userVo){
        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("회원가입에 필요한 데이터가 없습니다");
        resultVO.setResult_code("ERROR_1000");

        if(userVo!=null && userVo.getUser_id() !=null
                && userVo.getUser_id() !=null
                && userVo.getUser_pw() !=null
                && userVo.getUser_name() !=null
                && userVo.getAddr() !=null
                && userVo.getMphone_num() !=null
                && userVo.getEmail() !=null){

            UserVO findUserVo = userService.findUserById(userVo.getUser_id());
            if(findUserVo !=null){
                resultVO.setResult_str("이미 사용중인 아이디입니다");
                resultVO.setResult_code("ERROR_1001");
            }
            else {
                userVo.setUser_type(0);

                userVo.setIs_service_agree(1);
                userVo.setService_agree_ver(1);
                userVo.setIs_privacy_agree(1);;
                userVo.setPrivacy_agree_ver(1);
                userVo.setIs_maketing_agree(1);
                userVo.setMaketing_agree_ver(1);
                userVo.setAuth_status(0);

                if(userVo.getIdx_corp_info()!=0)
                {
                    CorpInfoVO corpInfoVO = corpService.getCorpInfo(userVo.getIdx_corp_info());
                    if(corpInfoVO!=null){
                        userVo.setIs_applicant(corpInfoVO.getIs_applicant());
                        userVo.setIs_corporate_member(1);
                    }
                }
                userVo.setSign_in_type(0);

                long idx_user = userService.join(userVo);
                if(idx_user>0){
                    resultVO.setResult_str("가입되었습니다");
                    resultVO.setResult_code(CONSTANT.Success);
                }
            }
        }//필수 데이터 체크 if
        return resultVO;
    }
    @RequestMapping(value = "/demo_bs_list_by_filter",method = RequestMethod.POST)
    public String demo_bs_list_by_filter(HttpSession session,
                           @RequestBody SingPramVO sing){

        int filterType = sing.getInt_param();

        demoBsService.getAdminDemoBsFilter();

        return "pages/demoBsListByFilter";
    }

    @RequestMapping(value = "/appl_list_by_b21_filtered",method = RequestMethod.POST)
    public String demo_bs_list_by_filter(HttpSession session,
                                         @RequestBody ParamPageListFilteredVO param,
                                         Model model){
        int page = param.getPage_num();
        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();

        int list_amount = 10;
        int page_amount = 10;

        AdminDemoBSFilterVO adminDemoBSFilterVO = demoBsService.getAdminDemoBsFilter();
        //리스트 총갯수를 이때 빼야 함
        int filtered_item_total = adminDemoBSFilterVO.getTot_count();
        if(filter1==CONSTANT.DEMOBS_FILTER_APPL)
            filtered_item_total = adminDemoBSFilterVO.getAppl_count();
        else if(filter1==CONSTANT.DEMOBS_FILTER_REVUIEW)
            filtered_item_total = adminDemoBSFilterVO.getRevuiew_count();
        else if(filter1==CONSTANT.DEMOBS_FILTER_AGREE)
            filtered_item_total = adminDemoBSFilterVO.getAgree_count();
        else if(filter1==CONSTANT.DEMOBS_FILTER_DEMO)
            filtered_item_total = adminDemoBSFilterVO.getDemo_count();
        else if(filter1==CONSTANT.DEMOBS_FILTER_RESULT)
            filtered_item_total = adminDemoBSFilterVO.getResult_count();

        model.addAttribute("total_count",filtered_item_total);
        model.addAttribute("adminDemoBsFilter",adminDemoBSFilterVO);
        model.addAttribute("idx_demo_business",param.getIdx());

        ListPagingParamVO listPagingParamVO = new ListPagingParamVO();
        listPagingParamVO.setPage_num(page);
        listPagingParamVO.setAmount(list_amount);
        listPagingParamVO.setFilter1(filter1);
        listPagingParamVO.setFilter2(filter2);
        listPagingParamVO.setOrder_field("IDX_DEMO_BUSINESS");
        listPagingParamVO.setIdx(param.getIdx());

        List<AdminApplHeaderListVO> adminApplHeaderListVOS =  demoBsApplicationService.getApplPagingFilteredList(listPagingParamVO);
        //List<DemoBusinessVO>  demoBusinessVOList = demoBsService.getDemoBsPagingList(listPagingParamVO);

        model.addAttribute("adminApplHeaderListVOS",adminApplHeaderListVOS);
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

        return "pages/appl_list_by_b21_filtered";
    }

    @RequestMapping(value = "/send_mail",method = RequestMethod.POST)
    public String send_mail(@ModelAttribute MailVO mailVO, HttpSession session, HttpServletRequest request) throws Exception, IOException {
        System.out.println(session.getAttribute("admin_id"));
        String title = mailVO.getTitle();
        String content = mailVO.getContent();
        String receiver = mailVO.getReceiver();
        int fileLength = Integer.parseInt(mailVO.getFileLength());
        File[] files = new File[5];
        if(fileLength > 0){
            files[0] = mailService.convertMultipartToFile(mailVO.getFiles1());
            if(fileLength >= 2){
                files[1] = mailService.convertMultipartToFile(mailVO.getFiles2());
                if(fileLength >= 3){
                    files[2] = mailService.convertMultipartToFile(mailVO.getFiles3());
                    if(fileLength >= 4){
                        files[3] = mailService.convertMultipartToFile(mailVO.getFiles4());
                        if(fileLength == 5){
                            files[4] = mailService.convertMultipartToFile(mailVO.getFiles5());

                        }
                    }
                }
            }
        }
        try {
            MimeMessage mail = mailSender.createMimeMessage();
            MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8");

            mailHelper.setFrom("김태선 <taeseon@4thevision.com>"); // 보내는 사람 정보도 와야함
            mailHelper.setTo(receiver);
            mailHelper.setSubject(title != null ? content : "제목없는 이메일");
            mailHelper.setText(content != null ? content : "", true);
            for(int i = 0; i < fileLength; i++){
                FileSystemResource file = new FileSystemResource(files[i]);
                mailHelper.addAttachment(file.getFilename(),files[i]);
            }
            mailSender.send(mail);


            for(int i = 0; i < fileLength; i++){
                files[i].delete();
            }
            System.out.println("전송 완료");
            return "메일이 정상적으로 전송되었습니다.";
        } catch (Exception e){
            System.out.println("전송 실패");
            System.out.println(e);
            for(int i = 0; i < fileLength; i++){
                files[i].delete();
            }
            return "전송이 실패했습니다.";
        }
    }
    @RequestMapping(value = "/sms",method = RequestMethod.POST)
    public @ResponseBody
    long insertSmsMessage(@RequestBody SmsSendVO smsSendVO) {
        System.out.println(smsSendVO);
        smsSendVO.setNow_date(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddhhmm")));
        return smsSendService.insertSmsMessage(smsSendVO);
    }

    @RequestMapping(value = "/sent_sms", method = RequestMethod.GET)
    public @ResponseBody
    ArrayList<SmsSentVO> selectSentmeesage1(){
        return smsSendService.selectSentmeesage1();
    }

    @RequestMapping(value = "/reserve_sms", method = RequestMethod.GET)
    public @ResponseBody
    ArrayList<SmsSendVO> selectReserveMessage(){
        return smsSendService.selectReserveMessage();
    }


    @RequestMapping(value = "/get_user_demo_bs_info",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO  join_confirm(HttpSession session,
                           @RequestBody ParamUserDemoBSInfoVO userDemoBSInfoVO){
        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("성공");
        resultVO.setResult_code("SUCCESS");
        UserDemoBsVO userDemoBsVO = userDemoBsService.getUserDemoBsByIdx(userDemoBSInfoVO.getIdx_user_demo_bs());

        if(userDemoBsVO==null){
            resultVO.setResult_str("해당 신청정보를 찾을수 없습니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }
        resultVO.setUserDemoBsVO(userDemoBsVO);
        return  resultVO;
    }
}
