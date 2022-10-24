package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.AssetMapper;
import kr.or.fact.core.model.AuthMapper;
import kr.or.fact.core.model.DTO.AuthVO;
import kr.or.fact.core.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("authService")
public class AuthServiceImpl implements AuthService {

    private final AuthMapper authMapper;

    @Autowired
    public AuthServiceImpl(AuthMapper authMapper){
        this.authMapper = authMapper;
    }

    public AuthVO getAuth(long idx_console_user, String auth_code){
        AuthVO findAuthVo = authMapper.getAuth(auth_code);
        if(findAuthVo!=null && findAuthVo.getIdx_console_user() == idx_console_user){
            return findAuthVo;
        }
        return null;
    }

    @Transactional
    public void insertAuth(AuthVO authVO){
        authMapper.insertAuth(authVO);
    }

    @Transactional
    public void updAuth(AuthVO authVO){
        authMapper.updAuth(authVO);
    }
}
