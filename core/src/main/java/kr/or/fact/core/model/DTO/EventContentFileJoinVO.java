package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class EventContentFileJoinVO {
    long idx_event_content_file_join;
    long idx_event_content;
    int file_type;
    long idx_file_info;
    long idx_admin;
    Date reg_date;
}
