package kr.or.fact.admin.controller;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.service.*;
import kr.or.fact.core.util.CONSTANT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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

import java.security.Principal;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
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

    @Resource(name = "visitService")
    public VisitService visitService;

    @Resource(name = "homepageInfoService")
    public HomepageInfoService homepageInfoService;

    @Resource(name = "systemService")
    public SystemService systemService;

    @Resource(name = "fileService")
    public FileService fileService;

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
            if(findAdmin.getAuth_status() == 0){
                resultVO.setResult_str("로그인 성공");
                resultVO.setResult_code("first_login");
            }
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

        int list_amount = param.getAmount();;
        int page_amount = param.getAmount();


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

        param.setOrder_field("IDX_DEMO_BUSINESS");
/*        ListPagingParamVO listPagingParamVO = new ListPagingParamVO();
        listPagingParamVO.setPage_num(page);
        listPagingParamVO.setAmount(list_amount);
        listPagingParamVO.setFilter1(filter1);
        listPagingParamVO.setFilter2(filter2);
        listPagingParamVO.setOrder_field("IDX_DEMO_BUSINESS");
        listPagingParamVO.setIdx(param.getIdx());*/

        List<AdminApplHeaderListVO> adminApplHeaderListVOS =  demoBsApplicationService.getApplPagingFilteredList(param);
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
        smsSendVO.setNow_date(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddhhmm")));
        System.out.println(smsSendVO);
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

        DemoBusinessVO demoBusinessVO = demoBsService.getDemoBsByIdx(userDemoBsVO.getIdx_demo_business());
        userDemoBsVO.setDemo_subject(demoBusinessVO.getDemo_subject());

        DemoBSApplicationVO demoBSApplicationVO = demoBsApplicationService.getDemoBsApplByIdx( userDemoBsVO.getIdx_user_demo_bs());
        userDemoBsVO.setDemo_bs_applicaion_code(demoBSApplicationVO.getDemo_bs_applicaion_code()==null?"":demoBSApplicationVO.getDemo_bs_applicaion_code());
        if(demoBSApplicationVO.getApplicaion_reg_date()==null)
        {
            Date date = new Date();
            demoBSApplicationVO.setApplicaion_reg_date(date);
        }
        userDemoBsVO.setApplicaion_reg_date(demoBSApplicationVO.getApplicaion_reg_date());

        CorpInfoVO corpInfoVO = corpService.getCorpInfo(userDemoBsVO.getIdx_corp_info());
        if(corpInfoVO==null){
            corpInfoVO = new CorpInfoVO();
            corpInfoVO.setIdx_corp_info(0);
            corpInfoVO.setIs_saved(0);
        }
        userDemoBsVO.setCorpInfoVO(corpInfoVO);

        resultVO.setUserDemoBsVO(userDemoBsVO);

        return  resultVO;
    }

    @RequestMapping(value = "/save_corp_info",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO  save_corp_info(HttpSession session,
                           @RequestBody CorpInfoVO corpInfoVO){
        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("성공");
        resultVO.setResult_code("SUCCESS");


        CorpInfoVO newCorpInfoVO = null;

        if(corpInfoVO.getIs_saved()==1){
            newCorpInfoVO = corpService.getCorpInfo(corpInfoVO.getIdx_corp_info());
            if(newCorpInfoVO!=null){
                if(corpInfoVO.getCorp_name_kor()!=null && !corpInfoVO.getCorp_name_kor().isEmpty()) newCorpInfoVO.setCorp_name_kor(corpInfoVO.getCorp_name_kor());//	varchar2	20					사업자등록번호
                if(corpInfoVO.getCompany_num()!=null && !corpInfoVO.getCompany_num().isEmpty()) newCorpInfoVO.setCompany_num(corpInfoVO.getCompany_num());//	varchar2	20					사업자등록번호
                if(corpInfoVO.getCorp_reg_num()!=null && !corpInfoVO.getCorp_reg_num().isEmpty()) newCorpInfoVO.setCorp_reg_num(corpInfoVO.getCorp_reg_num());//	varchar2	20					법인등록번호
                if(corpInfoVO.getTel_num()!=null && !corpInfoVO.getTel_num().isEmpty()) newCorpInfoVO.setTel_num(corpInfoVO.getTel_num());//	varchar2	20					본사 전화번호
                if(corpInfoVO.getFax_num()!=null && !corpInfoVO.getFax_num().isEmpty()) newCorpInfoVO.setFax_num(corpInfoVO.getFax_num());//	varchar2	20					fax 번호
                if(corpInfoVO.getEmail()!=null && !corpInfoVO.getEmail().isEmpty()) newCorpInfoVO.setEmail(corpInfoVO.getEmail());//	varchar2	320					대표 이메일
                if(corpInfoVO.getHomepage()!=null && !corpInfoVO.getHomepage().isEmpty()) newCorpInfoVO.setHomepage(corpInfoVO.getHomepage());//	varchar2	255					회사 홈페이지
                if(corpInfoVO.getCorp_addr()!=null && !corpInfoVO.getCorp_addr().isEmpty()) newCorpInfoVO.setCorp_addr(corpInfoVO.getCorp_addr());//	varchar2	200					본사 소재지
                if(corpInfoVO.getCorp_addr2()!=null && !corpInfoVO.getCorp_addr2().isEmpty()) newCorpInfoVO.setCorp_addr2(corpInfoVO.getCorp_addr2());//	VARCHAR2	200					본사 소재지 상세
                newCorpInfoVO.setOther_addr(corpInfoVO.getOther_addr());//	number	4		0			공장 혹은 농장 소유 여부	0:없음, 1:공장, 2:농장, 99:기타
                if(corpInfoVO.getOther_addr()!=null && !corpInfoVO.getOther_addr().isEmpty()) newCorpInfoVO.setOther_addr(corpInfoVO.getOther_addr());//	varchar2	200					공장 혹은 농장 주소
                newCorpInfoVO.setSales_in_prev(corpInfoVO.getSales_in_prev());//	number	38					전년도 매출액
                newCorpInfoVO.setCa_ratio(corpInfoVO.getCa_ratio());//	number	4					자기자본비율(capital adequacy ratio)
                newCorpInfoVO.setEmploee_num(corpInfoVO.getEmploee_num());//	number						직원수
                if(corpInfoVO.getBs_sector()!=null && !corpInfoVO.getBs_sector().isEmpty()) newCorpInfoVO.setBs_sector(corpInfoVO.getBs_sector());//	varchar2	100					업태, 종목(businness sectors)
                if(corpInfoVO.getProduct()!=null && !corpInfoVO.getProduct().isEmpty()) newCorpInfoVO.setProduct(corpInfoVO.getProduct());//	varchar2	100					주생산품목
                newCorpInfoVO.setCorp_type(corpInfoVO.getCorp_type());//	number	4		1			법인 종류	0:미등록기업(설립전), 1:일반기업, 2: 농업진흥기관, 3:선도기업, 4:외국연구기관, 5:특정연구기관, 6:정부출연연구기관, 7:스마트팜 관련 기업부설연구소 보유기업, 8: 대학교, 99:기타 단체
                newCorpInfoVO.setIs_benture(corpInfoVO.getIs_benture());//	NUMBER	4		0			벤처 여부	0:해당없음, 1:창업한지 7년 이하의 창업벤처기업
                if(corpInfoVO.getBs_plan()!=null && !corpInfoVO.getBs_plan().isEmpty()) newCorpInfoVO.setBs_plan(corpInfoVO.getBs_plan());//	varchar2	100					개발예정품목(기술)
                newCorpInfoVO.setIs_applicant(corpInfoVO.getIs_applicant());//	number	4					콘솔 사용 여부	0:콘솔사용 안함, 1:콘솔사용
                newCorpInfoVO.setDemo_facility_type(corpInfoVO.getDemo_facility_type());//	number	4		0			이용신청 시설	0:해당없음, 1:온실, 2:r&d연구실, 4:스타트업 사무실, 512: 기타
                if(corpInfoVO.getDemo_facility_etc()!=null && !corpInfoVO.getDemo_facility_etc().isEmpty()) newCorpInfoVO.setDemo_facility_etc(corpInfoVO.getDemo_facility_etc());//	varchar2	20					이용신청 시설 기타 내용
                if(corpInfoVO.getFounding_date()!=null) newCorpInfoVO.setFounding_date(corpInfoVO.getFounding_date());//	date						설립일

                corpService.updateCorpInfo(newCorpInfoVO);
            }
            else {
                resultVO.setResult_str("저장된 회사 정보가 없습니다");
                resultVO.setResult_code("ERROR_1001");
            }
        }
        else {
            newCorpInfoVO = new CorpInfoVO();
            if(corpInfoVO.getCompany_num()!=null)newCorpInfoVO.setCompany_num(corpInfoVO.getCompany_num());

            if(corpInfoVO.getCorp_reg_num()!=null ) newCorpInfoVO.setCorp_reg_num(corpInfoVO.getCorp_reg_num());//	varchar2	20					법인등록번호
            if(corpInfoVO.getTel_num()!=null ) newCorpInfoVO.setTel_num(corpInfoVO.getTel_num());//	varchar2	20					본사 전화번호
            if(corpInfoVO.getFax_num()!=null ) newCorpInfoVO.setFax_num(corpInfoVO.getFax_num());//	varchar2	20					fax 번호
            if(corpInfoVO.getEmail()!=null ) newCorpInfoVO.setEmail(corpInfoVO.getEmail());//	varchar2	320					대표 이메일
            if(corpInfoVO.getHomepage()!=null ) newCorpInfoVO.setHomepage(corpInfoVO.getHomepage());//	varchar2	255					회사 홈페이지
            if(corpInfoVO.getCorp_addr()!=null ) newCorpInfoVO.setCorp_addr(corpInfoVO.getCorp_addr());//	varchar2	200					본사 소재지
            if(corpInfoVO.getCorp_addr2()!=null ) newCorpInfoVO.setCorp_addr2(corpInfoVO.getCorp_addr2());//	VARCHAR2	200					본사 소재지 상세
            newCorpInfoVO.setOther_addr(corpInfoVO.getOther_addr());//	number	4		0			공장 혹은 농장 소유 여부	0:없음, 1:공장, 2:농장, 99:기타
            if(corpInfoVO.getOther_addr()!=null ) newCorpInfoVO.setOther_addr(corpInfoVO.getOther_addr());//	varchar2	200					공장 혹은 농장 주소
            newCorpInfoVO.setSales_in_prev(corpInfoVO.getSales_in_prev());//	number	38					전년도 매출액
            newCorpInfoVO.setCa_ratio(corpInfoVO.getCa_ratio());//	number	4					자기자본비율(capital adequacy ratio)
            newCorpInfoVO.setEmploee_num(corpInfoVO.getEmploee_num());//	number						직원수
            if(corpInfoVO.getBs_sector()!=null ) newCorpInfoVO.setBs_sector(corpInfoVO.getBs_sector());//	varchar2	100					업태, 종목(businness sectors)
            if(corpInfoVO.getProduct()!=null ) newCorpInfoVO.setProduct(corpInfoVO.getProduct());//	varchar2	100					주생산품목
            newCorpInfoVO.setCorp_type(corpInfoVO.getCorp_type());//	number	4		1			법인 종류	0:미등록기업(설립전), 1:일반기업, 2: 농업진흥기관, 3:선도기업, 4:외국연구기관, 5:특정연구기관, 6:정부출연연구기관, 7:스마트팜 관련 기업부설연구소 보유기업, 8: 대학교, 99:기타 단체
            newCorpInfoVO.setIs_benture(corpInfoVO.getIs_benture());//	NUMBER	4		0			벤처 여부	0:해당없음, 1:창업한지 7년 이하의 창업벤처기업
            if(corpInfoVO.getBs_plan()!=null ) newCorpInfoVO.setBs_plan(corpInfoVO.getBs_plan());//	varchar2	100					개발예정품목(기술)
            newCorpInfoVO.setIs_applicant(corpInfoVO.getIs_applicant());//	number	4					콘솔 사용 여부	0:콘솔사용 안함, 1:콘솔사용
            newCorpInfoVO.setDemo_facility_type  (corpInfoVO.getDemo_facility_type());//	number	4		0			이용신청 시설	0:해당없음, 1:온실, 2:r&d연구실, 4:스타트업 사무실, 512: 기타
            if(corpInfoVO.getDemo_facility_etc()!=null ) newCorpInfoVO.setDemo_facility_etc(corpInfoVO.getDemo_facility_etc());//	varchar2	20					이용신청 시설 기타 내용
            if(corpInfoVO.getFounding_date()!=null ) newCorpInfoVO.setFounding_date(corpInfoVO.getFounding_date());//	date						설립일
            newCorpInfoVO.setIs_saved(1);
            long result_idx = corpService.saveCorpInfo(newCorpInfoVO);
            resultVO.setResult_idx(result_idx);


        }

        return  resultVO;
    }

    @RequestMapping(value = "/get_visit_data",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO  get_visit_data(HttpSession session,
                              @RequestBody VisitDateVO visitDateVO){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("성공");
        resultVO.setResult_code("SUCCESS");

        List<VisitDataVO> visitDataVOList = visitService.getDurationVisitData(visitDateVO);
        resultVO.setVisitDataVOList(visitDataVOList);
        return  resultVO;
    }

    @RequestMapping(value = "/get_monthly_visit_data",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO  get_monthly_visit_data(HttpSession session,
                             @RequestBody VisitDateVO visitDateVO){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("성공");
        resultVO.setResult_code("SUCCESS");

        List<VisitDataVO> visitDataVOList = visitService.getMonthlyVisitData(visitDateVO.getStart_date());
        resultVO.setVisitDataVOList(visitDataVOList);
        return  resultVO;
    }

    @RequestMapping(value = "/save_visit_date",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO  save_visit_date(HttpSession session,
                             @RequestBody List<VisitDataVO> visitDataVOList){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("성공");
        resultVO.setResult_code("SUCCESS");

        if(visitDataVOList == null || visitDataVOList.isEmpty()){
            resultVO.setResult_str("저장할 데이터가 없습니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }

        visitService.saveOrUpdateHugeVisitData(visitDataVOList);

        return  resultVO;
    }

    @RequestMapping(value = "/delete_visit_date",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO  delete_visit_date(HttpSession session,
                              @RequestBody List<VisitDataVO> visitDataVOList){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("성공");
        resultVO.setResult_code("SUCCESS");

        if(visitDataVOList == null || visitDataVOList.isEmpty()){
            resultVO.setResult_str("삭제할 데이터가 없습니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }

        visitService.deleteHugeVisitData(visitDataVOList);

        return  resultVO;
    }
    @RequestMapping(value = "/save_homepage_info",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO  save_homepage_info(HttpSession session,
                                @RequestBody HomepageInfoVO homepageInfoVO){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("저장했습니다");
        resultVO.setResult_code("SUCCESS");

        if(homepageInfoVO.getHomepage_admin() != null &&
                homepageInfoVO.getHomepage_admin_pnum()!= null &&
                homepageInfoVO.getEmail()!= null
        ){
            HomepageInfoVO resultHomepageInfo = homepageInfoService.getHomepageInfo();
            resultHomepageInfo.setHomepage_admin(homepageInfoVO.getHomepage_admin());
            resultHomepageInfo.setHomepage_admin_pnum(homepageInfoVO.getHomepage_admin_pnum());
            resultHomepageInfo.setEmail(homepageInfoVO.getEmail());

            homepageInfoService.updateHomepageInfo(resultHomepageInfo);

        }
        else {
            resultVO.setResult_str("필수 데이터가 없습니다.");
            resultVO.setResult_code("ERROR001");
        }



        return  resultVO;
    }
    @RequestMapping(value = "/save_system_code",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO  save_system_code(HttpSession session,
                                 @RequestBody SystemCodeVO systemCodeVO){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("저장했습니다");
        resultVO.setResult_code("SUCCESS");

        if(systemCodeVO.getCode_name() != null &&
                systemCodeVO.getCode_value()!= null &&
                systemCodeVO.getDetail()!= null
        ){
            systemService.insertSystemCode(systemCodeVO);
        }
        else {
            resultVO.setResult_str("필수 데이터가 없습니다.");
            resultVO.setResult_code("ERROR001");
        }
        return  resultVO;
    }

    @RequestMapping(value = "/save_rule_file_info",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO  save_rule_file_info(HttpSession session,
                               @RequestBody RuleFileInfoVO ruleFileInfoVO){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("저장했습니다");
        resultVO.setResult_code("SUCCESS");

        if(ruleFileInfoVO.getSubject() != null &&
                ruleFileInfoVO.getUsage_detail()!= null &&
                ruleFileInfoVO.getIdx_file_info()!= 0
        ){
            fileService.insertRuleFileInfo(ruleFileInfoVO);
        }
        else {
            resultVO.setResult_str("필수 데이터가 없습니다.");
            resultVO.setResult_code("ERROR001");
        }
        return  resultVO;
    }

    @RequestMapping(value = "/admin_id_check",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO  admin_id_check(HttpSession session,
                                  @RequestBody AdminVO adminVO){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("사용할 수 있는 아이디입니다.");
        resultVO.setResult_code("SUCCESS");
        if(adminVO.getAdmin_id() == null || adminVO.getAdmin_id().trim() == ""){
            resultVO.setResult_str("아이디를 입력해주세요.");
            resultVO.setResult_code("ERROR001");
        }

        if(adminService.adminIdCheck(adminVO.getAdmin_id())){
            resultVO.setResult_str("이미 사용중인 아이디입니다.");
            resultVO.setResult_code("ERROR002");
        }

        return  resultVO;
    }

    @RequestMapping(value = "/admin_join",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO  admin_join(HttpSession session,
                             @RequestBody AdminVO adminVO){
        System.out.println(adminVO);
        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("사용할 수 있는 아이디입니다.");
        resultVO.setResult_code("SUCCESS");
        String newPw = "";
        for(int i = 0; newPw.length() < 6; i++){
            double dRd = Math.random();
            if(Math.random() % 2 == 1){
                char randomWord = (char)((dRd * 26) + 97);
                newPw = newPw + randomWord;
            } else {
                newPw = newPw + (int)(dRd * 10);
            }
        }
        adminVO.setAdmin_pw(newPw);
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String hashedPassword = passwordEncoder.encode(adminVO.getAdmin_pw());
        System.out.println(adminVO.getAdmin_pw());
        adminVO.setAdmin_pw(hashedPassword);
        System.out.println(newPw);
        try{
            if(adminService.adminIdCheck(adminVO.getAdmin_id())){
                resultVO.setResult_str("이미 사용중인 아이디입니다.");
                resultVO.setResult_code("ERROR002");
            } else{
                adminService.join(adminVO);

                MimeMessage mail = mailSender.createMimeMessage();
                MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8");

                mailHelper.setFrom("김태선 <taeseon@4thevision.com>"); // 보내는 사람 정보도 와야함
                mailHelper.setTo(adminVO.getAdmin_id());
                mailHelper.setSubject("스마트팜 혁신밸리 관리자 사이트 계정 안내");
                mailHelper.setText("안녕하세요." + adminVO.getAdmin_name() + "님. 스마트팜 혁신밸리 관리자 사이트 비밀번호는 " + newPw + " 입니다.");
                mailSender.send(mail);
            }
        } catch (Exception e){
            resultVO.setResult_str("계정 생성에 실패했습니다.");
            resultVO.setResult_code("ERROR002");
        }
        return  resultVO;
    }
    @RequestMapping(value = "/changePw",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO change_password(HttpSession session, Principal principal,
                             @RequestBody ChangePwVO changePwVO){
        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("변경할 정보를 확인할 수 없습니다");
        resultVO.setResult_code("ERROR_1000");
        if(changePwVO.getCurPw()!=null &&
                changePwVO.getModPW()!=null &&
                changePwVO.getModPwCf()!=null){

            AdminVO adminVo = adminService.findAdminById(principal.getName());
            System.out.println(adminVo);
            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
           // String hashedPassword = passwordEncoder.encode(changePwVO.getCurPw());
            // 인코딩된 비밀번호와 일반 비밀번호를 대조합니다
            if(passwordEncoder.matches(changePwVO.getCurPw(),adminVo.getAdmin_pw())){
                try{
                    System.out.println("pass");
                    String updatePassword = passwordEncoder.encode(changePwVO.getModPW());
                    changePwVO.setModPW(updatePassword);
                    changePwVO.setAdmin_id(adminVo.getAdmin_id());
                    adminService.updateAdminPassword(changePwVO);

                    resultVO.setResult_str("비밀번호변경에 성공하였습니다.");
                    resultVO.setResult_code("SUCCESS");
                }catch (Exception e){
                    System.out.println(e.toString());
                    resultVO.setResult_str("비밀번호 변경에 실패하였습니다.");
                    resultVO.setResult_code("ERROR_1000");
                }
            }
            else {
                resultVO.setResult_str("기존 비밀번호가 다릅니다.");
                resultVO.setResult_code("ERROR_1000");
            }
        } else {
            resultVO.setResult_str("필요한 항목이 모두 채워지지 않았습니다.");
            resultVO.setResult_code("ERROR_1000");
        }
        return resultVO;
    }

    @RequestMapping(value = "/admin_pw_initialization",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO admin_pw_initialization(HttpSession session, Principal principal,
                             @RequestBody long adminIdx){
        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("비밀번호 변경에 실패했습니다.");
        resultVO.setResult_code("ERROR_1000");

        String newPw = "";
        for(int i = 0; newPw.length() < 6; i++){
            double dRd = Math.random();
            if(Math.random() % 2 == 1){
                char randomWord = (char)((dRd * 26) + 97);
                newPw = newPw + randomWord;
            } else {
                newPw = newPw + (int)(dRd * 10);
            }
        }
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String hashedPassword = passwordEncoder.encode(newPw);
        try{
            AdminVO adminVO = adminService.modifyPw(adminIdx, hashedPassword);
            System.out.println("1");
            System.out.println(adminVO);
            MimeMessage mail = mailSender.createMimeMessage();
            System.out.println("2");
            MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8");
            System.out.println("3");

            mailHelper.setFrom("스마트팜 혁신벨리 실증단지 <fact@smartfarm.co.kr>"); // 보내는 사람 정보도 와야함
            mailHelper.setTo(adminVO.getAdmin_id());
            mailHelper.setSubject("스마트팜 혁신밸리 관리자 사이트 계정 안내");
            mailHelper.setText("안녕하세요." + adminVO.getAdmin_name() + "님. 스마트팜 혁신밸리 관리자 사이트의 변경된 비밀번호는 " + newPw + " 입니다.");
            mailSender.send(mail);

            System.out.println("전송 완료");
            resultVO.setResult_str("비밀번호 변경에 성공하였습니다. \n변경된 비밀번호는 해당 아이디 이메일로 전송되었습니다.");
            resultVO.setResult_code("SUCCESS");
        } catch (Exception e){
            System.out.println(e);
            resultVO.setResult_str("비밀번호 변경에 실패했습니다.");
            resultVO.setResult_code("ERROR002");
        }

        return resultVO;
    }

    @RequestMapping(value ="/admin_modify",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO adminModify(@RequestBody AdminVO adminVO){
        System.out.println("통신됨??");
        ResultVO resultVO = new ResultVO();
        resultVO.setResult_code("ERROR_1000");
        resultVO.setResult_str("업데이트 실패");
        try {
            adminService.adminModify(adminVO);
            resultVO.setResult_str("성공이여");
            resultVO.setResult_code("SUCCESS");

        }catch (Exception e){
            resultVO.setResult_str("에러에여~");
            resultVO.setResult_code("ERROR_1000");
        }
        return resultVO;

    }



}
