package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.PRContentVO;

import java.util.List;

public interface PRContentService {
    public int getMainPRContentCount();
    public int getWebpagePRContentCount();
    public List<PRContentVO> getPRContentList(int page, int count);
    public List<PRContentVO> getMainPRContentList();
}
