package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.CorpInfoVO;
import kr.or.fact.core.model.DTO.SimpleCorpInfoVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CorpDAO {
    public CorpInfoVO getCorpInfoByIdx(@Param("idx_corp_info") long idx_corp_info);

    public List<SimpleCorpInfoVO> getSimpleCorpInfoList(@Param("corp_name_kor") String corp_name_kor);
}
