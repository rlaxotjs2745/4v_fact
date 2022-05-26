package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.AdminDemoBSFilterVO;
import kr.or.fact.core.model.DTO.DemoBusinessVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DemoBsMapper;
import kr.or.fact.core.service.DemoBsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("demoBsService")
public class DemoBsServiceImpl implements DemoBsService {
    private final DemoBsMapper demoBsMapper;
    @Autowired
    public DemoBsServiceImpl(DemoBsMapper demoBsMapper){this.demoBsMapper=demoBsMapper;}


    @Override
    public int getDemoBsTotalCount(){
        return demoBsMapper.getDemoBsTotalCount();
    }
    @Override
    public List<DemoBusinessVO> getDemoBsList(){
        return demoBsMapper.getDemoBsList();
    }
    @Override
    public List<DemoBusinessVO> getDemoBsPagingList(ParamPageListFilteredVO paramPageListFilteredVO){
        return demoBsMapper.getDemoBsPagingList(paramPageListFilteredVO);
    }


    @Override
    public List<DemoBusinessVO> getDemoBsListByFilter(int type){
        return demoBsMapper.getDemoBsListByFilter(type);
    }

    @Override
    public DemoBusinessVO getDemoBsByIdx(long idx){
        return demoBsMapper.getDemoBsByIdx(idx);
    }

    @Override
    public void saveDemoBs(DemoBusinessVO demoBusinessVO){
        demoBsMapper.saveDemoBs(demoBusinessVO);
    }
    @Override
    public void updateDemoBs(DemoBusinessVO demoBusinessVO){
        demoBsMapper.updateDemoBs(demoBusinessVO);
    }
    @Override
    public void deleteDemoBs(long idx_demo_business){
        demoBsMapper.deleteDemoBs(idx_demo_business);
    }

    @Override
    public AdminDemoBSFilterVO getAdminDemoBsFilter(){
        return demoBsMapper.getAdminDemoBsFilter();
    }

    @Override
    public List<DemoBusinessVO> getAvailibleDemoBs(){
        return demoBsMapper.getAvailibleDemoBs();
    }


}
