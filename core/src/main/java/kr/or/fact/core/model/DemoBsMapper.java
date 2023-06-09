package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.DemoBSFilteredCountVO;
import kr.or.fact.core.model.DTO.DemoBusinessVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DemoBsMapper {

    int getDemoBsTotalCount();
    List<DemoBusinessVO> getDemoBsList();
    List<DemoBusinessVO> getDemoBsPagingList(ParamPageListFilteredVO paramPageListFilteredVO);


    DemoBusinessVO getDemoBsByIdx(long idx);

    List<DemoBusinessVO> getDemoBsListByFilter(int type);

    void saveDemoBs(DemoBusinessVO demoBusinessVO);
    void updateDemoBs(DemoBusinessVO demoBusinessVO);
    void deleteDemoBs(long idx_demo_business);


    DemoBSFilteredCountVO getAdminDemoBsFilteredCount();
    List<DemoBusinessVO> getAvailibleDemoBs();

    List<String> isValidCode(String code);

    void updateBsApproval(DemoBusinessVO demoBusinessVO);

    void updateBsContent(DemoBusinessVO demoBusinessVO);

    List<DemoBusinessVO> getStausDemoBs();
}
