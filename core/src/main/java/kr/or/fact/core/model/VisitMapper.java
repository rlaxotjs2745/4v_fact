package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.VisitDataVO;
import kr.or.fact.core.model.DTO.VisitDateVO;
import kr.or.fact.core.model.DTO.VisitReqVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

@Mapper
public interface VisitMapper {
    int getUserVisitReqCount(@Param("idx_user") long idx_user);
    VisitDataVO getVisitData(@Param("cur_date") Date cur_date);

    List<VisitDataVO> getMonthlyVisitData(@Param("cur_date") Date cur_date);
    List<VisitDataVO> getDurationVisitData(VisitDateVO visitDateVO);

    List<VisitReqVO> getMonthlyVisitReq();
    List<VisitReqVO> getUserVisitReq(@Param("idx_user") long idx_user,@Param("page_num") int page_num, @Param("amount") int amount,@Param("order_field") String order_field);

    long saveVisitData(VisitDataVO visitDataVO);
    void updateVisitData(VisitDataVO visitDataVO);
    void deleteVisitData(@Param("idx_visit_data") long idx_visit_data);

    void saveVisitReq(VisitReqVO visitReqVO);

    VisitReqVO getVisitReqByIdx(@Param("idx_visit_req") long idx_visit_req);
    void deleteVisitReq(@Param("idx_visit_req") long idx_visit_req);




}
