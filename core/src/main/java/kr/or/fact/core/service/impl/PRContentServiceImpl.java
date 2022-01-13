package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.PRContentVO;
import kr.or.fact.core.model.PRContentDAO;
import kr.or.fact.core.service.PRContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("prContentService")
public class PRContentServiceImpl implements PRContentService {
    @Autowired
    PRContentDAO prContentDAO;

    @Override
    public int getMainPRContentCount(){
        return prContentDAO.getMainPRContentCount();
    }
    @Override
    public int getWebpagePRContentCount(){
        return prContentDAO.getWebpagePRContentCount();
    }
    @Override
    public List<PRContentVO> getPRContentList(int page, int count){
        return prContentDAO.getPRContentList(page,count,"ANNOUNCE_NUM");
    }
    @Override
    public List<PRContentVO> getMainPRContentList(){
        return prContentDAO.getMainPRContentList();
    }
}
