package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.NoticeVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface NoticeMapper {
    int getMainNoticeCount();
    int getWebpageNoticeCount();
    int getOpenNoticeCount(ParamPageListFilteredVO param);
    List<NoticeVO> getOpenNoticeList(ParamPageListFilteredVO param);
    List<NoticeVO> getNoticeWebList(ParamPageListFilteredVO param);
    List<NoticeVO> getMainNoticeList();
    public int insertNotice(NoticeVO noticeVO);
    int deleteNotice(@Param("idx_notice")int idx_notice);
    NoticeVO getNoticeByIdx(@Param("idx_notice")long idx_notice);
    NoticeVO getNoticeIsFile(@Param("idx_notice")long idx_notice);
    int insertNoticeFileJoin();
    int updateNoticeFileJoin(@Param("idx_notice") long idx_notice);
    int getNoticeViewCount(@Param("idx_notice")long idx_notice);
    void updateNoticeViewCount(NoticeVO noticeVO);
    void updateNotice(NoticeVO noticeVO);
}
