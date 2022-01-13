package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class UserDemoBsVO {

    String demo_bs_subject;//From TB_DEMO_BUSINESS
    DemoBsMsgVO demoBsMsgVo;
    long idx_user_demo_bs;//	number	32			◯		인덱스	auto increase
    long idx_demo_business;//	number	32				◯	지원사업
    int user_demo_bs_type;//	NUMBER	4		1			사업 진행 주체 타입	0:개인, 1:일반기업, 2:미등록기업(설립전), 3: 농업진흥기관, 4:선도기업, 5:외국연구기관, 6:특정연구기관, 7:정부출연연구기관, 8:스마트팜 관련 기업부설연구소 보유기업, 9: 대학교, 99:기타 단체
    long idx_corp_info;//	number	32				◯	지원회사
    int user_demo_status;//	NUMBER	4		0			유저의 실증사업 워크플로우 상태	0:지원, 1:신청 서류 검토 중, 2:신청 서류 보완요청,  3:신청 서류검토완료, 4:신청 서류 부적격, 10:심사 중 11:심사통과, 12:심사보류, 13:심사중 자료 보완요청, 14:심사 부적격, 20:이의신청, 21:이의 검토중, 22:이의 기각, 23:이의 인용, 30:협약중, 31:협약자료 검토중, 32:협약보완요청, 33:협약자료 검토 완료, 34:협약보류, 35:협약 실패, 36:협약 완료, 40:사업 시작, 50:사업 종료, 60:결산중, 61:결산 완료, 99:최종 탈락
    int user_demo_type;//	number	4		0			실증 주체	0:자율, 1:위탁
    int user_demo_facility;//	number	4		1			실증 시설	1:단동, 2:연동, 4:육묘장, 8:노지, 16:단동유리, 32:연동유리, 64:식물공장
    int user_demo_way;//	number	4		0			실증 방법	0:단순, 1:비교
    int user_demo_repeat;//	number	4		0			실증횟수	0:반복 없음, 1:반복실증
    int ser_demo_goal;//	number	4		0			실증 목표	0:기본, 1:성능확인, 2:자체평가, 512:기타
    int user_demo_option;//	number	4		0			실증 조건	0:기본, 1:일반환경, 2:특수환경, 512:기타
    String user_demo_crops;//	varchar2	100					실증작물
    int culture_soil;//	number	4		0			생육토양	0:해당사항 없음, 1:토경재배, 2:수경재배, 4:고형배지재배, 512:기타
    int demo_type;//	number	4		0			실증 대상	0:해당없음, 1:시설자재, 2:ict기자재, 4:작물보호제/비료, 8:스마트팜sw, 16:생육모델, 32:로봇, 512:기타
    Date demo_start_date;//	date						입주 시작 날짜
    Date demo_end_date;//	date						입주 종료 날짜
    int resident_type;//	number	4		0			상주 타입	0:해당없음, 1:r&d연구실, 2:스타트업사무실, 512:기타
    int staff_num;//	number	10					상주인원
    int usage_fee;//	number	20					실증료
    int deposit;//	number	20					보증금
    int is_change;//	number	4		0			실증계획 변경	0:최초등록 동일, 1:심사후 협약전 변경, 2:협약 후 진행 시 변경,
    int is_confirm;//	number	4		0			실증계획 승인 여부	0:승인전, 1:승인
    int is_share;//	number	4		0			실증계획 승인 통보 여부	0:통보전, 1:통보
    int is_fee_file;//	number	4					이용료 산출파일 여부
    int is_confirm_file;//	number	4					이용계획 승인서 여부
    int is_contract_info_file;//	number	4					계약안내서 여부
    long idx_corp_manager;//	number	32					담당자
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시

}
