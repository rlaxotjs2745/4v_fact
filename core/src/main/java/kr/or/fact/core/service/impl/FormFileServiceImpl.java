package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.FormFileInfoVO;
import kr.or.fact.core.model.FormFileMapper;
import kr.or.fact.core.service.FormFileService;
import org.springframework.stereotype.Service;

@Service("formFileService")
public class FormFileServiceImpl implements FormFileService {

    private final FormFileMapper formFileMapper;

    public FormFileServiceImpl(FormFileMapper formFileMapper) {
        this.formFileMapper = formFileMapper;
    }

    @Override
    public void insertFormFile(FormFileInfoVO formFileInfoVO) {
        formFileMapper.insertFormFile(formFileInfoVO);
    }
}

