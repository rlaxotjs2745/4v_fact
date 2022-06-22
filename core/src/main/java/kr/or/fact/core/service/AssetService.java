package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.AssetVO;

import java.util.List;

public interface AssetService {
    int registerAsset(AssetVO assetVO);

    List<AssetVO> getAssetList(int filter);
}
