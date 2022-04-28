package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.AdminDemoBSFilterVO;
import kr.or.fact.core.model.DTO.DemoBusinessVO;

import java.util.List;

public interface DemoBsService {

    int getDemoBsTotalCount();
    List<DemoBusinessVO> getDemoBsList();
    List<DemoBusinessVO> getDemoBsListLimit(int page, int count);
    List<DemoBusinessVO> getDemoBsListByFilter(int type);

    DemoBusinessVO getDemoBsByIdx(long idx);

    void saveDemoBs(DemoBusinessVO demoBusinessVO);
    void updateDemoBs(DemoBusinessVO demoBusinessVO);
    void deleteDemoBs(long idx_demo_business);


    AdminDemoBSFilterVO getAdminDemoBsFilter();

    List<DemoBusinessVO> getAvailibleDemoBs();


}
