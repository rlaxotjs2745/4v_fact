package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.EventContentVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface EventContentMapper {
    int getMainEventContentCount();
    int getWebpageEventContentCount();
    List<EventContentVO> getEventContentList(@Param("page_num") int page_num, @Param("amount") int amount, @Param("order_field") String order_field);
    List<EventContentVO> getMainEventContentList();
    List<EventContentVO> getEventList();
    public int insertEventContent(EventContentVO eventContentVO);
    int deleteEvent(@Param("idx_event_content") int idx_event_content);
}
