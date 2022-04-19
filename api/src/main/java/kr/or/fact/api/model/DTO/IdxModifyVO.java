package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class IdxModifyVO {
    long idx_shinhandata;
    String rec_data;
    String rec_reg_dt;
    String reg_dt;
    long page;
    long maxvalue;
}
