package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.AdminMapper;
import kr.or.fact.core.model.DTO.AdminVO;
import kr.or.fact.core.model.DTO.ResultVO;
import kr.or.fact.core.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.or.fact.core.util.CONSTANT;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminMapper adminDAO;

    @Override
    public AdminVO getAuthAdmin(String admin_id, String admin_pw){
        AdminVO findAdmin = adminDAO.getAuthAdmin( admin_id,admin_pw);
        return findAdmin;
    }

    @Override
    public AdminVO getAdminInfo(long idx_admin){
        return adminDAO.getAdminInfoByIdx(idx_admin);
    }

    @Override
    public AdminVO findAdminById(String admin_id){
        AdminVO findAdmin = adminDAO.getAdminInfoById( admin_id);
        return findAdmin;
    }


    @Override
    public AdminVO login(String admin_id, String admin_pw){

        AdminVO findAdminVO =adminDAO.getAuthAdmin(admin_id,admin_pw);
        return findAdminVO;
    }
    @Override
    public ResultVO logout(String admin_id){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_code(CONSTANT.Success);
        resultVO.setResult_str("로그아웃 되었습니다");

        int upResult = adminDAO.updateAdminInfoForLogout(admin_id);

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
        //AdminVO findAdmin = adminDAO.getAdminInfoById(adminVO.getAdmin_id());

        try {
            ret_idx = adminDAO.insertAdminInfo(adminVO);
        }
        catch (Exception e){

        }
        return ret_idx;
    }
    @Override
    public AdminVO findAdminID(String admin_name, String mphone_number){

        AdminVO findAdmin = adminDAO.getAdminInfoByNameAndMPhoneNum(admin_name,mphone_number);
        return findAdmin;
    }

    @Override
    public AdminVO findAdminPW(String admin_id){

        AdminVO findAdmin = adminDAO.getAdminInfoById("test04");
        return findAdmin;
    }

    @Override
    public ResultVO checkIdDuplicate(String admin_id){
        ResultVO resultVO = new ResultVO();
        resultVO.setResult_code(CONSTANT.Success);
        resultVO.setResult_str("사용가능합니다");

        AdminVO findAdmin = adminDAO.getAdminInfoById(admin_id);

        if(findAdmin !=null)
        {
            resultVO.setResult_code(CONSTANT.fail);
            resultVO.setResult_str("이미 등록되었습니다");
        }

        return resultVO;
    }
    @Override
    public int updateAdminPassword(AdminVO adminVo){
        return adminDAO.updateAdminPassword(adminVo);
    }
}
