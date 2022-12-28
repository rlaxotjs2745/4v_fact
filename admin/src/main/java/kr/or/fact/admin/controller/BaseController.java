package kr.or.fact.admin.controller;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.model.PRContentsMapper;
import kr.or.fact.core.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class BaseController {
    @Resource(name = "adminService")
    AdminService adminService;

    @Autowired
    public PRContentsMapper prContentsMapper;

    @Resource(name="adminSessionService")
    AdminSessionService adminSessionService;

    @Autowired
    Environment env;

    public AdminVO getVerityAuth(String access_token){
        AdminVO adminVO = null;

        //1. access_token 찾기
        AdminSessionVO adminSessionVO = adminSessionService.getAdminSessionInfoByToken(access_token);
        if(adminSessionVO!=null)
        {
            //2.access_token expire 검토
            SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");

            Date cur = new Date();
            String today = format.format(cur);
            String expire = format.format(adminSessionVO.getAccess_expire_date());
            int compare = expire.compareTo(today);
            if(compare>=0){//오늘보다 크면
                adminVO = adminService.getAdminInfo(adminSessionVO.getIdx_admin());
            }else {//토큰 만료
                adminVO = new AdminVO();
                adminVO.set_expired(true);
            }
        }

        return adminVO;
    }
}
