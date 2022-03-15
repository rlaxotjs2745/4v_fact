package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.VisitDataVO;
import kr.or.fact.core.model.DTO.VisitReqVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface VisitMapper {
    int getUserVisitReqCount(@Param("idx_user") long idx_user);
    List<VisitDataVO> getVisitData();
    List<VisitReqVO> getVisitReq();
    List<VisitReqVO> getUserVisitReq(@Param("idx_user") long idx_user,@Param("page_num") int page_num, @Param("amount") int amount,@Param("order_field") String order_field);

}
