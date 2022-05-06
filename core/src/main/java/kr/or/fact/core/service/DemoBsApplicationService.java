package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.AdminApplDemoBsHeaderListVO;
import kr.or.fact.core.model.DTO.AdminApplHeaderListVO;
import kr.or.fact.core.model.DTO.DemoBSApplicationVO;
import kr.or.fact.core.model.DTO.ListPagingParamVO;

import java.util.List;

public interface DemoBsApplicationService {

    DemoBSApplicationVO getDemoBsApplByIdx(long idx_user_demo_bs);
    int getAvailableDemoBsTotalCount();
    List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsPagingList(ListPagingParamVO listPagingParamVO);
    List<AdminApplHeaderListVO> getApplPagingFilteredList(ListPagingParamVO listPagingParamVO);


}
