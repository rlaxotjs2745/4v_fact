package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.CorpInfoVO;
import kr.or.fact.core.model.DTO.SimpleCorpInfoVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface CorpMapper {

    CorpInfoVO getCorpInfoByIdx(@Param("idx_corp_info") long idx_corp_info);

    List<SimpleCorpInfoVO> getSimpleCorpInfoList(@Param("corp_name_kor") String corp_name_kor);

    ArrayList<CorpInfoVO> selectCorpInfo();

    long saveCorpInfo(CorpInfoVO corpInfoVO);

    void updateCorpInfo(CorpInfoVO corpInfoVO);

    CorpInfoVO getUserCorp(@Param("idx_user") long idx_user);


}
