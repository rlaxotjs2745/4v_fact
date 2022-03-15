package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.DemoBsQnaVO;
import kr.or.fact.core.model.QnaMapper;
import kr.or.fact.core.service.QnaService;
import kr.or.fact.core.util.CONSTANT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("qnaService")
public class QnaServiceImpl implements QnaService {

    @Autowired
    QnaMapper qnaDAO;

    @Override
    public int getDemoBSQnaCount(int type,long idx){

        int tot_count = 0;

        if(type == CONSTANT.user_idx){
            tot_count = qnaDAO.getWebpageMyQnaCount(idx);
        }
        else if(type == CONSTANT.admin_idx)
        {
            tot_count = qnaDAO.getAdminQnaCount(idx);
        }

        return tot_count;
    }
    @Override
    public List<DemoBsQnaVO> getDemoBsQnaList(int type, long idx, int page, int count){

        List<DemoBsQnaVO> demoBsQnaVOList = null;
        if(type == CONSTANT.user_idx){
            demoBsQnaVOList = qnaDAO.getUserQnaList(idx,page,count,"BS_QNA_NUM");
        }
        else if(type == CONSTANT.admin_idx)
        {
            demoBsQnaVOList = qnaDAO.getAdminQnaList(idx,page,count,"BS_QNA_NUM");
        }
        return demoBsQnaVOList;
    }

}
