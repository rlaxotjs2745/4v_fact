package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.model.UserDemoBsMapper;
import kr.or.fact.core.service.UserDemoBsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("userDemoBsService")
public class UserDemoBsServiceImpl implements UserDemoBsService {

    private final UserDemoBsMapper userDemoBsMapper;
    @Autowired
    public UserDemoBsServiceImpl(UserDemoBsMapper userDemoBsMapper){this.userDemoBsMapper = userDemoBsMapper;}

    @Override
    public List<ApplicantDemoBsJoinVO> getUserDemoBsFromJoin(long idx_user){
        return userDemoBsMapper.getUserDemoBsFromJoin(idx_user);
    }

    @Override
    public List<UserDemoBsVO> getUserDemoBsListByUserIdx(long idx_user){
        return userDemoBsMapper.getUserDemoBsListByUserIdx(idx_user);
    }

    @Override
    public List<DemoBsMsgVO> getDemoBsMsgByUserDemoBSIdx(long idx_user_demo_bs){
        return userDemoBsMapper.getDemoBsMsgByUserDemoBSIdx(idx_user_demo_bs);
    }

    @Override
    public UserDemoBsVO getUserDemoBs(UserDemoBsCheckVO userDemoBsCheckVo){
        return userDemoBsMapper.getUserDemoBs(userDemoBsCheckVo);
    }

    @Override
    public long saveUserDemoBs(UserDemoBsVO userDemoBsVO){
        return userDemoBsMapper.saveUserDemoBs(userDemoBsVO);
    }

    @Override
    public long saveUserDemoBsNew(UserDemoBsVO userDemoBsVO){
        return userDemoBsMapper.saveUserDemoBsNew(userDemoBsVO);
    }

    @Override
    public void updateUserDemoBs(UserDemoBsVO userDemoBsVO){
        userDemoBsMapper.updateUserDemoBs(userDemoBsVO);
    }

    @Override
    public void updateUserDemoBsWebStep2(UserDemoBsVO userDemoBsVO){
        userDemoBsMapper.updateUserDemoBsWebStep2(userDemoBsVO);
    }

    @Override
    public void updateUserDemoBsWebStep3(UserDemoBsVO userDemoBsVO){
        userDemoBsMapper.updateUserDemoBsWebStep3(userDemoBsVO);
    }
    @Override
    public UserDemoBsDetailVO getUserDemoBsDetail(long idx_user_demo_bs){
        return userDemoBsMapper.getUserDemoBsDetail(idx_user_demo_bs);
    }

    @Override
    public void saveUserDemoBsDetail(UserDemoBsDetailVO userDemoBsDetailVO){
        userDemoBsMapper.saveUserDemoBsDetail(userDemoBsDetailVO);
    }

    @Override
    public void updateUserDemoBsDetail(UserDemoBsDetailVO userDemoBsDetailVO){
        userDemoBsMapper.updateUserDemoBsDetail(userDemoBsDetailVO);
    }
}
