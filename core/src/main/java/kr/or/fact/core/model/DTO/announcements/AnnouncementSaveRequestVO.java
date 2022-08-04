package kr.or.fact.core.model.DTO.announcements;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.Date;

@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class AnnouncementSaveRequestVO {

    private String bs_announcement_code;

    private Integer announce_num;

    private Integer is_file;

    private String subject;

    private String announce_contents;

    private Integer bs_status;

    private Integer is_new;

    private Integer is_main_page;

    private Integer is_important;

    private Integer is_show;

    private Integer view_count;

    private Integer announce_status;

    private Date posting_start_date;

    private Date posting_end_date;

    private Integer doc_version;

    private String memo;

    private Long search_tag;

    private String author;

    private Long idx_demo_business;

    private Long confirm_admin_idx;

    private Long idx_admin;
}
