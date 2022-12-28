package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.FormFileInfoVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.RuleFileInfoVO;

import java.util.List;

public interface RuleFileService {

    void insertRuleFile(RuleFileInfoVO ruleFileInfoVO);

    int getRuleFileCount();

    List<FormFileInfoVO> getRuleFileList(ParamPageListFilteredVO param);
}

