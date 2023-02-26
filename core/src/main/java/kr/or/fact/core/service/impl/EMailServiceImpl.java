package kr.or.fact.core.service.impl;

import kr.or.fact.core.config.FACTConfig;
import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.model.EMailMapper;
import kr.or.fact.core.service.EMailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Service("emailService")
public class EMailServiceImpl implements EMailService {

    private final EMailMapper mailMapper;

    private final FACTConfig factConfig;
    @Autowired
    public EMailServiceImpl(EMailMapper mailMapper, FACTConfig factConfig){
        this.mailMapper = mailMapper;
        this.factConfig = factConfig;
    }


    @Override
    public File convertMultipartToFile(MultipartFile file) throws IllegalStateException, IOException {
        File newFile = new File(factConfig.getUploadDir() + file.getOriginalFilename());
        newFile.createNewFile();
        FileOutputStream fos = new FileOutputStream(newFile);
        fos.write(file.getBytes());
        fos.close();
        return newFile;
    }

    @Override
    public ArrayList<EMailItemVO> getReservedMail(String tagValue) {
        int tag = Integer.parseInt(tagValue);
        return mailMapper.getReservedMail(tag);
    }

    @Override
    public void insertPasswdEmail(EMailItemVO mailSendVO) {
        mailMapper.insertPWEmail(mailSendVO);
    }


    @Override
    public EmailFilteredCountVO getEmailFilteredCount(){

        return mailMapper.getEmailFilteredCount();
    }
    @Override
    public int getEmailFilteredTotalCount(ParamPageListFilteredVO param){

        EmailFilteredCountVO emailFilteredCount = mailMapper.getEmailFilteredCount();
        int total_count = 0;
        if(param.getFilter1() == 9999){
            total_count = emailFilteredCount.getTot_count();
        }
        else if(param.getFilter1() == 0){
            total_count = emailFilteredCount.getHold_count();
        }
        else if(param.getFilter1() == 1){
            total_count = emailFilteredCount.getRserv_count();
        }
        else if(param.getFilter1() == 2){
            total_count = emailFilteredCount.getSent_count();
        }
        return total_count;
    }
    @Override
    public EmailTemplateFilteredCountVO  getEmailTemplateFilteredCount(){
        return mailMapper.getEmailTemplateFilteredCount();
    }
    @Override
    public int  getEmailTemplateFilteredTotalCount(ParamPageListFilteredVO param){

        EmailTemplateFilteredCountVO emailFilteredCount = mailMapper.getEmailTemplateFilteredCount();
        int total_count = 0;
        if(param.getFilter1() == 9999){
            total_count = emailFilteredCount.getTot_count();
        }

        return total_count;
    }

    @Override
    public List<EMailItemVO> getEmailList(ParamPageListFilteredVO param){
        return mailMapper.getEmailList(param);

    }
    @Override
    public EMailItemVO selectEmailItemByIdx(ParamPageListFilteredVO param){

        return mailMapper.selectEmailItemByIdx(param);
    }
    @Override
    public void insertEmailItem(EMailItemVO eMailItemVO){
        mailMapper.insertEmailItem(eMailItemVO);

    }
    @Override
    public List<EmailTemplateVO> getEmailTemplateList(ParamPageListFilteredVO param){

        return mailMapper.getEmailTemplateList(param);
    }
    @Override
    public EmailTemplateVO getEmailTemplateByIdx(ParamPageListFilteredVO param){

        return mailMapper.getEmailTemplateByIdx(param);
    }
    @Override
    public void insertEmailTemplate(EMailItemVO eMailItemVO){

        mailMapper.insertEmailTemplate(eMailItemVO);
    }
    @Override
    public void updateEmailTemplate(EMailItemVO eMailItemVO){
        mailMapper.updateEmailTemplate(eMailItemVO);

    }
}
