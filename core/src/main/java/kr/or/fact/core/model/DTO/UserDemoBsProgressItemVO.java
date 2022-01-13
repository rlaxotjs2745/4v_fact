package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class UserDemoBsProgressItemVO {

    long idx_user_demo_bs_progress_item;//	number	32			◯		인덱스	auto increase
    String step_item_name;//	varchar2	100					진도 단계
    int step_item_order;//	number	4					진도 순서
    float progress_rate;//	number	6,2					진도율	0%~100%, 소수 2째자리 허용
    Date start_date;//	date						시작 날짜
    Date end_date;//	date						종료 날짜
    long idx_user_demo_bs_progress_step;//	number	32				◯	실증 진도 연결	idx_demo_progress index pk
    Date reg_date;//	date						최초 등록 일시

}
