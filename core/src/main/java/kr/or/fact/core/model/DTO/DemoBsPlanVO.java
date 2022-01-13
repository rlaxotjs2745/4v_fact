package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class DemoBsPlanVO {

    long idx_user_demo_bs_plan;//	number	32			◯		인덱스	auto increase
    long idx_demo_business;//	number	32				◯	지원사업
    int demo_plan_type;//	number	4		2			실증 주체	0:기본, 1:자율, 2:위탁, 1028:기타
    int demo_facility;//	number	4		0			실증 시설	0:,사용안함, 1:단동, 2:연동, 4:육묘장, 8:노지, 16:단동유리, 32:연동유리, 64:식물공장
    int demo_way;//	number	4		1			실증 방법	0:해당없음, 1:단순, 2:비교, 512:기타
    int demo_repeat;//	number	4		0			실증횟수	0:반복 없음, 1:반복실증
    int demo_goal;//	number	4		2			실증 목표	0:해당없음, 1:성능확인, 2:자체평가, 512:기타
    int demo_option;//	number	4		1			실증 조건	0:해당없음, 1:일반환경, 2:특수환경, 512:기타
    String demo_crops;//	varchar2	100					실증작물
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
    int is_fee_file;//	number	4		0			이용료 산출파일 여부	0:파일 없음, 1:파일 있음
    int is_confirm_file;//	number	4		0			이용계획 승인서 여부	0:파일 없음, 1:파일 있음
    int is_contract_info_file;//	number	4		0			계약안내서 여부	0:파일 없음, 1:파일 있음
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시
    long idx_corp_info;//	number	32				◯	법인 연결	tb_corp_info index pk
    long idx_user;//	number	32				◯	등록자

}
