package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.EventContentVO;
import kr.or.fact.core.model.EventContentMapper;
import kr.or.fact.core.service.EventContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("eventContentService")
public class EventContentServiceImpl implements EventContentService {
    private final EventContentMapper eventContentMapper;
    @Autowired
    public EventContentServiceImpl(EventContentMapper eventContentMapper){this.eventContentMapper = eventContentMapper;}

    @Override
    public int getMainEventContentCount(){
        return eventContentMapper.getMainEventContentCount();
    }
    @Override
    public int getWebpageEventContentCount(){
        return eventContentMapper.getWebpageEventContentCount();
    }
    @Override
    public List<EventContentVO> getEventContentList(int page, int list_amount){
        return eventContentMapper.getEventContentList(page,list_amount,"EVENT_CONTENT_NUM");
    }
    @Override
    public List<EventContentVO> getMainEventContentList(){
        return eventContentMapper.getMainEventContentList();
    }

    @Override
    public List<EventContentVO> getEventList() {
        return eventContentMapper.getEventList();
    }

    @Override
    public EventContentVO getEventContentByIdx(int idx_event_content) {
        long newIdx = Long.parseLong("" + idx_event_content);
        return eventContentMapper.getEventContentByIdx(newIdx);
    }

    @Override
    public int insertEventContent(EventContentVO eventContentVO) {
        int ret_idx = 0;
        try {
            ret_idx = eventContentMapper.insertEventContent(eventContentVO);

        } catch (Exception e) {
        }
        return ret_idx;
    }

    @Override
    public int deleteEvent(int idx_event_content) {
        return eventContentMapper.deleteEvent(idx_event_content);
    }

    @Override
    public int insertEventContentFileJoin() {
        return eventContentMapper.insertEventContentFileJoin();
    }
}
