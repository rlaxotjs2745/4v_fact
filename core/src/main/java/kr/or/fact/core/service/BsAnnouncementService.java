package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.model.DTO.BsAnnouncementVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BsAnnouncementService {

    public int getMainBsAnnouncementCount();
    public int getWebpageBsAnnouncementCount();

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
    AdminAnnounceFilterVO getAdminBsAnnouncementFilter();
    List<BsAnnounceHeaderVO> getBsAnnounceHeaderVOPagingList(ParamPageListFilteredVO paramPageListFilteredVO);

}
