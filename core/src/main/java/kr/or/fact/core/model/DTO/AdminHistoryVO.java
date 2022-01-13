package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class AdminHistoryVO {
    long idx_admin_history;//	number	32			◯		인덱스	auto increase
    long idx_admin;//	number	32				◯	어드민 인덱스	이메일 기본, 변경 가능
    String admin_id;//	varchar2	255					어드민 아이디	최소 8자리, 단방향 암호화
    String admin_name;//	varchar2	40					어드민  이름
    int work_type;//	number	4		0			작업 종류	0:로그인, 1:로그아웃, 2:등록, 3:업데이트, 4:삭제, 99::조회
    int work_detail;//	number	4					작업 내용	작업 페이지 이름
    Date reg_date;//	date						등록 일시
}
