package kr.or.fact.core.model;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

@Mapper
public interface FileServiceMapper {
    String storeFile(MultipartFile file);
    //public Resource loadFileAsResource(String fileName);
}
