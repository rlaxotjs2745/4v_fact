package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.ParamSchedulerVO;
import kr.or.fact.core.model.DTO.ScheduleItemVO;
import kr.or.fact.core.model.SchedulerMapper;
import kr.or.fact.core.service.SchedulerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service("schedulerService")
public class SchedulerServiceImpl implements SchedulerService {
    private final SchedulerMapper schedulerMapper;

    @Autowired
    public SchedulerServiceImpl(SchedulerMapper schedulerMapper){this.schedulerMapper = schedulerMapper;}

    @Override
    public List<ScheduleItemVO> getYearlyScheduleList(ParamSchedulerVO paramSchedulerVO){
        return schedulerMapper.getYearlyScheduleList(paramSchedulerVO);
    }
    @Override
    public ScheduleItemVO getScheduleItemByIdx(Date today){

        return schedulerMapper.getScheduleItemByIdx(today);
    }
    @Override
    @Transactional
    public void insertScheduleData(ScheduleItemVO scheduleItemVO){

        schedulerMapper.insertScheduleData( scheduleItemVO);
    }
    @Override
    @Transactional
    public void updateScheduleData(ScheduleItemVO scheduleItemVO){
        schedulerMapper.updateScheduleData( scheduleItemVO);
    }
    @Override
    @Transactional
    public void deleteScheduleData(ScheduleItemVO scheduleItemVO){
        schedulerMapper.deleteScheduleData( scheduleItemVO);
    }

}
