package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.ConsoleNoticeVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ConsoleNoticeMapper {
    ConsoleNoticeVO getConsoleNoticeByUserIdx(long idx_console_notice);
    List<ConsoleNoticeVO> getConsoleNoticeList(int type, long idx, int page, int count);
    List<ConsoleNoticeVO> getConsoleNoticeFilteredList(ParamPageListFilteredVO paramPageListFilteredVO);

    void insertConsoleNotice(ConsoleNoticeVO consoleNoticeVO);
    void updConsoleNotice(ConsoleNoticeVO consoleNoticeVO);
}
