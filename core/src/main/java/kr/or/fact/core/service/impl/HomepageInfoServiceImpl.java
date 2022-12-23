package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.HomepageInfoVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.model.HomepageMapper;
import kr.or.fact.core.service.HomepageInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("homepageInfoService")
public class HomepageInfoServiceImpl implements HomepageInfoService {
    private final HomepageMapper homepageMapper;

    @Autowired
    public HomepageInfoServiceImpl(HomepageMapper homepageMapper){this.homepageMapper = homepageMapper;}

    @Override
    public HomepageInfoVO getHomepageInfo(){
        return homepageMapper.getHomepageInfo();
    }
    @Override
    public void updateHomepageInfo(HomepageInfoVO homepageInfoVO){
        homepageMapper.updateHomepageInfo(homepageInfoVO);

    }
    @Override
    public void insertHomepageInfo(HomepageInfoVO homepageInfoVO){
        homepageMapper.insertHomepageInfo(homepageInfoVO);
    }
    @Override
    public void deleteHomepageInfo(long idx){
        homepageMapper.deleteHomepageInfo(idx);
    }

    @Override
    public List<HomepageInfoVO> getHomepageInfoList(ParamPageListFilteredVO param) {
        return homepageMapper.getHomepageInfoList(param);
    }

    @Override
    public HomepageInfoVO getHomepageInfoIdx(HomepageInfoVO homepageInfoVO) {
        return homepageMapper.getHomepageInfoIdx(homepageInfoVO);
    }

    @Override
    public void setCurrentHomepageInfo(long idx) {
        homepageMapper.setCurrentHomepageInfo(idx);
    }

    @Override
    public void setWaitingHomepageInfo(long idx) {

    }

    @Override
    public int getHomepageInfoCount() {
        return homepageMapper.getHomepageInfoCount();
    }


}

