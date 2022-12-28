package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.ConsoleSessionVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ConsoleSessionMapper {
    ConsoleSessionVO getConsoleSessionInfoByToken(String console_token);
    void insertConsoleSessionInfo(ConsoleSessionVO consoleSessionVO);
    void updateConsoleSessionInfo(ConsoleSessionVO consoleSessionVO);
    void deleteConsoleSessionInfo(ConsoleSessionVO consoleSessionVO);
}
