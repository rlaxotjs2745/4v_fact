package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.AdminApplDemoBsHeaderListVO;
import kr.or.fact.core.model.DTO.AdminApplHeaderListVO;
import kr.or.fact.core.model.DTO.DemoBSApplicationVO;
import kr.or.fact.core.model.DTO.ListPagingParamVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface DemoBsApplicationMapper {

    //application
    DemoBSApplicationVO getDemoBsApplByIdx(@Param("idx_user_demo_bs") long idx_user_demo_bs);
    int getAvailableDemoBsApplTotalCount();
    List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsApplPagingList(ListPagingParamVO listPagingParamVO);
    List<AdminApplHeaderListVO> getApplPagingFilteredList(ListPagingParamVO listPagingParamVO);

    //evaluation
    DemoBSApplicationVO getDemoBsEvalByIdx(@Param("idx_user_demo_bs") long idx_user_demo_bs);
    int getAvailableDemoBsEvalTotalCount();
    List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsEvalPagingList(ListPagingParamVO listPagingParamVO);
    List<AdminApplHeaderListVO> getEvalPagingFilteredList(ListPagingParamVO listPagingParamVO);


    //consultant
    DemoBSApplicationVO getDemoBsConsultByIdx(@Param("idx_user_demo_bs") long idx_user_demo_bs);
    int getAvailableDemoBsConsultTotalCount();
    List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsConsultPagingList(ListPagingParamVO listPagingParamVO);
    List<AdminApplHeaderListVO> getConsultPagingFilteredList(ListPagingParamVO listPagingParamVO);

}
