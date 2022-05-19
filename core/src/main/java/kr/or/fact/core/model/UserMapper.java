package kr.or.fact.core.model;


import kr.or.fact.core.model.DTO.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public  interface UserMapper {

    UserVO getUserInfoById(@Param("user_id") String user_id);
    UserVO getUserInfoByIdx(@Param("idx_user") long idx_user);
    UserVO getAuthUser(@Param("user_id") String user_id,@Param("user_pw") String user_pw);
    //UserVO getAuthUser(ParamVO user);
    UserVO getUserInfoByNameAndMPhoneNum(@Param("user_name") String user_name,@Param("mphone_num") String mphone_num);

    List<UserVO> getAllUserList();
    List<UserVO> getUserPagingList(@Param("page_num") int page_num, @Param("amount") int amount, @Param("order_field") String order_field);
    List<PagedUserListVO> getUserSpecialInfoPagingList(@Param("page_num") int page_num, @Param("amount") int amount, @Param("order_field") String order_field);

    int getUserCount(@Param("user_type") int user_type);//99 모든 유저


    long insertUserInfo(UserVO userVO);

    int updateUserInfo(UserVO userVO);
    int updateUserInfoForLogout(@Param("user_id") String user_id);

    int deleteUserInfoByID(@Param("user_id") String user_id);
    int deleteUserInfoByIdx(@Param("idx_user") long idx_user);

    void insertUserSecretCode(UserSecretCodeVO userSecretCodeVO);
    void updateUserSecretCode(UserSecretCodeVO userSecretCodeVO);
    UserSecretCodeVO getUserSecretCodeByIdx(ParamUserNCodeVO paramUserNCodeVO);
    UserSecretCodeVO getUserSecretCodeForPwUpdate(ParamUserNCodeVO paramUserNCodeVO);













}
