package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public interface FileService {
    String storeFileInfo(MultipartFile file);
    Resource loadFileAsResource(String fileName);

    void updateFileInfo(FileInfoVO fileInfoVO);
    void deleteFileInfo(long idx_file_info);
    FileInfoVO getFileInfo(long idx_file_info);

    List<FileInfoVO> getFileInfoListByNotice(long idxNotice);

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
    long insertFile(MultipartFile file, long userIdx, long bsIdx, int type) throws IllegalStateException, IOException;
    List<UserDemoBsFileResultVO> getUserDemoFileList(long idx);

    File convertMultipartToFile(MultipartFile file) throws IOException;
    File convertMultipartToFile2(MultipartFile file) throws IOException;

    int insertFileInfo(FileInfoVO fileInfoVO);

    int insertDemoBsFile(MultipartFile file, long adminIdx);

    FileInfoVO selectBsFile(int idx_demo_bs);

    FileInfoVO selectBsAnnouncementFile(int index_bs_announcement);

    void deleteFormFile(FormFileInfoVO formFileInfoVO);

    void deleteRuleFile(RuleFileInfoVO ruleFileInfoVO);

    void updateFormFile(FileRequestVO fileRequestVO);

    void updateRuleFile(FileRequestVO fileRequestVO);

    int insertPopupFile(MultipartFile file, long adminIdx);
}
