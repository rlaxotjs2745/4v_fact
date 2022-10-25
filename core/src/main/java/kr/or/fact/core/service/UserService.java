package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.model.UserMapper;

import java.util.ArrayList;
import java.util.List;

public interface UserService {

    UserVO getAuthUser(String user_id, String user_pw);
    UserVO getUserInfo(long idx_user);


    UserVO login(String user_id, String user_pw);
    ResultVO logout(String user_id);
    long join(UserVO userVO);
    UserVO findUserById(String user_id);


    public UserVO getUserInfoByNameAndMPhoneNum(String user_name, String mphone_number);
    public UserVO findUserPW(String user_id);
    UserVO getUserInfoById(String user_id);

    public ResultVO checkIdDuplicate(String user_id);

    void insertUserSecretCode(UserSecretCodeVO userSecretCodeVO);
    void updateUserSecretCode(UserSecretCodeVO userSecretCodeVO);
    UserSecretCodeVO getUserSecretCodeByIdx(ParamUserNCodeVO paramUserNCodeVO);
    UserSecretCodeVO getUserSecretCodeForPwUpdate(ParamUserNCodeVO paramUserNCodeVO);

    void updateUserInfo(UserVO userVO);

    int getActiveUserTotalCount(int sign_in_type);//비 휴면회원 모두

    List<UserVO> getActiveUserList(ParamPageListFilteredVO paramPageListFilteredVO);

    List<UserVO> selectUserbyPage(int sign_in_type, int page);

    List<UserVO> selectDormantUserbyPage(int sign_in_type, int page);

    UserVO modifyPw(long idx_user, String hashedPassword);

    int deleteUser(long idx_user, String ban_meno);

    int updateUser(UserVO userVO);

    int deleteDormantUser(int idx);

    int getAllUserListCount();

    int getDormantUserTotalCount(int sign_in_type);

    int updateUserInfoSelf(UserVO userVO);

    ArrayList<UserVO> getUserListInCorp(long idx_corp);

    int updateUserApplicant(UserVO userVO);

}
