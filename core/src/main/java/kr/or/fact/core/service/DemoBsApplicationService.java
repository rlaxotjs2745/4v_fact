package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.*;

import java.util.HashMap;
import java.util.List;

public interface DemoBsApplicationService {
    int getDemobsForEvalTotalCount();
//선정 업무를 위한
    DemoBSForEvalVO getDemobsForEvalByIdx(long idx_demo_business);
    List<DemoBSForEvalVO> getDemobsForEvalPagedList(ParamPageListFilteredVO paramPageListFilteredVO);







    //신청접수 업무
    DemoBSApplicationVO getDemoBsApplByIdx(long idx_user_demo_bs);

    int getAvailableDemoBsApplTotalCount();

    List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsApplPagingList(ParamPageListFilteredVO paramPageListFilteredVO);
    List<AdminApplHeaderListVO> getApplPagingFilteredList(ParamPageListFilteredVO paramPageListFilteredVO);

    //심사업무
    DemoBSApplicationVO getDemoBsEvalByIdx(long idx_user_demo_bs);
    int getAvailableDemoBsEvalTotalCount();
    List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsEvalPagingList(ParamPageListFilteredVO paramPageListFilteredVO);
    List<AdminApplHeaderListVO> getEvalPagingFilteredList(ParamPageListFilteredVO paramPageListFilteredVO);

    //이용계획
    DemoBSApplicationVO getDemoBsConsultByIdx(long idx_user_demo_bs);
    int getAvailableDemoBsConsultTotalCount();
    List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsConsultPagingList(ParamPageListFilteredVO paramPageListFilteredVO);
    List<AdminApplHeaderListVO> getConsultPagingFilteredList(ParamPageListFilteredVO paramPageListFilteredVO);


    void updateDemoBsApplicantStatus(HashMap<String,Integer> param);



}
