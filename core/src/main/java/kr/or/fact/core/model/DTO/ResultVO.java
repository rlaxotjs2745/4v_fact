package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.HashMap;
import java.util.List;

@Data
public class ResultVO{
    String result_code;
    String result_str;
    long result_idx;
    UserDemoBsVO userDemoBsVO;

    List<VisitDataVO> visitDataVOList;

    VisitReqVO visitReqVO;
    UserVO userVO;
    String access_token;
    String refresh_token;
}
