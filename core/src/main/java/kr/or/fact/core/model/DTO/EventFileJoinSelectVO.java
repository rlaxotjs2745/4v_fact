package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class EventFileJoinSelectVO {
    long idx_event_content;
    String event_content_code;
    int event_content_num;
    String subject;
    String event_contents;
    int is_file;
    int is_new;
    int is_main_page;
    int is_important;
    int is_show;
    int view_count;
    int event_content_status;
    Date event_start_date;
    Date event_end_date;
    int doc_version;
    String memo;
    long search_tag;
    String author;
    long thumb_img_file_idx;
    long idx_admin;
    long confirm_admin_idx;
    Date reg_date;
    Date last_upd_date;
    long idx_file_info;
    String file_name;
    String file_path;

    List<FileInfoVO> attachments;

    String event_start_date_str;
    String event_end_date_str;
}
