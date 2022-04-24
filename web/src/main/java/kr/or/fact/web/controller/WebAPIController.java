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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
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
            if(simpleCorpInfoVOList==null || simpleCorpInfoVOList==null){
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
        userDemoBsVo.setUser_demobs_status(0);

        userDemoBsVo.setUser_demo_bs_app_code("");//		varchar2	20	n				신청번호	"자동 생성     app+사업번호(000000)+신청번호(000000)     사업번호:idx_demo_bs     신청번호:seq_user_demo_bs"
        userDemoBsVo.setApp_step(0);//		number	4		1			신청서 작성 단계	"신청 단계, 최종 저장 단계             1:이용 신청서 작성, 2: 실증계획서 작성, 3:개인수집 동의서 작성, 4: 기타서류 등록, 5: 신청서 확인, 6: 신청함"
        userDemoBsVo.setUser_demo_bs_type(0);//		number	4		1			사업 진행 주체 타입	0:개인, 1:일반기업, 2:미등록기업(설립전), 3: 농업진흥기관, 4:선도기업, 5:외국연구기관, 6:특정연구기관, 7:정부출연연구기관, 8:스마트팜 관련 기업부설연구소 보유기업, 9: 대학교, 99:기타 단체
        userDemoBsVo.setIdx_corp_info(0);//		number	32		0		◯	지원회사
        userDemoBsVo.setCorp_name("");//		varchar2	100					회사이름
        userDemoBsVo.setCorp_birth("");//		varchar2	20					회사 설립일
        userDemoBsVo.setCorp_num("");//		varchar2	20					사업자등록번호
        userDemoBsVo.setCorp_reg_num("");//		varchar2	20					법인등록번호
        userDemoBsVo.setCorp_addr("");//		varchar2	1000					본사 소재지
        userDemoBsVo.setCorp_addr2("");//		varchar2	1000					본사 소재지 상세
        userDemoBsVo.setCorp_rnd_addr("");//		varchar2	1000					본사 연구소 소재지
        userDemoBsVo.setCorp_rnd_addr2("");//		varchar2	1000					본사 연구소 소재지 상세
        userDemoBsVo.setCorp_sales_amount(0);//		number	10					매출액
        userDemoBsVo.setCorp_er(0);//	number	10					자기자본비율
        userDemoBsVo.setEmployees_count(0);//	number	10					직원수
        userDemoBsVo.setBs_type1("");//	varchar2	20					업태 종목
        userDemoBsVo.setBs_type2("");//	varchar2	20					업태 종목
        userDemoBsVo.setMain_product("");//	varchar2	200					주생산품목
        userDemoBsVo.setReq_facility(0);//     이용 실증시설
        userDemoBsVo.setReq_etc("");//	VARCHAR2	400					이용 실증시설 기타
        userDemoBsVo.setDemobs_tech_plan("");//	varchar2	100					개발예정품목
        userDemoBsVo.setCeo_name("");//	varchar2	100					대표자 이름
        userDemoBsVo.setCeo_mnumber("");//	varchar2	20					대표자 모바일번호
        userDemoBsVo.setCeo_pnumber("");//	varchar2	20					대표자 사무실 번호
        userDemoBsVo.setCeo_email("");//	varchar2	400					대표자 이메일
        userDemoBsVo.setCeo_address("");//	varchar2	1000					대표자 주소
        userDemoBsVo.setCeo_address2("");//
        userDemoBsVo.setMan_name("");//	varchar2	100					담당자 이름
        userDemoBsVo.setMan_dpart("");// varchar2(100),부서
        userDemoBsVo.setMan_role("");// varchar2(200),직위
        userDemoBsVo.setMan_mnumber("");//	varchar2	20					담당자 모바일 번호
        userDemoBsVo.setMan_pnumber("");//	varchar2	20					담당자 사무실 번호
        userDemoBsVo.setMan_email("");//	varchar2	400					담당자 이메일
        userDemoBsVo.setUser_demo_type(0);//	number	4		0			실증 주체	0:자율, 1:위탁
        userDemoBsVo.setUser_demo_facility(0);//	number	4		1			실증 시설	1:단동, 2:연동, 4:육묘장, 8:노지, 16:단동유리, 32:연동유리, 64:식물공장
        userDemoBsVo.setUser_demo_way(0);//	number	4		0			실증 방법	0: 단순, 1:비교
        userDemoBsVo.setUser_demo_repeat(0);//	number	4		0			실증횟수	0:반복 없음, 1:반복실증
        userDemoBsVo.setUser_demo_goal(0);//	number	4		0			실증 목표	0::성능확인, 1:자체평가
        userDemoBsVo.setUser_demo_option(0);//	number	4		0			실증 조건	0: 일반환경, 1:특수환경
        userDemoBsVo.setUser_demo_crops("");//	varchar2	100					실증작물
        userDemoBsVo.setCulture_soil(0);//	number	4		0			생육토양	0: 토경재배, 1:수경재배, 2:고형배지재배
        userDemoBsVo.setDemo_type(0);//	number	4		0			실증 대상	0:해당없음, 1:시설자재, 2:ict기자재, 4:작물보호제/비료, 8:스마트팜sw, 16:생육모델, 32:로봇, 512:기타

        //DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date nowD = new Date();

        userDemoBsVo.setDemo_start_date(nowD);//	date						입주 시작 날짜
        userDemoBsVo.setDemo_end_date(nowD);//	date						입주 종료 날짜

        userDemoBsVo.setResident_type(0);//	number	4		0			상주 타입	0:해당없음, 1:r&d연구실, 2:스타트업사무실, 512:기타
        userDemoBsVo.setResident_etc("");//	varchar2	100					이용 실증시설 기타	이용 신청시설 기타 내용
        userDemoBsVo.setStaff_num(0);//	number	10					상주인원
        userDemoBsVo.setIs_change(0);//	number	4		0			실증계획 변경	0:최초등록 동일, 1:심사후 협약전 변경, 2:협약 후 진행 시 변경,
        userDemoBsVo.setIs_confirm(0);//	number	4		0			실증계획 승인 여부	0:승인전, 1:승인
        userDemoBsVo.setIs_share(0);//	number	4		0			실증계획 승인 통보 여부	0:통보전, 1:통보

        userDemoBsVo.setIs_change(0);
        userDemoBsVo.setIs_confirm(0);
        userDemoBsVo.setUser_demobs_status(0);

        userDemoBsService.saveUserDemoBs(userDemoBsVo);
        //4.예외처리

        return resultVO;
    }

    //실증단지 이용 신청 프로세스
    //app_step2 save
    @RequestMapping(value = "/app_step2_save_temp",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO app_step2_save_temp(HttpSession session,
                            @RequestBody UserDemoBsVO userDemoBsVO){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_code("SUCCESS");
        resultVO.setResult_str("저장했습니다");

        //1.신청자 파악
        UserVO userVo = userService.getUserInfo(userDemoBsVO.getIdx_user());
        if(userVo ==null){
            resultVO.setResult_str("신청자를 찾을 수 없습니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }
        //2.신청 Demo BS 파악
        DemoBusinessVO demoBusinessVo = demoBsService.getDemoBsByIdx(userDemoBsVO.getIdx_demo_business());

        if(demoBusinessVo == null){
            resultVO.setResult_str("지원사업을 찾을 수 없습니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }
        //3.기 신청이 있는지 체크
        UserDemoBsCheckVO userDemoBsCheckVo = new UserDemoBsCheckVO();
        userDemoBsCheckVo.setIdx_user(userDemoBsVO.getIdx_user());
        userDemoBsCheckVo.setIdx_demo_business(userDemoBsVO.getIdx_demo_business());

        UserDemoBsVO findUserDemoBsVo = userDemoBsService.getUserDemoBs(userDemoBsCheckVo);
        if(findUserDemoBsVo==null){//저장한게 없다, 에러페이지로 보내야 한다...
            resultVO.setResult_str("잘못된 접근입니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }

        // 기 신청이 있으면 저장하면 안됨
        if(findUserDemoBsVo.getApp_step()==5){
            resultVO.setResult_str("신청이 완료되어 저장할 수 없습니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }
        // 저장단계 변경
        findUserDemoBsVo.setUser_demobs_status(0);

        findUserDemoBsVo.setUser_demo_bs_type(userDemoBsVO.getUser_demo_bs_type());//		number	4		1			사업 진행 주체 타입	0:개인, 1:일반기업, 2:미등록기업(설립전), 3: 농업진흥기관, 4:선도기업, 5:외국연구기관, 6:특정연구기관, 7:정부출연연구기관, 8:스마트팜 관련 기업부설연구소 보유기업, 9: 대학교, 99:기타 단체
        findUserDemoBsVo.setIdx_corp_info(userDemoBsVO.getIdx_corp_info());//		number	32		0		◯	지원회사
        findUserDemoBsVo.setCorp_name(userDemoBsVO.getCorp_name()==null?"":userDemoBsVO.getCorp_name());//		varchar2	100					회사이름
        findUserDemoBsVo.setCorp_birth(userDemoBsVO.getCorp_birth()==null?"":userDemoBsVO.getCorp_birth());//		varchar2	20					회사 설립일
        findUserDemoBsVo.setCorp_num(userDemoBsVO.getCorp_num()==null?"":userDemoBsVO.getCorp_num());//		varchar2	20					사업자등록번호
        findUserDemoBsVo.setCorp_reg_num(userDemoBsVO.getCorp_reg_num()==null?"":userDemoBsVO.getCorp_reg_num());//		varchar2	20					법인등록번호
        findUserDemoBsVo.setCorp_addr(userDemoBsVO.getCorp_addr()==null?"":userDemoBsVO.getCorp_addr());//		varchar2	1000					본사 소재지
        findUserDemoBsVo.setCorp_addr2(userDemoBsVO.getCorp_addr2()==null?"":userDemoBsVO.getCorp_addr2());//		varchar2	1000					본사 소재지 상세
        findUserDemoBsVo.setCorp_rnd_addr(userDemoBsVO.getCorp_rnd_addr()==null?"":userDemoBsVO.getCorp_rnd_addr());//		varchar2	1000					본사 연구소 소재지
        findUserDemoBsVo.setCorp_rnd_addr2(userDemoBsVO.getCorp_rnd_addr2()==null?"":userDemoBsVO.getCorp_rnd_addr2());//		varchar2	1000					본사 연구소 소재지 상세
        findUserDemoBsVo.setCapital_amount(userDemoBsVO.getCapital_amount());//		number	20					자본금
        findUserDemoBsVo.setCorp_sales_amount(userDemoBsVO.getCorp_sales_amount());//		number	10					매출액
        findUserDemoBsVo.setCorp_er(userDemoBsVO.getCorp_er());//	number	10					자기자본비율
        findUserDemoBsVo.setEmployees_count(userDemoBsVO.getEmployees_count());//	number	10					직원수
        findUserDemoBsVo.setBs_type1(userDemoBsVO.getBs_type1()==null?"":userDemoBsVO.getBs_type1());//	varchar2	20					업태 종목
        findUserDemoBsVo.setBs_type2(userDemoBsVO.getBs_type2()==null?"":userDemoBsVO.getBs_type2());//	varchar2	20					업태 종목
        findUserDemoBsVo.setMain_product(userDemoBsVO.getMain_product()==null?"":userDemoBsVO.getMain_product());//	varchar2	200					주생산품목

        findUserDemoBsVo.setReq_facility(userDemoBsVO.getReq_facility());//     이용 실증시설
        findUserDemoBsVo.setReq_etc(userDemoBsVO.getReq_etc()==null?"":userDemoBsVO.getReq_etc());//	VARCHAR2	400					이용 실증시설 기타
        findUserDemoBsVo.setDemobs_tech_plan(userDemoBsVO.getDemobs_tech_plan()==null?"":userDemoBsVO.getDemobs_tech_plan());//	varchar2	100					개발예정품목
        findUserDemoBsVo.setCeo_name(userDemoBsVO.getCeo_name()==null?"":userDemoBsVO.getCeo_name());//	varchar2	100					대표자 이름
        findUserDemoBsVo.setCeo_mnumber(userDemoBsVO.getCeo_mnumber()==null?"":userDemoBsVO.getCeo_mnumber());//	varchar2	20					대표자 모바일번호
        findUserDemoBsVo.setCeo_pnumber(userDemoBsVO.getCeo_pnumber()==null?"":userDemoBsVO.getCeo_pnumber());//	varchar2	20					대표자 사무실 번호
        findUserDemoBsVo.setCeo_email(userDemoBsVO.getCeo_email()==null?"":userDemoBsVO.getCeo_email());//	varchar2	400					대표자 이메일
        findUserDemoBsVo.setCeo_address(userDemoBsVO.getCeo_address()==null?"":userDemoBsVO.getCeo_address());//	varchar2	1000					대표자 주소
        findUserDemoBsVo.setCeo_address2(userDemoBsVO.getCeo_address2()==null?"":userDemoBsVO.getCeo_address2());//
        findUserDemoBsVo.setMan_name(userDemoBsVO.getMan_name()==null?"":userDemoBsVO.getMan_name());//	varchar2	100					담당자 이름
        findUserDemoBsVo.setMan_dpart(userDemoBsVO.getMan_dpart()==null?"":userDemoBsVO.getMan_dpart());// varchar2(100),부서
        findUserDemoBsVo.setMan_role(userDemoBsVO.getMan_role()==null?"":userDemoBsVO.getMan_role());// varchar2(200),직위
        findUserDemoBsVo.setMan_mnumber(userDemoBsVO.getMan_mnumber()==null?"":userDemoBsVO.getMan_mnumber());//	varchar2	20					담당자 모바일 번호
        findUserDemoBsVo.setMan_pnumber(userDemoBsVO.getMan_pnumber()==null?"":userDemoBsVO.getMan_pnumber());//	varchar2	20					담당자 사무실 번호
        findUserDemoBsVo.setMan_email(userDemoBsVO.getMan_email()==null?"":userDemoBsVO.getMan_email());//	varchar2	400					담당자 이메일
        findUserDemoBsVo.setUser_demo_type(userDemoBsVO.getUser_demo_type());//	number	4		0			실증 주체	0:자율, 1:위탁
        findUserDemoBsVo.setUser_demo_facility(userDemoBsVO.getUser_demo_facility());//	number	4		1			실증 시설	1:단동, 2:연동, 4:육묘장, 8:노지, 16:단동유리, 32:연동유리, 64:식물공장
        findUserDemoBsVo.setUser_demo_way(userDemoBsVO.getUser_demo_way());//	number	4		0			실증 방법	0: 단순, 1:비교
        findUserDemoBsVo.setUser_demo_repeat(userDemoBsVO.getUser_demo_repeat());//	number	4		0			실증횟수	0:반복 없음, 1:반복실증
        findUserDemoBsVo.setUser_demo_goal(userDemoBsVO.getUser_demo_goal());//	number	4		0			실증 목표	0::성능확인, 1:자체평가
        findUserDemoBsVo.setUser_demo_option(userDemoBsVO.getUser_demo_option());//	number	4		0			실증 조건	0: 일반환경, 1:특수환경
        findUserDemoBsVo.setUser_demo_crops(userDemoBsVO.getUser_demo_crops()==null?"":userDemoBsVO.getUser_demo_crops());//	varchar2	100					실증작물
        findUserDemoBsVo.setCulture_soil(userDemoBsVO.getCulture_soil());//	number	4		0			생육토양	0: 토경재배, 1:수경재배, 2:고형배지재배
        findUserDemoBsVo.setDemo_type(userDemoBsVO.getDemo_type());//	number	4		0			실증 대상	0:해당없음, 1:시설자재, 2:ict기자재, 4:작물보호제/비료, 8:스마트팜sw, 16:생육모델, 32:로봇, 512:기타

        Date nowD = new Date();

        findUserDemoBsVo.setDemo_start_date(userDemoBsVO.getDemo_start_date()==null?nowD:userDemoBsVO.getDemo_start_date());//	date						입주 시작 날짜
        findUserDemoBsVo.setDemo_end_date(userDemoBsVO.getDemo_end_date()==null?nowD:userDemoBsVO.getDemo_end_date());//	date						입주 종료 날짜

        findUserDemoBsVo.setResident_type(userDemoBsVO.getResident_type());//	number	4		0			상주 타입	0:해당없음, 1:r&d연구실, 2:스타트업사무실, 512:기타
        findUserDemoBsVo.setResident_etc(userDemoBsVO.getResident_etc()==null?"":userDemoBsVO.getResident_etc());//	varchar2	100					이용 실증시설 기타	이용 신청시설 기타 내용
        findUserDemoBsVo.setStaff_num(userDemoBsVO.getStaff_num());//	number	10					상주인원

        findUserDemoBsVo.setCostat_code(userDemoBsVO.getCostat_code());//	 varchar2	20					표준산업분류코드	네자리
        findUserDemoBsVo.setIs_office_ower(userDemoBsVO.getIs_office_ower());//	 number	4		0			본사 자가여부	0:임차, 1:자가
        findUserDemoBsVo.setIs_lab_ower(userDemoBsVO.getIs_lab_ower());//	 number	4		0			연구소 자가여부	0:임차, 1:자가
        findUserDemoBsVo.setMan_total(userDemoBsVO.getMan_total());//number	4		0			총임직원 수
        findUserDemoBsVo.setMan_officer_count(userDemoBsVO.getMan_officer_count());//number	4		0			사무직원 수
        findUserDemoBsVo.setMan_lab_count(userDemoBsVO.getMan_lab_count());//number	4		0			연구직원 수
        findUserDemoBsVo.setMan_etc_count(userDemoBsVO.getMan_etc_count());//number	4		0			키타지원 수



        //findUserDemoBsVo.setIs_change(userDemoBsVO.getIs_change());//	number	4		0			실증계획 변경	0:최초등록 동일, 1:심사후 협약전 변경, 2:협약 후 진행 시 변경,
        //findUserDemoBsVo.setIs_confirm(userDemoBsVO.getIs_confirm());//	number	4		0			실증계획 승인 여부	0:승인전, 1:승인
        //findUserDemoBsVo.setIs_share(userDemoBsVO.getIs_share());//	number	4		0			실증계획 승인 통보 여부	0:통보전, 1:통보

        userDemoBsService.updateUserDemoBs(findUserDemoBsVo);
        //4.예외처리

        return resultVO;
    }


}
