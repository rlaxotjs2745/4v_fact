package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.BsAnnouncementVO;

import java.util.List;

public interface BsAnnouncementService {

    public int getMainBsAnnouncementCount();
    public int getWebpageBsAnnouncementCount();
    public List<BsAnnouncementVO> getBsAnnouncementList(int page, int count);
    public List<BsAnnouncementVO> getMainBsAnnouncementList();

}
