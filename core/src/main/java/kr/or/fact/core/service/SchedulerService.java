package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.NoticeVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.ParamSchedulerVO;
import kr.or.fact.core.model.DTO.ScheduleItemVO;

import java.util.Date;
import java.util.List;

public interface SchedulerService {

    List<ScheduleItemVO> getYearlyScheduleList(ParamSchedulerVO paramSchedulerVO);
    ScheduleItemVO getScheduleItemByIdx(Date today);
    void insertScheduleData(ScheduleItemVO scheduleItemVO);
    void updateScheduleData(ScheduleItemVO scheduleItemVO);
    void deleteScheduleData(ScheduleItemVO scheduleItemVO);

}
