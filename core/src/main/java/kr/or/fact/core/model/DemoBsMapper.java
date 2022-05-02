package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.AdminDemoBSFilterVO;
import kr.or.fact.core.model.DTO.DemoBusinessVO;
import kr.or.fact.core.model.DTO.ListPagingParamVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface DemoBsMapper {

    int getDemoBsTotalCount();
    List<DemoBusinessVO> getDemoBsList();
    List<DemoBusinessVO> getDemoBsPagingList(ListPagingParamVO listPagingParamVO);


    DemoBusinessVO getDemoBsByIdx(long idx);

    List<DemoBusinessVO> getDemoBsListByFilter(int type);

    void saveDemoBs(DemoBusinessVO demoBusinessVO);
    void updateDemoBs(DemoBusinessVO demoBusinessVO);
    void deleteDemoBs(long idx_demo_business);


    AdminDemoBSFilterVO getAdminDemoBsFilter();
    List<DemoBusinessVO> getAvailibleDemoBs();

}
