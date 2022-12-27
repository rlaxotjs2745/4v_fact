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

    @Override
    public void insertBannerContent(WebMainPopupVO webMainPopupVO) {
        webMainPopupMapper.insertBannerContent(webMainPopupVO);
    }

    @Override
    public void updateBannerContent(WebMainPopupVO webMainPopupVO) {
        webMainPopupMapper.updateBannerContent(webMainPopupVO);
    }

    @Override
    public WebMainPopupVO getBannerOrder(int is_show) {
        return webMainPopupMapper.getBannerOrder(is_show);
    }

    @Override
    public void deleteBannerOrder(WebMainPopupVO bannerOri) {
        webMainPopupMapper.deleteBannerOrder(bannerOri);
    }

    @Override
    public List<WebMainPopupVO> getWebMainBannerList() {
        return webMainPopupMapper.getWebMainBannerList();
    }

    @Override
    public int getWebMainBannerCount() {
        return webMainPopupMapper.getWebMainBannerCount();
    }
}

