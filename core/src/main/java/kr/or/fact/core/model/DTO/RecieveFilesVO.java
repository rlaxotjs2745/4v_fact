package kr.or.fact.core.model.DTO;

import lombok.Data;
import org.springframework.lang.NonNull;
import org.springframework.lang.Nullable;
import org.springframework.web.multipart.MultipartFile;


import java.util.List;

@Data
public class RecieveFilesVO {

    long sender;
    long bs_idx;
    String sender_name;//	전송자
    int type;// 전송 타입
    MultipartFile file1;
    MultipartFile file2;
    MultipartFile file3;
    MultipartFile file4;
    MultipartFile file5;
    MultipartFile file6;
    MultipartFile file7;
    MultipartFile file8;
    MultipartFile file9;
}
