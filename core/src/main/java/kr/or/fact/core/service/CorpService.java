package kr.or.fact.core.service;

import kr.or.fact.core.model.CorpMapper;
import kr.or.fact.core.model.DTO.CorpInfoVO;
import kr.or.fact.core.model.DTO.CorpManagerVO;
import kr.or.fact.core.model.DTO.SimpleCorpInfoVO;
import kr.or.fact.core.model.DTO.UserVO;

import java.util.ArrayList;
import java.util.List;

public interface CorpService {

    CorpInfoVO getCorpInfo(long idx_corp_info);

    List<SimpleCorpInfoVO> getSimpleCorpInfoList(String corp_name_kor);

    long saveCorpInfo(CorpInfoVO corpInfoVO);

    void updateCorpInfo(CorpInfoVO corpInfoVO);

    CorpInfoVO getUserCorp(long idx_user);

    ArrayList<CorpInfoVO> selectCorpInfo();

    int insertCorpManager(UserVO userVO);

    ArrayList<CorpManagerVO> selectCorpManagerList(long idx_corp);

    int changeCorpManagerType(CorpManagerVO corpManagerVO);

    CorpManagerVO getCorpManagerUserIdx(long idx_user);

    int updateCorpManager(CorpManagerVO corpManagerVO);

    Integer getCorpCount(int is_applicant);
}
