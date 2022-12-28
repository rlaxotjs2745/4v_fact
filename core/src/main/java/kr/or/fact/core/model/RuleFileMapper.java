package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.FormFileInfoVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.RuleFileInfoVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RuleFileMapper {
    void insertRuleFile(RuleFileInfoVO ruleFileInfoVO);

    int getRuleFileCount();

    List<FormFileInfoVO> getRuleFileList(ParamPageListFilteredVO param);
}

