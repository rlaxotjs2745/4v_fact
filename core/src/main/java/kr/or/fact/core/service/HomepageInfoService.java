package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.CoWorkerVO;
import kr.or.fact.core.model.DTO.HomepageInfoVO;

import java.util.List;

public interface HomepageInfoService {
    HomepageInfoVO getHomepageInfo();
    void updateHomepageInfo(HomepageInfoVO homepageInfoVO);
    void insertHomepageInfo(HomepageInfoVO homepageInfoVO);
    void deleteHomepageInfo(long idx);
    List<HomepageInfoVO> getHomepageInfoList(HomepageInfoVO homepageInfoVO);


}
