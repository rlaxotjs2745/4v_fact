package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.AdminMapper;
import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.model.DTO.user.CustomUser;
import kr.or.fact.core.service.AdminService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import kr.or.fact.core.util.CONSTANT;

import javax.mail.internet.MimeMessage;
import java.util.ArrayList;
import java.util.List;


@Service("adminService")
public class AdminServiceImpl implements AdminService {



    private final AdminMapper adminMapper;

    @Autowired
    public AdminServiceImpl(AdminMapper adminMapper){
        this.adminMapper = adminMapper;
    }


    @Override
    public AdminFilteredCountVO getAdminFilteredCount(ParamPageListFilteredVO param){
        return adminMapper.getAdminFilteredCount(param);

    }

    @Override
    public int getAdminFilteredEachCount(ParamPageListFilteredVO param){
        int total_count = 0;
        AdminFilteredCountVO adminFilteredCount = adminMapper.getAdminFilteredCount(param);
        if(adminFilteredCount!=null){
            if(param.getFilter1() == 9999)
                total_count = adminFilteredCount.getTot_count();
            else if (param.getFilter1() == 0)
                total_count = adminFilteredCount.getConsole_user_count();
            else if (param.getFilter1() == 1)
                total_count = adminFilteredCount.getConsole_user_count();
            else if (param.getFilter1() == 2)
                total_count = adminFilteredCount.getConsole_admin_count();
            else if (param.getFilter1() == 3)
                total_count = adminFilteredCount.getAdmin_user_count();
            else if (param.getFilter1() == 4)
                total_count = adminFilteredCount.getSuper_admin_count();
        }

        return total_count;

    }
    @Override
    public List<AdminVO> getAdminPagingList(ParamPageListFilteredVO param){
        return adminMapper.getAdminPagingList(param);

    }
    @Override
    public AdminVO getAuthAdmin(String admin_id, String admin_pw){
        AdminVO findAdmin = adminMapper.getAuthAdmin( admin_id,admin_pw);
        return findAdmin;
    }

    @Override
    public AdminVO getAdminInfo(long idx_admin){
        return adminMapper.getAdminInfoByIdx(idx_admin);
    }

    @Override
    public AdminVO findAdminById(String admin_id){
        AdminVO findAdmin = adminMapper.getAdminInfoById( admin_id);
        return findAdmin;
    }

    @Override
    public AdminVO login(String admin_id, String admin_pw){

        AdminVO findAdminVO =adminMapper.getAuthAdmin(admin_id,admin_pw);

        return findAdminVO;
    }
    @Override
    public ResultVO logout(String admin_id){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_code(CONSTANT.Success);
        resultVO.setResult_str("로그아웃 되었습니다");

        int upResult = adminMapper.updateAdminInfoForLogout(admin_id);

        if(upResult!=1)
        {
            resultVO.setResult_code(CONSTANT.fail);
            resultVO.setResult_str("사용자를 찾을 수 없습니다");
        }

        return resultVO;

    }
    @Override
    public long join(AdminVO adminVO){
        long ret_idx=0;
        try {
           ret_idx= adminMapper.insertAdminInfo(adminVO);
        }
        catch (Exception e){
            System.out.println(e);
        }

        return ret_idx;
    }
    @Override
    public AdminVO findAdminID(String admin_name, String mphone_number){

        AdminVO findAdmin = adminMapper.getAdminInfoByNameAndMPhoneNum(admin_name,mphone_number);
        return findAdmin;
    }

    @Override
    public AdminVO findAdminPW(String admin_id){

        AdminVO findAdmin = adminMapper.getAdminInfoById("test04");
        return findAdmin;
    }
    @Override
    public ResultVO checkIdDuplicate(String admin_id){
        ResultVO resultVO = new ResultVO();
        resultVO.setResult_code(CONSTANT.Success);
        resultVO.setResult_str("사용가능합니다");

        AdminVO findAdmin = adminMapper.getAdminInfoById(admin_id);

        if(findAdmin !=null)
        {
            resultVO.setResult_code(CONSTANT.fail);
            resultVO.setResult_str("이미 등록되었습니다");
        }

        return resultVO;
    }
    //더좋은 방법 idx, chpw만 들어가기
    @Override
    public int updateAdminPassword(ChangePwVO changePwVO){
        return adminMapper.updateAdminPassword(changePwVO);
    }
    //어드민 테이블에서 역할과 롤을 가져와 콘트롤러에게 검증 후 콘트롤러에게 준다
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        AdminVO adminVO = adminMapper.getAdminInfoById(username);
        if(adminVO == null){
            adminVO = new AdminVO();
            adminVO.setAdmin_type(CONSTANT.ROLE_GUEST);
        }

        List<GrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority("ROLE_MEMBER"/*CONSTANT.getRoleString(adminVO.getAdmin_type())*/));

        return new CustomUser(adminVO.getAdmin_id(), adminVO.getAdmin_pw(), authorities, adminVO.getAdmin_name());
    }

    @Override
    public Integer saveAdminWorkHistory(AdminHistoryVO adminHistoryVo) {

        return adminMapper.saveAdminWorkHistory(adminHistoryVo);
    }

    @Override
    public Boolean adminIdCheck(String adminId){
        Boolean bool = false;
        if(adminMapper.getAdminByAdminId(adminId).size() > 0){
            bool = true;
        }
        return bool;
    }

    @Override
    public List<AdminResVO> selectAdminbyIdx(String tagValue, int corporate) {
        int page = Integer.parseInt(tagValue);
        return adminMapper.selectAdminbyIdx(page, 10, corporate);
    }

    @Override
    public int selectCount(int corporate){
        return adminMapper.selectCount(corporate);
    }

    @Override
    public AdminVO modifyPw(long adminIdx, String hashedPassword){
        adminMapper.modifyPw(adminIdx, hashedPassword);
        return adminMapper.getAdminInfoByIdx(adminIdx);
    }

    @Override
    public long adminModify(AdminVO adminVO) {
        long ret_idx = 0;
        try {
            ret_idx = adminMapper.adminModify(adminVO);

        } catch (Exception e) {
            System.out.println(e);
        }
    return ret_idx;
    }

    @Override
    public List<AdminVO> getAdminList(){
        return adminMapper.getAllAdminList();
    }


}
