package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Mapper
public interface FileServiceMapper {
    String storeFileInfo(MultipartFile file);
    //public Resource loadFileAsResource(String fileName);

    void updateFileInfo(FileInfoVO fileInfoVO);
    void deleteFileInfo(@Param("idx_file_info") long idx_file_info);
    FileInfoVO getFileInfo(@Param("idx_file_info") long idx_file_info);

    List<FormFileInfoVO> getFormFileInfoList(ParamPageListFilteredVO paramPageListFilteredVO);
    void insertFormFileInfo(FormFileInfoVO formFileInfoVO);
    FormFileInfoVO getFormFileInfo(@Param("idx_form_file_info") long idx_form_file_info);
    int getFormFileTotalCount();
    List<FormFileInfoVO> getFormFileList();

    List<RuleFileInfoVO> getRuleFileInfoList(ParamPageListFilteredVO paramPageListFilteredVO);
    void insertRuleFileInfo(RuleFileInfoVO ruleFileInfoVO);
    RuleFileInfoVO getRuleFileInfo(@Param("idx_rule_file_info") long idx_rule_file_info);

    int getRuleFileTotalCount();
    List<RuleFileInfoVO>getRuleFileInfoList1();

    long insertFileInfo(FileInfoVO fileInfoVO);

    long insertUserDemoBsFileJoin(UserDemoBsFileVO userDemoBsFileVO);

    long updateUserDemoBsFileJoin(UserDemoBsFileVO userDemoBsFileVO);

    List<UserDemoBsFileResultVO> getUserDemoBsFileJoin(@Param("idx_user_demo_bs") long idx);
}
