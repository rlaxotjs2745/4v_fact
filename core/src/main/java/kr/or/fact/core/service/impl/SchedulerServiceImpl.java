package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.SchedulerMapper;
import kr.or.fact.core.service.SchedulerService;
import org.springframework.beans.factory.annotation.Autowired;

public class SchedulerServiceImpl implements SchedulerService {
    private final SchedulerMapper schedulerMapper;

    @Autowired
    public SchedulerServiceImpl(SchedulerMapper schedulerMapper){this.schedulerMapper = schedulerMapper;}

}
