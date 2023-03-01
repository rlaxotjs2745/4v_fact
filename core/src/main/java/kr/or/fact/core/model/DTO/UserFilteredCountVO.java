package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class UserFilteredCountVO {
    int tot_count;
    int nomal_count;
    int dormancy_count;
    int leave_count;
    int ban_count;
}
