package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.FarmSectorFilteredCountVO;
import kr.or.fact.core.model.DTO.FarmSectorVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.UserDemoFarmSectorVO;

import java.util.List;

public interface FarmSectorService {

    FarmSectorFilteredCountVO getFarmSectorFilteredCount();
    int getEachFarmSectorFilteredCount(ParamPageListFilteredVO param);
    int getFarmSectorCount();

    List<FarmSectorVO> getFarmSectorFilteredList(ParamPageListFilteredVO param);
    List<FarmSectorVO> getAllFarmSectorList();

    List<UserDemoFarmSectorVO> getActiveFarmSectorList(ParamPageListFilteredVO param);
    void insertFarmSectorInfo(FarmSectorVO farmSectorVO);
    void updateFarmSectorInfo(FarmSectorVO farmSectorVO);
}
