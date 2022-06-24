package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.ConsultingMapper;
import kr.or.fact.core.model.DTO.DemoBsConsultingVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.service.ConsultingService;
import kr.or.fact.core.util.CONSTANT;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("consultingService")
public class ConsultingServiceImpl implements ConsultingService {
    private final ConsultingMapper consultingMapper;
    @Autowired
    public ConsultingServiceImpl(ConsultingMapper consultingMapper){this.consultingMapper = consultingMapper;}

    @Override
    public int getConsultingCount(int type,long idx){

        int tot_count = 0;

        if(type == CONSTANT.user_idx){
            tot_count = consultingMapper.getWebpageMyConsultingCount(idx);
        }
        else if(type == CONSTANT.admin_idx)
        {
            tot_count = consultingMapper.getAdminConsultingCount(idx);
        }

        return tot_count;
    }

    @Override
    public List<DemoBsConsultingVO> getConsultingList(int type,ParamPageListFilteredVO paramPageListFilteredVO){

        List<DemoBsConsultingVO> demoBsConsultingVOList = null;
        if(type == CONSTANT.user_idx){
            demoBsConsultingVOList = consultingMapper.getUserConsultingList(paramPageListFilteredVO);
        }
        else if(type == CONSTANT.admin_idx)
        {
            demoBsConsultingVOList = consultingMapper.getAdminConsultingList(paramPageListFilteredVO);
        }
        return demoBsConsultingVOList;
    }

    @Override
    public List<DemoBsConsultingVO> getCunsultingList1(int page, int list_amount) {
        return consultingMapper.getCunsultingList1(page,list_amount);
    }


    @Override
    public void saveDemoBsConsulting(DemoBsConsultingVO demoBsConsultingVO){
        consultingMapper.saveDemoBsConsulting(demoBsConsultingVO);
    }

    @Override
    public int getCountConsulting() {
        return consultingMapper.getCountConsulting();
    }


}
