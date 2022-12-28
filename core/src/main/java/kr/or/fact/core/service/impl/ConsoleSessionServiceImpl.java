package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.ConsoleSessionMapper;
import kr.or.fact.core.model.DTO.AdminSessionVO;

import kr.or.fact.core.model.DTO.ConsoleSessionVO;
import kr.or.fact.core.service.ConsoleSessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("consoleSessionService")
public class ConsoleSessionServiceImpl implements ConsoleSessionService {
    private final ConsoleSessionMapper consoleSessionMapper;

    @Autowired
    public ConsoleSessionServiceImpl(ConsoleSessionMapper consoleSessionMapper){
        this.consoleSessionMapper = consoleSessionMapper;
    }
    @Override
    public ConsoleSessionVO getConsoleSessionInfoByToken(String console_token){
        return consoleSessionMapper.getConsoleSessionInfoByToken(console_token);

    }
    @Override
    @Transactional
    public void insertConsoleSessionInfo(ConsoleSessionVO consoleSessionVO){

        consoleSessionMapper.insertConsoleSessionInfo(consoleSessionVO);
    }
    @Override
    @Transactional
    public void updateConsoleSessionInfo(ConsoleSessionVO consoleSessionVO){

        consoleSessionMapper.updateConsoleSessionInfo(consoleSessionVO);
    }
    @Override
    @Transactional
    public void deleteConsoleSessionInfo(ConsoleSessionVO consoleSessionVO){

        consoleSessionMapper.deleteConsoleSessionInfo(consoleSessionVO);
    }
}
