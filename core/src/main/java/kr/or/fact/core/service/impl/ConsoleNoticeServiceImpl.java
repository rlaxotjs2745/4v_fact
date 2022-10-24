package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.ConsoleMapper;
import kr.or.fact.core.model.ConsoleNoticeMapper;
import kr.or.fact.core.model.DTO.ConsoleNoticeVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.service.ConsoleNoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("consoleNoticeService")
public class ConsoleNoticeServiceImpl implements ConsoleNoticeService {

    private final ConsoleNoticeMapper consoleNoticeMapper;

    @Autowired
    public ConsoleNoticeServiceImpl(ConsoleNoticeMapper consoleNoticeMapper){this.consoleNoticeMapper = consoleNoticeMapper;}

    @Override
    public ConsoleNoticeVO getConsoleNoticeByUserIdx(long idx_console_notice){
        return consoleNoticeMapper.getConsoleNoticeByUserIdx(idx_console_notice);
    }
    @Override
    public List<ConsoleNoticeVO> getConsoleNoticeList(int type, long idx, int page, int count){
        return consoleNoticeMapper.getConsoleNoticeList(type, idx, page, count);
    }
    @Override
    public List<ConsoleNoticeVO> getConsoleNoticeFilteredList(ParamPageListFilteredVO paramPageListFilteredVO){
        return consoleNoticeMapper.getConsoleNoticeFilteredList(paramPageListFilteredVO);
    }

    @Override
    @Transactional
    public void insertConsoleNotice(ConsoleNoticeVO consoleNoticeVO){
        consoleNoticeMapper.insertConsoleNotice(consoleNoticeVO);
    }

    @Override
    @Transactional
    public void updConsoleNotice(ConsoleNoticeVO consoleNoticeVO){
        consoleNoticeMapper.updConsoleNotice(consoleNoticeVO);
    }
}
