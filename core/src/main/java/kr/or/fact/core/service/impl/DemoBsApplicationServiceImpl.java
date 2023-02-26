package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.model.DemoBsApplicationMapper;
import kr.or.fact.core.service.DemoBsApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service("demoBsApplicationService")
public class DemoBsApplicationServiceImpl implements DemoBsApplicationService {
    private final DemoBsApplicationMapper demoBsApplicationMapper;

    @Autowired
    public DemoBsApplicationServiceImpl(DemoBsApplicationMapper demoBsApplicationMapper){this.demoBsApplicationMapper=demoBsApplicationMapper;}

    @Override
    public int getDemobsForEvalTotalCount(){

        return demoBsApplicationMapper.getDemobsForEvalTotalCount();
    }

    @Override
    public DemoBSForEvalVO getDemobsForEvalByIdx(long idx_demo_business){
        return demoBsApplicationMapper.getDemobsForEvalByIdx(idx_demo_business);

    }
    @Override
    public List<DemoBSForEvalVO> getDemobsForEvalPagedList(ParamPageListFilteredVO paramPageListFilteredVO){

        return demoBsApplicationMapper.getDemobsForEvalPagedList(paramPageListFilteredVO);
    }


    @Override
    public DemoBSApplicationVO getDemoBsApplByIdx(long idx_user_demo_bs){
        return demoBsApplicationMapper.getDemoBsApplByIdx(idx_user_demo_bs);
    }

    @Override
    public int getAvailableDemoBsApplTotalCount(){
        return demoBsApplicationMapper.getAvailableDemoBsApplTotalCount();
    }
    @Override
    public List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsApplPagingList(ParamPageListFilteredVO paramPageListFilteredVO) {
        return demoBsApplicationMapper.getAvailableDemoBsApplPagingList(paramPageListFilteredVO);
    }

    @Override
    public List<AdminApplHeaderListVO> getApplPagingFilteredList(ParamPageListFilteredVO paramPageListFilteredVO){
        return demoBsApplicationMapper.getApplPagingFilteredList(paramPageListFilteredVO);
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
    public List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsEvalPagingList(ParamPageListFilteredVO paramPageListFilteredVO) {
        return demoBsApplicationMapper.getAvailableDemoBsEvalPagingList(paramPageListFilteredVO);
    }

    @Override
    public List<AdminApplHeaderListVO> getEvalPagingFilteredList(ParamPageListFilteredVO paramPageListFilteredVO){
        return demoBsApplicationMapper.getEvalPagingFilteredList(paramPageListFilteredVO);
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
    public List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsConsultPagingList(ParamPageListFilteredVO paramPageListFilteredVO) {
        return demoBsApplicationMapper.getAvailableDemoBsConsultPagingList(paramPageListFilteredVO);
    }

    @Override
    public List<AdminApplHeaderListVO> getConsultPagingFilteredList(ParamPageListFilteredVO paramPageListFilteredVO){
        return demoBsApplicationMapper.getConsultPagingFilteredList(paramPageListFilteredVO);
    }

    @Override
    public void updateDemoBsApplicantStatus(HashMap<String, Integer> param) {
        demoBsApplicationMapper.updateDemoBsApplicantStatus(param);
    }


}
