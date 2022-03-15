package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.AdminMapper;
import kr.or.fact.core.model.DTO.AdminHistoryVO;
import kr.or.fact.core.model.DTO.AdminVO;
import kr.or.fact.core.service.MemberService;
import kr.or.fact.core.util.CONSTANT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

    @Autowired
    private AdminMapper adminDAO;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        AdminVO adminVO = adminDAO.getAdminInfoById(username);
        if(adminVO == null){
            adminVO = new AdminVO();
            adminVO.setAdmin_type(CONSTANT.ROLE_GUEST);
        }

        List<GrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority("ROLE_MEMBER"/*CONSTANT.getRoleString(adminVO.getAdmin_type())*/));

        return new User(adminVO.getAdmin_id(), adminVO.getAdmin_pw(), authorities);
    }

    @Override
    public Integer saveAdminWorkHistory(AdminHistoryVO adminHistoryVo) {

        return adminDAO.saveAdminWorkHistory(adminHistoryVo);
    }
}
