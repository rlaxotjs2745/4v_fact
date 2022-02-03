package kr.or.fact.api.controller;

import kr.or.fact.api.model.DTO.LoginVO;
import kr.or.fact.api.model.DTO.ResultVO;
import kr.or.fact.api.model.DTO.TokenVO;
import kr.or.fact.api.model.DTO.UserVO;
import kr.or.fact.api.service.ApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


import java.time.LocalDateTime;
import java.util.UUID;

@RequestMapping("/V2")
@Controller
public class GetKeyController {
    @Autowired
    public ApiService apiService;
    @RequestMapping(value = "/get_key",method = RequestMethod.POST)
    public @ResponseBody
    ResultVO getKey (@RequestBody LoginVO loginVO){
        ResultVO resultVO = new ResultVO();
        String fac = loginVO.getDevicename();
        String username = loginVO.getUsername();

        if(username == null){
            resultVO.setResult_code("code_003");
            resultVO.setMessage("아이디가 입력되지 않았습니다.");
            resultVO.setKey(null);
            return resultVO;
        }


        long idx = apiService.selectUserIdx(username);
        if(idx == 0){
            resultVO.setResult_code("code_004");
            resultVO.setMessage("계정 정보를 찾을 수 없습니다.");
            resultVO.setKey(null);
        }

        if(apiService.isValidUser(idx, fac)){
            TokenVO tokenVO = new TokenVO();
            String uuid = UUID.randomUUID().toString();
            LocalDateTime now = LocalDateTime.now();
            tokenVO.setIdx_user(idx);
            tokenVO.setKey(uuid);
            tokenVO.setUsername(username);
            tokenVO.setCreated(now.toString());
            if(idx == 2 || idx == 3 || idx == 4){
                tokenVO.setExpired(now.plusYears(1000).toString());
            } else {
                tokenVO.setExpired(now.plusDays(1).toString());
            }
            if(apiService.isExistToken(idx)){
                apiService.updateUserKey(tokenVO);
            } else if(apiService.insertKey(tokenVO) == 0){
                resultVO.setResult_code("code_002");
                resultVO.setMessage("키 생성을 실패했습니다.");
                resultVO.setKey(null);
                return resultVO;
            }
            resultVO.setResult_code("code_001");
            resultVO.setMessage("키 생성을 성공했습니다.");
            resultVO.setKey(uuid);
        } else {
            resultVO.setResult_code("code_003");
            resultVO.setMessage("정확하지 않은 장비명이거나 장비 사용 권한이 없습니다.");
            resultVO.setKey(null);
        }

        return resultVO;
    }

}
