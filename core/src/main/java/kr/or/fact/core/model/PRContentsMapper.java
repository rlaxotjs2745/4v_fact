package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.PRContentVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface PRContentsMapper {
    int getMainPRContentCount();
    int getWebpagePRContentCount();
    List<PRContentVO> getPRContentList(@Param("page_num") int page_num, @Param("amount") int amount, @Param("order_field") String order_field);
    List<PRContentVO> getMainPRContentList();
    int insertPRContent(PRContentVO prContentVO);
    int deletePR(@Param("idx_pr_content") int idx_pr_content);

    PRContentVO getPRContent(@Param("idx") long idx);
    int insertPRContentFileJoin();

    List<PRContentVO> selectPRContentList(@Param("pageNum") int pageNum, @Param("count") int count);
}
