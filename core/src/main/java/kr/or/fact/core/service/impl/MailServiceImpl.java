package kr.or.fact.core.service.impl;

import kr.or.fact.core.config.FACTConfig;
import kr.or.fact.core.model.DTO.ReservedMailVO;
import kr.or.fact.core.model.MailMapper;
import kr.or.fact.core.service.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

@Service("mailService")
public class MailServiceImpl implements MailService {

    private final MailMapper mailMapper;

    private final FACTConfig factConfig;
    @Autowired
    public MailServiceImpl(MailMapper mailMapper, FACTConfig factConfig){
        this.mailMapper = mailMapper;
        this.factConfig = factConfig;
    }


    @Override
    public File convertMultipartToFile(MultipartFile file) throws IllegalStateException, IOException {
        File newFile = new File(factConfig.getUploadDir() + file.getOriginalFilename());
        newFile.createNewFile();
        FileOutputStream fos = new FileOutputStream(newFile);
        fos.write(file.getBytes());
        fos.close();
        return newFile;
    }

    @Override
    public ArrayList<ReservedMailVO> getReservedMail(String tagValue) {
        int tag = Integer.parseInt(tagValue);
        return mailMapper.getReservedMail(tag);
    }


}
