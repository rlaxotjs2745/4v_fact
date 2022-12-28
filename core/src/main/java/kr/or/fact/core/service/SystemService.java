package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.SystemCodeVO;

import java.util.List;

public interface SystemService {
    void insertSystemCode(SystemCodeVO codeVO);
    List<SystemCodeVO> getSystemCodeList(ParamPageListFilteredVO paramPageListFilteredVO);
    List<SystemCodeVO> getAllSystemCodeList();
    SystemCodeVO getSystemCode(long idx_system_code);
    int getSystemTotalCount();

    void updateSystemCode(SystemCodeVO systemCodeVO);

    void deleteSystemCode(long idx_system_code);
}
