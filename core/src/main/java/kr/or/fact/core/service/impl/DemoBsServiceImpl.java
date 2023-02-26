package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.DemoBSFilteredCountVO;
import kr.or.fact.core.model.DTO.DemoBusinessVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DemoBsMapper;
import kr.or.fact.core.service.DemoBsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

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
    @Transactional(propagation= Propagation.REQUIRED)
    public void updateDemoBs(DemoBusinessVO demoBusinessVO){
        demoBsMapper.updateDemoBs(demoBusinessVO);
    }
    @Override
    @Transactional(propagation= Propagation.REQUIRED)
    public void deleteDemoBs(long idx_demo_business){
        demoBsMapper.deleteDemoBs(idx_demo_business);
    }

    @Override
    public DemoBSFilteredCountVO getAdminDemoBsFilteredCount(){
        return demoBsMapper.getAdminDemoBsFilteredCount();
    }

    @Override
    public List<DemoBusinessVO> getAvailibleDemoBs(){
        return demoBsMapper.getAvailibleDemoBs();
    }

    @Override
    public Boolean isValidCode(String code){
        Boolean bool = true;
        System.out.println(code);
        try{
            if(demoBsMapper.isValidCode(code).size() != 0){
                bool = false;
            }
        } catch (Exception e) {
            bool = false;
        }
        return bool;
    }

    @Override
    @Transactional(propagation= Propagation.REQUIRED)
    public void updateBsApproval(DemoBusinessVO demoBusinessVO) {
        demoBsMapper.updateBsApproval(demoBusinessVO);
    }

    @Override
    @Transactional(propagation= Propagation.REQUIRED)
    public void updateBsContent(DemoBusinessVO demoBusinessVO) {
        demoBsMapper.updateBsContent(demoBusinessVO);
    }

    @Override
    public List<DemoBusinessVO> getDemoBsstatusList() {
        return demoBsMapper.getStausDemoBs();
    }
}
