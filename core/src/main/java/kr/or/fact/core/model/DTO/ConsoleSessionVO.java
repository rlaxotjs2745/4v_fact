package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class ConsoleSessionVO {
    long idx_console_session;//	number	32			◯		인덱스
    long idx_user;//	varchar2	40				◯	관리자 인덱스
    long idx_admin;//	varchar2	40				◯	관리자 인덱스
    String console_token;//	varchar2	40					로그인 세션
    String console_refresh_token;//	varchar2	40
    int is_valid;//유효성 여부	0:유효하지 않음, 1:유효함
    int is_admin;//유효성 여부	0:유효하지 않음, 1:유효함
    Date console_expire_date;//	date						엑세스 토큰 만기 일시
    Date console_refresh_date;//	date						리프레시 토큰 만기일시
    Date reg_date;//	date						등록일
}
