package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class AdminUserDemoBsHeaderListVO {
    long idx_user_demo_bs;//	number	32	n		◯		인덱스	auto increase
    long idx_demo_business;//	number	32		0		◯	지원사업
    int user_demobs_status;//	number	4		0				0:지원서 작성중, 1: 보완요청, 2: 신청함, 3:서류 검토 중 ,  4:서류검토완료, 5:서류 부적격, 10:심사 중 11:심사통과, 12:심사보류, 13:심사 부적격, 20:이의신청, 21:이의 검토중, 22:이의 기각, 23:이의 인용, 30:협약중, 31:협약보완요청, 32:협약완료, 33:협약보류, 34:협약 실패,  40:사업 시작, 50:사업 종료, 60:결산중, 61:결산 완료, 99:최종 탈락
    long idx_user;//	number	32	n			◯	인덱스	신청서 작성자
    String user_demo_bs_app_code;//	varchar2	20	n				신청번호	"자동 생성 app+사업번호(000000)+신청번호(000000)

    //int app_step;//	number	4		0			신청서 작성 단계	"신청 단계, 최종 저장 단계 0:이용 신청서 작성, 1: 실증계획서 작성, 2:개인수집 동의서 작성, 3: 기타서류 등록, 4: 신청서 확인, 5: 신청함, 6:서류 보완 중"

    int user_demo_bs_type;//	number	4		1			실증단지 이용자	1:개인, 2:일반기업, 3:미등록기업(설립전), 4: 농업진흥기관, 5:선도기업, 6:외국연구기관, 7:특정연구기관, 8:정부출연연구기관, 9:스마트팜 관련 기업부설연구소 보유기업, 10: 대학교, 99:기타 단체

    int is_change;//	number	4		0			실증계획 변경	0:최초등록 동일, 1:심사후 협약전 변경,
    int is_confirm;//	number	4		0			실증계획 승인 여부	0:승인전, 1:승인
    int is_share;//	number	4		0			실증계획 승인 통보 여부	0:통보전, 1:통보
    String corp_name;//	varchar2	100					회사이름
    String ceo_name;//	varchar2	100					대표자 이름
    String ceo_mnumber;//	varchar2	20					대표자 모바일번호
}
