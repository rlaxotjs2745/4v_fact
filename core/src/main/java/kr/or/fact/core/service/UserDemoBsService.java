package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.ApplicantDemoBsJoinVO;
import kr.or.fact.core.model.DTO.DemoBsMsgVO;
import kr.or.fact.core.model.DTO.UserDemoBsCheckVO;
import kr.or.fact.core.model.DTO.UserDemoBsVO;

import java.util.List;

public interface UserDemoBsService {
    public List<ApplicantDemoBsJoinVO> getUserDemoBsFromJoin(long idx_user);
    public List<UserDemoBsVO> getUserDemoBsListByUserIdx(long idx_user);
    public List<DemoBsMsgVO> getDemoBsMsgByUserDemoBSIdx(long idx_user_demo_bs);
    public UserDemoBsVO getUserDemoBs(UserDemoBsCheckVO userDemoBsCheckVo);

    public long saveUserDemoBs(UserDemoBsVO userDemoBsVO);
    public long saveUserDemoBsNew(UserDemoBsVO userDemoBsVO);

    public void updateUserDemoBs(UserDemoBsVO userDemoBsVO);
}


