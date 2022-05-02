package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.HashMap;

@Data
public class ResultVO{
    String result_code;
    String result_str;
    UserDemoBsVO userDemoBsVO;
}
