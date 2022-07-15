package kr.or.fact.admin.controller;

import kr.or.fact.core.config.FACTConfig;
import kr.or.fact.core.model.DTO.*;
import kr.or.fact.core.service.FileService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@RestController
public class FileController {
    private static final Logger logger = LoggerFactory.getLogger(FileController.class);
    @Autowired
    private FileService fileService;

    @Autowired
    private FACTConfig factConfig;


    @PostMapping("/uploadFile")
    public FileUploadResponseVO uploadFile(@RequestParam("file") MultipartFile file) {
        String fileName = fileService.storeFileInfo(file);

        String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()
                .path("/downloadFile/")
                .path(fileName)
                .toUriString();

        return new FileUploadResponseVO(fileName, fileDownloadUri, file.getContentType(), file.getSize());
    }

    @PostMapping("/uploadMultipleFiles")
    public List<FileUploadResponseVO> uploadMultipleFiles(@RequestParam("files") MultipartFile[] files){
        return Arrays.asList(files)
                .stream()
                .map(file -> uploadFile(file))
                .collect(Collectors.toList());
    }

    @GetMapping("/downloadFile/{fileName:.+}")
    public ResponseEntity<Resource> downloadFile(@PathVariable String fileName, HttpServletRequest request){

        // Load file as Resource
        Resource resource = fileService.loadFileAsResource(fileName);

        //String originalFileName = URLDecoder.decode(fileName,"UTF-8");
        // Try to determine file's content type
        String contentType = null;
        try {
            contentType = request.getServletContext().getMimeType(resource.getFile().getAbsolutePath());
        } catch (IOException ex) {
            logger.info("Could not determine file type.");
        }

        // Fallback to the default content type if type could not be determined
        if(contentType == null) {
            contentType = "application/octet-stream; charset=UTF-8";
        }
 /*       String fileNm = "한글 파일명";
        String browser = getBrowser(req);
        res.setContentType("application/octet-stream; charset=UTF-8");
        res.setHeader("Content-Description", "file download");
        res.setHeader("Content-Disposition", "attachment; filename=\"".concat(getFileNm(browser, resource.getFilename())).concat("\""));
        res.setHeader("Content-Transfer-Encoding", "binary");*/
        String browser = getBrowser(request);
        return ResponseEntity.ok()
                .contentType(MediaType.parseMediaType(contentType))
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"".concat(getFileNm(browser, resource.getFilename())).concat("\""))
                .header(HttpHeaders.TRANSFER_ENCODING, "binary")
                .body(resource);
    }

    public String getBrowser(HttpServletRequest req) {
        String userAgent = req.getHeader("User-Agent");
        if(userAgent.indexOf("MSIE") > -1 || userAgent.indexOf("Trident") > -1 /*IE11*/|| userAgent.indexOf("Edge") > -1) {
            return "MSIE";
        } else if(userAgent.indexOf("Chrome") > -1) {
            return "Chrome";
        } else if(userAgent.indexOf("Opera") > -1) {
            return "Opera";
        } else if(userAgent.indexOf("Safari") > -1) {
            return "Safari";
        } else if(userAgent.indexOf("Firefox") > -1){
            return "Firefox";
        } else{
            return null;
        }
    }


    public String getFileNm(String browser, String fileNm){
        String reFileNm = null;
        try {
            if (browser.equals("MSIE") || browser.equals("Trident") || browser.equals("Edge")) {
                reFileNm = URLEncoder.encode(fileNm, "UTF-8").replaceAll("\\+", "%20");
            } else {
                if(browser.equals("Chrome")){
                    StringBuffer sb = new StringBuffer();
                    for (int i = 0; i < fileNm.length(); i++) {
                        char c = fileNm.charAt(i);
                        if (c > '~') {
                            sb.append(URLEncoder.encode(Character.toString(c), "UTF-8"));
                        } else {
                            sb.append(c);
                        }
                    }
                    reFileNm = sb.toString();
                } else{
                    reFileNm = new String(fileNm.getBytes("UTF-8"), "ISO-8859-1");
                }
                if(browser.equals("Safari") || browser.equals("Firefox")) reFileNm = URLDecoder.decode(reFileNm);
            }
        } catch(Exception e){} return reFileNm;
    }

