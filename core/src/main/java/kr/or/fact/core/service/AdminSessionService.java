package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.*;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.List;

public interface AdminSessionService {

    AdminSessionVO getAdminSessionInfoByToken(String access_token);
    AdminSessionVO getAdminSessionValidToken(long idx_admin);

    void insertAdminSessionInfo(AdminSessionVO adminSessionVO);
    void updateAdminSessionInfo(AdminSessionVO adminSessionVO);
    void deleteAdminSessionInfo(AdminSessionVO adminSessionVO);

}
