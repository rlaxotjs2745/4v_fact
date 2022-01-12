package kr.or.fact.api.model.DTO;

import lombok.Data;

import java.time.LocalDateTime;
import java.util.Date;

@Data
public class TokenVO {
    long idx_user;
    String key;
    String username;
    String created;
    String expired;
}
