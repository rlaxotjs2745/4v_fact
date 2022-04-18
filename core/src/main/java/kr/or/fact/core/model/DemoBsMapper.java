package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.DemoBusinessVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DemoBsMapper {
    List<DemoBusinessVO> getAvailibleDemoBs();
    public DemoBusinessVO getDemoBsByIdx(long idx);
}
