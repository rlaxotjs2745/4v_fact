package kr.or.fact.api.controller;

import kr.or.fact.api.model.DTO.ResultVO;
import kr.or.fact.api.model.DTO.TokenVO;
import kr.or.fact.api.model.DTO.UserVO;
import kr.or.fact.api.service.ApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


import java.time.LocalDateTime;
import java.util.UUID;

@RequestMapping("/V1")
@Controller
public class GetKeyController {
    @Autowired
    public ApiService apiService;
   @RequestMapping(value = "/get_key",method = RequestMethod.POST)
    public @ResponseBody
   ResultVO getKey (@RequestParam("userId") String userId, @RequestParam("password") String password){
       ResultVO resultVO = new ResultVO();

       if(userId == null){
           resultVO.setResult_code("code_003");
           resultVO.setMessage("아이디가 입력되지 않았습니다.");
           resultVO.setKey(null);
           return resultVO;
       }
       long idx = apiService.selectUserIdx(userId, password);

       TokenVO tokenVO = new TokenVO();

       String uuid = UUID.randomUUID().toString();
       LocalDateTime now = LocalDateTime.now();

       tokenVO.setKey(uuid);
       tokenVO.setCreated(now.toString());
       tokenVO.setExpired(now.plusDays(1).toString());

       if(idx != 0){
           tokenVO.setIdx_user(idx);
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

       return resultVO;
   }

}
