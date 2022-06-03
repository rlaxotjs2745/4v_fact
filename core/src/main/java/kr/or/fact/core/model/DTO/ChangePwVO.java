package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class ChangePwVO {
    String curPw;
    String modPW;
    String modPwCf;
//    int admin_idx;
    String admin_id;
}
