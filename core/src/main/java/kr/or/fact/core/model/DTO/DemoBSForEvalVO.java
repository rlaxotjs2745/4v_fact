package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class DemoBSForEvalVO {
    long idx_demo_business;//	number	32			◯		인덱스	auto increase
    String demo_bs_code;//	varchar2	40					사업번호
    String demo_subject;//	varchar2	100					사업 제목
    String demo_bs_contents;//	varchar2	3000					사업 내용
    String demo_bs_main_type;//	varchar2	40					사업 대분류
    String demo_bs_sub_type;//	varchar2	40					사업 중분류
    String demo_bs_detail_type;//	varchar2	40					사업 소분류
    int demo_bs_status;//	number	4		0			사업 상황	0:임시, 1:작성완료, 2:승인완료, 3:모집중, 4:모집 종료, 5:심사중, 6:심사완료, 7:이용계획 조정, 8:이용계획 확정,9:협약중, 10:협약완료, 11:사업 시작, 12:사업 종료, 13:결산중, 14:결산 완료
    int applicant_count;//	number	10		0			현재 응모자 수
    int applicant_count_limit;//	number	4		1			응모자 제한 수	선착순일 때 사용
    Date start_date;//	date						사업 시작 일시분초
    Date end_date;//	date						사업 종료 일시분초
    Date recruit_start_date;//	date						모집 시작 일시분초
    Date recruit_end_date;//	date						모집 종료 일시분초
    int recruit_count_limit;//	number	10		99999999			모집 수
    Date exam_start;//	date						서류검사 시작일
    Date exam_end;//	date						서류검사 종료일
    Date plan_review_start;//	date						이용계획 조정 시작일
    Date plan_review_end;//	date						이용계획 조정 종료일
    Date convention_start;//	date						협약 업무 시작일
    Date convention_end;//	date						협약 업무 종료일
    String memo;//	varchar2	1000					메모
    long idx_admin;//	number	32		0		◯	작성자	idx_admin index pk
    long idx_conform_admin;//	number	32		0		◯	승인자	idx_admin index pk
    int is_announce;//	number	4					게시 여부	0:아니오, 1:예
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						최종 수정 일시

    int appl_total_count; //총 지원 접수 수
    int appl_count; //지원 접수 수
    int appl_review_count; //지원서 검토중인 수
    int appl_doc_req_count; //지원서 보완요청 수
    int appl_check_done_count; //지원서 검토 완료 수
    int appl_reject_count; //지원서 검토 후 거절 수

    int eval_total_count; //심사 중 총수
    int eval_review_count; //심사 중 수
    int eval_done_count; //심사 완료 수
    int eval_pending_count; //심사 보류 수
    int eval_reject_count; //심사 불합격 수

    int contract_total_count; //협약 중 총수
    int contract_review_count; //협약 중 수
    int contract_req_count; //협약 보완요청 수
    int contract_done_count; //협약 완료 수
    int contract_pending_count; //협약 보류 수
    int contract_reject_count; //협약 불합격 수

}
