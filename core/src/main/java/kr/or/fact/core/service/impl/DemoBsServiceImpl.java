package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.DemoBusinessVO;
import kr.or.fact.core.model.DemoBsMapper;
import kr.or.fact.core.service.DemoBsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("demoBsService")
public class DemoBsServiceImpl implements DemoBsService {
    @Autowired
    DemoBsMapper demoBsDAO;
    public List<DemoBusinessVO> getAvailibleDemoBs(){
        return demoBsDAO.getAvailibleDemoBs();
    }

}
