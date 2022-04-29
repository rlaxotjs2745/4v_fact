package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.SmsSendVO;
import kr.or.fact.core.model.DTO.SmsSentVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;

@Mapper
public interface SmsSendMapper {
    public long insertSmsMessage(SmsSendVO smsSendVO);
    public ArrayList<SmsSentVO> selectSentmeesage1(SmsSentVO smsSentVO);
    public ArrayList<SmsSendVO> selectReserveMessage(SmsSendVO smsSendVO);
}