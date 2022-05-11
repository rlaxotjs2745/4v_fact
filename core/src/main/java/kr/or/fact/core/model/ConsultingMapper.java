package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.DemoBsConsultingVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ConsultingMapper {

    int getWebpageMyConsultingCount(@Param("idx_user") long idx_user);
    int getAdminConsultingCount(@Param("idx_admin") long idx_admin);

    List<DemoBsConsultingVO> getUserConsultingList(@Param("idx_user") long idx_user,@Param("page_num") int page_num, @Param("amount") int amount,@Param("order_field") String order_field);
    List<DemoBsConsultingVO> getAdminConsultingList(@Param("idx_admin") long idx_admin,@Param("page_num") int page_num, @Param("amount") int amount,@Param("order_field") String order_field);
    void saveDemoBsConsulting(DemoBsConsultingVO demoBsConsultingVO);
}
