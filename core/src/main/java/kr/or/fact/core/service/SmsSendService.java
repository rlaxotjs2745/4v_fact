package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.SmsSendVO;
import kr.or.fact.core.model.DTO.SmsItemVO;
import kr.or.fact.core.model.DTO.SmsTemplateVO;

import java.util.ArrayList;
import java.util.List;

public interface SmsSendService {

    int getSmsCount();

    List<SmsItemVO> getReservedSMSList(ParamPageListFilteredVO param);

    List<SmsItemVO> getSentSMSList(ParamPageListFilteredVO param);

    ArrayList<SmsSendVO> selectReserveMessage();


    long insertSmsMessage(SmsSendVO smsSendVO);

    List<SmsTemplateVO> getSmsTemplateList(ParamPageListFilteredVO param);
    SmsTemplateVO getSmsTemplateByIdx(ParamPageListFilteredVO param);
    void insertSmsTemplate(SmsTemplateVO smsTemplateVO);
    void updateSmsTemplate(SmsTemplateVO smsTemplateVO);
}