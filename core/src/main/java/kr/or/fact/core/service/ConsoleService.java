package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.ConsoleUserVO;

public interface ConsoleService {
    ConsoleUserVO getConsoleUserByUserIdx(long idx_user);
    ConsoleUserVO getConsoleUserByAdminIdx(long idx_admin);

    void insertConsoleUser(ConsoleUserVO consoleUserVO);
    void updConsoleUser(ConsoleUserVO consoleUserVO);

}
