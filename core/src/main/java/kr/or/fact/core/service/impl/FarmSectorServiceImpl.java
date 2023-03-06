package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.FarmSectorFilteredCountVO;
import kr.or.fact.core.model.DTO.FarmSectorVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.UserDemoFarmSectorVO;
import kr.or.fact.core.model.EventContentMapper;
import kr.or.fact.core.model.FarmSectorMapper;
import kr.or.fact.core.service.FarmSectorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("farmSectorService")
public class FarmSectorServiceImpl implements FarmSectorService {

    private final FarmSectorMapper farmSectorMapper;

    @Autowired
    public FarmSectorServiceImpl(FarmSectorMapper farmSectorMapper ){
        this.farmSectorMapper = farmSectorMapper;
    }


    @Override
    public FarmSectorFilteredCountVO getFarmSectorFilteredCount(){
        return farmSectorMapper.getFarmSectorFilteredCount();

    }
    @Override
    public int getEachFarmSectorFilteredCount(ParamPageListFilteredVO param){
        int total_count = 0;
        FarmSectorFilteredCountVO farmSectorFilteredCountVO =  farmSectorMapper.getFarmSectorFilteredCount();
        if(farmSectorFilteredCountVO!=null){
            if(param.getFilter1()==9999)
                total_count = farmSectorFilteredCountVO.getTot_count();
            else if(param.getFilter1()==0)
                total_count = farmSectorFilteredCountVO.getSelf_count();
            else if(param.getFilter1()==1)
                total_count = farmSectorFilteredCountVO.getCons_count();
        }
        return total_count;
    }
    @Override
    public int getFarmSectorCount(){

        return farmSectorMapper.getFarmSectorCount();
    }

    @Override
    public List<FarmSectorVO> getFarmSectorFilteredList(ParamPageListFilteredVO param){

        return farmSectorMapper.getFarmSectorFilteredList(param);
    }

    @Override
    public List<FarmSectorVO> getAllFarmSectorList(){
        return farmSectorMapper.getAllFarmSectorList();

    }


    @Override
    public List<UserDemoFarmSectorVO> getActiveFarmSectorList(ParamPageListFilteredVO param){

        return farmSectorMapper.getActiveFarmSectorList(param);
    }
    @Override
    public void insertFarmSectorInfo(FarmSectorVO farmSectorVO){

        farmSectorMapper.insertFarmSectorInfo(farmSectorVO);
    }
    @Override
    public void updateFarmSectorInfo(FarmSectorVO farmSectorVO){

        farmSectorMapper.updateFarmSectorInfo(farmSectorVO);
    }
}
