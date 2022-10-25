package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class UserPwHistoryVO {

    long idx_user_pw_history;//	number	32			◯		인덱스
    long idx_user;//	number	32				◯	유저
    String past_user_pw;//	varchar2	255					변경전 유저 패스워드
    String reg_date;//	date						등록 일시

}
