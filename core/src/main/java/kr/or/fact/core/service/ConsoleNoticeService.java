package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.ConsoleNoticeFilteredCountVO;
import kr.or.fact.core.model.DTO.ConsoleNoticeVO;
import kr.or.fact.core.model.DTO.ConsoleUserVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;

import java.util.List;

public interface ConsoleNoticeService {

    ConsoleNoticeFilteredCountVO getConsoleNoticeCount();
    int getConsoleNoticeFilteredCount(ParamPageListFilteredVO param);

    ConsoleNoticeVO getConsoleNoticeByUserIdx(long idx_console_notice);
    List<ConsoleNoticeVO> getConsoleNoticeList(int type, long idx, int page, int count);
    List<ConsoleNoticeVO> getConsoleNoticeFilteredList(ParamPageListFilteredVO param);

    void insertConsoleNotice(ConsoleNoticeVO consoleNoticeVO);
    void updConsoleNotice(ConsoleNoticeVO consoleNoticeVO);
}
