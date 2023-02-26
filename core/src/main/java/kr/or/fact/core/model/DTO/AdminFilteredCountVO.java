package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class AdminFilteredCountVO {
    int tot_count;
    int console_user_count;
    int console_admin_count;
    int admin_user_count;
    int super_admin_count;
}
