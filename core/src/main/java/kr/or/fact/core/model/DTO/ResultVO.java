package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Data
public class ResultVO{
    String result_code;
    String result_str;
    long result_idx;
    UserDemoBsVO userDemoBsVO;
    UserDemoBsDetailVO userDemoBsDetailVO;

    List<UserBsHumanResourceVO> userBsHumanResourceVOS;

    List<VisitDataVO> visitDataVOList;

    VisitReqVO visitReqVO;
    UserVO userVO;
    String access_token;
    String refresh_token;

    Map<String, Object> data;
}
