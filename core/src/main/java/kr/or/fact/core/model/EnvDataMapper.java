package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.ExternalEnvVO;
import kr.or.fact.core.model.DTO.InternalEnvVO;
import kr.or.fact.core.model.DTO.RootZoneEnvVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface EnvDataMapper {
    int getEnvDataTotalCount();
    List<ExternalEnvVO> getExternalEnvData(@Param("page_num") int page_num, @Param("amount") int amount);
    List<RootZoneEnvVO> getRootZoneEnvData(@Param("page_num") int page_num, @Param("amount") int amount);
    List<InternalEnvVO> getInternalEnvData(@Param("page_num") int page_num, @Param("amount") int amount);
}
