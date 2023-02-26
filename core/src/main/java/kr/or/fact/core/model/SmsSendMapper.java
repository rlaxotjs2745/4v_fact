package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.SmsSendVO;
import kr.or.fact.core.model.DTO.SmsItemVO;
import kr.or.fact.core.model.DTO.SmsTemplateVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface SmsSendMapper {
    int getSmsCount();
    long insertSmsMessage(SmsSendVO smsSendVO);
    List<SmsItemVO> getReservedSMSList(ParamPageListFilteredVO param);
    List<SmsItemVO> getSentSMSList(ParamPageListFilteredVO param);


    ArrayList<SmsSendVO> selectReserveMessage();

    List<SmsTemplateVO> getSmsTemplateList(ParamPageListFilteredVO param);
    SmsTemplateVO getSmsTemplateByIdx(ParamPageListFilteredVO param);
    void insertSmsTemplate(SmsTemplateVO smsTemplateVO);
    void updateSmsTemplate(SmsTemplateVO smsTemplateVO);

}