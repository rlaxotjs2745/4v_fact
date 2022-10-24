package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.AuthVO;

public interface AuthService {
    AuthVO getAuth(long idx_console_user, String auth_code);
    void insertAuth(AuthVO authVO);
    void updAuth(AuthVO authVO);
}
