package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.model.UserMapper;
import kr.or.fact.core.service.UserService;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.lang.Nullable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import kr.or.fact.core.util.CONSTANT;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import java.util.Date;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    private final UserMapper userMapper;





    @Autowired
    public UserServiceImpl(UserMapper userMapper){
        this.userMapper = userMapper;

    }
    @Autowired
    private SqlSession sqlsession;



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
    public UserVO getUserInfoByNameAndMPhoneNum(String user_name, String mphone_number){

        UserVO findUser = userMapper.getUserInfoByNameAndMPhoneNum(user_name,mphone_number);
        return findUser;
    }

    @Override
    public UserVO findUserPW(String user_id){

        UserVO findUser = userMapper.getUserInfoById(user_id);
        return findUser;
    }

    @Override
    public UserVO getUserInfoById(String user_id){

        UserVO findUser = userMapper.getUserInfoById(user_id);
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

    @Override
    public void insertUserSecretCode(UserSecretCodeVO userSecretCodeVO){
        userMapper.insertUserSecretCode(userSecretCodeVO);
    }
    @Override
    public void updateUserSecretCode(UserSecretCodeVO userSecretCodeVO){
        userMapper.updateUserSecretCode(userSecretCodeVO);
//
//        DefaultTransactionDefinition def = new DefaultTransactionDefinition();
//        TransactionStatus status = dataSourceTransactionManager.getTransaction(def);
//        this.sqlsession.update("kr.or.fact.core.model.UserMapper.updateUserSecretCode",userSecretCodeVO);
//        dataSourceTransactionManager.commit(status);
    }

    @Override
    public UserSecretCodeVO getUserSecretCodeByIdx(ParamUserNCodeVO paramUserNCodeVO){
        return userMapper.getUserSecretCodeByIdx(paramUserNCodeVO);
    }

    @Override
    public UserSecretCodeVO getUserSecretCodeForPwUpdate(ParamUserNCodeVO paramUserNCodeVO){
        return userMapper.getUserSecretCodeForPwUpdate(paramUserNCodeVO);
    }

    @Override
    public void updateUserInfo(UserVO userVO){
//        DefaultTransactionDefinition def = new DefaultTransactionDefinition();
//        TransactionStatus status = dataSourceTransactionManager.getTransaction(def);
//        this.sqlsession.update("kr.or.fact.core.model.UserMapper.updateUserInfo",userVO);
//        dataSourceTransactionManager.commit(status);
        userMapper.updateUserInfo(userVO);
    }

    @Override
    public int getAllUserListCount(){
        return userMapper.getAllUserListCount() != 0 ? userMapper.getAllUserListCount() : 0;
    }

    @Override
    public int getActiveUserTotalCount(int sign_in_type){//비 휴면회원 모두
        return  userMapper.getActiveUserTotalCount(sign_in_type);
    }

    @Override
    public List<UserVO> getActiveUserList(ParamPageListFilteredVO paramPageListFilteredVO){
        paramPageListFilteredVO.setFilter1(0);//0: user type=일반, 탈퇴, 임의 탈퇴
        return userMapper.getUserPagingList(paramPageListFilteredVO);
    }

    @Override
    public List<UserVO> selectUserbyPage(int sign_in_type, int page){
        return userMapper.selectUserbyPage(sign_in_type, page);
    }

    @Override
    public List<UserVO> selectDormantUserbyPage(int sign_in_type, int page){
        return userMapper.selectDormantUserbyPage(sign_in_type, page);
    }

    @Override
    public UserVO modifyPw(long idx_user, String hashedPassword){
        userMapper.modifyPw(idx_user, hashedPassword);
        return userMapper.getUserInfoByIdx(idx_user);
    }

    @Override
    public int deleteUser(long idx_user, String ban_memo){
        return userMapper.deleteUserInfoByIdx(idx_user, ban_memo);
    }

    @Override
    public int updateUser(UserVO userVO){
        return userMapper.updateUser(userVO);
    }

    @Override
    public int getDormantUserTotalCount(int sign_in_type){
        return userMapper.getDormantUserTotalCount(sign_in_type);
    }

    @Override
    public int deleteDormantUser(int userIdx){
        return userMapper.deleteDormantUser(userIdx);
    }

    @Override
    public int updateUserInfoSelf(UserVO userVO){
        System.out.println(userVO);
        if(userVO.getUser_pw() != null){
            return userMapper.updateUserInfoSelfWithPw(userVO);
        } else {
            return userMapper.updateUserInfoSelf(userVO);
        }
    }

}
