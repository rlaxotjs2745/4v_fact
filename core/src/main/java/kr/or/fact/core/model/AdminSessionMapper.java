package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.AdminSessionVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminSessionMapper {

    AdminSessionVO getAdminSessionInfoByToken(String access_token);
    List<AdminSessionVO> getAdminSessionValidToken(long idx_admin);
    void insertAdminSessionInfo(AdminSessionVO adminSessionVO);
    void updateAdminSessionInfo(AdminSessionVO adminSessionVO);
    void deleteAdminSessionInfo(AdminSessionVO adminSessionVO);
}
