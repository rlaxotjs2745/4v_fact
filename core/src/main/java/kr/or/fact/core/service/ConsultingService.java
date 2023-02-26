package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.DemoBsConsultingVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ConsultingService {

    int getConsultingCount(int type,long idx);
    List<DemoBsConsultingVO> getConsultingList(int type,ParamPageListFilteredVO paramPageListFilteredVO);//int type,long idx,int page, int count);
    void saveDemoBsConsulting(DemoBsConsultingVO demoBsConsultingVO);
    int getCountConsulting(ParamPageListFilteredVO param);
    int deleteConsult(int idx_demo_bs_consulting);
    int updateConsult(DemoBsConsultingVO demoBsConsultingVO);
}
