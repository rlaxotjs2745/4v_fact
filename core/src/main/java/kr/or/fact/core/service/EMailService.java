package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public interface EMailService {

//    public boolean sendMail(String sender,String title, String receiver, String content, File[] files) throws Exception;

    public File convertMultipartToFile(MultipartFile file) throws IOException;

    public ArrayList<EMailItemVO> getReservedMail(String tagValue);

    public void insertPasswdEmail(EMailItemVO mailSendVO);

    EmailFilteredCountVO getEmailFilteredCount();
    int getEmailFilteredTotalCount(ParamPageListFilteredVO param);
    EmailTemplateFilteredCountVO getEmailTemplateFilteredCount();
    int getEmailTemplateFilteredTotalCount(ParamPageListFilteredVO param);

    List<EMailItemVO> getEmailList(ParamPageListFilteredVO param);
    EMailItemVO selectEmailItemByIdx(ParamPageListFilteredVO param);
    void insertEmailItem(EMailItemVO eMailItemVO);
    List<EmailTemplateVO> getEmailTemplateList(ParamPageListFilteredVO param);
    EmailTemplateVO getEmailTemplateByIdx(ParamPageListFilteredVO param);
    void insertEmailTemplate(EMailItemVO eMailItemVO);
    void updateEmailTemplate(EMailItemVO eMailItemVO);








}
