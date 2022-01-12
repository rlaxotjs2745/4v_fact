package kr.or.fact.api.controller;

import kr.or.fact.api.model.DTO.ResultVO;
import kr.or.fact.api.model.DTO.TokenVO;
import kr.or.fact.api.model.DTO.UserVO;
import kr.or.fact.api.service.ApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import java.time.LocalDateTime;
import java.util.UUID;

@RequestMapping("/V1")
@Controller
public class GetKeyController {
    @Autowired
    public ApiService apiService;
   @RequestMapping(value = "/get_key",method = RequestMethod.POST)
    public @ResponseBody
   ResultVO getKey (@RequestBody UserVO userVO){
       ResultVO resultVO = new ResultVO();
       String username = userVO.getUsername();

       if(username == null){
           resultVO.setResult_code("code_003");
           resultVO.setMessage("아이디가 입력되지 않았습니다.");
           resultVO.setKey(null);
           resultVO.setUsername(null);
           return resultVO;
       }
       long idx = apiService.selectUserIdx(username);

       TokenVO tokenVO = new TokenVO();

       String uuid = UUID.randomUUID().toString();
       LocalDateTime now = LocalDateTime.now();

       tokenVO.setKey(uuid);
       tokenVO.setUsername(username);
       tokenVO.setCreated(now.toString());
       tokenVO.setExpired(now.plusDays(1).toString());

       if(idx != 0){
           tokenVO.setIdx_user(idx);
           apiService.updateUserKey(tokenVO);
       } else if(apiService.insertKey(tokenVO) == 0){
           resultVO.setResult_code("code_002");
           resultVO.setMessage("키 생성을 실패했습니다.");
           resultVO.setKey(null);
           resultVO.setUsername(username);
           return resultVO;
       }
       resultVO.setResult_code("code_001");
       resultVO.setMessage("키 생성을 성공했습니다.");
       resultVO.setKey(uuid);
       resultVO.setUsername(username);

       return resultVO;
   }

}
