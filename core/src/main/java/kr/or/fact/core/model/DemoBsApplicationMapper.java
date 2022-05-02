package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.AdminApplDemoBsHeaderListVO;
import kr.or.fact.core.model.DTO.AdminApplHeaderListVO;
import kr.or.fact.core.model.DTO.ListPagingParamVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DemoBsApplicationMapper {
    int getAvailableDemoBsTotalCount();
    List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsPagingList(ListPagingParamVO listPagingParamVO);
    List<AdminApplHeaderListVO> getApplPagingFilteredList(ListPagingParamVO listPagingParamVO);


}
