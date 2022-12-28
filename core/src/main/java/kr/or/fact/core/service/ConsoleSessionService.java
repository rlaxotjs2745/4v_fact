package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.AdminSessionVO;
import kr.or.fact.core.model.DTO.ConsoleSessionVO;

public interface ConsoleSessionService {
    ConsoleSessionVO getConsoleSessionInfoByToken(String console_token);
    ConsoleSessionVO getConsoleSessionValidToken(long idx_user);
    ConsoleSessionVO getAdminConsoleSessionValidToken(long idx_admin);
    void insertConsoleSessionInfo(ConsoleSessionVO consoleSessionVO);
    void updateConsoleSessionInfo(ConsoleSessionVO consoleSessionVO);
    void deleteConsoleSessionInfo(ConsoleSessionVO consoleSessionVO);
}
