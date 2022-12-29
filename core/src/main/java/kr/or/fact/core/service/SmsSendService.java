package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.SmsSendVO;
import kr.or.fact.core.model.DTO.SmsSentVO;

import java.util.ArrayList;
import java.util.List;

public interface SmsSendService {
    public long insertSmsMessage(SmsSendVO smsSendVO);
    public List<SmsSentVO> selectSentmeesage1(int page_num, int amount);
    public ArrayList<SmsSendVO> selectReserveMessage();
}