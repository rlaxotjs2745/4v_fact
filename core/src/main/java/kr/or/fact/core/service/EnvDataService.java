package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.*;
import org.apache.ibatis.annotations.Param;

import java.text.ParseException;
import java.util.List;

public interface EnvDataService {
    int getEnvDataTotalCount();

    List<FarmVO> getEachGHEnvData(ParamPageListFilteredVO param) throws ParseException;
    int getEachGHEnvDataTotalCount(ParamPageListFilteredVO param);
    List<ExternalEnvVO> getExternalEnvData(RangeVO param);
    List<RootZoneEnvVO> getRootZoneEnvData(RangeVO param);
    List<InternalEnvVO> getInternalEnvData(RangeVO param);

    List<FarmVO> getGuyokData() throws ParseException;
    List<FarmVO> getGuyokDataFromEnvData();
    void updateGuyokData(FarmVO farmVO);
}
