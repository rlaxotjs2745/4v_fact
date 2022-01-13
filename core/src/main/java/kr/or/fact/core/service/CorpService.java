package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.CorpInfoVO;
import kr.or.fact.core.model.DTO.SimpleCorpInfoVO;

import java.util.List;

public interface CorpService {

    public CorpInfoVO getCorpInfo(long idx_corp_info);

    public List<SimpleCorpInfoVO> getSimpleCorpInfoList(String corp_name_kor);

    //public CorpVO login(String user_id, String user_pw);
    //public ResultVO logout(String user_id);
    //public ResultVO join(UserVO userVO);
    //public CorpVO findUserID(String user_name, String mphone_number);
    //public CorpVO findUserPW(String user_id);

    //public ResultVO checkIdDuplicate(String user_id);
}
