package kr.or.fact.core.service.impl;

import kr.or.fact.core.config.FACTConfig;
import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.model.FileServiceMapper;
import kr.or.fact.core.service.FileService;
import kr.or.fact.core.util.FileDownloadException;
import kr.or.fact.core.util.FileUploadException;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import java.util.List;

@Service("fileService")
public class FileServiceImpl implements FileService {

    private final Path fileLocation;
    private final FACTConfig factConfig;

    private final FileServiceMapper fileServiceMapper;

    @Autowired
    public FileServiceImpl(FACTConfig prop, FACTConfig factConfig, FileServiceMapper fileServiceMapper) {
        this.factConfig = factConfig;

        this.fileServiceMapper = fileServiceMapper;

        this.fileLocation = Paths.get(prop.getUploadDir())
                .toAbsolutePath().normalize();

        try {
            Files.createDirectories(this.fileLocation);
        }catch(Exception e) {
            throw new FileUploadException("파일을 업로드할 디렉토리를 생성하지 못했습니다.", e);
        }
    }

    @Override
    public String storeFileInfo(MultipartFile file) {
        String fileName = StringUtils.cleanPath(file.getOriginalFilename());
        long fileSize = file.getSize();
        String fileType = file.getContentType();
        FileInfoVO fileInfoVO = new FileInfoVO();
        fileInfoVO.setFile_name(fileName);
        fileInfoVO.setFile_size(fileSize);
        fileInfoVO.setMime_type(fileType);

        try {
            // 파일명에 부적합 문자가 있는지 확인한다.
            if(fileName.contains(".."))
                throw new FileUploadException("파일명에 부적합 문자가 포함되어 있습니다. " + fileName);

            Path targetLocation = this.fileLocation.resolve(fileName);

            Files.copy(file.getInputStream(), targetLocation, StandardCopyOption.REPLACE_EXISTING);

            return fileName;
        }catch(Exception e) {
            System.out.println(e);
            throw new FileUploadException("["+fileName+"] 파일 업로드에 실패하였습니다. 다시 시도하십시오.",e);

        }
    }

    @Override
    public Resource loadFileAsResource(String fileName) {
        try {
            Path filePath = this.fileLocation.resolve(fileName).normalize();
            Resource resource = new UrlResource(filePath.toUri());

            if(resource.exists()) {
                return resource;
            }else {
                throw new FileDownloadException(fileName + " 파일을 찾을 수 없습니다.");
            }
        }catch(MalformedURLException e) {
            throw new FileDownloadException(fileName + " 파일을 찾을 수 없습니다.", e);
        }
    }

    @Override
    public void updateFileInfo(FileInfoVO fileInfoVO){
        fileServiceMapper.updateFileInfo(fileInfoVO);
    }
    @Override
    public void deleteFileInfo(@Param("idx_file_info") long idx_file_info){
        fileServiceMapper.deleteFileInfo(idx_file_info);
    }

    @Override
    public FileInfoVO getFileInfo(@Param("idx_file_info") long idx_file_info){
        return fileServiceMapper.getFileInfo(idx_file_info);
    }
    @Override
    public List<FileInfoVO> getFileInfoListByNotice(long idxNotice){
        return fileServiceMapper.getFileInfoListByNotice(idxNotice);
    }

    @Override
    public List<FormFileInfoVO> getFormFileInfoList(ParamPageListFilteredVO paramPageListFilteredVO){
        return fileServiceMapper.getFormFileInfoList(paramPageListFilteredVO);
    }
    @Override
    public void insertFormFileInfo(FormFileInfoVO formFileInfoVO){

        fileServiceMapper.insertFormFileInfo(formFileInfoVO);
    }
    @Override
    public FormFileInfoVO getFormFileInfo(long idx_form_file_info){
        return fileServiceMapper.getFormFileInfo(idx_form_file_info);
    }

    @Override
    public int getFormFileTotalCount(){
        return fileServiceMapper.getFormFileTotalCount();
    }

