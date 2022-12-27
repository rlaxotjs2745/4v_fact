package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.FormFileInfoVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.FormFileMapper;
import kr.or.fact.core.service.FormFileService;
import org.springframework.stereotype.Service;

import java.util.List;

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

    @Override
    public List<FormFileInfoVO> getFormFileList(ParamPageListFilteredVO param) {
        return formFileMapper.getFormFileList(param);
    }

    @Override
    public int getFormFileCount() {
        return formFileMapper.getFormFileCount();
    }
}

