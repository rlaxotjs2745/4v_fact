package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.PRContentVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PRContentsService {
    public int getMainPRContentCount();
    public int getWebpagePRContentCount();
    public List<PRContentVO> getPRContentList(int page, int count);
    public List<PRContentVO> getMainPRContentList();
    int insertPRContent(PRContentVO prContentVO);
    int deletePR(int idx_pr_content);

    PRContentVO getPRContent(int idx);


int insertPRContentFileJoin();

 List<PRContentVO> selectPRContentList(String tagValue);
}
