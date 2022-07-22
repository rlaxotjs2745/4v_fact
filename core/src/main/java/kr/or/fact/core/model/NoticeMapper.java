package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.NoticeVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface NoticeMapper {
    int getMainNoticeCount();
    int getWebpageNoticeCount();
    List<NoticeVO> getNoticeWebList(@Param("page_num") int page_num, @Param("amount") int amount, @Param("order_field") String order_field);
    List<NoticeVO> getMainNoticeList();
    public int insertNotice(NoticeVO noticeVO);
    int deleteNotice(@Param("idx_notice")int idx_notice);
    NoticeVO getNoticeByIdx(@Param("idx_notice")long idx_notice);
    NoticeVO getNoticeIsFile(@Param("idx_notice")long idx_notice);
    int insertNoticeFileJoin();
    int getNoticeViewCount(@Param("idx_notice")long idx_notice);
    void updateNoticeViewCount(NoticeVO noticeVO);
    void updateNotice(NoticeVO noticeVO);
}
