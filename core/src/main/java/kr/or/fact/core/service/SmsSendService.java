package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.SmsSendVO;
import kr.or.fact.core.model.DTO.SmsSentVO;

import java.util.ArrayList;

public interface SmsSendService {
    public long insertSmsMessage(SmsSendVO smsSendVO);
    public ArrayList<SmsSentVO> selectSentmeesage1();
    public ArrayList<SmsSendVO> selectReserveMessage();
}