package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.FileInfoVO;
import kr.or.fact.core.model.DTO.PRContentFileJoinVO;
import kr.or.fact.core.model.DTO.PRContentVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface PRContentsMapper {
    int getMainPRContentCount();
    int getWebpagePRContentCount();
    int getOpenPRContentCount(@Param("filter") String filter, @Param("query") String query);
    List<PRContentVO> getOpenPRContentList(ParamPageListFilteredVO param);

    int getPRContentCount(ParamPageListFilteredVO paramVo);

    int getPRContentCount2(ParamPageListFilteredVO paramVo);

    List<PRContentVO> getPRContentList(ParamPageListFilteredVO paramVo);
    List<PRContentVO> getMainPRContentList();

    PRContentVO getMainPRContent(ParamPageListFilteredVO paramVo);

    int insertPRContent(PRContentVO prContentVO);
    int deletePR(@Param("idx_pr_content") long idx_pr_content);

    PRContentVO getPRContent(@Param("idx") long idx);
    int insertPRContentFileJoin(FileInfoVO fileInfoVO);

    PRContentFileJoinVO getPRContentFile(PRContentVO prcontensVO) throws Exception;

    PRContentVO getPRContentThumbFile(PRContentVO prcontensVO) throws Exception;

    int updatePRContentFileJoin(PRContentFileJoinVO prcontensVO);
    PRContentVO getPRContentFileJoin(@Param("idx_pr_content") long idx_pr_content);
    List<PRContentVO> selectPRContentList(@Param("pageNum") int pageNum, @Param("count") int count);

    int getPrViewCount(@Param("idx_pr_content") long idx_pr_content);
    void updatePrViewCount(PRContentVO prContentVO);
    void updatePrContent(PRContentVO prContentVO) throws Exception;
    List<PRContentVO> getThumb();

    PRContentVO getThumbFile(PRContentVO prcontensVO) throws Exception;
}
