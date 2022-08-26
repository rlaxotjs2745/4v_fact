package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.CorpMapper;
import kr.or.fact.core.model.DTO.CorpInfoVO;
import kr.or.fact.core.model.DTO.CorpManagerVO;
import kr.or.fact.core.model.DTO.SimpleCorpInfoVO;
import kr.or.fact.core.model.DTO.UserVO;
import kr.or.fact.core.service.CorpService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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
        corpMapper.saveCorpInfo(corpInfoVO);
        return corpMapper.getCurCorpIdx();
    }

    @Override
    public void updateCorpInfo(CorpInfoVO corpInfoVO){
        corpMapper.updateCorpInfo(corpInfoVO);
    }


    @Override
    public CorpInfoVO getUserCorp(@Param("idx_user") long idx_user){
        return corpMapper.getUserCorp(idx_user);
    }

    @Override
    public ArrayList<CorpInfoVO> selectCorpInfo() {
        return corpMapper.selectCorpInfo();
    }

    @Override
    public int insertCorpManager(UserVO userVO){
        CorpManagerVO corpManagerVO = new CorpManagerVO();
        corpManagerVO.setManager_name_kor(userVO.getUser_name());
        corpManagerVO.setCorp_manager_type(0);
        corpManagerVO.setMphone_num(userVO.getMphone_num());
        corpManagerVO.setEmail(userVO.getUser_id());
        corpManagerVO.setIdx_corp_info(userVO.getIdx_corp_info());
        corpManagerVO.setIdx_user(userVO.getIdx_user());
        return corpMapper.insertCorpManager(corpManagerVO);
    }

    @Override
    public ArrayList<CorpManagerVO> selectCorpManagerList(long idx_corp){
        return corpMapper.selectCorpManagerList(idx_corp);
    }
}
