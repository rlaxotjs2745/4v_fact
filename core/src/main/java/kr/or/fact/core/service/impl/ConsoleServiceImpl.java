package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.ConsoleMapper;
import kr.or.fact.core.model.ConsultingMapper;
import kr.or.fact.core.model.DTO.ConsoleUserVO;
import kr.or.fact.core.service.ConsoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("consoleService")
public class ConsoleServiceImpl implements ConsoleService {

    private final ConsoleMapper consoleMapper;

    @Autowired
    public ConsoleServiceImpl(ConsoleMapper consoleMapper){this.consoleMapper = consoleMapper;}

    @Override
    public ConsoleUserVO getConsoleUserByUserIdx(long idx_user){
        return consoleMapper.getConsoleUserByUserIdx(idx_user);
    }
    @Override
    public ConsoleUserVO getConsoleUserByAdminIdx(long idx_admin){
        return consoleMapper.getConsoleUserByAdminIdx(idx_admin);
    }
    @Override
    public void insertConsoleUser(ConsoleUserVO consoleUserVO){
        consoleMapper.insertConsoleUser(consoleUserVO);
    }
    @Override
    public void updConsoleUser(ConsoleUserVO consoleUserVO){
        consoleMapper.updConsoleUser(consoleUserVO);
    }
}
