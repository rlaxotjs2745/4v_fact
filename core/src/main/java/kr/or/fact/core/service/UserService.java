package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.ResultVO;
import kr.or.fact.core.model.DTO.UserVO;

public interface UserService {

    public UserVO getAuthUser(String user_id, String user_pw);
    public UserVO getUserInfo(long idx_user);


    public UserVO login(String user_id, String user_pw);
    public ResultVO logout(String user_id);
    public long join(UserVO userVO);
    public UserVO findUserById(String user_id);
    public UserVO findUserID(String user_name, String mphone_number);
    public UserVO findUserPW(String user_id);

    public ResultVO checkIdDuplicate(String user_id);






}
