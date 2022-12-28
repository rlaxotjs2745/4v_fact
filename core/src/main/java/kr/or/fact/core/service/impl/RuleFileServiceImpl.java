package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.FormFileInfoVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.RuleFileInfoVO;
import kr.or.fact.core.model.RuleFileMapper;
import kr.or.fact.core.service.RuleFileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ruleFileService")
public class RuleFileServiceImpl implements RuleFileService {

    private final RuleFileMapper ruleFileMapper;

    @Autowired
    public RuleFileServiceImpl(RuleFileMapper ruleFileMapper) {
        this.ruleFileMapper = ruleFileMapper;
    }

    @Override
    public void insertRuleFile(RuleFileInfoVO ruleFileInfoVO) {
        ruleFileMapper.insertRuleFile(ruleFileInfoVO);
    }

    @Override
    public int getRuleFileCount() {
        return ruleFileMapper.getRuleFileCount();
    }

    @Override
    public List<FormFileInfoVO> getRuleFileList(ParamPageListFilteredVO param) {
        return ruleFileMapper.getRuleFileList(param);
    }
}

