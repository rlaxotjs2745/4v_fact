package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.AssetVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;

import java.util.List;

public interface AssetService {
    int registerAsset(AssetVO assetVO);

    List<AssetVO> getAssetList(ParamPageListFilteredVO param);
}
