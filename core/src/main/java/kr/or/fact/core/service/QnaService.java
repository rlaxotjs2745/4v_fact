package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.DemoBsQnaVO;

import java.util.List;

public interface QnaService {
    public int getDemoBSQnaCount(int type,long idx);
    public List<DemoBsQnaVO> getDemoBsQnaList(int type, long idx, int page, int count);

}
