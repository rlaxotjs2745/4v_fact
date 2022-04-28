package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.NoticeVO;

import java.util.List;

public interface NoticeService {
    public int getMainNoticeCount();
    public int getWebpageNoticeCount();
    public List<NoticeVO> getNoticeWebList(int page, int count);
    public List<NoticeVO> getMainNoticeList();
}
