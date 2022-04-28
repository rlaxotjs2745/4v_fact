package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class ReservedMailVO {
    int idx_mail_reserved;
    String receiver;
    String status;
    String sendTime;
    String title;
    String content;
    int idx_mail_templete;
}
