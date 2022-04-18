package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.DemoBusinessVO;
import kr.or.fact.core.model.DemoBsMapper;
import kr.or.fact.core.service.DemoBsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("demoBsService")
public class DemoBsServiceImpl implements DemoBsService {
    private final DemoBsMapper demoBsMapper;
    @Autowired
    public DemoBsServiceImpl(DemoBsMapper demoBsMapper){this.demoBsMapper=demoBsMapper;}

    public List<DemoBusinessVO> getAvailibleDemoBs(){
        return demoBsMapper.getAvailibleDemoBs();
    }
    public DemoBusinessVO getDemoBsByIdx(long idx){
        return demoBsMapper.getDemoBsByIdx(idx);
    }

}
