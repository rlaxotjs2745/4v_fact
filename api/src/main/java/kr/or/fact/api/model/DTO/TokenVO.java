package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class TokenVO {
    long idx_user;
    String username;
    String key;
    String created;
    String expired;
}