    @Override
    public List<FormFileInfoVO> getFormFileList() {
        return fileServiceMapper.getFormFileList();
    }

    @Override
    public List<RuleFileInfoVO> getRuleFileInfoList(ParamPageListFilteredVO paramPageListFilteredVO){
        return fileServiceMapper.getRuleFileInfoList(paramPageListFilteredVO);
    }
    @Override
    public void insertRuleFileInfo(RuleFileInfoVO ruleFileInfoVO){
        fileServiceMapper.insertRuleFileInfo(ruleFileInfoVO);
    }
    @Override
    public RuleFileInfoVO getRuleFileInfo(long idx_rule_file_info){
        return fileServiceMapper.getRuleFileInfo(idx_rule_file_info);
    }
    @Override
    public int getRuleFileTotalCount(){
        return fileServiceMapper.getRuleFileTotalCount();
    }


    @Override
    public List<RuleFileInfoVO> getRuleFileInfoList1() {

        return fileServiceMapper.getRuleFileInfoList1();
    }

    @Override
    public long insertFile(MultipartFile file, long userIdx, long bsIdx, int type) throws IllegalStateException, IOException {
        File newFile = new File(factConfig.getUploadDir() + file.getOriginalFilename());
        newFile.createNewFile();
        FileOutputStream fos = new FileOutputStream(newFile);
        fos.write(file.getBytes());
        fos.close();


        FileInfoVO fileInfoVO = new FileInfoVO();

        fileInfoVO.setFile_name(file.getOriginalFilename());
        fileInfoVO.setFile_type(1);
        fileInfoVO.setFile_status(0);
        fileInfoVO.setMime_type(file.getContentType());
        fileInfoVO.setEncoding(1);
        fileInfoVO.setExtention(StringUtils.getFilenameExtension(file.getOriginalFilename()));
        fileInfoVO.setFile_secure_type(0);
        fileInfoVO.setFile_path("downloadFile/" + file.getOriginalFilename());
        fileInfoVO.setFile_size(file.getSize());
        fileInfoVO.setOwner(1);
        fileInfoVO.setIdx_user(userIdx);



        fileServiceMapper.insertFileInfo(fileInfoVO);

        UserDemoBsFileVO userDemoBsFileVO = new UserDemoBsFileVO();

        userDemoBsFileVO.setIdx_user_demo_bs(bsIdx);
        userDemoBsFileVO.setFile_type(type);
        userDemoBsFileVO.setFile_verion(1);
        userDemoBsFileVO.setIs_last(0);

        List<UserDemoBsFileResultVO> fileIdxArr = fileServiceMapper.getUserDemoBsFileJoin(bsIdx);
        boolean isExist = false;
        for(int i = 0; i < fileIdxArr.size(); i++){
            if(fileIdxArr.get(i).getFile_type() == type){
                isExist = true;
                userDemoBsFileVO.setFile_verion(fileIdxArr.get(i).getFile_verion() + 1);
                fileServiceMapper.updateUserDemoBsFileJoin(userDemoBsFileVO);
                fileServiceMapper.deleteFileInfo(fileIdxArr.get(i).getIdx_file_info());
            }
        }

        if(!isExist){
            fileServiceMapper.insertUserDemoBsFileJoin(userDemoBsFileVO);
        }

        return 1;
    }

    @Override
    public List<UserDemoBsFileResultVO> getUserDemoFileList(long idx){
        List<UserDemoBsFileResultVO> fileIdxArr = fileServiceMapper.getUserDemoBsFileJoin(idx);

        return fileIdxArr;
    }

    @Override
    public File convertMultipartToFile(MultipartFile file) throws IOException {
        File newFile = new File(factConfig.getUploadDir() + file.getOriginalFilename());
        newFile.createNewFile();
        FileOutputStream fos = new FileOutputStream(newFile);
        fos.write(file.getBytes());
        fos.close();

        return newFile;
    }
    @Override
    public File convertMultipartToFile2(MultipartFile file) throws IOException {
        File newFile = new File(factConfig.getUploadDir() +file.getOriginalFilename());
        FileOutputStream fos = new FileOutputStream(newFile);
        fos.write(file.getBytes());
        fos.close();



        return newFile;
    }
    @Override
    public int insertFileInfo(FileInfoVO fileInfoVO) {
//        fileInfoVO.setFile_path(factConfig.getUploadDir() +fileInfoVO.getFile_path());
        return fileServiceMapper.insertFileInfo(fileInfoVO);
    }

