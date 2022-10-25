package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.model.UserPwHistoryMapper;
import kr.or.fact.core.service.UserPwHistoryService;
import org.springframework.stereotype.Service;

@Service("userPwHistoryService")
public class UserPwHistoryServiceImpl implements UserPwHistoryService {

    private final UserPwHistoryMapper userPwHistoryMapper;

    public UserPwHistoryServiceImpl(UserPwHistoryMapper userPwHistoryMapper) {
        this.userPwHistoryMapper = userPwHistoryMapper;
    }

    @Override
    public void insertPwHisrory(UserPwHistoryVO pwHistoryVO) {
        userPwHistoryMapper.insertNewPwHistory(pwHistoryVO);
    }
}
