package kr.or.fact.core.model;


import kr.or.fact.core.model.DTO.PagedUserListVO;
import kr.or.fact.core.model.DTO.UserVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public  interface UserDAO {

    public UserVO getUserInfoById(@Param("user_id") String user_id);
    public UserVO getUserInfoByIdx(@Param("idx_user") long idx_user);
    public UserVO getAuthUser(@Param("user_id") String user_id,@Param("user_pw") String user_pw);
    //public UserVO getAuthUser(ParamVO user);
    public UserVO getUserInfoByNameAndMPhoneNum(@Param("user_name") String user_name,@Param("mphone_num") String mphone_num);

    public List<UserVO> getAllUserList();
    public List<UserVO> getUserPagingList(@Param("page_num") int page_num, @Param("amount") int amount, @Param("order_field") String order_field);
    public List<PagedUserListVO> getUserSpecialInfoPagingList(@Param("page_num") int page_num, @Param("amount") int amount, @Param("order_field") String order_field);

    public int getUserCount(@Param("user_type") int user_type);//99 모든 유저


    public long insertUserInfo(UserVO userVO);

    public int updateUserInfo(UserVO userVO);
    public int updateUserInfoForLogout(@Param("user_id") String user_id);

    public int deleteUserInfoByID(@Param("user_id") String user_id);
    public int deleteUserInfoByIdx(@Param("idx_user") long idx_user);












}
