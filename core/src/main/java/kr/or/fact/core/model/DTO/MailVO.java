package kr.or.fact.core.model.DTO;


import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

@Data
public class MailVO {
    String receiver;
    String title;
    MultipartFile files1;
    MultipartFile files2;
    MultipartFile files3;
    MultipartFile files4;
    MultipartFile files5;
    String content;
    String fileLength;


}
