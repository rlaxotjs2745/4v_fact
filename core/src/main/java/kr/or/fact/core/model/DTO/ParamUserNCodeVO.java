package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class ParamUserNCodeVO {
    String user_id;
    long idx_user_secret_code;
    String secret_code;
    long idx_user;
    int code_type;
    String user_pw;
    int is_confirm;
    int is_use;
}
