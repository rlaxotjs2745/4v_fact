package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.SmsSendVO;
import kr.or.fact.core.model.DTO.SmsSentVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface SmsSendMapper {
    public long insertSmsMessage(SmsSendVO smsSendVO);
    public List<SmsSentVO> selectSentmeesage1(int page_num, int amount);
    public ArrayList<SmsSendVO> selectReserveMessage();
}