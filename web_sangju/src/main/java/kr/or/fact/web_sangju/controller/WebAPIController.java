package kr.or.fact.web_sangju.controller;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.service.*;
import kr.or.fact.core.util.CONSTANT;
import kr.or.fact.web_sangju.utils.Utils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
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

    @Resource(name = "visitService")
    VisitService visitService;

    @Resource(name = "consultingService")
    ConsultingService consultingService;


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

    @RequestMapping(value = "/user_id_find",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO user_id_find(HttpSession session,
                           @RequestBody UserVO userVo){
        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("아이디 형식을 확인해 주세요");
        resultVO.setResult_code("ERROR_1000");

        if(userVo!=null && userVo.getUser_name() !=null && userVo.getMphone_num()!=null){

            UserVO resultUserVO = userService.getUserInfoByNameAndMPhoneNum(userVo.getUser_name(),userVo.getMphone_num());
            if(resultUserVO !=null){
                resultVO.setResult_str("찾기 성공");
                resultVO.setResult_code("SUCCESS");
                UserVO uVo = new UserVO();
                String user_id = Utils.asHiddenEmail(resultUserVO.getUser_id());
                uVo.setUser_id(user_id);
                uVo.setUser_name(resultUserVO.getUser_name());
                resultVO.setUserVO(uVo);
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
        //userDemoBsVo.setApp_step(0);//		number	4		1			신청서 작성 단계	"신청 단계, 최종 저장 단계             1:이용 신청서 작성, 2: 실증계획서 작성, 3:개인수집 동의서 작성, 4: 기타서류 등록, 5: 신청서 확인, 6: 신청함"
        userDemoBsVo.setIdx_corp_info(userVo.getIdx_corp_info());//		number	32		0		◯	지원회사

        userDemoBsVo.setUser_demo_bs_app_code("");//		varchar2	20	n				신청번호	"자동 생성     app+사업번호(000000)+신청번호(000000)     사업번호:idx_demo_bs     신청번호:seq_user_demo_bs"

        userDemoBsVo.setUser_demo_bs_type(0);//		number	4		1			사업 진행 주체 타입	0:개인, 1:일반기업, 2:미등록기업(설립전), 3: 농업진흥기관, 4:선도기업, 5:외국연구기관, 6:특정연구기관, 7:정부출연연구기관, 8:스마트팜 관련 기업부설연구소 보유기업, 9: 대학교, 99:기타 단체
        userDemoBsVo.setCorp_name("");//		varchar2	100					회사이름
        userDemoBsVo.setCorp_birth("");//		varchar2	20					회사 설립일
        userDemoBsVo.setCorp_num("");//		varchar2	20					사업자등록번호
        userDemoBsVo.setCorp_reg_num("");//		varchar2	20					법인등록번호
        userDemoBsVo.setCorp_addr("");//		varchar2	1000					본사 소재지
        userDemoBsVo.setCorp_addr2("");//		varchar2	1000					본사 소재지 상세
        userDemoBsVo.setCorp_rnd_addr("");//		varchar2	1000					본사 연구소 소재지
        userDemoBsVo.setCorp_rnd_addr2("");//		varchar2	1000					본사 연구소 소재지 상세
        userDemoBsVo.setCorp_phone("");
        userDemoBsVo.setLab_phone("");
        userDemoBsVo.setCapital_amount(0);//
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

        userDemoBsVo.setCostat_code("");//	 varchar2	20					표준산업분류코드	네자리
        userDemoBsVo.setIs_office_ower(0);//	 number	4		0			본사 자가여부	0:임차, 1:자가
        userDemoBsVo.setIs_lab_ower(0);//	 number	4		0			연구소 자가여부	0:임차, 1:자가
        userDemoBsVo.setMan_total(0);//number	4		0			총임직원 수
        userDemoBsVo.setMan_officer_count(0);//number	4		0			사무직원 수
        userDemoBsVo.setMan_lab_count(0);//number	4		0			연구직원 수
        userDemoBsVo.setMan_etc_count(0);//number	4		0			키타지원 수







        userDemoBsVo.setLab_est_date("");//	VARCHAR2	20					연구소 설립일수
        userDemoBsVo.setRnd_rate(0);//	NUMBER	4					연구개발투자비율

        userDemoBsVo.setConsolidated_company("");

        userDemoBsVo.setHistory1("");//	varchar2	100					주요연혁 1
        userDemoBsVo.setHistory1_date("");//	varchar2	20					주요연혁 1 날짜
        userDemoBsVo.setHistory2("");//	varchar2	100					주요연혁 2
        userDemoBsVo.setHistory2_date("");//	varchar2	20					주요연혁 2 날짜
        userDemoBsVo.setHistory3("");//	varchar2	100					주요연혁 3
        userDemoBsVo.setHistory3_date("");//	varchar2	20					주요연혁 3 날짜
        userDemoBsVo.setPrize1("");//	varchar2	100					포상현황1
        userDemoBsVo.setPrize1_date("");//	varchar2	20					포상날자1
        userDemoBsVo.setPrize1_org("");//	varchar2	100					포상기관1
        userDemoBsVo.setPrize1_etc("");//	varchar2	100					포상 비고1
        userDemoBsVo.setPrize2("");//	varchar2	100					포상현황2
        userDemoBsVo.setPrize2_date("");//	varchar2	20					포상날자2
        userDemoBsVo.setPrize2_org("");//	varchar2	100					포상기관2
        userDemoBsVo.setPrize2_etc("");//	varchar2	100					포상 비고2
        userDemoBsVo.setPrize3("");//	varchar2	100					포상현황3
        userDemoBsVo.setPrize3_date("");//	varchar2	20					포상날자3
        userDemoBsVo.setPrize3_org("");//	varchar2	100					포상기관3
        userDemoBsVo.setPrize3_etc("");//	varchar2	100					포상 비고3


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
            resultVO.setResult_str("신청정보가 없습니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }

        // 기 신청이 있으면 저장하면 안됨
        if(findUserDemoBsVo.getUser_demobs_status()>=4){
            resultVO.setResult_str("신청이 완료되어 저장할 수 없습니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }
        if(findUserDemoBsVo.getUser_demobs_status()>1){
            resultVO.setResult_str("변경이 불가능한 상태입니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }
        // 저장단계 변경


        findUserDemoBsVo.setUser_demo_bs_type(userDemoBsVO.getUser_demo_bs_type());//		number	4		1			사업 진행 주체 타입	0:개인, 1:일반기업, 2:미등록기업(설립전), 3: 농업진흥기관, 4:선도기업, 5:외국연구기관, 6:특정연구기관, 7:정부출연연구기관, 8:스마트팜 관련 기업부설연구소 보유기업, 9: 대학교, 99:기타 단체
        //findUserDemoBsVo.setIdx_corp_info(userDemoBsVO.getIdx_corp_info());//		number	32		0		◯	지원회사

        findUserDemoBsVo.setCorp_name(userDemoBsVO.getCorp_name()==null?"":userDemoBsVO.getCorp_name());//		varchar2	100					회사이름
        findUserDemoBsVo.setCorp_birth(userDemoBsVO.getCorp_birth()==null?"":userDemoBsVO.getCorp_birth());//		varchar2	20					회사 설립일
        findUserDemoBsVo.setCorp_num(userDemoBsVO.getCorp_num()==null?"":userDemoBsVO.getCorp_num());//		varchar2	20					사업자등록번호
        findUserDemoBsVo.setCorp_reg_num(userDemoBsVO.getCorp_reg_num()==null?"":userDemoBsVO.getCorp_reg_num());//		varchar2	20					법인등록번호

        findUserDemoBsVo.setCorp_addr(userDemoBsVO.getCorp_addr()==null?"":userDemoBsVO.getCorp_addr());//		varchar2	1000					본사 소재지
        findUserDemoBsVo.setCorp_addr2(userDemoBsVO.getCorp_addr2()==null?"":userDemoBsVO.getCorp_addr2());//		varchar2	1000					본사 소재지 상세
        findUserDemoBsVo.setIs_office_ower(userDemoBsVO.getIs_office_ower());//	 number	4		0			본사 자가여부	0:임차, 1:자가
        findUserDemoBsVo.setCorp_phone(userDemoBsVO.getLab_phone()==null?"":userDemoBsVO.getLab_phone());



        findUserDemoBsVo.setCorp_rnd_addr(userDemoBsVO.getCorp_rnd_addr()==null?"":userDemoBsVO.getCorp_rnd_addr());//		varchar2	1000					본사 연구소 소재지
        findUserDemoBsVo.setCorp_rnd_addr2(userDemoBsVO.getCorp_rnd_addr2()==null?"":userDemoBsVO.getCorp_rnd_addr2());//		varchar2	1000					본사 연구소 소재지 상세
        findUserDemoBsVo.setLab_phone(userDemoBsVO.getLab_phone()==null?"":userDemoBsVO.getLab_phone());
        findUserDemoBsVo.setIs_lab_ower(userDemoBsVO.getIs_lab_ower());//	 number	4		0			연구소 자가여부	0:임차, 1:자가

        findUserDemoBsVo.setCapital_amount(userDemoBsVO.getCapital_amount());//		number	20					자본금
        findUserDemoBsVo.setCorp_sales_amount(userDemoBsVO.getCorp_sales_amount());//		number	10					매출액
        findUserDemoBsVo.setCorp_er(userDemoBsVO.getCorp_er());//	number	10					자기자본비율


        //findUserDemoBsVo.setEmployees_count(userDemoBsVO.getEmployees_count());//	number	10					직원수

        findUserDemoBsVo.setBs_type1(userDemoBsVO.getBs_type1()==null?"":userDemoBsVO.getBs_type1());//	varchar2	20					업태 종목
        findUserDemoBsVo.setBs_type2(userDemoBsVO.getBs_type2()==null?"":userDemoBsVO.getBs_type2());//	varchar2	20					업태 종목
        findUserDemoBsVo.setMain_product(userDemoBsVO.getMain_product()==null?"":userDemoBsVO.getMain_product());//	varchar2	200					주생산품목
        findUserDemoBsVo.setDemobs_tech_plan(userDemoBsVO.getDemobs_tech_plan()==null?"":userDemoBsVO.getDemobs_tech_plan());//	varchar2	100					개발예정품목

        findUserDemoBsVo.setReq_facility(userDemoBsVO.getReq_facility());//     이용 실증시설
        findUserDemoBsVo.setReq_etc(userDemoBsVO.getReq_etc()==null?"":userDemoBsVO.getReq_etc());//	VARCHAR2	400					이용 실증시설 기타

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


        //findUserDemoBsVo.setCostat_code(userDemoBsVO.getCostat_code()==null?"":userDemoBsVO.getCostat_code());//	 varchar2	20					표준산업분류코드	네자리
        findUserDemoBsVo.setMan_total(userDemoBsVO.getMan_total());//number	4		0			총임직원 수
        findUserDemoBsVo.setMan_officer_count(userDemoBsVO.getMan_officer_count());//number	4		0			사무직원 수
        findUserDemoBsVo.setMan_lab_count(userDemoBsVO.getMan_lab_count());//number	4		0			연구직원 수
        findUserDemoBsVo.setMan_etc_count(userDemoBsVO.getMan_etc_count());//number	4		0			키타지원 수



        //findUserDemoBsVo.setIs_change(userDemoBsVO.getIs_change());//	number	4		0			실증계획 변경	0:최초등록 동일, 1:심사후 협약전 변경, 2:협약 후 진행 시 변경,
        //findUserDemoBsVo.setIs_confirm(userDemoBsVO.getIs_confirm());//	number	4		0			실증계획 승인 여부	0:승인전, 1:승인
        //findUserDemoBsVo.setIs_share(userDemoBsVO.getIs_share());//	number	4		0			실증계획 승인 통보 여부	0:통보전, 1:통보

        userDemoBsService.updateUserDemoBsWebStep2(findUserDemoBsVo);
        //4.예외처리

        return resultVO;
    }


    //실증단지 이용 신청 프로세스
    //app_step3 save
    @RequestMapping(value = "/app_step3_save_temp",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO app_step3_save_temp(HttpSession session,
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
            resultVO.setResult_str("신청정보가 없습니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }

        // 기 신청이 있으면 저장하면 안됨
        if(findUserDemoBsVo.getUser_demobs_status()>=4){
            resultVO.setResult_str("신청이 완료되어 저장할 수 없습니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }
        // 저장단계 변경

        if(findUserDemoBsVo.getUser_demobs_status()<1){
            findUserDemoBsVo.setUser_demobs_status(1);
        }
        findUserDemoBsVo.setLab_est_date(userDemoBsVO.getLab_est_date()==null?"":userDemoBsVO.getLab_est_date());//
        findUserDemoBsVo.setRnd_rate(userDemoBsVO.getRnd_rate());

        findUserDemoBsVo.setConsolidated_company(userDemoBsVO.getConsolidated_company()==null?"":userDemoBsVO.getConsolidated_company());//

        findUserDemoBsVo.setConsolidated_company(userDemoBsVO.getConsolidated_company()==null?"":userDemoBsVO.getConsolidated_company());//

        findUserDemoBsVo.setHistory1(userDemoBsVO.getHistory1()==null?"":userDemoBsVO.getHistory1());
        findUserDemoBsVo.setHistory1_date(userDemoBsVO.getHistory1_date()==null?"":userDemoBsVO.getHistory1_date());

        findUserDemoBsVo.setHistory2(userDemoBsVO.getHistory2()==null?"":userDemoBsVO.getHistory2());
        findUserDemoBsVo.setHistory2_date(userDemoBsVO.getHistory2_date()==null?"":userDemoBsVO.getHistory2_date());

        findUserDemoBsVo.setHistory3(userDemoBsVO.getHistory3()==null?"":userDemoBsVO.getHistory3());
        findUserDemoBsVo.setHistory3_date(userDemoBsVO.getHistory3_date()==null?"":userDemoBsVO.getHistory3_date());


        findUserDemoBsVo.setPrize1(userDemoBsVO.getPrize1()==null?"":userDemoBsVO.getPrize1());
        findUserDemoBsVo.setPrize1_date(userDemoBsVO.getPrize1_date()==null?"":userDemoBsVO.getPrize1_date());
        findUserDemoBsVo.setPrize1_org(userDemoBsVO.getPrize1_org()==null?"":userDemoBsVO.getPrize1_org());
        findUserDemoBsVo.setPrize1_etc(userDemoBsVO.getPrize1_etc()==null?"":userDemoBsVO.getPrize1_org());

        findUserDemoBsVo.setPrize2(userDemoBsVO.getPrize2()==null?"":userDemoBsVO.getPrize2());
        findUserDemoBsVo.setPrize2_date(userDemoBsVO.getPrize2_date()==null?"":userDemoBsVO.getPrize2_date());
        findUserDemoBsVo.setPrize2_org(userDemoBsVO.getPrize2_org()==null?"":userDemoBsVO.getPrize2_org());
        findUserDemoBsVo.setPrize2_etc(userDemoBsVO.getPrize2_etc()==null?"":userDemoBsVO.getPrize2_org());

        findUserDemoBsVo.setPrize3(userDemoBsVO.getPrize3()==null?"":userDemoBsVO.getPrize3());
        findUserDemoBsVo.setPrize3_date(userDemoBsVO.getPrize3_date()==null?"":userDemoBsVO.getPrize3_date());
        findUserDemoBsVo.setPrize3_org(userDemoBsVO.getPrize3_org()==null?"":userDemoBsVO.getPrize3_org());
        findUserDemoBsVo.setPrize3_etc(userDemoBsVO.getPrize3_etc()==null?"":userDemoBsVO.getPrize3_org());

        findUserDemoBsVo.setLab_est_date(userDemoBsVO.getLab_est_date()==null?"":userDemoBsVO.getPrize3_org());
        findUserDemoBsVo.setRnd_rate(userDemoBsVO.getRnd_rate());

        userDemoBsService.updateUserDemoBsWebStep3(findUserDemoBsVo);
        //4.예외처리

        return resultVO;
    }

    //실증단지 이용 신청 프로세스
    //app_step3 detail save
    @RequestMapping(value = "/app_step3_detail_save_temp",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO app_step3_detail_save_temp(HttpSession session,
                                 @RequestBody UserDemoBsDetailVO userDemoBsDetailVO){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_code("SUCCESS");
        resultVO.setResult_str("저장했습니다");

        //1.신청 Usser nDemo BS 파악
        UserDemoBsVO userDemoBsVO = userDemoBsService.getUserDemoBsByIdx(userDemoBsDetailVO.getIdx_user_demo_bs());

        if(userDemoBsVO == null){
            resultVO.setResult_str("저장이 정상적으로 이루어지지 않았습니다1");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }
        //2.기 신청이 있는지 체크
        UserDemoBsDetailVO findUserDemoBsDetailVO = userDemoBsService.getUserDemoBsDetail(userDemoBsDetailVO.getIdx_user_demo_bs());

        if(findUserDemoBsDetailVO==null){//저장한게 없다, 에러페이지로 보내야 한다...
            resultVO.setResult_str("저장이 정상적으로 이루어지지 않았습니다2");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }
        //3.받은 데이터값 확인
        if(userDemoBsDetailVO.getUserBsHumanResourceVOList()==null || userDemoBsDetailVO.getUserBsHumanResourceVOList().isEmpty()){
            resultVO.setResult_str("저장이 정상적으로 이루어지지 않았습니다3");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }

        if(findUserDemoBsDetailVO.getIdx_user_demo_bs() == userDemoBsDetailVO.getIdx_user_demo_bs()){
            userDemoBsService.updateUserDemoBsDetail(userDemoBsDetailVO);
            userDemoBsService.deleteUserDemoBsHumanResource(userDemoBsDetailVO.getIdx_user_demo_bs());

            for(int i=0;i<userDemoBsDetailVO.getUserBsHumanResourceVOList().size();i++){
                userDemoBsService.saveUserDemoBsHumanResource(userDemoBsDetailVO.getUserBsHumanResourceVOList().get(i));
            }

        }
        else {
            resultVO.setResult_str("저장이 정상적으로 이루어지지 않았습니다4");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }

        return resultVO;
    }

    @RequestMapping(value = "/app_step4_save_temp",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO app_step4_save_temp(HttpSession session,
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
            resultVO.setResult_str("신청정보가 없습니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }

        // 기 신청이 있으면 저장하면 안됨
        if(findUserDemoBsVo.getUser_demobs_status()>=4){
            resultVO.setResult_str("신청이 완료되어 저장할 수 없습니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }

        // 저장단계 변경

        if(findUserDemoBsVo.getUser_demobs_status()<2){
            findUserDemoBsVo.setUser_demobs_status(2);
        }

        findUserDemoBsVo.setIs_use_agree(userDemoBsVO.getIs_use_agree());//
        findUserDemoBsVo.setIs_indi_use_agree(userDemoBsVO.getIs_indi_use_agree());//
        findUserDemoBsVo.setIs_indi_info_agree(userDemoBsVO.getIs_indi_info_agree());//

        userDemoBsService.updateUserDemoBsWebStep4(findUserDemoBsVo);
        return resultVO;
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


    @RequestMapping(value = "/get_user_visit_req",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO  get_user_visit_req(HttpSession session,
                                     @RequestBody ParamVisitReqVO paramVisitReqVO){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("성공");
        resultVO.setResult_code("SUCCESS");

        VisitReqVO visitReqVO = visitService.getVisitReqByIdx(paramVisitReqVO.getIdx_visit_req());

        resultVO.setVisitReqVO(visitReqVO);
        return  resultVO;
    }
    @RequestMapping(value = "/cancel_user_visit_req",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO  cancel_user_visit_req(HttpSession session,
                                 @RequestBody ParamVisitReqVO paramVisitReqVO){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("삭제하였습니다");
        resultVO.setResult_code("SUCCESS");

        VisitReqVO visitReqVO = visitService.getVisitReqByIdx(paramVisitReqVO.getIdx_visit_req());

        if(visitReqVO==null){
            resultVO.setResult_str("아이템을 찾을 수 없습니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }
        visitService.deleteVisitReq(paramVisitReqVO.getIdx_visit_req());

        return  resultVO;
    }

    //방문예약 저장
    @RequestMapping(value = "/save_visit_req",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO save_visit_req(HttpSession session,
                                        @RequestBody VisitReqVO visitReqVO){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_code("SUCCESS");
        resultVO.setResult_str("신청했습니다");

        //1.신청 Usser 파악


        //2.기 신청이 있는지 체크
        VisitDataVO visitDataVO = visitService.getVisitData(visitReqVO.getResulvation_date());
        if(visitDataVO==null){
            resultVO.setResult_str("예약가능한 날이 아닙니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }

        if((visitReqVO.getIs_duration()==1 && (visitDataVO.getVisit_data_type()==5 || visitDataVO.getVisit_data_type()==7 ) )||
                (visitReqVO.getIs_duration()==2 && (visitDataVO.getVisit_data_type()==6|| visitDataVO.getVisit_data_type()==8))||
                visitDataVO.getVisit_data_type()==9){
            resultVO.setResult_str("이미 예약이 꽉차있습니다.별도 문의 바랍니다");
            resultVO.setResult_code("ERROR_1001");
            return resultVO;
        }

        //3.받은 데이터값 확인
        visitReqVO.setVisit_req_status(0);
        visitReqVO.setIs_cancel(0);
        visitReqVO.setIs_manager(0);
        visitReqVO.setMemo("");
        visitReqVO.setIdx_visit_req(visitDataVO.getIdx_visit_data());
        //visitReqVO.setIdx_user(visitDataVO.getidx);
        visitReqVO.setIdx_admin(0);
        if(visitReqVO.getVisit_goal()==null || visitReqVO.getVisit_goal().isEmpty())
        {
            visitReqVO.setVisit_goal("목적 없음");
        }

        visitService.saveVisitReq(visitReqVO);

        //저장후 예약관련 데이터 변경해야 함

        if(visitReqVO.getIs_duration()==1){
            if(visitDataVO.getVisit_data_type()==1){
                visitDataVO.setVisit_data_type(5);
            }
            else if(visitDataVO.getVisit_data_type()==3){
                visitDataVO.setVisit_data_type(7);
            }
            else if(visitDataVO.getVisit_data_type()==8){
                visitDataVO.setVisit_data_type(9);
            }
        }
        else if(visitReqVO.getIs_duration()==2){
            if(visitDataVO.getVisit_data_type()==2){
                visitDataVO.setVisit_data_type(6);
            }
            else if(visitDataVO.getVisit_data_type()==3){
                visitDataVO.setVisit_data_type(8);
            }
            else if(visitDataVO.getVisit_data_type()==7){
                visitDataVO.setVisit_data_type(9);
            }
        }


        visitService.updateStatusInVisitData(visitDataVO);

        return resultVO;
    }

    @RequestMapping(value = "/visit_req_list",method = RequestMethod.POST)
    public String visit_req_list(HttpSession session
            ,@RequestParam(value="idx_user") long idx_user
            ,@RequestParam(value="page") int page
            , Model model){

        if(idx_user!=0) {

            int list_amount = 10;
            int page_amount = 10;
            //int page = paramVisitReqVO.getVisit_req_list_page();

            int visitReqCount = visitService.getUserVisitReqCount(idx_user);
            model.addAttribute("total_count",visitReqCount);

            if(visitReqCount==0){ //컨설팅한게 업다

                return "include/visit_req_list";
            }

            //model.addAttribute("idx_user",paramVisitReqVO.getIdx_user());
            List<VisitReqVO> visitReqVOS = visitService.getUserVisitReq(idx_user,page,list_amount);

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

        return "include/visit_req_list";
    }


    @RequestMapping(value = "/user_consulting_list",method = RequestMethod.POST)
    public String user_consulting_list(HttpSession session
            ,@RequestParam(value="idx_user") long idx_user
            ,@RequestParam(value="page") int page
            , Model model){

        if(idx_user!=0) {

            int list_amount = 10;
            int page_amount = 10;
            //int page = paramVisitReqVO.getVisit_req_list_page();

            ParamPageListFilteredVO paramPageListFilteredVO = new ParamPageListFilteredVO();
            paramPageListFilteredVO.setPage_num(1);
            paramPageListFilteredVO.setIdx(idx_user);
            paramPageListFilteredVO.setAmount(5);
            paramPageListFilteredVO.setOrder_field("");

            int myConsultCount = consultingService.getConsultingCount(CONSTANT.user_idx,idx_user);
            model.addAttribute("total_count",myConsultCount);

            if(myConsultCount==0){ //컨설팅한게 업다

                return "include/visit_req_list";
            }

            //model.addAttribute("idx_user",paramVisitReqVO.getIdx_user());
            List<DemoBsConsultingVO> demoBsConsultingVOList = consultingService.getConsultingList(CONSTANT.user_idx,paramPageListFilteredVO);

            model.addAttribute("demoBsConsultingVOList",demoBsConsultingVOList);


            model.addAttribute("cur_page",page);
            model.addAttribute("amount",list_amount);

            int tot_page = myConsultCount/list_amount+1;
            if(myConsultCount%list_amount==0) tot_page-=1;

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

        return "include/user_consulting_list";
    }

    //상담신청 저장
    @RequestMapping(value = "/save_user_consulting_req",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO save_user_consulting_req(HttpSession session,
                            @RequestBody DemoBsConsultingVO demoBsConsultingVO){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_code("SUCCESS");
        resultVO.setResult_str("신청했습니다");

        //1.신청 Usser 파악



        //3.받은 데이터값 확인
        demoBsConsultingVO.setConsulting_num(0);
        demoBsConsultingVO.setConsulting_status(0);

        consultingService.saveDemoBsConsulting(demoBsConsultingVO);

        //저장후 예약관련 데이터 변경해야 함

        return resultVO;
    }

}
