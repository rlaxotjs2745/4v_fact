package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.CorpInfoVO;
import kr.or.fact.core.model.DTO.ParamVO;
import kr.or.fact.core.model.DTO.ResultVO;
import kr.or.fact.core.model.DTO.UserVO;
import kr.or.fact.core.model.UserMapper;
import kr.or.fact.core.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.fact.core.util.CONSTANT;

@Service("userService")
public class UserServiceImpl implements UserService {

    private final UserMapper userMapper;
    @Autowired
    public UserServiceImpl(UserMapper userMapper){this.userMapper = userMapper;}

    @Override
    public UserVO getAuthUser(String user_id, String user_pw){
        UserVO findUser = userMapper.getAuthUser( user_id,user_pw);
        return findUser;
    }

    @Override
    public UserVO getUserInfo(long idx_user){
        return userMapper.getUserInfoByIdx(idx_user);
    }

    @Override
    public UserVO findUserById(String user_id){
        UserVO findUser = userMapper.getUserInfoById( user_id);
        return findUser;
    }


    @Override
    public UserVO login(String user_id, String user_pw){

/*        Map<String,Object> paramMap = new HashMap<String,Object>();
        paramMap.put("user_id",user_id);
        paramMap.put("user_pw",user_pw);*/
        ParamVO paramVo = new ParamVO();
        paramVo.setUser_id(user_id);
        paramVo.setUser_pw(user_pw);

        UserVO findUserVO =userMapper.getAuthUser(user_id,user_pw);
        return findUserVO;
    }
    @Override
    public ResultVO logout(String user_id){

        ResultVO resultVO = new ResultVO();
        resultVO.setResult_code(CONSTANT.Success);
        resultVO.setResult_str("로그아웃 되었습니다");

        int upResult = userMapper.updateUserInfoForLogout(user_id);

        if(upResult!=1)
        {
            resultVO.setResult_code(CONSTANT.fail);
            resultVO.setResult_str("사용자를 찾을 수 없습니다");
        }

        return resultVO;

    }
    @Override
    public long join(UserVO userVO){


        long ret_idx=0;
        //UserVO findUser = userDAO.getUserInfoById(userVO.getUser_id());

        try {
            ret_idx = userMapper.insertUserInfo(userVO);
        }
        catch (Exception e){

        }
        return ret_idx;
    }
    @Override
    public UserVO findUserID(String user_name, String mphone_number){

        UserVO findUser = userMapper.getUserInfoByNameAndMPhoneNum(user_name,mphone_number);
        return findUser;
    }

    @Override
    public UserVO findUserPW(String user_id){

        UserVO findUser = userMapper.getUserInfoById("test04");
        return findUser;
    }

    @Override
    public ResultVO checkIdDuplicate(String user_id){
        ResultVO resultVO = new ResultVO();
        resultVO.setResult_code(CONSTANT.Success);
        resultVO.setResult_str("사용가능합니다");

        UserVO findUser = userMapper.getUserInfoById(user_id);

        if(findUser !=null)
        {
            resultVO.setResult_code(CONSTANT.fail);
            resultVO.setResult_str("이미 등록되었습니다");
        }

        return resultVO;
    }

}