@RequestMapping(value = "/upload_form_file",method = RequestMethod.POST)
    public FileUploadResponseVO uploadFormFile(@ModelAttribute FileRequestVO fileRequestVO, HttpSession session, HttpServletRequest request) throws Exception, IOException {
    String subject = fileRequestVO.getSubject();
    String usage_detail =fileRequestVO.getUsage_detail();
    long idx_admin = fileRequestVO.getIdx_admin();
    int fileLength = Integer.parseInt(fileRequestVO.getFileLength());
    File[] files = new File[5];

    if(fileLength > 0){
        files[0] = fileService.convertMultipartToFile(fileRequestVO.getFiles1());
        if(fileLength >= 2){
            files[1] = fileService.convertMultipartToFile(fileRequestVO.getFiles2());
            if(fileLength >= 3){
                files[2] = fileService.convertMultipartToFile(fileRequestVO.getFiles3());
                if(fileLength >= 4){
                    files[3] = fileService.convertMultipartToFile(fileRequestVO.getFiles4());
                    if(fileLength == 5){
                        files[4] = fileService.convertMultipartToFile(fileRequestVO.getFiles5());

                    }
                }
            }
        }
    }
    MultipartFile file = fileRequestVO.getFiles1();
    String fileName = fileService.storeFileInfo(fileRequestVO.getFiles1());
    System.out.println("여기");
    String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()
            .path("/downloadFile/")
            .path(fileName)
            .toUriString();
    FileUploadResponseVO filepespons= new FileUploadResponseVO(fileName, fileDownloadUri, file.getContentType(), file.getSize());
    FileInfoVO fileInfoVO =new FileInfoVO();
    fileInfoVO.setFile_name(filepespons.getFileName());
    fileInfoVO.setFile_size(filepespons.getSize());
    fileInfoVO.setMime_type(filepespons.getFileType());
    fileInfoVO.setFile_path(filepespons.getFileDownloadUri());

    fileService.storeFileInfo(file);
    fileService.insertFileInfo(fileInfoVO);

    FormFileInfoVO formFileInfoVO =new FormFileInfoVO();
    formFileInfoVO.setSubject(subject);
    formFileInfoVO.setUsage_detail(usage_detail);
    formFileInfoVO.setIdx_admin(idx_admin);
    formFileInfoVO.setIdx_form_file_info(formFileInfoVO.getIdx_form_file_info());
    fileService.insertFormFileInfo(formFileInfoVO);
    System.out.println(formFileInfoVO);

    return new FileUploadResponseVO(fileName, fileDownloadUri, file.getContentType(), file.getSize());
    }


    @RequestMapping(value = "/upload_rule_file",method = RequestMethod.POST)
    public FileUploadResponseVO uploadRuleFile(@ModelAttribute FileRequestVO fileRequestVO, HttpSession session, HttpServletRequest request) throws Exception, IOException {
        String subject = fileRequestVO.getSubject();
        String usage_detail =fileRequestVO.getUsage_detail();
        long idx_admin = fileRequestVO.getIdx_admin();
        int fileLength = Integer.parseInt(fileRequestVO.getFileLength());
        File[] files = new File[5];

        if(fileLength > 0){
            files[0] = fileService.convertMultipartToFile(fileRequestVO.getFiles1());
            if(fileLength >= 2){
                files[1] = fileService.convertMultipartToFile(fileRequestVO.getFiles2());
                if(fileLength >= 3){
                    files[2] = fileService.convertMultipartToFile(fileRequestVO.getFiles3());
                    if(fileLength >= 4){
                        files[3] = fileService.convertMultipartToFile(fileRequestVO.getFiles4());
                        if(fileLength == 5){
                            files[4] = fileService.convertMultipartToFile(fileRequestVO.getFiles5());

                        }
                    }
                }
            }
        }
        MultipartFile file = fileRequestVO.getFiles1();
        String fileName = fileService.storeFileInfo(fileRequestVO.getFiles1());
        System.out.println("여기");
        String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()
                .path("/downloadFile/")
                .path(fileName)
                .toUriString();
        FileUploadResponseVO filepespons= new FileUploadResponseVO(fileName, fileDownloadUri, file.getContentType(), file.getSize());
        FileInfoVO fileInfoVO =new FileInfoVO();
        fileInfoVO.setFile_name(filepespons.getFileName());
        fileInfoVO.setFile_size(filepespons.getSize());
        fileInfoVO.setMime_type(filepespons.getFileType());
        fileInfoVO.setFile_path(filepespons.getFileDownloadUri());

        fileService.storeFileInfo(file);
        fileService.insertFileInfo(fileInfoVO);

        RuleFileInfoVO ruleFileInfoVO =new RuleFileInfoVO();
        ruleFileInfoVO.setSubject(subject);
        ruleFileInfoVO.setUsage_detail(usage_detail);
        ruleFileInfoVO.setIdx_admin(idx_admin);
        fileService.insertRuleFileInfo(ruleFileInfoVO);
        return new FileUploadResponseVO(fileName, fileDownloadUri, file.getContentType(), file.getSize());

    }
}
