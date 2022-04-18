package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.DTO.CoWorkerVO;
import kr.or.fact.core.model.DTO.HomepageInfoVO;
import kr.or.fact.core.model.EventContentMapper;
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


}
