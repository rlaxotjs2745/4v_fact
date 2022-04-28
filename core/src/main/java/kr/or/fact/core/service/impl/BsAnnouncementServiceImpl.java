package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.BsAnnouncementMapper;
import kr.or.fact.core.model.DTO.AdminDemoBSFilterVO;
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
    public List<BsAnnouncementVO> getBsAnnouncementWebList(int page, int count){
        return bsAnnouncementMapper.getBsAnnouncementWebList(page,count,"ANNOUNCE_NUM");
    }
    @Override
    public List<BsAnnouncementVO> getMainBsAnnouncementList(){
        return bsAnnouncementMapper.getMainBsAnnouncementList();
    }

    @Override
    public int getBsAnnouncementTotalCount(){
        return bsAnnouncementMapper.getBsAnnouncementTotalCount();
    }
    @Override
    public List<BsAnnouncementVO> getBsAnnouncementList(){
        return bsAnnouncementMapper.getBsAnnouncementList();
    }
    @Override
    public List<BsAnnouncementVO> getBsAnnouncementListLimit(int page, int count){
        return bsAnnouncementMapper.getBsAnnouncementListLimit(page,count,"POSTING_START_DATE");
    }
    @Override
    public List<BsAnnouncementVO> getBsAnnouncementListByFilter(int type){
        return bsAnnouncementMapper.getBsAnnouncementListByFilter(type);
    }

    @Override
    public BsAnnouncementVO getBsAnnouncementByIdx(long idx_bs_announcement){
        return bsAnnouncementMapper.getBsAnnouncementByIdx(idx_bs_announcement);
    }

    @Override
    public void saveBsAnnouncement(BsAnnouncementVO bsAnnouncementVO){
        bsAnnouncementMapper.saveBsAnnouncement(bsAnnouncementVO);
    }
    @Override
    public void updateBsAnnouncement(BsAnnouncementVO bsAnnouncementVO){
        bsAnnouncementMapper.updateBsAnnouncement(bsAnnouncementVO);
    }
    @Override
    public void deleteBsAnnouncement(long idx_bs_announcement){
        bsAnnouncementMapper.deleteBsAnnouncement(idx_bs_announcement);
    }


    @Override
    public AdminDemoBSFilterVO getAdminBsAnnouncementFilter(){
        return bsAnnouncementMapper.getAdminBsAnnouncementFilter();
    }

    @Override
    public List<BsAnnouncementVO> getAvailibleBsAnnouncement(){
        return bsAnnouncementMapper.getAvailibleBsAnnouncement();
    }





}
