package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.EventContentVO;

import java.util.List;

public interface EventContentService {
    public int getMainEventContentCount();
    public int getWebpageEventContentCount();
    public List<EventContentVO> getEventContentList(int page, int count);
    public List<EventContentVO> getMainEventContentList();
    List<EventContentVO> getEventList();
}
