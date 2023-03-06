package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.model.DemoBsMapper;
import kr.or.fact.core.model.EnvDataMapper;
import kr.or.fact.core.service.EnvDataService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.util.List;

@Service("envDataService")
public class EnvDataServiceImpl implements EnvDataService {

    private final EnvDataMapper envDataMapper;

    @Autowired
    public EnvDataServiceImpl(EnvDataMapper envDataMapper){this.envDataMapper=envDataMapper;}

    @Override
    public List<FarmVO> getGuyokDataForConsoleDashboard(ParamEnvQueryVO param){
        return envDataMapper.getGuyokDataForConsoleDashboard(param);

    }
    @Override
    public List<FarmVO> getGuyokAVGDataEachTenMin(ParamEnvQueryVO param){

        return envDataMapper.getGuyokAVGDataEachTenMin(param);
    }

    @Override
    public int getEnvDataTotalCount(){
        return envDataMapper.getEnvDataTotalCount();
    }
    @Override
    public int getEachGHEnvDataTotalCount(ParamPageListFilteredVO param){
        return envDataMapper.getEachGHEnvDataTotalCount(param);
    }
    @Override
    public List<FarmVO> getEachGHEnvData(ParamPageListFilteredVO param) throws ParseException {
        List<FarmVO> farmVOList = envDataMapper.getEachGHEnvData(param);
        for (FarmVO farm:farmVOList
        ) {
            farm.makeFarmData();
        }
        return farmVOList;
    }


    @Override
    public List<ExternalEnvVO> getExternalEnvData(RangeVO param){

        return envDataMapper.getExternalEnvData(param);
    }
    @Override
    public List<RootZoneEnvVO> getRootZoneEnvData(RangeVO param){

        return envDataMapper.getRootZoneEnvData(param);
    }
    @Override
    public List<InternalEnvVO> getInternalEnvData(RangeVO param){

        return envDataMapper.getInternalEnvData(param);
    }

    @Override
    public List<FarmVO> getGuyokData() throws ParseException {

        List<FarmVO> farmVOList = envDataMapper.getGuyokData();
        for (FarmVO farm:farmVOList
        ) {
            farm.makeFarmData();
        }
        return farmVOList;

    }
    @Override
    public List<FarmVO> getGuyokDataFromEnvData(){

        return envDataMapper.getGuyokDataFromEnvData();
    }

    @Override
    @Transactional
    public void updateGuyokData(FarmVO farmVO){
        envDataMapper.updateGuyokData(farmVO);

    }
}
