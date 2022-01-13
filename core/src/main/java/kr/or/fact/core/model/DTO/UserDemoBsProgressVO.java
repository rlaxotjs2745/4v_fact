package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class UserDemoBsProgressVO {

    long idx_user_demo_bs_progress;//	number	32			◯		인덱스	auto increase
    long idx_user_demo_bs;//	number	32				◯	유저 실증 사업
    float total_progress;//	number	6,2		0			총 진도율	0%~100%, 소수 2째자리 허용
    int progress_status;//	number	4		0			진도 상태	0:계획, 1:진행중, 2:완료, 99:기타
    String progress_owner;//	varchar2	100					진도 기업명
    long idx_corp_info;//	number	32				◯	법인 연결	tb_corp_info index pk
    Date reg_date;//	date						최초 등록 일시

}