    @Override
    public int insertDemoBsFile(MultipartFile file, long adminIdx){
        FileInfoVO fileInfoVO = new FileInfoVO();

        fileInfoVO.setFile_name(file.getOriginalFilename());
        fileInfoVO.setFile_type(70);
        fileInfoVO.setFile_status(0);
        fileInfoVO.setMime_type(file.getContentType());
        fileInfoVO.setEncoding(1);
        fileInfoVO.setExtention(StringUtils.getFilenameExtension(file.getOriginalFilename()));
        fileInfoVO.setFile_secure_type(0);
        fileInfoVO.setFile_path(("downloadFile/" + file.getOriginalFilename()));
        fileInfoVO.setFile_size(file.getSize());
        fileInfoVO.setOwner(0);
        fileInfoVO.setIdx_user(adminIdx);
        try{
            return fileServiceMapper.insertFileInfo(fileInfoVO);
        } catch (Exception e){
            System.out.println(e);
            return 0;
        }
    }

    @Override
    public long insertPopupFile(MultipartFile file, long adminIdx){
        FileInfoVO fileInfoVO = new FileInfoVO();

        fileInfoVO.setFile_name(file.getOriginalFilename());
        fileInfoVO.setFile_type(6);
        fileInfoVO.setFile_status(0);
        fileInfoVO.setMime_type(file.getContentType());
        fileInfoVO.setEncoding(1);
        fileInfoVO.setExtention(StringUtils.getFilenameExtension(file.getOriginalFilename()));
        fileInfoVO.setFile_secure_type(0);
        fileInfoVO.setFile_path(("downloadFile/" + file.getOriginalFilename()));
        fileInfoVO.setFile_size(file.getSize());
        fileInfoVO.setOwner(0);
        fileInfoVO.setIdx_user(adminIdx);
        try{
            fileServiceMapper.insertFileInfo(fileInfoVO);
            return fileServiceMapper.getFileIdxToUser(fileInfoVO);
        } catch (Exception e){
            System.out.println(e);
            return 0;
        }
    }

    @Override
    public long insertFormFile(MultipartFile file, long idx_admin) {
        FileInfoVO fileInfoVO = new FileInfoVO();

        fileInfoVO.setFile_name(file.getOriginalFilename());
        fileInfoVO.setFile_type(4);
        fileInfoVO.setFile_status(0);
        fileInfoVO.setMime_type(file.getContentType());
        fileInfoVO.setEncoding(1);
        fileInfoVO.setExtention(StringUtils.getFilenameExtension(file.getOriginalFilename()));
        fileInfoVO.setFile_secure_type(0);
        fileInfoVO.setFile_path(("downloadFile/" + file.getOriginalFilename()));
        fileInfoVO.setFile_size(file.getSize());
        fileInfoVO.setOwner(0);
        fileInfoVO.setIdx_user(idx_admin);
        try{
            fileServiceMapper.insertFileInfo(fileInfoVO);
            return fileServiceMapper.getFileIdxToUser(fileInfoVO);
        } catch (Exception e){
            System.out.println(e);
            return 0;
        }
    }

    @Override
    public FileInfoVO selectBsFile(int idx_demo_bs) {
        return fileServiceMapper.selectBsFile(idx_demo_bs);
    }

    @Override
    public FileInfoVO selectBsAnnouncementFile(int index_bs_announcement) {
        return fileServiceMapper.selectBsAnnouncementFile(index_bs_announcement);
    }

    @Override
    public void deleteFormFile(FormFileInfoVO formFileInfoVO){
        fileServiceMapper.deleteFormFile(formFileInfoVO.getIdx_form_file_info());
        fileServiceMapper.deleteFileInfo(formFileInfoVO.getIdx_file_info());
    }

