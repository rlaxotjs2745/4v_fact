package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.model.DTO.BsAnnouncementVO;

import java.util.List;

public interface BsAnnouncementService {

    public int getMainBsAnnouncementCount();
    public int getWebpageBsAnnouncementCount();
    public int getOpenBsAnnouncementCount(String filter, String query);

    public List<BsAnnouncementVO> getOpenBsAnnouncementWebList(ParamPageListFilteredVO param);
    public List<BsAnnouncementVO> getBsAnnouncementWebList(int page, int count);
    public List<BsAnnouncementVO> getMainBsAnnouncementList();


    int getBsAnnouncementTotalCount();
    List<BsAnnouncementVO> getBsAnnouncementList();
    //List<BsAnnouncementVO> getBsAnnouncementListLimit(int page, int count);
    List<BsAnnouncementVO> getBsAnnouncementListByFilter(int type);

    BsAnnouncementVO getBsAnnouncementByIdx(long idx);

    void saveBsAnnouncement(BsAnnouncementVO demoBusinessVO);
    void updateBsAnnouncement(BsAnnouncementVO demoBusinessVO);
    void deleteBsAnnouncement(long idx_demo_business);

   int getBsAnnounceViewCount(long idx_bs_announcement);
   void updateBsAnnounceViewCount (BsAnnouncementVO bsAnnouncementVO);


    //List<BsAnnouncementVO> getAvailibleBsAnnouncement();
    //admin
    DemoBsAnnounceFilteredCountVO getDemoBsAnnouncementFilteredCount();
    List<BsAnnouncementVO> getBsAnnounceVOPagingList(ParamPageListFilteredVO paramPageListFilteredVO);

    int addNewbsAnnouncement(BsAnnouncementVO bsAnnouncementVO);

    BsAnnouncementVO findBsAnnouncement(String code);

    void updateBsAnnouncementContent(BsAnnouncementVO bsAnnouncementVO);
}
