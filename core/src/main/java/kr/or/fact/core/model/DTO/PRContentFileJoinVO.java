package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class PRContentFileJoinVO {
    long idx_pr_content_file_join;
    long idx_pr_content;
    long file_type;
    long idx_file_info;
    long idx_admin;
    Date reg_date;
}
