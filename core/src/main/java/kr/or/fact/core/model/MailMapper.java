package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.ReservedMailVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;

@Mapper
public interface MailMapper {
    ArrayList<ReservedMailVO> getReservedMail();
}
