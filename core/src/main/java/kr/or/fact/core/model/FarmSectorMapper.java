package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.FarmSectorFilteredCountVO;
import kr.or.fact.core.model.DTO.FarmSectorVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.UserDemoFarmSectorVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FarmSectorMapper {
    FarmSectorFilteredCountVO getFarmSectorFilteredCount();
    int getEachFarmSectorFilteredCount(ParamPageListFilteredVO param);
    int getFarmSectorCount();

    List<FarmSectorVO> getFarmSectorFilteredList(ParamPageListFilteredVO param);
    List<FarmSectorVO> getAllFarmSectorList();

    List<UserDemoFarmSectorVO> getActiveFarmSectorList(ParamPageListFilteredVO param);
    void insertFarmSectorInfo(FarmSectorVO farmSectorVO);
    void updateFarmSectorInfo(FarmSectorVO farmSectorVO);
}
