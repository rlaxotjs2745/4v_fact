package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface EMailMapper {
    ArrayList<EMailItemVO> getReservedMail(@Param("tag")int tagValue);

    void insertPWEmail(EMailItemVO mailSendVO);

    EmailFilteredCountVO getEmailFilteredCount();
    EmailTemplateFilteredCountVO getEmailTemplateFilteredCount();
    List<EMailItemVO> getEmailList(ParamPageListFilteredVO param);
    EMailItemVO selectEmailItemByIdx(ParamPageListFilteredVO param);
    void insertEmailItem(EMailItemVO eMailItemVO);
    List<EmailTemplateVO> getEmailTemplateList(ParamPageListFilteredVO param);
    EmailTemplateVO getEmailTemplateByIdx(ParamPageListFilteredVO param);
    void insertEmailTemplate(EMailItemVO eMailItemVO);
    void updateEmailTemplate(EMailItemVO eMailItemVO);
}
