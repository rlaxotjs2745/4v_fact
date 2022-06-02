package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.AdminHistoryVO;
import kr.or.fact.core.model.DTO.AdminResVO;
import kr.or.fact.core.model.DTO.AdminVO;
import kr.or.fact.core.model.DTO.ResultVO;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface AdminService extends UserDetailsService {

    public AdminVO getAuthAdmin(String admin_id, String admin_pw);
    public AdminVO getAdminInfo(long idx_admin);

    public AdminVO login(String admin_id, String user_pw);
    public ResultVO logout(String admin_id);
    public String join(AdminVO adminVO);
    public AdminVO findAdminById(String admin_id);
    public AdminVO findAdminID(String admin_name, String mphone_number);
    public AdminVO findAdminPW(String admin_id);

    public ResultVO checkIdDuplicate(String admin_id);

    public int updateAdminPassword(AdminVO adminVo);

    UserDetails loadUserByUsername(String username);
    Integer saveAdminWorkHistory(AdminHistoryVO adminHistoryVo);

    Boolean adminIdCheck(String adminId);

    List<AdminResVO> selectAdminbyIdx(String tagValue);
    int selectCount();
}
