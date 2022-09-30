package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.model.UserDemoBsMapper;
import kr.or.fact.core.service.UserDemoBsService;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import java.util.List;
@Service("userDemoBsService")
public class UserDemoBsServiceImpl implements UserDemoBsService {


    private final UserDemoBsMapper userDemoBsMapper;

    @Autowired
    public UserDemoBsServiceImpl(UserDemoBsMapper userDemoBsMapper){
        this.userDemoBsMapper = userDemoBsMapper;

    }
    @Autowired
    private SqlSession sqlsession;




    @Override
    public List<ApplicantDemoBsJoinVO> getUserDemoBsFromJoin(long idx_user){
        return userDemoBsMapper.getUserDemoBsFromJoin(idx_user);
    }

    @Override
    public List<UserDemoBsVO> getUserDemoBsListByUserIdx(long idx_user){
        List<UserDemoBsVO> ss = userDemoBsMapper.getUserDemoBsListByUserIdx(idx_user);
        return ss;
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
    public UserDemoBsVO getUserDemoBsByIdx(long idx_user_demo_bs){
        return userDemoBsMapper.getUserDemoBsByIdx(idx_user_demo_bs);
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
    public void updateUserDemoBsWebStep4(UserDemoBsVO userDemoBsVO){
        userDemoBsMapper.updateUserDemoBsWebStep4(userDemoBsVO);
    }


    @Override
    public List<UserBsHumanResourceVO> getUserDemoBsHumanResourceList(long idx_user_demo_bs){
        return userDemoBsMapper.getUserDemoBsHumanResourceList(idx_user_demo_bs);
    }
    @Override
    public void saveUserDemoBsHumanResource(UserBsHumanResourceVO userBsHumanResourceVO){
        userDemoBsMapper.saveUserDemoBsHumanResource(userBsHumanResourceVO);
    }
    @Override
    @Transactional(propagation= Propagation.REQUIRED)
    public void deleteUserDemoBsHumanResource(long idx_user_demo_bs){
userDemoBsMapper.deleteUserDemoBsHumanResource(idx_user_demo_bs);
//        DefaultTransactionDefinition def = new DefaultTransactionDefinition();
//        TransactionStatus status = dataSourceTransactionManager.getTransaction(def);
//        this.sqlsession.delete("kr.or.fact.core.model.UserDemoBsMapper.deleteUserDemoBsHumanResource",idx_user_demo_bs);
//        //userDemoBsMapper.getUserDemoBsHumanResourceList(idx_user_demo_bs);
//        dataSourceTransactionManager.commit(status);
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

    @Override
    public List<UserDemoBsVO> getUserDemoBsPagingList(int page_num,int amount,String order_field, int filter1, int filter2){
        return userDemoBsMapper.getUserDemoBsPagingList(page_num, amount, order_field,filter1,filter2);
    }

    @Override
    public int submitUserDemoBs(long idx_user_demo_bs){
        return userDemoBsMapper.submitUserDemoBs(idx_user_demo_bs);
    }
}
