package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.ApplicantDemoBsJoinVO;
import kr.or.fact.core.model.DTO.DemoBsMsgVO;
import kr.or.fact.core.model.DTO.UserDemoBsCheckVO;
import kr.or.fact.core.model.DTO.UserDemoBsVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserDemoBsMapper {

    List<ApplicantDemoBsJoinVO> getUserDemoBsFromJoin(@Param("idx_user") long idx_user);

    List<UserDemoBsVO>  getUserDemoBsListByUserIdx(@Param("idx_user") long idx_user);

    List<DemoBsMsgVO>  getDemoBsMsgByUserDemoBSIdx(@Param("idx_user_demo_bs") long idx_user_demo_bs);

    public UserDemoBsVO getUserDemoBs(UserDemoBsCheckVO userDemoBsCheckVo);

    public long saveUserDemoBs(UserDemoBsVO userDemoBsVO);

    public long saveUserDemoBsNew(UserDemoBsVO userDemoBsVO);

    public void updateUserDemoBs(UserDemoBsVO userDemoBsVO);



}
