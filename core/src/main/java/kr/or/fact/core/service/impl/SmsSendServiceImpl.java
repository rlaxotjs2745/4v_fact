package kr.or.fact.core.service.impl;


import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.SmsSendVO;
import kr.or.fact.core.model.DTO.SmsItemVO;
import kr.or.fact.core.model.DTO.SmsTemplateVO;
import kr.or.fact.core.model.SmsSendMapper;
import kr.or.fact.core.service.SmsSendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("smsService")
public class SmsSendServiceImpl implements SmsSendService {
    private final SmsSendMapper smsSendMapper;

    @Autowired
    public SmsSendServiceImpl(SmsSendMapper smsSendMapper) {
        this.smsSendMapper = smsSendMapper;
    }
    @Override
    public int getSmsCount(){

        return smsSendMapper.getSmsCount();
    }

    @Override
    public long insertSmsMessage(SmsSendVO smsSendVO) {
        long msg_id = 1;
        try{
            smsSendMapper.insertSmsMessage(smsSendVO);
        }catch(Exception e){
            System.out.println(e);
            msg_id =0;
        }
        return msg_id;
    }
    @Override
    public List<SmsItemVO> getReservedSMSList(ParamPageListFilteredVO param) {
        List<SmsItemVO> result = smsSendMapper.getReservedSMSList(param);

        //ArrayList<SmsSentVO> result = smsSendMapper.getReservedSMSList();
        return result;
    }

    @Override
    public List<SmsItemVO> getSentSMSList(ParamPageListFilteredVO param){

        return smsSendMapper.getSentSMSList(param);
    }


    @Override
    public ArrayList<SmsSendVO> selectReserveMessage() {
        ArrayList<SmsSendVO> result = smsSendMapper.selectReserveMessage();
        return result;
    }

    @Override
    public List<SmsTemplateVO> getSmsTemplateList(ParamPageListFilteredVO param){

        return smsSendMapper.getSmsTemplateList(param);
    }
    @Override
    public SmsTemplateVO getSmsTemplateByIdx(ParamPageListFilteredVO param){

        return smsSendMapper.getSmsTemplateByIdx(param);
    }
    @Override
    public void insertSmsTemplate(SmsTemplateVO smsTemplateVO){

        smsSendMapper.insertSmsTemplate(smsTemplateVO);
    }
    @Override
    public void updateSmsTemplate(SmsTemplateVO smsTemplateVO){

        smsSendMapper.updateSmsTemplate(smsTemplateVO);
    }
}