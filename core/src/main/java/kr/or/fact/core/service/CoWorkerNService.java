package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.CoWorkerVO;

import java.util.List;

public interface CoWorkerNService {

    List<CoWorkerVO> getCoWorkerList();
    CoWorkerVO getCoWorkerInfo(long idx);
    void updateCoWorkerInfo(CoWorkerVO coWorkerVO);
    void insertCoWorkerInfo(CoWorkerVO coWorkerVO);
    void deleteCoWorkerInfo(long idx);
}
