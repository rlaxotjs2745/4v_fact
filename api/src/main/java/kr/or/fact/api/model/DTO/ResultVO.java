package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class ResultVO {
    String result_code;
    String message;
    String username;
    String key;
}
