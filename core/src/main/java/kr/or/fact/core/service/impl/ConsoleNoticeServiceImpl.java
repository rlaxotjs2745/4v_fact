package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.ConsoleMapper;
import kr.or.fact.core.model.ConsoleNoticeMapper;
import kr.or.fact.core.model.DTO.ConsoleNoticeFilteredCountVO;
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
    public ConsoleNoticeFilteredCountVO getConsoleNoticeCount(){

        return  consoleNoticeMapper.getConsoleNoticeCount();
    }
    @Override
    public int getConsoleNoticeFilteredCount(ParamPageListFilteredVO param){

        int total_count = 0;
        ConsoleNoticeFilteredCountVO consoleNoticeCount = consoleNoticeMapper.getConsoleNoticeCount();

        if(consoleNoticeCount!=null){
            if(param.getFilter1()==9999){
                total_count = consoleNoticeCount.getTot_count();
            }
            else if(param.getFilter1()==0){
                total_count = consoleNoticeCount.getCommon_count();
            }
            else if(param.getFilter1()==1){
                total_count = consoleNoticeCount.getIndividual_count();
            }
            else if(param.getFilter1()==2){
                total_count = consoleNoticeCount.getEtc_count();
            }
        }

        return  total_count;
    }

    @Override
    public ConsoleNoticeVO getConsoleNoticeByUserIdx(long idx_console_notice){
        return consoleNoticeMapper.getConsoleNoticeByUserIdx(idx_console_notice);
    }
    @Override
    public List<ConsoleNoticeVO> getConsoleNoticeList(int type, long idx, int page, int count){
        return consoleNoticeMapper.getConsoleNoticeList(type, idx, page, count);
    }
    @Override
    public List<ConsoleNoticeVO> getConsoleNoticeFilteredList(ParamPageListFilteredVO param){
        return consoleNoticeMapper.getConsoleNoticeFilteredList(param);
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
