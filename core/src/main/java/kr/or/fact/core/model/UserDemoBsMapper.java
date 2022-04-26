package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserDemoBsMapper {

    List<ApplicantDemoBsJoinVO> getUserDemoBsFromJoin(@Param("idx_user") long idx_user);

    List<UserDemoBsVO>  getUserDemoBsListByUserIdx(@Param("idx_user") long idx_user);

    List<DemoBsMsgVO>  getDemoBsMsgByUserDemoBSIdx(@Param("idx_user_demo_bs") long idx_user_demo_bs);

    UserDemoBsVO getUserDemoBs(UserDemoBsCheckVO userDemoBsCheckVo);

    long saveUserDemoBs(UserDemoBsVO userDemoBsVO);

    long saveUserDemoBsNew(UserDemoBsVO userDemoBsVO);

    void updateUserDemoBs(UserDemoBsVO userDemoBsVO);

    void updateUserDemoBsWebStep2(UserDemoBsVO userDemoBsVO);
    void updateUserDemoBsWebStep3(UserDemoBsVO userDemoBsVO);

    UserDemoBsDetailVO getUserDemoBsDetail(long idx_user_demo_bs);
    void saveUserDemoBsDetail(UserDemoBsDetailVO userDemoBsDetailVO);
    void updateUserDemoBsDetail(UserDemoBsDetailVO userDemoBsDetailVO);






}
