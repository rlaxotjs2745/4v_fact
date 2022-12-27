package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.HomepageInfoVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.DTO.WebMainPopupVO;

import java.util.List;

public interface WebMainPopupService {
    int getWebMainPopupCount();

    List<WebMainPopupVO> getWebMainPopupList(ParamPageListFilteredVO param);

    void insertPopupContent(WebMainPopupVO webMainPopupVO);

    void updatePopupContent(WebMainPopupVO webMainPopupVO);

    void deletePopupContent(WebMainPopupVO webMainPopupVO);

    void insertBannerContent(WebMainPopupVO webMainPopupVO);

    void updateBannerContent(WebMainPopupVO webMainPopupVO);

    WebMainPopupVO getBannerOrder(int is_show);

    void deleteBannerOrder(WebMainPopupVO bannerOri);

    List<WebMainPopupVO> getWebMainBannerList();

    int getWebMainBannerCount();
}

