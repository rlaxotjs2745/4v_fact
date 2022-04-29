package kr.or.fact.core.service.impl;


import kr.or.fact.core.model.DTO.SmsSendVO;
import kr.or.fact.core.model.DTO.SmsSentVO;
import kr.or.fact.core.model.SmsSendMapper;
import kr.or.fact.core.service.SmsSendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service("smsService")
public class SmsSendServiceImpl implements SmsSendService {
    private final SmsSendMapper smsSendMapper;

    @Autowired
    public SmsSendServiceImpl(SmsSendMapper smsSendMapper) {
        this.smsSendMapper = smsSendMapper;
    }

    @Override
    public long insertSmsMessage(SmsSendVO smsSendVO) {
        long msg_id = 1;
        try{
            System.out.println("여기까지와요?");
            smsSendMapper.insertSmsMessage(smsSendVO);
        }catch(Exception e){
            msg_id =0;
        }
        return msg_id;
    }
    @Override
    public ArrayList<SmsSentVO> selectSentmeesage1() {
        ArrayList<SmsSentVO> result = smsSendMapper.selectSentmeesage1();


        //ArrayList<SmsSentVO> result = smsSendMapper.selectSentmeesage1();
        System.out.println(result);
        return result;
    }

    @Override
    public ArrayList<SmsSendVO> selectReserveMessage() {
        ArrayList<SmsSendVO> result = smsSendMapper.selectReserveMessage();
        return result;
    }
}