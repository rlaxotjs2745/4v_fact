package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.ConsultingMapper;
import kr.or.fact.core.model.DTO.DemoBsConsultingVO;
import kr.or.fact.core.service.ConsultingService;
import kr.or.fact.core.util.CONSTANT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("consultingService")
public class ConsultingServiceImpl implements ConsultingService {
    @Autowired
    ConsultingMapper consultingDAO;

    @Override
    public int getConsultingCount(int type,long idx){

        int tot_count = 0;

        if(type == CONSTANT.user_idx){
            tot_count = consultingDAO.getWebpageMyConsultingCount(idx);
        }
        else if(type == CONSTANT.admin_idx)
        {
            tot_count = consultingDAO.getAdminConsultingCount(idx);
        }

        return tot_count;
    }
    @Override
    public List<DemoBsConsultingVO> getConsultingList(int type,long idx,int page, int count){

        List<DemoBsConsultingVO> demoBsConsultingVOList = null;
        if(type == CONSTANT.user_idx){
            demoBsConsultingVOList = consultingDAO.getUserConsultingList(idx,page,count,"CONSULTING_NUM");
        }
        else if(type == CONSTANT.admin_idx)
        {
            demoBsConsultingVOList = consultingDAO.getAdminConsultingList(idx,page,count,"CONSULTING_NUM");
        }
        return demoBsConsultingVOList;
    }








}
