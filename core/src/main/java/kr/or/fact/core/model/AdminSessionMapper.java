package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.AdminSessionVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminSessionMapper {

    AdminSessionVO getAdminSessionInfoByToken(String access_token);
    AdminSessionVO getAdminSessionValidToken(long idx_admin);
    void insertAdminSessionInfo(AdminSessionVO adminSessionVO);
    void updateAdminSessionInfo(AdminSessionVO adminSessionVO);
    void deleteAdminSessionInfo(AdminSessionVO adminSessionVO);
}
