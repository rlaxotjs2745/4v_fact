package kr.or.fact.core.model.DTO;

import java.util.Date;

public class EmailTemplateVO {
    long idx_email_template;//	number	32			◯		인덱스	auto increase
    int email_type;//	number	4				◯	이메일 타입, 발송조건	0:임의 , 1:회원가입,2:공지사항알림, 3:개별일반, 개벌긴급,
    int schedule_type;//	number	4						0: 사용 안함, 1:즉시 전송, 2: 예약전송
    String subject;//	varchar2	200		0			이메일 제목	제목
    String content;//	clob	1000000						전송될 메세지, html
    String sender;//	varchar2	200						보낸 이메일 주소
    Date send_date;//	date							보내기 예약시간24시간 기준
    int recipient_count;//	number	4						수신자 수, 최대 100
    int is_group;//	number	4						0:개인, 1:그룹
    String recipient;//	clob	40000						"이름"<id@주소>; 형식
    int email_status;//	number	4					발송 상태	0:발송안함, 1:예약됨 1:발송함
    String memo;//	varchar2	1000					발송조건 설명	발송조건 설명
    int has_file;//	number	4					파일포함여부	0"포함 안함, 1:포함
    long idx_admin;//	number	32				◯	작성자	idx_admin index pk
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date						마지막 수정
}
