package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.DemoBsConsultingVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ConsultingMapper {

    int getWebpageMyConsultingCount(@Param("idx_user") long idx_user);
    int getAdminConsultingCount(@Param("idx_admin") long idx_admin);
List<DemoBsConsultingVO>getCunsultingList1(int page, int list_amount);
int getCountConsulting();
    List<DemoBsConsultingVO> getUserConsultingList(ParamPageListFilteredVO paramPageListFilteredVO);
    List<DemoBsConsultingVO> getAdminConsultingList(ParamPageListFilteredVO paramPageListFilteredVO);
    void saveDemoBsConsulting(DemoBsConsultingVO demoBsConsultingVO);
    //getUserConsultingList(DemoBsConsultingVO demoBsConsultingVO)
    int deleteConsult(int idx_demo_bs_consulting);
}
