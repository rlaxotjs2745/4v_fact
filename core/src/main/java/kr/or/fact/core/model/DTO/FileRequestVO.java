package kr.or.fact.core.model.DTO;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;

@Data
public class FileRequestVO {

    String subject;
    String usage_detail;
    long idx_admin;
    Date reg_date;
    MultipartFile files1;
    MultipartFile files2;
    MultipartFile files3;
    MultipartFile files4;
    MultipartFile files5;
    String fileLength;
}
