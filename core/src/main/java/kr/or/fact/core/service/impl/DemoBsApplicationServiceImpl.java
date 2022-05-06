package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.AdminApplDemoBsHeaderListVO;
import kr.or.fact.core.model.DTO.AdminApplHeaderListVO;
import kr.or.fact.core.model.DTO.DemoBSApplicationVO;
import kr.or.fact.core.model.DTO.ListPagingParamVO;
import kr.or.fact.core.model.DemoBsApplicationMapper;
import kr.or.fact.core.service.DemoBsApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("demoBsApplicationService")
public class DemoBsApplicationServiceImpl implements DemoBsApplicationService {
    private final DemoBsApplicationMapper demoBsApplicationMapper;

    @Autowired
    public DemoBsApplicationServiceImpl(DemoBsApplicationMapper demoBsApplicationMapper){this.demoBsApplicationMapper=demoBsApplicationMapper;}

    @Override
    public DemoBSApplicationVO getDemoBsApplByIdx(long idx_user_demo_bs){
        return demoBsApplicationMapper.getDemoBsApplByIdx(idx_user_demo_bs);
    }

    @Override
    public int getAvailableDemoBsTotalCount(){
        return demoBsApplicationMapper.getAvailableDemoBsTotalCount();
    }
    @Override
    public List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsPagingList(ListPagingParamVO listPagingParamVO) {
        return demoBsApplicationMapper.getAvailableDemoBsPagingList(listPagingParamVO);
    }

    @Override
    public List<AdminApplHeaderListVO> getApplPagingFilteredList(ListPagingParamVO listPagingParamVO){
        return demoBsApplicationMapper.getApplPagingFilteredList(listPagingParamVO);
    }
}
