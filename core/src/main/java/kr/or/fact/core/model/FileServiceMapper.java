package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.FileInfoVO;
import kr.or.fact.core.model.DTO.FormFileInfoVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.RuleFileInfoVO;
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

    List<RuleFileInfoVO> getRuleFileInfoList(ParamPageListFilteredVO paramPageListFilteredVO);
    void insertRuleFileInfo(RuleFileInfoVO ruleFileInfoVO);
    RuleFileInfoVO getRuleFileInfo(@Param("idx_rule_file_info") long idx_rule_file_info);

    int getRuleFileTotalCount();

}
