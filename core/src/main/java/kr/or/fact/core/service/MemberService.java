package kr.or.fact.core.service;


import kr.or.fact.core.model.DTO.AdminHistoryVO;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface MemberService extends UserDetailsService {

    UserDetails loadUserByUsername(String username);
    Integer saveAdminWorkHistory(AdminHistoryVO adminHistoryVo);
}