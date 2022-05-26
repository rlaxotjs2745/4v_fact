package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.SystemCodeVO;
import kr.or.fact.core.model.SmsSendMapper;
import kr.or.fact.core.model.SystemMapper;
import kr.or.fact.core.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("systemService")
public class SystemServiceImpl implements SystemService {
    private final SystemMapper systemMapper;

    @Autowired
    public SystemServiceImpl(SystemMapper systemMapper) {
        this.systemMapper = systemMapper;
    }


    @Override
    public void insertSystemCode(SystemCodeVO codeVO){
        systemMapper.insertSystemCode(codeVO);
    }

    @Override
    public List<SystemCodeVO> getSystemCodeList(ParamPageListFilteredVO paramPageListFilteredVO){
        return systemMapper.getSystemCodeList(paramPageListFilteredVO);
    }

    @Override
    public SystemCodeVO getSystemCode(long idx_system_code){
        return systemMapper.getSystemCode(idx_system_code);
    }

    @Override
    public int getSystemTotalCount(){
        return systemMapper.getSystemTotalCount();
    }
}
