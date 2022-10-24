package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.ConsoleUserVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ConsoleMapper {
    ConsoleUserVO getConsoleUserByUserIdx(@Param("idx_user") long idx_user);
    ConsoleUserVO getConsoleUserByAdminIdx(@Param("idx_admin") long idx_admin);

    void insertConsoleUser(ConsoleUserVO consoleUserVO);
    void updConsoleUser(ConsoleUserVO consoleUserVO);
}
