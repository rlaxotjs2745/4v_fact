package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.*;

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





}
