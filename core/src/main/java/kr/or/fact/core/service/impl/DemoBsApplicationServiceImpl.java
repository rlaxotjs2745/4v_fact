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
    public int getAvailableDemoBsApplTotalCount(){
        return demoBsApplicationMapper.getAvailableDemoBsApplTotalCount();
    }
    @Override
    public List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsApplPagingList(ListPagingParamVO listPagingParamVO) {
        return demoBsApplicationMapper.getAvailableDemoBsApplPagingList(listPagingParamVO);
    }

    @Override
    public List<AdminApplHeaderListVO> getApplPagingFilteredList(ListPagingParamVO listPagingParamVO){
        return demoBsApplicationMapper.getApplPagingFilteredList(listPagingParamVO);
    }


    //Evaluation
    @Override
    public DemoBSApplicationVO getDemoBsEvalByIdx(long idx_user_demo_bs){
        return demoBsApplicationMapper.getDemoBsEvalByIdx(idx_user_demo_bs);
    }

    @Override
    public int getAvailableDemoBsEvalTotalCount(){
        return demoBsApplicationMapper.getAvailableDemoBsEvalTotalCount();
    }
    @Override
    public List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsEvalPagingList(ListPagingParamVO listPagingParamVO) {
        return demoBsApplicationMapper.getAvailableDemoBsEvalPagingList(listPagingParamVO);
    }

    @Override
    public List<AdminApplHeaderListVO> getEvalPagingFilteredList(ListPagingParamVO listPagingParamVO){
        return demoBsApplicationMapper.getEvalPagingFilteredList(listPagingParamVO);
    }


    //Consultant
    @Override
    public DemoBSApplicationVO getDemoBsConsultByIdx(long idx_user_demo_bs){
        return demoBsApplicationMapper.getDemoBsConsultByIdx(idx_user_demo_bs);
    }

    @Override
    public int getAvailableDemoBsConsultTotalCount(){
        return demoBsApplicationMapper.getAvailableDemoBsConsultTotalCount();
    }
    @Override
    public List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsConsultPagingList(ListPagingParamVO listPagingParamVO) {
        return demoBsApplicationMapper.getAvailableDemoBsConsultPagingList(listPagingParamVO);
    }

    @Override
    public List<AdminApplHeaderListVO> getConsultPagingFilteredList(ListPagingParamVO listPagingParamVO){
        return demoBsApplicationMapper.getConsultPagingFilteredList(listPagingParamVO);
    }
}
