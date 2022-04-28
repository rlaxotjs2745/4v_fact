package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.AdminDemoBSFilterVO;
import kr.or.fact.core.model.DTO.BsAnnouncementVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface BsAnnouncementMapper {
    int getMainBsAnnouncementCount();
    int getWebpageBsAnnouncementCount();
    List<BsAnnouncementVO> getBsAnnouncementWebList(@Param("page_num") int page_num, @Param("amount") int amount,@Param("order_field") String order_field);
    List<BsAnnouncementVO> getMainBsAnnouncementList();

    int getBsAnnouncementTotalCount();
    List<BsAnnouncementVO> getBsAnnouncementList();
    List<BsAnnouncementVO> getBsAnnouncementListLimit(@Param("page_num") int page_num, @Param("amount") int amount,@Param("order_field") String order_field);
    List<BsAnnouncementVO> getBsAnnouncementListByFilter(int type);

    BsAnnouncementVO getBsAnnouncementByIdx(long idx);

    void saveBsAnnouncement(BsAnnouncementVO demoBusinessVO);
    void updateBsAnnouncement(BsAnnouncementVO demoBusinessVO);
    void deleteBsAnnouncement(long idx_demo_business);


    AdminDemoBSFilterVO getAdminBsAnnouncementFilter();

    List<BsAnnouncementVO> getAvailibleBsAnnouncement();
}
