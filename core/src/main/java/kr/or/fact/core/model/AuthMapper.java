package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.AuthVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface AuthMapper {
    AuthVO getAuth(@Param("auth_code") String auth_code);
    void insertAuth(AuthVO authVO);
    void updAuth(AuthVO authVO);
}
