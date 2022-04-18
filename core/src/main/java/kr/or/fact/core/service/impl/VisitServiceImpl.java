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

    private final VisitMapper visitMapper;
    @Autowired
    public VisitServiceImpl(VisitMapper visitMapper){this.visitMapper = visitMapper;}

    @Override
    public int getUserVisitReqCount(@Param("idx_user") long idx_user){
        return visitMapper.getUserVisitReqCount(idx_user);
    }
    @Override
    public List<VisitDataVO> getVisitData(){
        return visitMapper.getVisitData();
    }
    @Override
    public List<VisitReqVO> getVisitReq(){
        return visitMapper.getVisitReq();
    }
    @Override
    public List<VisitReqVO> getUserVisitReq(long idx_user,int page,int list_amount){
        return visitMapper.getUserVisitReq(idx_user,page,list_amount,"VISIT_REQ_NUM");
    }
}
