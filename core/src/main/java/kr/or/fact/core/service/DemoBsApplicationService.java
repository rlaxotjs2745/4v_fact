package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.AdminApplDemoBsHeaderListVO;
import kr.or.fact.core.model.DTO.AdminApplHeaderListVO;
import kr.or.fact.core.model.DTO.DemoBSApplicationVO;
import kr.or.fact.core.model.DTO.ListPagingParamVO;

import java.util.List;

public interface DemoBsApplicationService {

    //신청접수
    DemoBSApplicationVO getDemoBsApplByIdx(long idx_user_demo_bs);
    int getAvailableDemoBsApplTotalCount();
    List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsApplPagingList(ListPagingParamVO listPagingParamVO);
    List<AdminApplHeaderListVO> getApplPagingFilteredList(ListPagingParamVO listPagingParamVO);

    //심사업무
    DemoBSApplicationVO getDemoBsEvalByIdx(long idx_user_demo_bs);
    int getAvailableDemoBsEvalTotalCount();
    List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsEvalPagingList(ListPagingParamVO listPagingParamVO);
    List<AdminApplHeaderListVO> getEvalPagingFilteredList(ListPagingParamVO listPagingParamVO);

    //이용계획
    DemoBSApplicationVO getDemoBsConsultByIdx(long idx_user_demo_bs);
    int getAvailableDemoBsConsultTotalCount();
    List<AdminApplDemoBsHeaderListVO> getAvailableDemoBsConsultPagingList(ListPagingParamVO listPagingParamVO);
    List<AdminApplHeaderListVO> getConsultPagingFilteredList(ListPagingParamVO listPagingParamVO);




}
