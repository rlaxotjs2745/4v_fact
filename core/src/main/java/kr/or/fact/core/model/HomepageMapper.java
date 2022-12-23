package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.HomepageInfoVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface HomepageMapper {
    HomepageInfoVO getHomepageInfo();
    void updateHomepageInfo(HomepageInfoVO homepageInfoVO);
    void insertHomepageInfo(HomepageInfoVO homepageInfoVO);
    void deleteHomepageInfo(long idx);
    List<HomepageInfoVO> getHomepageInfoList(ParamPageListFilteredVO homepageInfoVO);

    HomepageInfoVO getHomepageInfoIdx(HomepageInfoVO homepageInfoVO);

    void setCurrentHomepageInfo(long idx);

    int getHomepageInfoCount();

    void setWaitingHomepageInfo(long idx);
}

