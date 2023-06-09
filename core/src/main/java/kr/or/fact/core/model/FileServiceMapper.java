package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Mapper
public interface FileServiceMapper {
    String storeFileInfo(MultipartFile file);
    //public Resource loadFileAsResource(String fileName);

    void updateFileInfo(FileInfoVO fileInfoVO);
    void updateFileInfoForFormRuleFile(FileInfoVO fileInfoVO);
    void deleteFileInfo(@Param("idx_file_info") long idx_file_info);
    FileInfoVO getFileInfo(@Param("idx_file_info") long idx_file_info);
    List<FileInfoVO> getFileInfoListByNotice(@Param("idx_notice") long idx_notice);

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


    long insertUserDemoBsFileJoin(UserDemoBsFileVO userDemoBsFileVO);

    long updateUserDemoBsFileJoin(UserDemoBsFileVO userDemoBsFileVO);

    List<UserDemoBsFileResultVO> getUserDemoBsFileJoin(@Param("idx_user_demo_bs") long idx);

    int insertFileInfo(FileInfoVO fileInfoVO) throws Exception;

    FileInfoVO selectBsFile(@Param("idx_demo_bs") int idx_demo_bs);

    FileInfoVO selectBsAnnouncementFile(@Param("index_bs_announcement") int index_bs_announcement);

    void deleteFormFile(long idx_form_file);

    void deleteRuleFile(long idx_rule_file);

    FormFileInfoVO getFormFile(long idx_form_file_info);

    RuleFileInfoVO getRuleFile(long idx_rule_file_info);

    long getFileIdx(String file_name);

    List<FileInfoVO> getFileListAsName(String file_name);

    void updateFormFile(FormFileInfoVO formFileInfoVO);

    void updateRuleFile(RuleFileInfoVO ruleFileInfoVO);

    long getFileIdxToUser(FileInfoVO fileInfoVO);

    FileInfoVO getFileUrlByUsageIdxType(long idx_file_usage, int file_type);
}
