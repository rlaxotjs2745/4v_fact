package kr.or.fact.core.service;


import kr.or.fact.core.model.DTO.AdminHistoryVO;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface MemberService extends UserDetailsService {

    Integer saveAdminWorkHistory(AdminHistoryVO adminHistoryVo);
}