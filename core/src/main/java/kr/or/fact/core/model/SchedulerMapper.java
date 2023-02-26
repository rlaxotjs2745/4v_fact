package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.ParamSchedulerVO;
import kr.or.fact.core.model.DTO.ScheduleItemVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.Date;
import java.util.List;

@Mapper
public interface SchedulerMapper {
    List<ScheduleItemVO> getYearlyScheduleList(ParamSchedulerVO paramSchedulerVO);
    ScheduleItemVO getScheduleItemByIdx(Date today);
    void insertScheduleData(ScheduleItemVO scheduleItemVO);
    void updateScheduleData(ScheduleItemVO scheduleItemVO);
    void deleteScheduleData(ScheduleItemVO scheduleItemVO);
}
