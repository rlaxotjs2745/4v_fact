package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.BsAnnouncementMapper;
import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.service.BsAnnouncementService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

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
    public int getOpenBsAnnouncementCount(String filter, String query) {
        return bsAnnouncementMapper.getOpenBsAnnouncementCount(filter, query);
    }

    @Override
    public List<BsAnnouncementVO> getOpenBsAnnouncementWebList(int page, int count, String filter, String query) {
        return bsAnnouncementMapper.getOpenBsAnnouncementWebList(page, count,filter, query);
    }

    @Override
    public List<BsAnnouncementVO> getBsAnnouncementWebList(int page, int count){
        return bsAnnouncementMapper.getBsAnnouncementWebList(page, count,"ANNOUNCE_NUM");
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
    /*@Override
    public List<BsAnnouncementVO> getBsAnnouncementListLimit(int page, int count){
        return bsAnnouncementMapper.getBsAnnouncementListLimit(page,count,"POSTING_START_DATE");
    }*/
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
    public int getBsAnnounceViewCount(long idx_bs_announcement) {
        long newIdx = Long.parseLong("" + idx_bs_announcement);
        return bsAnnouncementMapper.getBsAnnounceViewCount(newIdx);
    }

    @Override
    @Transactional(propagation= Propagation.REQUIRED)
    public void updateBsAnnounceViewCount(BsAnnouncementVO bsAnnouncementVO) {

        //DefaultTransactionDefinition def = new DefaultTransactionDefinition();
        //TransactionStatus status = dataSourceTransactionManager.getTransaction(def);

        //this.sqlsession.delete("kr.or.fact.core.model.BsAnnouncementMapper.updateBsAnnounceViewCount",bsAnnouncementVO);

        //dataSourceTransactionManager.commit(status);
        bsAnnouncementMapper.updateBsAnnounceViewCount(bsAnnouncementVO);

    }


    @Override
    public AdminAnnounceFilterVO getAdminBsAnnouncementFilter(){
        return bsAnnouncementMapper.getAdminBsAnnouncementFilter();
    }

/*    @Override
    public List<BsAnnouncementVO> getAvailibleBsAnnouncement(){
        return bsAnnouncementMapper.getAvailibleBsAnnouncement();
    }*/
    @Override
    public List<BsAnnouncementVO> getBsAnnounceVOPagingList(ParamPageListFilteredVO paramPageListFilteredVO){
        return bsAnnouncementMapper.getBsAnnounceVOPagingList(paramPageListFilteredVO);
    }

    @Override
    public int addNewbsAnnouncement(BsAnnouncementVO bsAnnouncementVO) {
        bsAnnouncementMapper.insertNewbsAnnouncement(bsAnnouncementVO);
        return bsAnnouncementMapper.selectNewIdx();
    }

    @Override
    public BsAnnouncementVO findBsAnnouncement(String code) {
        return bsAnnouncementMapper.selectCodeBsAnnouncement(code);
    }

    @Override
    public void updateBsAnnouncementContent(BsAnnouncementVO bsAnnouncementVO) {
        bsAnnouncementMapper.updateBsAnnouncementContent(bsAnnouncementVO);
    }


}
