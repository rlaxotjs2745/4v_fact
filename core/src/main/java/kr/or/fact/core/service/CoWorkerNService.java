package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.CoWorkerVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;

import java.util.List;

public interface CoWorkerNService {

    List<CoWorkerVO> getCoWorkerList();

    List<CoWorkerVO> getCoWorkerListPage(ParamPageListFilteredVO param);

    CoWorkerVO getCoWorkerInfo(long idx);
    void updateCoWorkerInfo(CoWorkerVO coWorkerVO);
    void insertCoWorkerInfo(CoWorkerVO coWorkerVO);
    void deleteCoWorkerInfo(long idx);

    int getCoWorkerCount();


}
