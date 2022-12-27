package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.HomepageInfoVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.WebMainPopupVO;
import kr.or.fact.core.model.WebMainPopupMapper;
import kr.or.fact.core.service.WebMainPopupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("webMainPopupService")
public class WebMainPopupServiceImpl implements WebMainPopupService {
    private final WebMainPopupMapper webMainPopupMapper;

    @Autowired
    public WebMainPopupServiceImpl(WebMainPopupMapper WebMainPopupMapper, WebMainPopupMapper webMainPopupMapper){
        this.webMainPopupMapper = webMainPopupMapper;
    }

    @Override
    public int getWebMainPopupCount() {
        return webMainPopupMapper.getWebMainPopupCount();
    }

    @Override
    public List<WebMainPopupVO> getWebMainPopupList(ParamPageListFilteredVO param) {
        return webMainPopupMapper.getWebMainPopupList(param);
    }

    @Override
    public void insertPopupContent(WebMainPopupVO webMainPopupVO) {
        webMainPopupMapper.insertPopupContent(webMainPopupVO);
    }

    @Override
    public void updatePopupContent(WebMainPopupVO webMainPopupVO) {
        webMainPopupMapper.updatePopupContent(webMainPopupVO);
    }

    @Override
    public void deletePopupContent(WebMainPopupVO webMainPopupVO) {
        webMainPopupMapper.deletePopupContent(webMainPopupVO);
    }
}

