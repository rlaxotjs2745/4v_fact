package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.BsAnnouncementMapper;
import kr.or.fact.core.model.DTO.BsAnnouncementVO;
import kr.or.fact.core.service.BsAnnouncementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("bsAnnouncementService")
public class BsAnnouncementServiceImpl implements BsAnnouncementService {
    private final BsAnnouncementMapper bsAnnouncementMapper;
    @Autowired
    public BsAnnouncementServiceImpl(BsAnnouncementMapper bsAnnouncementMapper){this.bsAnnouncementMapper = bsAnnouncementMapper;}

    @Override
    public int getMainBsAnnouncementCount(){
        return bsAnnouncementMapper.getMainBsAnnouncementCount();
    }
    @Override
    public int getWebpageBsAnnouncementCount(){
        return bsAnnouncementMapper.getWebpageBsAnnouncementCount();
    }
    @Override
    public List<BsAnnouncementVO> getBsAnnouncementList(int page, int count){
        return bsAnnouncementMapper.getBsAnnouncementList(page,count,"ANNOUNCE_NUM");
    }
    @Override
    public List<BsAnnouncementVO> getMainBsAnnouncementList(){
        return bsAnnouncementMapper.getMainBsAnnouncementList();
    }
}
