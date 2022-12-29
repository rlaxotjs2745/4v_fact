package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EventContentService {
    public int getMainEventContentCount();
    public int getWebpageEventContentCount();
    public int getOpenEventContentCount(String filter, String query);
    List<EventContentVO> getOpenEventContentList(int page, int count, String filter, String query);
    List<EventContentVO> getEventContentList(ParamPageListFilteredVO paramVo);
    public List<EventContentVO> getMainEventContentList();
    List<EventContentVO> getEventList();
    EventContentVO getEventContentByIdx (long idx_event_content);
    int insertEventContent(EventContentVO eventContentVO) throws Exception;
    int deleteEvent(long idx_event_content);
    int insertEventContentFileJoin(FileInfoVO fileInfoVO);
    EventFileJoinSelectVO getEventContentFileJoin(long idx_event_content);

    int getEventViewCount(long idx_event_content);
    void updateEventViewCount(EventContentVO eventContentVO);
    void updateEventContent(EventContentVO eventContentVO) throws Exception;

    EventContentFileJoinVO getEventContentFile(EventContentVO eventContentVO);
    EventContentVO getEventContentThumbFile(EventContentVO eventContentVO);
    EventContentVO getThumbFile(EventContentVO eventContentVO);
    public int getEventContentCount(ParamPageListFilteredVO paramVo);
//    public EventContentVO getMainEventContent(ParamPageListFilteredVO paramVo);
}
