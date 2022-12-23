package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.HomepageInfoVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;

import java.util.List;

public interface HomepageInfoService {
    HomepageInfoVO getHomepageInfo();
    void updateHomepageInfo(HomepageInfoVO homepageInfoVO);
    void insertHomepageInfo(HomepageInfoVO homepageInfoVO);
    void deleteHomepageInfo(long idx);
    List<HomepageInfoVO> getHomepageInfoList(ParamPageListFilteredVO homepageInfoVO);

    HomepageInfoVO getHomepageInfoIdx(HomepageInfoVO homepageInfoVO);

    void setCurrentHomepageInfo(long idx);

    void setWaitingHomepageInfo(long idx);

    int getHomepageInfoCount();
}

