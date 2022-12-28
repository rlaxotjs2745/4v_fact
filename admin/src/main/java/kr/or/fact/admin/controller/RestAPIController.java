package kr.or.fact.admin.controller;

import kr.or.fact.core.config.FACTConfig;
import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.*;

@RestController
public class RestAPIController extends BaseController {
    @Resource(name = "prContentService")
    public  PRContentsService prContentService;

    @PostMapping("/get_prcontents")
    public @ResponseBody ResultVO get_prcontents(@CookieValue(name = "access_token", required = false) String access_token
            , PRContentVO paramVo) {
        ResultVO resultVO = new ResultVO();
        resultVO.setResult_str("홍보자료가 없습니다.");
        resultVO.setResult_code("ERROR_1000");

        AdminVO adminVO = null;
        if(access_token!=null){
            adminVO = getVerityAuth(access_token);
            if(adminVO==null || adminVO.is_expired())
            {
                resultVO.setResult_str("로그인 후 이용해주세요.");
                return resultVO;
            }
        }else{
            resultVO.setResult_str("로그인 후 이용해주세요.");
            return resultVO;
        }

        if(paramVo!=null){
            PRContentVO rs = prContentService.getPRContent(paramVo.getIdx_pr_content());
            if(rs!=null) {
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.KOREAN);
                String sDate = dateFormat.format(rs.getShow_end_date());
                String eDate = dateFormat.format(rs.getShow_end_date());

                rs.setShow_end_date_str(sDate);
                rs.setShow_end_date_str(eDate);
                Map<String, Object> _rs = new HashMap<String, Object>();
                _rs.put("result", rs);
                resultVO.setData(_rs);
                resultVO.setResult_str("홍보자료를 불러왔습니다.");
                resultVO.setResult_code("SUCCESS");
            }
        }
        return resultVO;
    }
}

