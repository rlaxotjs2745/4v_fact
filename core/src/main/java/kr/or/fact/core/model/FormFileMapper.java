package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.FormFileInfoVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.WebMainPopupVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FormFileMapper {
    void insertFormFile(FormFileInfoVO formFileInfoVO);

    List<FormFileInfoVO> getFormFileList(ParamPageListFilteredVO param);

    int getFormFileCount();
}

