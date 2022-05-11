package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.CorpInfoVO;
import kr.or.fact.core.model.DTO.SimpleCorpInfoVO;

import java.util.List;

public interface CorpService {

    CorpInfoVO getCorpInfo(long idx_corp_info);

    List<SimpleCorpInfoVO> getSimpleCorpInfoList(String corp_name_kor);

    long saveCorpInfo(CorpInfoVO corpInfoVO);

    void updateCorpInfo(CorpInfoVO corpInfoVO);

    CorpInfoVO getUserCorp(long idx_user);

}
