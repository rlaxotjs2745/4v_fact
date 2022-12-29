package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.ExternalEnvVO;
import kr.or.fact.core.model.DTO.InternalEnvVO;
import kr.or.fact.core.model.DTO.RootZoneEnvVO;
import kr.or.fact.core.model.DemoBsMapper;
import kr.or.fact.core.model.EnvDataMapper;
import kr.or.fact.core.service.EnvDataService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("envDataService")
public class EnvDataServiceImpl implements EnvDataService {

    private final EnvDataMapper envDataMapper;

    @Autowired
    public EnvDataServiceImpl(EnvDataMapper envDataMapper){this.envDataMapper=envDataMapper;}

    public int getEnvDataTotalCount(){
        return envDataMapper.getEnvDataTotalCount();
    }

    public List<ExternalEnvVO> getExternalEnvData(@Param("page_num") int page_num, @Param("amount") int amount){

        return envDataMapper.getExternalEnvData(page_num, amount);
    }
    public List<RootZoneEnvVO> getRootZoneEnvData(@Param("page_num") int page_num, @Param("amount") int amount){

        return envDataMapper.getRootZoneEnvData(page_num, amount);
    }
    public List<InternalEnvVO> getInternalEnvData(@Param("page_num") int page_num, @Param("amount") int amount){

        return envDataMapper.getInternalEnvData(page_num, amount);
    }
}
