package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface EnvDataMapper {
    List<FarmVO> getGuyokDataForConsoleDashboard(ParamEnvQueryVO param);
    List<FarmVO> getGuyokAVGDataEachTenMin(ParamEnvQueryVO param);
    int getEnvDataTotalCount();
    List<FarmVO> getEachGHEnvData(ParamPageListFilteredVO param);
    int getEachGHEnvDataTotalCount(ParamPageListFilteredVO param);
    List<ExternalEnvVO> getExternalEnvData(RangeVO param);
    List<RootZoneEnvVO> getRootZoneEnvData(RangeVO param);
    List<InternalEnvVO> getInternalEnvData(RangeVO param);
    List<FarmVO> getGuyokData();
    List<FarmVO> getGuyokDataFromEnvData();
    void updateGuyokData(FarmVO farmVO);
}
