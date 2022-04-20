package kr.or.fact.web.controller;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.service.CorpService;
import kr.or.fact.core.service.DemoBsService;
import kr.or.fact.core.service.UserDemoBsService;
import kr.or.fact.core.service.UserService;
import kr.or.fact.core.util.CONSTANT;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class WebAPIController {
    @Resource(name = "userService")
    UserService userService;

    @Resource(name = "corpService")
    CorpService corpService;

    @Resource(name = "demoBsService")
    DemoBsService demoBsService;

    @Resource(name = "userDemoBsService")
    UserDemoBsService userDemoBsService;

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

    //유저가 신청한 사업의 상태 체크
    //return STATUS_001 : 신청한 사업 없음 -> 신규신청 가능
    //STATUS_002 : 신청을 위해 저장한 사업 있고 신청하지는 않음  -> 변경 가능/신규 생성 가능(기존것 삭제)
    //STATUS_003 : 신청을 완료한 상태이지만 수정 변경을 요청한 경우 -> 변경 가능/신규 생성 불가
    //STATUS_004 : 이미 신청완료 되었고 내용 수정 완료됨, 협약 체결 단계-> 변경, 삭제 불가/신규 불가
    @RequestMapping(value = "/user_demo_bs_check",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO user_demo_bs_check(HttpSession session,
                           @RequestBody UserDemoBsCheckVO userDemoBsCheckVo){
        ResultVO resultVO = new ResultVO();

        resultVO.setResult_str("신규 신청 가능한 사업입니다.");
        resultVO.setResult_code("STATUS_001");

        if(userDemoBsCheckVo.getIdx_user() !=0){

            UserDemoBsVO userDemoBsVo = userDemoBsService.getUserDemoBs(userDemoBsCheckVo);

            if(userDemoBsVo==null){
                return resultVO;
            }
            else if(userDemoBsVo.getUser_demobs_status() ==0){ // 신청서 작성중
                resultVO.setResult_str("이미 작성중인 내용이 있습니다");
                resultVO.setResult_code("STATUS_002");
            }
            else if(userDemoBsVo.getUser_demobs_status() ==3){ // 서류 보완 요청
                resultVO.setResult_str("보완 요청 사항이 있습니다.");
                resultVO.setResult_code("STATUS_003");
            }
            else {
                resultVO.setResult_str("사업 선정단계에서는 수정할 수 없습니다");
                resultVO.setResult_code("STATUS_004");
            }
        }


        return resultVO;
    }

    //실증단지 이용 신청 프로세스
    //app_step1
    @RequestMapping(value = "/app_step1_save_new",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO app_step1_save(HttpSession session,
                                @RequestBody UserDemoBsCheckVO userDemoBsCheckVo){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_code("SUCCESS");
        resultVO.setResult_str("저장했습니다");

        //1.신청자 파악
        UserVO userVo = userService.getUserInfo(userDemoBsCheckVo.getIdx_user());
        if(userVo ==null){
            resultVO.setResult_str("신청자를 찾을 수 없습니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }
        //2.신청 Demo BS 파악
        DemoBusinessVO demoBusinessVo = demoBsService.getDemoBsByIdx(userDemoBsCheckVo.getIdx_demo_business());

        if(demoBusinessVo == null){
            resultVO.setResult_str("지원사업을 찾을 수 없습니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }

        //3.기 신청이 있는지 체크
        UserDemoBsVO userDemoBsVo = userDemoBsService.getUserDemoBs(userDemoBsCheckVo);
        //DemoBusinessVO demoBusinessVo = demoBsService.getDemoBsByIdx(userDemoBsVo.getIdx_demo_business());

        if(userDemoBsVo != null){
            resultVO.setResult_str("이미 신청한 정보가 있습니다.");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }

        userDemoBsVo = new UserDemoBsVO();
        userDemoBsVo.setIdx_user(userDemoBsCheckVo.getIdx_user());
        userDemoBsVo.setIdx_demo_business(userDemoBsCheckVo.getIdx_demo_business());
        userDemoBsVo.setApp_step(0);
        userDemoBsVo.setUser_demobs_status(0);
        userDemoBsService.saveUserDemoBsNew(userDemoBsVo);
        //4.예외처리

        return resultVO;
    }


}
