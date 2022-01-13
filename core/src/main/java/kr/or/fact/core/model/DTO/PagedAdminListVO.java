package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class PagedAdminListVO {
    long idx_admin;
    String admin_id;
    String admin_name;
    String mphone_num;
}
