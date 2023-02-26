package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.text.SimpleDateFormat;
import java.util.Date;

@Data
public class SmsTemplateVO {
    int row_num;
    long idx_sms_template;//	number	32			◯		인덱스	auto increase
    String user_id;//	varchar2	20						kt 크로샷 사용 id 'smartfarm01' pw 'fact0907!!'
    int sms_type;//	number	4				◯	문자메세지 타입, 발송조건	0:임의 발송 , 1:회원가입,2:알림, 3:개별일반, 개벌긴급,
    int schedule_type;//	number	4						0: 즉시 전송, 1: 예약전송
    String subject;//	varchar2	64		0			문자메세지 제목	제목으로 각 메시지를 구분하는 데이터로 사용하며, 실제 발송 시 서버로 전송되지는 않음
    String sms_msg;//	varchar2	200						전송될 문자 메시지 내용으로 일반적으로 길이제한은 90 byte 입니다.(권장규격 입니다.) 이통사 마다 sms 지원 byte 수는 다르며 최대 90 byte 까지 가능합니다.
    String callback_url;//	varchar2	200						문자메세지에 포함(비틀리 사용 요망), 현재 가입되어 있지 않아서 서비스 이용할 수 없음
    String now_date;//	사용 안함, varchar	20						sdk_등록시간24시간 기준(yyyymmddhhmmss )
    String send_date;//	varchar	20						보내기 예약시간24시간 기준(yyyymmddhhmmss )
    String callback;//	varchar	20						보낸 전화번호(회신번호)
    int dest_type;//	number	4						 (고정값 ‘0’)
    int dest_count;//	number	4						수신자 수, 최대 100
    int is_group;//0:개인, 1:그룹
    String dest_info;     /*	varchar2	2000						"수신자 정보이며, 이름/전화번호, 구분자로 구성되어 있습니다. 규칙은 아래와 같습니다. - 이름과 전화번호 사이 구분자 : ^
            - 수신자와 수신자 사이 구분자 : |
            (번호에서 '-' 제외)"*/
    int sms_status;//	number	4					문자발송 상태	0:발송안함, 1:유저가 결정 1:관리자가 발송함
    String memo;//	varchar2	1000					발송조건 설명	발송조건 설명
    long idx_admin;//	number	32				◯	작성자	idx_admin index pk
    Date reg_date;//	date						최초 등록 일시
    Date last_upd_date;//	date

    public SmsTemplateVO(){
        user_id = "smartfarm01";
        dest_type=0;

    }

    public void makeSMSSendData(SmsItemVO smsItemVO){

        smsItemVO.user_id = this.user_id;//agent_testO

        smsItemVO.schedule_type = this.schedule_type;
        smsItemVO.subject = this.subject;//제목O
        smsItemVO.sms_msg = this.sms_msg;//메세지내용O
        Date now = new Date();
        SimpleDateFormat dtFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        String now_s = dtFormat.format(now);
        smsItemVO.now_date = now_s;//20220425155555
        smsItemVO.send_date = this.send_date;//20220425155555O
        smsItemVO.callback = this.callback;//01031578206O
        smsItemVO.dest_info = this.dest_info;//이정빈^01031578206O
    }
}
