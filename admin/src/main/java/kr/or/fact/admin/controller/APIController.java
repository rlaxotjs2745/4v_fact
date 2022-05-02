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
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
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
    @RequestMapping(value = "/air", method = RequestMethod.GET)
    public StringBuilder callAirApi() {
        StringBuffer result = new StringBuffer();
        StringBuilder sb2 = null;
        try {
            String urlBuilder = "http://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getMinuDustFrcstDspth" + "?" + URLEncoder.encode("serviceKey", "UTF-8") + "=QxTJL53E1mGWSyu1Nv5sCKPR4w9LlH1Zcv7QDbjv9Cp9%2B9WiUk%2BzD8yRj%2BeClbZ%2BffbOGqyXtzOsIklLmRM%2FPg%3D%3D" +
                    "&returnType=json" +
                    //   sb.append("&" + URLEncoder.encode("returnType", "UTF-8") + "=" + URLEncoder.encode("JSON", "UTF-8")); /*xml 또는 json*/
                    "&" + URLEncoder.encode("searchDate", "UTF-8") + "=" + URLEncoder.encode(String.valueOf(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"))), "UTF-8");
            //    System.out.println(urlBuilder);
            URL url = new URL(urlBuilder);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            BufferedReader rd;
            if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
                rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
            } else {
                rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));

            }
            sb2 = new StringBuilder();
            String line;
            while ((line = rd.readLine()) != null) {
                sb2.append(line);
            }
            rd.close();
            conn.disconnect();
            //   System.out.println(sb2);
            //   airReturnVO.setDuste(sb2.substring(String informGrage));
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(sb2);

        return sb2;
    }

}
