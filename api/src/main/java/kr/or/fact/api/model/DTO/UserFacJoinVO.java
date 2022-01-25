package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class UserFacJoinVO {
    long idx_user_fac_join;
    long idx_user;
    long idx_asset;
    String start_date;
    String end_date;
    String reg_date;
}
