package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.PRContentVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PRContentsService {
    public int getMainPRContentCount();
    public int getWebpagePRContentCount();
    int getOpenPRContentCount(String filter, String query);
    List<PRContentVO> getOpenPRContentList(Integer page, int list_amount, String filter, String query);

    public int getPRContentCount();

    public List<PRContentVO> getPRContentList(int page, int list_amount);
    public List<PRContentVO> getMainPRContentList();

    public PRContentVO getMainPRContent(ParamPageListFilteredVO paramVo);

    int insertPRContent(PRContentVO prContentVO);
    int deletePR(int idx_pr_content);

    PRContentVO getPRContent(int idx);

    int insertPRContentFileJoin();
    PRContentVO getPRContentFileJoin(int idx_pr_content);
     List<PRContentVO> selectPRContentList(String tagValue);

    int getPrViewCount(int idx_pr_content);
    void updatePrViewCount(PRContentVO prContentVO);
    void updatePrContent(PRContentVO prContentVO);

}
