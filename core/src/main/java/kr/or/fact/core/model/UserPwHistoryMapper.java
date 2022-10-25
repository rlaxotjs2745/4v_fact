package kr.or.fact.core.model;


import kr.or.fact.core.model.DTO.UserPwHistoryVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public  interface UserPwHistoryMapper {

    void insertNewPwHistory(UserPwHistoryVO pwHistoryVO);
}
