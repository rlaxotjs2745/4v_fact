package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.AdminSessionMapper;
import kr.or.fact.core.model.DTO.AdminSessionVO;
import kr.or.fact.core.service.AdminSessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("adminSessionService")
public class AdminSessionServiceImpl implements AdminSessionService {
    private final AdminSessionMapper adminSessionMapper;

    @Autowired
    public AdminSessionServiceImpl(AdminSessionMapper adminSessionMapper){
        this.adminSessionMapper = adminSessionMapper;
    }
    @Override
    public AdminSessionVO getAdminSessionInfoByToken(String access_token){
        return adminSessionMapper.getAdminSessionInfoByToken(access_token);

    }
    @Override
    public AdminSessionVO getAdminSessionValidToken(long idx_admin){
        return adminSessionMapper.getAdminSessionValidToken(idx_admin);
    }

    @Override
    @Transactional
    public void insertAdminSessionInfo(AdminSessionVO adminSessionVO){

        adminSessionMapper.insertAdminSessionInfo(adminSessionVO);
    }
    @Override
    @Transactional
    public void updateAdminSessionInfo(AdminSessionVO adminSessionVO){

        adminSessionMapper.updateAdminSessionInfo(adminSessionVO);
    }
    @Override
    @Transactional
    public void deleteAdminSessionInfo(AdminSessionVO adminSessionVO){
        adminSessionMapper.deleteAdminSessionInfo(adminSessionVO);
    }
}
