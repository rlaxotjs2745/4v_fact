package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.AdminDemoBSFilterVO;
import kr.or.fact.core.model.DTO.DemoBusinessVO;
import kr.or.fact.core.model.DTO.ListPagingParamVO;

import java.util.List;

public interface DemoBsService {

    int getDemoBsTotalCount();
    List<DemoBusinessVO> getDemoBsList();

    List<DemoBusinessVO> getDemoBsPagingList(ListPagingParamVO listPagingParamVO);

    //int getAvailableDemoBsTotalCount();
    //List<AdminApplListVO> getAvailableDemoBsPagingList(ListPagingParamVO listPagingParamVO);
    List<DemoBusinessVO> getDemoBsListByFilter(int type);

    DemoBusinessVO getDemoBsByIdx(long idx);

    void saveDemoBs(DemoBusinessVO demoBusinessVO);
    void updateDemoBs(DemoBusinessVO demoBusinessVO);
    void deleteDemoBs(long idx_demo_business);


    AdminDemoBSFilterVO getAdminDemoBsFilter();

    List<DemoBusinessVO> getAvailibleDemoBs();


}
