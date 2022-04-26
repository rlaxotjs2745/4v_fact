package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.*;

import java.util.List;

public interface UserDemoBsService {
    public List<ApplicantDemoBsJoinVO> getUserDemoBsFromJoin(long idx_user);
    public List<UserDemoBsVO> getUserDemoBsListByUserIdx(long idx_user);
    public List<DemoBsMsgVO> getDemoBsMsgByUserDemoBSIdx(long idx_user_demo_bs);
    public UserDemoBsVO getUserDemoBs(UserDemoBsCheckVO userDemoBsCheckVo);

    public long saveUserDemoBs(UserDemoBsVO userDemoBsVO);
    public long saveUserDemoBsNew(UserDemoBsVO userDemoBsVO);

    public void updateUserDemoBs(UserDemoBsVO userDemoBsVO);

    public void updateUserDemoBsWebStep2(UserDemoBsVO userDemoBsVO);
    public void updateUserDemoBsWebStep3(UserDemoBsVO userDemoBsVO);

    public UserDemoBsDetailVO getUserDemoBsDetail(long idx_user_demo_bs);
    public void saveUserDemoBsDetail(UserDemoBsDetailVO userDemoBsDetailVO);
    public void updateUserDemoBsDetail(UserDemoBsDetailVO userDemoBsDetailVO);
}


