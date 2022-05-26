package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.AdminApplDemoBsHeaderListVO;
import kr.or.fact.core.model.DTO.AdminApplHeaderListVO;
import kr.or.fact.core.model.DTO.DemoBSApplicationVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface DemoBsApplicationMapper {

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

}
