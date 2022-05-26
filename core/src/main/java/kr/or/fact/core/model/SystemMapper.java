package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.SystemCodeVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface SystemMapper {
    void insertSystemCode(SystemCodeVO codeVO);
    List<SystemCodeVO> getSystemCodeList(ParamPageListFilteredVO paramPageListFilteredVO);
    SystemCodeVO getSystemCode(@Param("idx_system_code") long idx_system_code);
    int getSystemTotalCount();
}
