package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.EventContentVO;
import kr.or.fact.core.model.EventContentDAO;
import kr.or.fact.core.service.EventContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("eventContentService")
public class EventContentServiceImpl implements EventContentService {
    @Autowired
    EventContentDAO eventContentDAO;

    @Override
    public int getMainEventContentCount(){
        return eventContentDAO.getMainEventContentCount();
    }
    @Override
    public int getWebpageEventContentCount(){
        return eventContentDAO.getWebpageEventContentCount();
    }
    @Override
    public List<EventContentVO> getEventContentList(int page, int count){
        return eventContentDAO.getEventContentList(page,count,"ANNOUNCE_NUM");
    }
    @Override
    public List<EventContentVO> getMainEventContentList(){
        return eventContentDAO.getMainEventContentList();
    }
}
