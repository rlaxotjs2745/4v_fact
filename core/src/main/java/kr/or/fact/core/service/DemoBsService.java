package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.DemoBSFilteredCountVO;
import kr.or.fact.core.model.DTO.DemoBusinessVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;

import java.util.List;

public interface DemoBsService {

    int getDemoBsTotalCount();
    List<DemoBusinessVO> getDemoBsList();

    List<DemoBusinessVO> getDemoBsPagingList(ParamPageListFilteredVO paramPageListFilteredVO);

    //int getAvailableDemoBsTotalCount();
    //List<AdminApplListVO> getAvailableDemoBsPagingList(ListPagingParamVO listPagingParamVO);
    List<DemoBusinessVO> getDemoBsListByFilter(int type);

    DemoBusinessVO getDemoBsByIdx(long idx);

    void saveDemoBs(DemoBusinessVO demoBusinessVO);
    void updateDemoBs(DemoBusinessVO demoBusinessVO);
    void deleteDemoBs(long idx_demo_business);


    DemoBSFilteredCountVO getAdminDemoBsFilteredCount();

    List<DemoBusinessVO> getAvailibleDemoBs();

    Boolean isValidCode(String code);

    void updateBsApproval(DemoBusinessVO demoBusinessVO);

    void updateBsContent(DemoBusinessVO demoBusinessVO);

    List<DemoBusinessVO> getDemoBsstatusList();
}
