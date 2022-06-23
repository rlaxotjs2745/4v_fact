package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.NoticeVO;
import kr.or.fact.core.model.NoticeMapper;
import kr.or.fact.core.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {
    private final NoticeMapper noticeMapper;
    @Autowired
    public NoticeServiceImpl(NoticeMapper noticeMapper){this.noticeMapper = noticeMapper;}

    @Override
    public int getMainNoticeCount(){
        return noticeMapper.getMainNoticeCount();
    }
    @Override
    public int getWebpageNoticeCount(){
        return noticeMapper.getWebpageNoticeCount();
    }
    @Override
    public List<NoticeVO> getNoticeWebList(int page, int count){
        return noticeMapper.getNoticeWebList(page,count,"ANNOUNCE_NUM");
    }
    @Override
    public List<NoticeVO> getMainNoticeList(){
        return noticeMapper.getMainNoticeList();
    }

    @Override
    public int insertNotice(NoticeVO noticeVO) {
        return noticeMapper.insertNotice(noticeVO);
    }
}
