package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class DemoBsApplicationEvaluateVO{

    long idx_demo_bs_applicaion_evaluate;//	number	32			◯		인덱스	auto increase
    long idx_demo_bs_applicaion;//	number	32				◯	지원번호
    long idx_demo_business;//	number	32				◯	지원사업
    long idx_corp_info;//	number	32				◯	지원회사
    int evaluate_type;//	number	4		0			심사 종류	0:서류심사, 1:대면심사, 2:종합심사
    int evaluate_status;//	number	4		10			평가 상황	10:심사 중 11:심사통과, 12:심사보류, 13:심사 부적격
    int is_evaluate_file;//	number	4		0			선정 평가서 여부	0:파일 없음, 1:파일 있음
    int is_result_file;//	number	4		0			종합의견서 파일 여부	0:파일 없음, 1:파일 있음
    int is_consultant;//	number	4		0			책임자 지정 여부	0:지정 없음, 1:지정
    int is_share;//	number	4		0			고객과 공유 여부	0:공유안함, 1:공유
    String memo;//	varchar2	1000					메모
    long idx_admin;//	number	32				◯	작성자	idx_admin index pk
    Date reg_date;//	date						최초 등록 일시

}
