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

    DemoBSApplicationVO getDemoBsApplByIdx(@Param("idx_user_demo_bs") long idx_user_demo_bs);
    int getAvailableDemoBsTotalCount();
    List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsPagingList(ListPagingParamVO listPagingParamVO);
    List<AdminApplHeaderListVO> getApplPagingFilteredList(ListPagingParamVO listPagingParamVO);


}
