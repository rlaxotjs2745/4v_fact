package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.VisitDataVO;
import kr.or.fact.core.model.DTO.VisitDateVO;
import kr.or.fact.core.model.DTO.VisitReqVO;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface VisitService {
    int getUserVisitReqCount(@Param("idx_user") long idx_user);
    VisitDataVO getVisitData(Date cur_date);

    List<VisitDataVO> getMonthlyVisitData(Date cur_date);
    List<VisitDataVO> getDurationVisitData(VisitDateVO visitDateVO);
//List<VisitReqVO>getVisitList();

    List<VisitReqVO> getMonthlyVisitReq();
    List<VisitReqVO> getUserVisitReq(long idx_user,int page,int list_amount);
 int getVisitReqCount();
    long saveVisitData(VisitDataVO visitDataVO);
    void updateVisitData(VisitDataVO visitDataVO);
    void deleteVisitData(@Param("idx_visit_data") long idx_visit_data);

    void saveOrUpdateHugeVisitData(List<VisitDataVO> visitDataVOs);
    void deleteHugeVisitData(List<VisitDataVO> visitDataVOs);

    void saveVisitReq(VisitReqVO visitReqVO);
    void updateStatusInVisitData(VisitDataVO visitDataVO);

    VisitReqVO getVisitReqByIdx(@Param("idx_visit_req") long idx_visit_req);
    void deleteVisitReq(@Param("idx_visit_req") long idx_visit_req);


    int updateVisitReq(VisitReqVO visitReqVO);

    List<VisitReqVO> getVisitList(int page, int list_amount);
}
