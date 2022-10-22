package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class AuthVO {
    long idx_auth;//	number	32			◯		인덱스	auto increase
    long idx_console_user;//	varchar2	100					콘솔 관리자 정보
    String auth_code;//	varchar2	200		0			인증 코드	인증 코드
    int is_available;//	number	4		0			사용 가능	0:아니오, 1:예
    Date expired_dt;//	date						유효기간
    Date reg_date;//	date						등록일
    Date last_upd_date;//	date						마지막 업데이트
}
