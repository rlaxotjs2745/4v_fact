package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.HomepageInfoVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.WebMainPopupVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface WebMainPopupMapper {
    int getWebMainPopupCount();

    List<WebMainPopupVO> getWebMainPopupList(ParamPageListFilteredVO param);

    void insertPopupContent(WebMainPopupVO webMainPopupVO);

    void updatePopupContent(WebMainPopupVO webMainPopupVO);

    void deletePopupContent(WebMainPopupVO webMainPopupVO);
}

