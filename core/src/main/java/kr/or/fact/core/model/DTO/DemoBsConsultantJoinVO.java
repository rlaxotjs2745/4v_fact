package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class DemoBsConsultantJoinVO {

    long idx_demo_bs_consultant_join;//	number	32			◯		인덱스
    long idx_demo_bs_applicaion;//	number	32				◯	지원번호
    long idx_demo_business;//	number	32				◯	지원사업
    long idx_admin;//	number	32				◯	실증 책임자
    Date reg_date;//	date						최초 등록 일시

}
