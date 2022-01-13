package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.AdminVO;
import kr.or.fact.core.model.DTO.ResultVO;

public interface AdminService {

    public AdminVO getAuthAdmin(String admin_id, String admin_pw);
    public AdminVO getAdminInfo(long idx_admin);


    public AdminVO login(String admin_id, String user_pw);
    public ResultVO logout(String admin_id);
    public long join(AdminVO adminVO);
    public AdminVO findUserById(String admin_id);
    public AdminVO findUserID(String admin_name, String mphone_number);
    public AdminVO findUserPW(String admin_id);

    public ResultVO checkIdDuplicate(String admin_id);
}
