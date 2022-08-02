package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.PRContentVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface PRContentsMapper {
    int getMainPRContentCount();
    int getWebpagePRContentCount();
    int getOpenPRContentCount(@Param("filter") String filter, @Param("query") String query);
    List<PRContentVO> getOpenPRContentList(@Param("page") int page, @Param("count") int count, @Param("filter") String filter, @Param("query") String query);
    List<PRContentVO> getPRContentList(@Param("page_num") int page_num, @Param("amount") int amount, @Param("order_field") String order_field);
    List<PRContentVO> getMainPRContentList();
    int insertPRContent(PRContentVO prContentVO);
    int deletePR(@Param("idx_pr_content") int idx_pr_content);

    PRContentVO getPRContent(@Param("idx") long idx);
    int insertPRContentFileJoin();
PRContentVO getPRContentFileJoin(@Param("idx_pr_content") long idx_pr_content);
    List<PRContentVO> selectPRContentList(@Param("pageNum") int pageNum, @Param("count") int count);

    int getPrViewCount(@Param("idx_pr_content") long idx_pr_content);
    void updatePrViewCount(PRContentVO prContentVO);
    void updatePrContent(PRContentVO prContentVO);
    List<PRContentVO> getThumb();
}
