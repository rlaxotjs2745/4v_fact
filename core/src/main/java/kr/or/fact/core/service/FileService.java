package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.FileInfoVO;
import kr.or.fact.core.model.DTO.FormFileInfoVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.RuleFileInfoVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface FileService {
    String storeFileInfo(MultipartFile file);
    Resource loadFileAsResource(String fileName);

    void updateFileInfo(FileInfoVO fileInfoVO);
    void deleteFileInfo(long idx_file_info);
    FileInfoVO getFileInfo(long idx_file_info);

    List<FormFileInfoVO> getFormFileInfoList(ParamPageListFilteredVO paramPageListFilteredVO);
    void insertFormFileInfo(FormFileInfoVO formFileInfoVO);
    FormFileInfoVO getFormFileInfo(long idx_form_file_info);
    int getFormFileTotalCount();
    List<FormFileInfoVO> getFormFileList();

    List<RuleFileInfoVO> getRuleFileInfoList(ParamPageListFilteredVO paramPageListFilteredVO);
    void insertRuleFileInfo(RuleFileInfoVO ruleFileInfoVO);
    RuleFileInfoVO getRuleFileInfo(long idx_form_file_info);
    int getRuleFileTotalCount();
    List<RuleFileInfoVO>getRuleFileInfoList1();

}
