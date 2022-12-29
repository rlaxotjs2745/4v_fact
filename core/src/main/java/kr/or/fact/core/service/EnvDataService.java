package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.ExternalEnvVO;
import kr.or.fact.core.model.DTO.InternalEnvVO;
import kr.or.fact.core.model.DTO.RootZoneEnvVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EnvDataService {
    int getEnvDataTotalCount();
    List<ExternalEnvVO> getExternalEnvData(int page_num,int amount);
    List<RootZoneEnvVO> getRootZoneEnvData(int page_num, int amount);
    List<InternalEnvVO> getInternalEnvData(int page_num,int amount);
}
