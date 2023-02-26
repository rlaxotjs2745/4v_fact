package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.NoticeVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NoticeService {
    public int getMainNoticeCount();
    public int getWebpageNoticeCount();
    public int getOpenNoticeCount(ParamPageListFilteredVO param);
    public List<NoticeVO> getOpenNoticeList(ParamPageListFilteredVO param);
    public List<NoticeVO> getNoticeWebList(ParamPageListFilteredVO param);
    public List<NoticeVO> getMainNoticeList();
    public int insertNotice(NoticeVO noticeVO);
    int deleteNotice(int idx_notice);
    NoticeVO getNoticeByIdx(int idx_notice);
    int insertNoticeFileJoin();
    int updateNoticeFileJoin(long idx_notice);
    NoticeVO getNoticeIsFile(int idx_notice);
    int getNoticeViewCount(int idx_notice);
    void updateNoticeViewCount(NoticeVO noticeVO);
    void updateNotice(NoticeVO noticeVO);

}
