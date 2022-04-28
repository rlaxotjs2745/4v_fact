package kr.or.fact.core.service;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

public interface MailService {
//    public boolean sendMail(String sender,String title, String receiver, String content, File[] files) throws Exception;

    public File convertMultipartToFile(MultipartFile file) throws IOException;
}
