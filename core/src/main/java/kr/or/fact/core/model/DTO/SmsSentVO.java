package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class SmsSentVO {
    long msg_id;
    int schedule_type; // 0: 즉시 발송, 1: 예약 발송
    String subject;
    String send_date;
    String callback;
    int dest_count;
    String dest_info;
    String sms_msg;

}