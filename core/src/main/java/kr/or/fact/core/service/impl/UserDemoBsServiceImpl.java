package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.ApplicantDemoBsJoinVO;
import kr.or.fact.core.model.DTO.DemoBsMsgVO;
import kr.or.fact.core.model.DTO.UserDemoBsVO;
import kr.or.fact.core.model.UserDemoBsMapper;
import kr.or.fact.core.service.UserDemoBsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("userDemoBsService")
public class UserDemoBsServiceImpl implements UserDemoBsService {

    @Autowired
    UserDemoBsMapper userDemoBsDAO;

    @Override
    public List<ApplicantDemoBsJoinVO> getUserDemoBsFromJoin(long idx_user){
        return userDemoBsDAO.getUserDemoBsFromJoin(idx_user);
    }

    public List<UserDemoBsVO> getUserDemoBsListByUserIdx(long idx_user){
        return userDemoBsDAO.getUserDemoBsListByUserIdx(idx_user);
    }
    public List<DemoBsMsgVO> getDemoBsMsgByUserDemoBSIdx(long idx_user_demo_bs){
        return userDemoBsDAO.getDemoBsMsgByUserDemoBSIdx(idx_user_demo_bs);
    }
}
