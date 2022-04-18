package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.CoWorkerVO;
import kr.or.fact.core.model.DTO.HomepageInfoVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface HomepageMapper {
    HomepageInfoVO getHomepageInfo();
    void updateHomepageInfo(HomepageInfoVO homepageInfoVO);
    void insertHomepageInfo(HomepageInfoVO homepageInfoVO);
    void deleteHomepageInfo(long idx);


}
