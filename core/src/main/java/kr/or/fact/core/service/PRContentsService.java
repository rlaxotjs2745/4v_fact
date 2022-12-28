package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.PRContentFileJoinVO;
import kr.or.fact.core.model.DTO.PRContentVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PRContentsService {
    public int getMainPRContentCount();
    public int getWebpagePRContentCount();
    int getOpenPRContentCount(String filter, String query);
    List<PRContentVO> getOpenPRContentList(Integer page, int list_amount, String filter, String query);

    public int getPRContentCount(ParamPageListFilteredVO paramVo);

    public List<PRContentVO> getPRContentList(ParamPageListFilteredVO paramVo);
    public List<PRContentVO> getMainPRContentList();

    public PRContentVO getMainPRContent(ParamPageListFilteredVO paramVo);

    int insertPRContent(PRContentVO prContentVO);
    int deletePR(long idx_pr_content);

    PRContentVO getPRContent(long idx);

    int insertPRContentFileJoin();

    int updatePRContentFileJoin(PRContentFileJoinVO prcontensVO);

    PRContentFileJoinVO getPRContentFile(PRContentVO prcontensVO);
    PRContentVO getPRContentThumbFile(PRContentVO prcontensVO);
    List<PRContentVO> getThumb();
    PRContentVO getThumbFile(PRContentVO prcontensVO);

    PRContentVO getPRContentFileJoin(long idx_pr_content);
    List<PRContentVO> selectPRContentList(String tagValue);

    int getPrViewCount(long idx_pr_content);
    void updatePrViewCount(PRContentVO prContentVO);
    void updatePrContent(PRContentVO prContentVO);

}
