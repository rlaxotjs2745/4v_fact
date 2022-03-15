package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.VisitDataVO;
import kr.or.fact.core.model.DTO.VisitReqVO;
import kr.or.fact.core.model.VisitMapper;
import kr.or.fact.core.service.VisitService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("visitService")
public class VisitServiceImpl implements VisitService {

    @Autowired
    VisitMapper visitDAO;

    @Override
    public int getUserVisitReqCount(@Param("idx_user") long idx_user){
        return visitDAO.getUserVisitReqCount(idx_user);
    }
    @Override
    public List<VisitDataVO> getVisitData(){
        return visitDAO.getVisitData();
    }
    @Override
    public List<VisitReqVO> getVisitReq(){
        return visitDAO.getVisitReq();
    }
    @Override
    public List<VisitReqVO> getUserVisitReq(long idx_user,int page,int list_amount){
        return visitDAO.getUserVisitReq(idx_user,page,list_amount,"VISIT_REQ_NUM");
    }
}
