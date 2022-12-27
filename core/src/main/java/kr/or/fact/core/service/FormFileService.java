package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.FormFileInfoVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.WebMainPopupVO;

import java.util.List;

public interface FormFileService {

    void insertFormFile(FormFileInfoVO formFileInfoVO);

    List<FormFileInfoVO> getFormFileList(ParamPageListFilteredVO param);

    int getFormFileCount();
}

