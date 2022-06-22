package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.AssetMapper;
import kr.or.fact.core.model.DTO.AssetVO;
import kr.or.fact.core.service.AssetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    public List<AssetVO> getAssetList(int filter){
        return assetMapper.getAssetList(filter);
    }
}
