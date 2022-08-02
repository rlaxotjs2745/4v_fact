package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.NoticeVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NoticeService {
    public int getMainNoticeCount();
    public int getWebpageNoticeCount();
    public int getOpenNoticeCount(String filter, String query);
    public List<NoticeVO> getOpenNoticeList(int page, int count, String filter, String query);
    public List<NoticeVO> getNoticeWebList(int page, int count);
    public List<NoticeVO> getMainNoticeList();
    public int insertNotice(NoticeVO noticeVO);
    int deleteNotice(int idx_notice);
    NoticeVO getNoticeByIdx(int idx_notice);
    int insertNoticeFileJoin();
    NoticeVO getNoticeIsFile(int idx_notice);
    int getNoticeViewCount(int idx_notice);
    void updateNoticeViewCount(NoticeVO noticeVO);
    void updateNotice(NoticeVO noticeVO);

}