    @Override
    public void deleteRuleFile(RuleFileInfoVO ruleFileInfoVO){
        fileServiceMapper.deleteRuleFile(ruleFileInfoVO.getIdx_rule_file_info());
        fileServiceMapper.deleteFileInfo(ruleFileInfoVO.getIdx_file_info());
    }

    @Override
    @Transactional
    public void updateFormFile(FileRequestVO fileRequestVO){
        FormFileInfoVO formFileInfoVO = fileServiceMapper.getFormFile(fileRequestVO.getFileIndex());
        System.out.println("@@@@@@@@@@@@@@@@@@@@"+formFileInfoVO);
        MultipartFile file = fileRequestVO.getFiles1();
        try {
            convertMultipartToFile2(file);
        } catch (Exception e){
            System.out.println(e);
        }

        FileInfoVO fileInfoVO = new FileInfoVO();

        fileInfoVO.setFile_name(file.getOriginalFilename());
        fileInfoVO.setFile_type(4);
        fileInfoVO.setFile_status(0);
        fileInfoVO.setMime_type(file.getContentType());
        fileInfoVO.setEncoding(1);
        fileInfoVO.setExtention(StringUtils.getFilenameExtension(file.getOriginalFilename()));
        fileInfoVO.setFile_secure_type(0);
        fileInfoVO.setFile_path("downloadFile/" + file.getOriginalFilename());
        fileInfoVO.setFile_size(file.getSize());
        fileInfoVO.setOwner(1);
        fileInfoVO.setIdx_admin(fileRequestVO.getIdx_admin());
        fileInfoVO.setIdx_file_usage(formFileInfoVO.getIdx_form_file_info());

        fileServiceMapper.updateFileInfoForFormRuleFile(fileInfoVO);


        if(fileRequestVO.getSubject() != "" && fileRequestVO.getSubject() != null && formFileInfoVO.getSubject() != fileRequestVO.getSubject()){
            formFileInfoVO.setSubject(fileRequestVO.getSubject());
        }

        if(fileRequestVO.getUsage_detail() != "" && fileRequestVO.getUsage_detail() != null && formFileInfoVO.getUsage_detail() != fileRequestVO.getUsage_detail()){
            formFileInfoVO.setUsage_detail(fileRequestVO.getUsage_detail());
        }

        if(fileRequestVO.getIdx_admin() != 0 && formFileInfoVO.getIdx_admin() != fileRequestVO.getIdx_admin()){
            formFileInfoVO.setIdx_admin(fileRequestVO.getIdx_admin());
        }

        if(fileRequestVO.getFileVersion() != 0 && fileRequestVO.getFileVersion() != formFileInfoVO.getOrder_num()){
            formFileInfoVO.setOrder_num(fileRequestVO.getFileVersion());
        }


        fileServiceMapper.updateFormFile(formFileInfoVO);

    }

    @Override
    @Transactional
    public long insertFileOutIdx(FileRequestVO fileRequestVO, FileInfoVO fileInfoVO){
        MultipartFile file = fileRequestVO.getFiles1();

        try {
            convertMultipartToFile2(file);
        } catch (Exception e){
            System.out.println(e);
        }


        fileInfoVO.setFile_name(file.getOriginalFilename());
        fileInfoVO.setFile_status(0);
        fileInfoVO.setMime_type(file.getContentType());
        fileInfoVO.setEncoding(1);
        fileInfoVO.setExtention(StringUtils.getFilenameExtension(file.getOriginalFilename()));
        fileInfoVO.setFile_secure_type(0);
        fileInfoVO.setFile_path("downloadFile/" + file.getOriginalFilename());
        fileInfoVO.setFile_size(file.getSize());
        fileInfoVO.setOwner(1);
        fileInfoVO.setIdx_admin(fileRequestVO.getIdx_admin());

        fileServiceMapper.insertFileInfo(fileInfoVO);

        List<FileInfoVO> fileList = fileServiceMapper.getFileListAsName(file.getOriginalFilename());

        long fileIdx = fileList.get(0).getIdx_file_info();

        return fileIdx;
    }

