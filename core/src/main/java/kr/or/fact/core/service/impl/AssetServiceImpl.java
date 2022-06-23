package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.AssetMapper;
import kr.or.fact.core.model.DTO.AssetVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import kr.or.fact.core.service.AssetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sun.font.CreatedFontTracker;

import java.util.List;

@Service("assetService")
public class AssetServiceImpl implements AssetService {
    private final AssetMapper assetMapper;

    @Autowired
    public AssetServiceImpl(AssetMapper assetMapper){
        this.assetMapper = assetMapper;
    }

    @Override
    public int registerAsset(AssetVO assetVO){
        return assetMapper.registerAsset(assetVO);
    }

    @Override
    public List<AssetVO> getAssetList(ParamPageListFilteredVO param){
        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();
        int filter3 = param.getFilter3();
        int page_num = param.getPage_num();
        return assetMapper.getAssetList(filter1, filter2, filter3, page_num);
    }

    @Override
    public int getCount(ParamPageListFilteredVO param){
        int filter1 = param.getFilter1();
        int filter2 = param.getFilter2();
        int filter3 = param.getFilter3();
        return assetMapper.getCount(filter1, filter2, filter3);
    }
}
