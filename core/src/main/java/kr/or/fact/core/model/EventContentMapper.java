package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface EventContentMapper {
    int getMainEventContentCount();
    int getWebpageEventContentCount();
    int getOpenEventContentCount(@Param("filter") String filter, @Param("query") String query);
    List<EventContentVO> getOpenEventContentList(@Param("page") int page, @Param("count") int count, @Param("filter") String filter, @Param("query") String query);
    List<EventContentVO> getEventContentList(ParamPageListFilteredVO paramVo);
    List<EventContentVO> getMainEventContentList();
    List<EventContentVO> getEventList();
    int insertEventContent(EventContentVO eventContentVO) throws Exception;
    int deleteEvent(@Param("idx_event_content") long idx_event_content);
    EventContentVO getEventContentByIdx (@Param("idx_event_content") long idx_event_content);
    int insertEventContentFileJoin(FileInfoVO fileInfoVO);
    EventFileJoinSelectVO getEventContentFileJoin(@Param("idx_event_content") long idx_event_content);
    int getEventViewCount(@Param("idx_event_content") long idx_event_content);
    void updateEventViewCount(EventContentVO eventContentVO);
    void updateEventContent(EventContentVO eventContentVO) throws Exception;
    public List<EventContentVO> getThum();

    EventContentVO getThumbFile(EventContentVO eventContentVO);
    EventFileJoinSelectVO getEventContentFile(EventContentVO eventContentVO);

    EventContentVO getEventContentThumbFile(EventContentVO eventContentVO);
    int getEventContentCount(ParamPageListFilteredVO paramVo);
    int getEventContentCount2(ParamPageListFilteredVO paramVo);
}

