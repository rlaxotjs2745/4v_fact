package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class ConsoleUserVO {
    long idx_console_user;//	number	32			◯		인덱스	auto increase
    long idx_user;//	number	32					유저 정보	콘솔 사용자 정보(유저와 일대일)
    long idx_admin;//	number	32		0			관리자 정보	관리자일 경우
    int is_admin;//	number	4					콘솔 사용자 타입	0:일반사용자, 2:관리자
    String user_id;
    String user_pw;
    String user_name;
    String mphone_num;
    String corporate_name;
    String job_title;
    String tel_num;
    int auth_status;
    Date reg_date;//	date						등록일
    Date last_upd_date;//	date						마지막 업데이트
    String console_token;
}
