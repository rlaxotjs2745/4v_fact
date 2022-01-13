package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class UserDemoBsProgressStepVO {

    long idx_user_demo_bs_progress_step;//	number	32			◯		인덱스	auto increase
    long idx_user_demo_bs_progress;//	number	32					실증사업
    String step_name;//	varchar2	100					진도 단계
    int step_status;//	number	4		0			진도 상태	0:계획, 1:진행중, 2:완료, 3:보완, 99:기타
    int step_order;//	number	4		1			진도 순서
    Date reg_date;//	date						최초 등록 일시

}
