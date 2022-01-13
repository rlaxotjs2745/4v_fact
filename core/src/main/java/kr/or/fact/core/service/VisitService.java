package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.VisitDataVO;
import kr.or.fact.core.model.DTO.VisitReqVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VisitService {
    public int getUserVisitReqCount(@Param("idx_user") long idx_user);
    public List<VisitDataVO> getVisitData();
    public List<VisitReqVO> getVisitReq();
    public List<VisitReqVO> getUserVisitReq(long idx_user,int page,int list_amount);
}
