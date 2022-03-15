package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.NoticeVO;
import kr.or.fact.core.model.NoticeMapper;
import kr.or.fact.core.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {
    @Autowired
    NoticeMapper noticeDAO;

    @Override
    public int getMainNoticeCount(){
        return noticeDAO.getMainNoticeCount();
    }
    @Override
    public int getWebpageNoticeCount(){
        return noticeDAO.getWebpageNoticeCount();
    }
    @Override
    public List<NoticeVO> getNoticeList(int page, int count){
        return noticeDAO.getNoticeList(page,count,"ANNOUNCE_NUM");
    }
    @Override
    public List<NoticeVO> getMainNoticeList(){
        return noticeDAO.getMainNoticeList();
    }
}
