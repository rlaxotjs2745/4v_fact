package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.CoWorkerNMapper;
import kr.or.fact.core.model.DTO.CoWorkerVO;
import kr.or.fact.core.model.HomepageMapper;
import kr.or.fact.core.service.CoWorkerNService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("coWorkerNService")
public class CoWorkerNServiceImpl implements CoWorkerNService {

    private final CoWorkerNMapper coWorkerNMapper;

    @Autowired
    public CoWorkerNServiceImpl(CoWorkerNMapper coWorkerNMapper){this.coWorkerNMapper = coWorkerNMapper;}

    @Override
    public List<CoWorkerVO> getCoWorkerList(){
        return coWorkerNMapper.getCoWorkerList();
    }
    @Override
    public CoWorkerVO getCoWorkerInfo(long idx){
        return coWorkerNMapper.getCoWorkerInfo(idx);
    }
    @Override
    public void updateCoWorkerInfo(CoWorkerVO coWorkerVO){
        coWorkerNMapper.updateCoWorkerInfo(coWorkerVO);
    }
    @Override
    public void insertCoWorkerInfo(CoWorkerVO coWorkerVO){
        coWorkerNMapper.insertCoWorkerInfo(coWorkerVO);
    }
    @Override
    public void deleteCoWorkerInfo(long idx){
        coWorkerNMapper.deleteCoWorkerInfo(idx);
    }
}
