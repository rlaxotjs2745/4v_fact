package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.CorpMapper;
import kr.or.fact.core.model.DTO.CorpInfoVO;
import kr.or.fact.core.model.DTO.SimpleCorpInfoVO;
import kr.or.fact.core.service.CorpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("corpService")
public class CorpServiceImpl implements CorpService {
    private final CorpMapper corpMapper;
    @Autowired
    public CorpServiceImpl(CorpMapper corpMapper){this.corpMapper = corpMapper;}


    @Override
    public CorpInfoVO getCorpInfo(long idx_corp_info){
        CorpInfoVO findCorpVO = corpMapper.getCorpInfoByIdx(idx_corp_info);
        return findCorpVO;
    }
    @Override

    public List<SimpleCorpInfoVO> getSimpleCorpInfoList(String corp_name_kor){
        List<SimpleCorpInfoVO> simpleCorpInfoVOList= corpMapper.getSimpleCorpInfoList(corp_name_kor);
        return simpleCorpInfoVOList;
    }
    @Override
    public long saveCorpInfo(CorpInfoVO corpInfoVO){
        return corpMapper.saveCorpInfo(corpInfoVO);
    }

    @Override
    public void updateCorpInfo(CorpInfoVO corpInfoVO){
        corpMapper.updateCorpInfo(corpInfoVO);
    }

}
