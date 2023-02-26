package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class SmsItemVO {
    long row_num;
    long msg_id;
    long job_id; //KT 유니크 번호
    String user_id;//agent_testO
    int schedule_type; // 0: 즉시 발송, 1: 예약 발송
    String subject;
    String send_date;
    String callback;
    int dest_count;//전송 요청 갯수
    int succ_count;//전송성공 갯수
    int fail_count;//전송 실패 갯수
    String dest_info;
    String sms_msg;
    String now_date;//20220425155555
    String reserved1;//SMS_TYPE
    int send_status;
}