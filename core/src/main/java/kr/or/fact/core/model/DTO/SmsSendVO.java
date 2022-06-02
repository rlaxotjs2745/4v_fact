package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class SmsSendVO {
    String user_id;//agent_testO
    int schedule_type;
    String subject;//제목O
    String sms_msg;//메세지내용O
    String now_date;//20220425155555
    String send_date;//20220425155555O
    String callback;//01031578206O
    String dest_info;//이정빈^01031578206O


}


