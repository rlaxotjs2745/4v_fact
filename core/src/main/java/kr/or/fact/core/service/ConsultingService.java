package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.DemoBsConsultingVO;

import java.util.List;

public interface ConsultingService {
    int getConsultingCount(int type,long idx);
    List<DemoBsConsultingVO> getConsultingList(int type,long idx,int page, int count);

    void saveDemoBsConsulting(DemoBsConsultingVO demoBsConsultingVO);


}
