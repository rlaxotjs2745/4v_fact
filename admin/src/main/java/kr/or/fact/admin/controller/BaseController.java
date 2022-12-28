package kr.or.fact.admin.controller;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.model.PRContentsMapper;
import kr.or.fact.core.service.*;
import kr.or.fact.core.util.CONSTANT;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class BaseController {
    @Resource(name = "adminService")
    AdminService adminService;

    @Resource(name = "homepageInfoService")
    HomepageInfoService homepageInfoService;

    @Resource(name = "coWorkerNService")
    CoWorkerNService coWorkerNService;

    @Resource(name = "noticeService")
    NoticeService noticeService;

    @Resource(name = "demoBsService")
    DemoBsService demoBsService;

    @Resource(name = "mailService")
    MailService mailService;

    @Resource(name = "smsService")
    public SmsSendService smsSendService;

    @Resource(name = "bsAnnouncementService")
    public BsAnnouncementService bsAnnouncementService;

    @Resource(name = "demoBsApplicationService")
    public DemoBsApplicationService demoBsApplicationService;

    @Resource(name = "fileService")
    public FileService fileService;

    @Resource(name = "corpService")
    public CorpService corpService;

    @Resource(name = "systemService")
    public SystemService systemService;

    @Resource(name = "consultingService")
    public ConsultingService consultingService;

    @Resource(name = "eventContentService")
    public EventContentService eventContentService;

    @Resource(name = "visitService")
    public VisitService visitService;

    @Resource(name = "assetService")
    public AssetService assetService;

    @Resource(name = "userService")
    public UserService userService;

    @Resource(name="prContentService")
    public PRContentsService prContentService;

    @Resource(name="webMainPopupService")
    public WebMainPopupService webMainPopupService;

    @Resource(name = "formFileService")
    public FormFileService formFileService;

    @Resource(name = "ruleFileService")
    public RuleFileService ruleFileService;

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
