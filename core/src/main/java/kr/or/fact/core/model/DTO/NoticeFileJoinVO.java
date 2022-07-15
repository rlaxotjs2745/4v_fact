package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class NoticeFileJoinVO {

    long idx_notice_file_join;
    long idx_notice;
    long file_type;
    long idx_file_info;
    long idx_admin;
    Date reg_date;
}
