package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDemoBsService {
    List<ApplicantDemoBsJoinVO> getUserDemoBsFromJoin(long idx_user);
    List<UserDemoBsVO> getUserDemoBsListByUserIdx(long idx_user);
    List<DemoBsMsgVO> getDemoBsMsgByUserDemoBSIdx(long idx_user_demo_bs);

    UserDemoBsVO getUserDemoBs(UserDemoBsCheckVO userDemoBsCheckVo);
    UserDemoBsVO getUserDemoBsByIdx(long idx_user_demo_bs);

    long saveUserDemoBs(UserDemoBsVO userDemoBsVO);
    long saveUserDemoBsNew(UserDemoBsVO userDemoBsVO);

    void updateUserDemoBs(UserDemoBsVO userDemoBsVO);

    void updateUserDemoBsWebStep2(UserDemoBsVO userDemoBsVO);
    void updateUserDemoBsWebStep3(UserDemoBsVO userDemoBsVO);
    void updateUserDemoBsWebStep4(UserDemoBsVO userDemoBsVO);



    List<UserBsHumanResourceVO> getUserDemoBsHumanResourceList(long idx_user_demo_bs);
    void saveUserDemoBsHumanResource(UserBsHumanResourceVO userBsHumanResourceVO);
    void deleteUserDemoBsHumanResource(long idx_user_demo_bs);

    UserDemoBsDetailVO getUserDemoBsDetail(long idx_user_demo_bs);
    void saveUserDemoBsDetail(UserDemoBsDetailVO userDemoBsDetailVO);
    void updateUserDemoBsDetail(UserDemoBsDetailVO userDemoBsDetailVO);

    int submitUserDemoBs(long idx_user_demo_bs);

    List<UserDemoBsVO> getUserDemoBsPagingList(int page_num, int amount, String order_field, int filter1, int filter2);
}


