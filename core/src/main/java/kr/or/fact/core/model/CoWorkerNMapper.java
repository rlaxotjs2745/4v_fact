package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.CoWorkerVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CoWorkerNMapper {

    List<CoWorkerVO> getCoWorkerList();
    CoWorkerVO getCoWorkerInfo(long idx);
    void updateCoWorkerInfo(CoWorkerVO coWorkerVO);
    void insertCoWorkerInfo(CoWorkerVO coWorkerVO);
    void deleteCoWorkerInfo(long idx);

    int getCoWorkerCount();

    List<CoWorkerVO> getCoWorkerListPage(ParamPageListFilteredVO param);
}
