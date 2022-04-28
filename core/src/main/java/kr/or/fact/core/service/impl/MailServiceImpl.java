package kr.or.fact.core.service.impl;

import kr.or.fact.core.service.MailService;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.mail.internet.MimeMessage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

@Service("mailService")
public class MailServiceImpl implements MailService {

    @Override
    public File convertMultipartToFile(MultipartFile file) throws IllegalStateException, IOException {
        File newFile = new File(file.getOriginalFilename());
        newFile.createNewFile();
        FileOutputStream fos = new FileOutputStream(newFile);
        fos.write(file.getBytes());
        fos.close();
        return newFile;
    }
}
