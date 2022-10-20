package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class UserDemoBsVO {
    long idx_user_demo_bs;//	number	32	n		◯		인덱스	auto increase
    long idx_demo_business;//		number	32		0		◯	지원사업
    int user_demobs_status;
    //    0:이용 신청서 작성
//    1: 실증계획서 작성
//    2:개인수집 동의서 작성
//    3: 기타서류 등록
//    4: 신청함
//    5:서류 검토 중
//    6:신청서 보완요청
//    7:서류 보완 중
//    8:서류접수완료
//    9:서류 부적격
//    10:서류 평가 심사 중
//    11:서류 심사통과
//    12:서류 심사보류
//    13:서류심사심사 부적격
//    14:제안서 요청
//    15:제안서 접수
//    16:발표 요청
//    17:발표 완료
//    18:발표평가중
//    19:발표 합격
//    20:이의신청
//    21:이의 검토중
//    22:이의 기각
//    23:이의 인용
//    30:협약중
//    31:협약보완요청
//    32:협약완료
//    33:협약보류
//    34:협약 실패
//    40:사업 시작
//    50:사업 종료
//    60:결산중
//    61:결산 완료
//    99:최종 탈락
    long idx_user;//		number	32	n			◯	인덱스	신청서 작성자
    String user_demo_bs_app_code;//		varchar2	20	n				신청번호	"자동 생성     app+사업번호(000000)+신청번호(000000)     사업번호:idx_demo_bs     신청번호:seq_user_demo_bs"
    //int app_step;//사용안함		number	4		1			신청서 작성 단계	"신청 단계, 최종 저장 단계             1:이용 신청서 작성, 2: 실증계획서 작성, 3:개인수집 동의서 작성, 4: 기타서류 등록, 5: 신청서 확인, 6: 신청함"
    int user_demo_bs_type;//		number	4		1			사업 진행 주체 타입	0:개인, 1:일반기업, 2:미등록기업(설립전), 3: 농업진흥기관, 4:선도기업, 5:외국연구기관, 6:특정연구기관, 7:정부출연연구기관, 8:스마트팜 관련 기업부설연구소 보유기업, 9: 대학교, 99:기타 단체
    long idx_corp_info;//		number	32		0		◯	지원회사
    String corp_name;//		varchar2	100					회사이름
    String corp_birth;//		varchar2	20					회사 설립일
    String corp_num;//		varchar2	20					사업자등록번호
    String corp_reg_num;//		varchar2	20					법인등록번호
    String corp_addr;//		varchar2	1000					본사 소재지
    String corp_addr2;//		varchar2	1000					본사 소재지 상세
    String corp_rnd_addr;//		varchar2	1000					본사 연구소 소재지
    String corp_rnd_addr2;//		varchar2	1000					본사 연구소 소재지 상세

    String corp_phone;//	VARCHAR2	40					사무실 전화 번호
    String lab_phone;//	VARCHAR2	40					연구소 전화 번호
    String email;//	varchar2	320					대표 이메일
    String homepage;//	VARCHAR2	255					회사 홈페이지

    int capital_amount;	//NUMBER	20					자본금
    int corp_sales_amount;//		number	10					매출액
    int corp_er;//	number	10					자기자본비율
    int employees_count;//	number	10					직원수
    String bs_type1;//	varchar2	20					업태 종목
    String bs_type2;//	varchar2	20					업태 종목
    String main_product;//	varchar2	200					주생산품목

    int req_facility;//     이용 실증시설
    String	req_etc;//	VARCHAR2	400					이용 실증시설 기타
    String demobs_tech_plan;//	varchar2	100					개발예정품목
    String ceo_name;//	varchar2	100					대표자 이름
    String ceo_mnumber;//	varchar2	20					대표자 모바일번호
    String ceo_pnumber;//	varchar2	20					대표자 사무실 번호
    String ceo_email;//	varchar2	400					대표자 이메일
    String ceo_address;//	varchar2	1000					대표자 주소
    String ceo_address2;//
    String man_name;//	varchar2	100					담당자 이름
    String man_dpart;// varchar2(100),부서
    String man_role;// varchar2(200),직위
    String man_mnumber;//	varchar2	20					담당자 모바일 번호
    String man_pnumber;//	varchar2	20					담당자 사무실 번호
    String man_email;//	varchar2	400					담당자 이메일
    int user_demo_type;//	number	4		0			실증 주체	0:자율, 1:위탁
    int user_demo_facility;//	number	4		1			실증 시설	1:단동, 2:연동, 4:육묘장, 8:노지, 16:단동유리, 32:연동유리, 64:식물공장
    int user_demo_way;//	number	4		0			실증 방법	0: 단순, 1:비교
    int user_demo_repeat;//	number	4		0			실증횟수	0:반복 없음, 1:반복실증
    int user_demo_repeat_count;//	NUMBER	4		0			실증횟수
    int user_demo_goal;//	number	4		0			실증 목표	0::성능확인, 1:자체평가
    int user_demo_option;//	number	4		0			실증 조건	0: 일반환경, 1:특수환경
    int user_demo_is_crops;//NUMBER	4		1			실증작물 여부	0:해당없음 1:비작물실증, 2: 작물대상실증
    String user_demo_crops;//	varchar2	100					실증작물
    int culture_soil;//	number	4		0			생육토양	0: 토경재배, 1:수경재배, 2:고형배지재배
    int demo_type;//	number	4		0			실증 대상	0:해당없음, 1:시설자재, 2:ict기자재, 4:작물보호제/비료, 8:스마트팜sw, 16:생육모델, 32:로봇, 512:기타
    Date demo_start_date;//	date						입주 시작 날짜
    String demo_start_date_s;//	date						입주 시작 날짜
    Date demo_end_date;//	date						입주 종료 날짜
    String demo_end_date_s;//	date						입주 종료 날짜

    Date farming_start_date;// date, 경작시작
    Date farming_end_date;// date, 경작종료
    int farming_repeat;// number(4),경작 주기

    int resident_type;//	number	4		0			상주 타입	0:해당없음, 1:r&d연구실, 2:스타트업사무실, 512:기타
    String resident_etc;//	varchar2	100					이용 실증시설 기타	이용 신청시설 기타 내용
    int staff_num;//	number	10					상주인원
    int is_change;//	number	4		0			실증계획 변경	0:최초등록 동일, 1:심사후 협약전 변경, 2:협약 후 진행 시 변경,
    int is_confirm;//	number	4		0			실증계획 승인 여부	0:승인전, 1:승인
    int is_share;//	number	4		0			실증계획 승인 통보 여부	0:통보전, 1:통보

    String costat_code;//	varchar2	20					표준산업분류코드	네자리
    int is_office_ower;//	number	4		0			본사 자가여부	0:임차, 1:자가
    int is_lab_ower;//	number	4		0			연구소 자가여부	0:임차, 1:자가
    int man_total;//	number	4		0			총임직원 수
    int man_officer_count;//	number	4		0			사무직원 수
    int man_lab_count;//	number	4		0			연구직원 수
    int man_etc_count;//	number	4		0			키타지원 수

    String lab_est_date;//	VARCHAR2	20					연구소 설립일수
    int rnd_rate;//	NUMBER	4					연구개발투자비율
    String consolidated_company;//	VARCHAR2	100 연결회사


    String history1;//	varchar2	100					주요연혁 1
    String history1_date;//	varchar2	20					주요연혁 1 날짜
    String history2;//	varchar2	100					주요연혁 2
    String history2_date;//	varchar2	20					주요연혁 2 날짜
    String history3;//	varchar2	100					주요연혁 3
    String history3_date;//	varchar2	20					주요연혁 3 날짜
    String prize1;//	varchar2	100					포상현황1
    String prize1_date;//	varchar2	20					포상날자1
    String prize1_org;//	varchar2	100					포상기관1
    String prize1_etc;//	varchar2	100					포상 비고1
    String prize2;//	varchar2	100					포상현황2
    String prize2_date;//	varchar2	20					포상날자2
    String prize2_org;//	varchar2	100					포상기관2
    String prize2_etc;//	varchar2	100					포상 비고2
    String prize3;//	varchar2	100					포상현황3
    String prize3_date;//	varchar2	20					포상날자3
    String prize3_org;//	varchar2	100					포상기관3
    String prize3_etc;//	varchar2	100					포상 비고3

    int is_use_agree;//	NUMBER	4		0			실증단지 이용약관 동의	0:동의 안함, 1:동의
    int is_indi_use_agree;//	NUMBER	4		0			개인정보 수집 및 이용동의	0:동의 안함, 1:동의
    int is_indi_info_agree;//	NUMBER	4		0			개인정보처리 위탁에관한 동의	0:동의 안함, 1:동의

    Date reg_date;//	date						최초 등록 일시
    String reg_date_s;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시
    String last_upd_date_s;//	date						최종 수정 일시

    String demo_subject;//	varchar2	100					사업 제목
    String demo_bs_applicaion_code;//	varchar2	40					지원번호
    Date applicaion_reg_date;
    DemoBsMsgVO demoBsMsgVo;
    CorpInfoVO corpInfoVO;
}