    @Override
    public long insertRuleFile(MultipartFile file, long idx_admin) {
        FileInfoVO fileInfoVO = new FileInfoVO();

        fileInfoVO.setFile_name(file.getOriginalFilename());
        fileInfoVO.setFile_type(5);
        fileInfoVO.setFile_status(0);
        fileInfoVO.setMime_type(file.getContentType());
        fileInfoVO.setEncoding(1);
        fileInfoVO.setExtention(StringUtils.getFilenameExtension(file.getOriginalFilename()));
        fileInfoVO.setFile_secure_type(0);
        fileInfoVO.setFile_path(("downloadFile/" + file.getOriginalFilename()));
        fileInfoVO.setFile_size(file.getSize());
        fileInfoVO.setOwner(0);
        fileInfoVO.setIdx_user(idx_admin);
        try{
            fileServiceMapper.insertFileInfo(fileInfoVO);
            return fileServiceMapper.getFileIdxToUser(fileInfoVO);
        } catch (Exception e){
            System.out.println(e);
            return 0;
        }
    }


    @Override
    @Transactional
    public void updateRuleFile(FileRequestVO fileRequestVO){
        RuleFileInfoVO ruleFileInfoVO = fileServiceMapper.getRuleFile(fileRequestVO.getFileIndex());

        MultipartFile file = fileRequestVO.getFiles1();
        try {
            convertMultipartToFile2(file);
        } catch (Exception e){
            System.out.println(e);
        }

        FileInfoVO fileInfoVO = new FileInfoVO();

        fileInfoVO.setFile_name(file.getOriginalFilename());
        fileInfoVO.setFile_type(5);
        fileInfoVO.setFile_status(0);
        fileInfoVO.setMime_type(file.getContentType());
        fileInfoVO.setEncoding(1);
        fileInfoVO.setExtention(StringUtils.getFilenameExtension(file.getOriginalFilename()));
        fileInfoVO.setFile_secure_type(0);
        fileInfoVO.setFile_path("downloadFile/" + file.getOriginalFilename());
        fileInfoVO.setFile_size(file.getSize());
        fileInfoVO.setOwner(1);
        fileInfoVO.setIdx_admin(fileRequestVO.getIdx_admin());
        fileInfoVO.setIdx_file_usage(ruleFileInfoVO.getIdx_rule_file_info());

        fileServiceMapper.updateFileInfoForFormRuleFile(fileInfoVO);

        if(fileRequestVO.getSubject() != "" && fileRequestVO.getSubject() != null && ruleFileInfoVO.getSubject() != fileRequestVO.getSubject()){
            ruleFileInfoVO.setSubject(fileRequestVO.getSubject());
        }

        if(fileRequestVO.getUsage_detail() != "" && fileRequestVO.getUsage_detail() != null && ruleFileInfoVO.getUsage_detail() != fileRequestVO.getUsage_detail()){
            ruleFileInfoVO.setUsage_detail(fileRequestVO.getUsage_detail());
        }

        if(fileRequestVO.getIdx_admin() != 0 && ruleFileInfoVO.getIdx_admin() != fileRequestVO.getIdx_admin()){
            ruleFileInfoVO.setIdx_admin(fileRequestVO.getIdx_admin());
        }

        if(fileRequestVO.getFileVersion() != 0 && fileRequestVO.getFileVersion() != ruleFileInfoVO.getOrder_num()){
            ruleFileInfoVO.setOrder_num(fileRequestVO.getFileVersion());
        }

        fileServiceMapper.updateRuleFile(ruleFileInfoVO);

    }

    @Override
    public String getFileUrlByUsageIdxType(long usageIdx, int type){
        FileInfoVO fileInfoVO = fileServiceMapper.getFileUrlByUsageIdxType(usageIdx, type);
        System.out.println(fileInfoVO);
        return fileInfoVO.getFile_path();
    }
}
