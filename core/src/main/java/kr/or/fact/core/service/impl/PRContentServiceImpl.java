package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.PRContentVO;
import kr.or.fact.core.model.PRContentsMapper;
import kr.or.fact.core.service.PRContentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("prContentService")
public class PRContentServiceImpl implements PRContentsService {
    private final PRContentsMapper prContentsMapper;
    @Autowired
    public PRContentServiceImpl(PRContentsMapper prContentsMapper){this.prContentsMapper = prContentsMapper;}

    @Override
    public int getMainPRContentCount(){
        return prContentsMapper.getMainPRContentCount();
    }
    @Override
    public int getWebpagePRContentCount(){
        return prContentsMapper.getWebpagePRContentCount();
    }
    @Override
    public List<PRContentVO> getPRContentList(int page, int count){
        return prContentsMapper.getPRContentList(page,count,"ANNOUNCE_NUM");
    }
    @Override
    public List<PRContentVO> getMainPRContentList(){
        return prContentsMapper.getMainPRContentList();
    }
}
