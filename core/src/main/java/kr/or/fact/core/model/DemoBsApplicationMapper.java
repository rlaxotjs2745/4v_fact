package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface DemoBsApplicationMapper {

    int getDemobsForEvalTotalCount();
    DemoBSForEvalVO getDemobsForEvalByIdx(@Param("idx_demo_business") long idx_demo_business);
    List<DemoBSForEvalVO> getDemobsForEvalPagedList(ParamPageListFilteredVO paramPageListFilteredVO);

    //application
    DemoBSApplicationVO getDemoBsApplByIdx(@Param("idx_user_demo_bs") long idx_user_demo_bs);
    int getAvailableDemoBsApplTotalCount();
    List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsApplPagingList(ParamPageListFilteredVO paramPageListFilteredVO);
    List<AdminApplHeaderListVO> getApplPagingFilteredList(ParamPageListFilteredVO paramPageListFilteredVO);

    //evaluation
    DemoBSApplicationVO getDemoBsEvalByIdx(@Param("idx_user_demo_bs") long idx_user_demo_bs);
    int getAvailableDemoBsEvalTotalCount();
    List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsEvalPagingList(ParamPageListFilteredVO paramPageListFilteredVO);
    List<AdminApplHeaderListVO> getEvalPagingFilteredList(ParamPageListFilteredVO paramPageListFilteredVO);


    //consultant
    DemoBSApplicationVO getDemoBsConsultByIdx(@Param("idx_user_demo_bs") long idx_user_demo_bs);
    int getAvailableDemoBsConsultTotalCount();
    List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsConsultPagingList(ParamPageListFilteredVO paramPageListFilteredVO);
    List<AdminApplHeaderListVO> getConsultPagingFilteredList(ParamPageListFilteredVO paramPageListFilteredVO);

    void updateDemoBsApplicantStatus(HashMap<String,Integer> param);


}
