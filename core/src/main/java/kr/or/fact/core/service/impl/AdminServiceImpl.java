package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.AdminVO;
import kr.or.fact.core.model.DTO.ResultVO;
import kr.or.fact.core.service.AdminService;

public class AdminServiceImpl implements AdminService {
    public AdminVO getAuthAdmin(String admin_id, String admin_pw){
        return null;
    }
    public AdminVO getAdminInfo(long idx_admin){
        return null;
    }


    public AdminVO login(String admin_id, String user_pw){
        return null;
    }
    public ResultVO logout(String admin_id){
        return null;
    }
    public long join(AdminVO adminVO){
        return 0;
    }
    public AdminVO findUserById(String admin_id){
        return null;
    }
    public AdminVO findUserID(String admin_name, String mphone_number){
        return null;
    }
    public AdminVO findUserPW(String admin_id){
        return null;
    }

    public ResultVO checkIdDuplicate(String admin_id){
        return null;
    }
}
