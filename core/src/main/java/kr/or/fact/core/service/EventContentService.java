package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.EventContentVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EventContentService {
    public int getMainEventContentCount();
    public int getWebpageEventContentCount();
    List<EventContentVO> getEventContentList(int page, int list_amount);
    public List<EventContentVO> getMainEventContentList();
    List<EventContentVO> getEventList();
    int getEventContentByIdx (@Param("idx_event_content") int idx_event_content);
    public int insertEventContent(EventContentVO eventContentVO);
    int deleteEvent(int idx_event_content);
}
