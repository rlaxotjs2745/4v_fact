package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.PRContentVO;
import kr.or.fact.core.model.PRContentMapper;
import kr.or.fact.core.service.PRContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("prContentService")
public class PRContentServiceImpl implements PRContentService {
    private final PRContentMapper prContentMapper;
    @Autowired
    public PRContentServiceImpl(PRContentMapper prContentMapper){this.prContentMapper = prContentMapper;}

    @Override
    public int getMainPRContentCount(){
        return prContentMapper.getMainPRContentCount();
    }
    @Override
    public int getWebpagePRContentCount(){
        return prContentMapper.getWebpagePRContentCount();
    }
    @Override
    public List<PRContentVO> getPRContentList(int page, int count){
        return prContentMapper.getPRContentList(page,count,"ANNOUNCE_NUM");
    }
    @Override
    public List<PRContentVO> getMainPRContentList(){
        return prContentMapper.getMainPRContentList();
    }
}
