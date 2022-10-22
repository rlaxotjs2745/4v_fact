package kr.or.fact.console.controller;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.service.*;
import kr.or.fact.core.util.CONSTANT;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
public class APIController {
    @Resource(name = "userService")
    UserService userService;

    @Resource(name = "corpService")
    CorpService corpService;

    @Resource(name = "adminService")
    AdminService adminService;

    @Resource(name = "consoleService")
    ConsoleService consoleService;

    @Resource(name = "authService")
    AuthService authService;

    @RequestMapping(value = "/console_login",method = RequestMethod.POST)
    public @ResponseBody ResultWithDataVO console_login(@RequestBody AdminVO adminVo) {

        ResultWithDataVO resultWithDataVO = new ResultWithDataVO();
        resultWithDataVO.setResult_code("ERROR1001");
        resultWithDataVO.setResult_str("콘솔 유저를 찾을 수 없음");

        if (adminVo !=null) {

            //AdminVO findAdminVo = adminService.getAuthAdmin(adminVo.getAdmin_id(),adminVo.getAdmin_pw());


            AdminVO findAdminVo = adminService.findAdminById(adminVo.getAdmin_id());

            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

            if(findAdminVo!=null && passwordEncoder.matches(adminVo.getAdmin_pw(),findAdminVo.getAdmin_pw())){
            //if(findAdminVo!=null){
                ConsoleUserVO consoleUserVO;
                consoleUserVO = consoleService.getConsoleUserByAdminIdx(findAdminVo.getIdx_admin());

                if(consoleUserVO!=null){

                    AuthVO authVO = new AuthVO();
                    authVO.setIdx_console_user(consoleUserVO.getIdx_console_user());
                    authVO.setAuth_code(UUID.randomUUID().toString());
                    authVO.setIs_available(CONSTANT.yes);
                    Date now = new Date();
                    Calendar cal = Calendar.getInstance();
                    cal.setTime(now);
                    cal.add(Calendar.MINUTE,1);

                    authVO.setExpired_dt(cal.getTime());

                    authService.insertAuth(authVO);

                    resultWithDataVO.setResult_code("SUCCESS");
                    resultWithDataVO.setResult_str("찾았습니다");
                    resultWithDataVO.setElement(authVO);

                }
            }

        }
        return resultWithDataVO;
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
    ResultVO join_confirm(HttpSession session,
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
}
