package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface BsAnnouncementMapper {
    int getMainBsAnnouncementCount();
    int getWebpageBsAnnouncementCount();
    int getOpenBsAnnouncementCount(@Param("filter") String filter,@Param("query") String query);
    List<BsAnnouncementVO> getOpenBsAnnouncementWebList(@Param("page") int page, @Param("count") int count, @Param("filter") String filter, @Param("query") String query);
    List<BsAnnouncementVO> getBsAnnouncementWebList(@Param("cur_page") int cur_page, @Param("list_amount") int list_amount,@Param("order_field") String order_field);
    List<BsAnnouncementVO> getMainBsAnnouncementList();

    int getBsAnnouncementTotalCount();
    List<BsAnnouncementVO> getBsAnnouncementList();
    //List<BsAnnouncementVO> getBsAnnouncementListLimit(@Param("cur_page") int cur_page, @Param("list_amount") int list_amount,@Param("order_field") String order_field);
    List<BsAnnouncementVO> getBsAnnouncementListByFilter(int type);

    BsAnnouncementVO getBsAnnouncementByIdx(long idx);

    void saveBsAnnouncement(BsAnnouncementVO demoBusinessVO);
    void updateBsAnnouncement(BsAnnouncementVO demoBusinessVO);
    void deleteBsAnnouncement(long idx_demo_business);


    DemoBsAnnounceFilteredCountVO getDemoBsAnnouncementFilteredCount();

    //List<BsAnnouncementVO> getAvailibleBsAnnouncement();

    List<BsAnnouncementVO> getBsAnnounceVOPagingList(ParamPageListFilteredVO paramPageListFilteredVO);
    int getBsAnnounceViewCount(@Param("idx_bs_announcement") long idx_bs_announcement);
    void updateBsAnnounceViewCount (BsAnnouncementVO bsAnnouncementVO);

    void insertNewbsAnnouncement(BsAnnouncementVO bsAnnouncementVO);
    int selectNewIdx();

    BsAnnouncementVO selectCodeBsAnnouncement(String code);

    void updateBsAnnouncementContent(BsAnnouncementVO bsAnnouncementVO);
}
