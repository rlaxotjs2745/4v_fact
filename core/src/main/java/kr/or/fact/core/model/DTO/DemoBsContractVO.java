package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class DemoBsContractVO {

    long idx_demo_bs_contract;//	number	32			◯		인덱스	auto increase
    long idx_demo_bs_applicaion;//	number	32				◯	지원번호
    long idx_demo_business;//	number	32				◯	지원사업
    long idx_corp_info;//	number	32				◯	지원회사
    long idx_demo_bs_applicaion_evaluate;//	number	32				◯	평가번호
    int contract_type;//	number	4		0			심사 종류	0:최초, 1:연장, 2:변경
    int contract_status;//	number	4		30			협약 상황	30:협약중, 31:협약보완요청, 32:협약완료, 33:협약보류, 34:협약 실패,
    int is_contract_file;//	number	4		0			계약서 여부	0:파일 없음, 1:파일 있음
    int is_full_payment;//	number	4		0			이용료 납부 여부	0:미납, 1:납부완료
    int is_share;//	number	4		0			고객과 공유 여부	0:공유안함, 1:공유
    Date deadline_date;//	date						협약기한 일시분초
    String memo;//	varchar2	1000					메모
    long idx_admin;//	number	32				◯	작성자	idx_admin index pk
    Date reg_date;//	date						최초 등록 일시
}
