package kr.or.fact.api.controller;

import kr.or.fact.api.model.DTO.*;
import kr.or.fact.api.service.ApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@RequestMapping("/V2")
@Controller
public class GetAPIController {
    @Autowired
    public ApiService apiService;

    Connection conn = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;

    @RequestMapping(value = "/idx", method = RequestMethod.GET)
    public @ResponseBody
    IdxResultVO getByIndex (@RequestBody IdxVO idxVO){
        long startIdx = idxVO.getStartIdx();
        long count = idxVO.getCount();
        long pageNum = idxVO.getPageNum();

        return apiService.selectPagebyIdx(startIdx, count, pageNum);
//데이터 형식
//        {
//            "startIdx":1,
//                "count":50,
//                "pageNum":2
//        }
    }
    @RequestMapping(value = "/time", method = RequestMethod.GET)
    public @ResponseBody
    ArrayList<DataVO> getByTime (@RequestBody TimeVO timeVO){
        String fromTime = timeVO.getFrom();
        String toTime = timeVO.getTo();

        return apiService.selectbyTime(fromTime, toTime);
    }
//    데이터형식
//    {
//        "from":"2022.03.25 14:36:00”, (가져갈 시작시간)
//        "to":"2022.03.25 14:38:00”(지금시간)
//    }
    @RequestMapping(value = "/envinfo", method = RequestMethod.GET)
    public @ResponseBody
    ArrayList<EnvInfoVO> selectbyGuyokEnv (@RequestBody GuyokParamVO guyokParamVO){
        return apiService.selectbyGuyokEnv(guyokParamVO.getGuyok(),guyokParamVO.getFarm_cd());

    }
    @RequestMapping(value = "/controlinfo", method = RequestMethod.GET)
    public @ResponseBody
    ArrayList<ControlInfoVO> selectbyGuyokContol (@RequestBody GuyokParamVO guyokParamVO){
        return apiService.selectbyGuyokContol(guyokParamVO.getGuyok(),guyokParamVO.getFarm_cd());

    }

}
