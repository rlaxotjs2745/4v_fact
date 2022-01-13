package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.DemoBsQnaVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface QnaDAO {

    int getWebpageMyQnaCount(@Param("idx_user") long idx_user);
    int getAdminQnaCount(@Param("idx_admin") long idx_admin);

    List<DemoBsQnaVO> getUserQnaList(@Param("idx_user") long idx_user,@Param("page_num") int page_num, @Param("amount") int amount,@Param("order_field") String order_field);
    List<DemoBsQnaVO> getAdminQnaList(@Param("idx_admin") long idx_admin,@Param("page_num") int page_num, @Param("amount") int amount,@Param("order_field") String order_field);
}
