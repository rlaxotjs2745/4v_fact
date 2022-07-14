package kr.or.fact.web_gimje.controller;

import kr.or.fact.core.model.DTO.FileUploadResponseVO;
import kr.or.fact.core.model.DTO.RecieveFilesVO;
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
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;

@RestController
public class FileController {
    private static final Logger logger = LoggerFactory.getLogger(FileController.class);
    @Autowired
    private FileService fileService;

    public FileUploadResponseVO storeFileInfo(@RequestParam("file") MultipartFile file) {
        String fileName = fileService.storeFileInfo(file);

        String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()
                .path("/fileStore/")
                .path(fileName)
                .toUriString();

        return new FileUploadResponseVO(fileName, fileDownloadUri, file.getContentType(), file.getSize());
    }


    @PostMapping("/uploadFile")
    public FileUploadResponseVO uploadFile(@RequestParam("file") MultipartFile file) {

        //DB 저장해야 한다

        return storeFileInfo(file);
        /*String fileName = fileService.storeFile(file);

        String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()
                .path("/fileStore/")
                .path(fileName)
                .toUriString();

        return new FileUploadResponseVO(fileName, fileDownloadUri, file.getContentType(), file.getSize());*/
    }

    @PostMapping("/uploadMultipleFiles")
    public String uploadMultipleFiles(@ModelAttribute RecieveFilesVO recieveFilesVo){

        //List<FileUploadResponseVO> respList = new ArrayList<FileUploadResponseVO>();

        //List<MultipartFile> files = recieveFilesVo.getFile();
        if(recieveFilesVo!=null)
        {
            //DB 저장

            if(recieveFilesVo.getFile1()!=null && !recieveFilesVo.getFile1().isEmpty()) storeFileInfo(recieveFilesVo.getFile1());
            if(recieveFilesVo.getFile2()!=null && !recieveFilesVo.getFile2().isEmpty()) storeFileInfo(recieveFilesVo.getFile2());
            if(recieveFilesVo.getFile3()!=null && !recieveFilesVo.getFile3().isEmpty()) storeFileInfo(recieveFilesVo.getFile3());
            if(recieveFilesVo.getFile4()!=null && !recieveFilesVo.getFile4().isEmpty()) storeFileInfo(recieveFilesVo.getFile4());
            if(recieveFilesVo.getFile5()!=null && !recieveFilesVo.getFile5().isEmpty()) storeFileInfo(recieveFilesVo.getFile5());
            if(recieveFilesVo.getFile6()!=null && !recieveFilesVo.getFile6().isEmpty()) storeFileInfo(recieveFilesVo.getFile6());
            if(recieveFilesVo.getFile7()!=null && !recieveFilesVo.getFile7().isEmpty()) storeFileInfo(recieveFilesVo.getFile7());
            if(recieveFilesVo.getFile8()!=null && !recieveFilesVo.getFile8().isEmpty()) storeFileInfo(recieveFilesVo.getFile8());
            if(recieveFilesVo.getFile9()!=null && !recieveFilesVo.getFile9().isEmpty()) storeFileInfo(recieveFilesVo.getFile9());

        }


        return "Success";
    }

    @GetMapping("/downloadFile/{fileName:.+}")
    public ResponseEntity<Resource> downloadFile(@PathVariable String fileName, HttpServletRequest request){

        // Load file as Resource
        Resource resource = fileService.loadFileAsResource(fileName);

        //String originalFileName = URLDecoder.decode(fileName,"UTF-8");
        // Try to determine file's content type
        String contentType = null;
        try {
            contentType = request.getSession().getServletContext().getMimeType(resource.getFile().getAbsolutePath());
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


}
