package kr.or.fact.core.service;

import kr.or.fact.core.model.DTO.*;

import java.util.List;

public interface AssetService {
    int registerAsset(AssetVO assetVO);

    List<AssetVO> getAssetList(ParamPageListFilteredVO param);

    int getCount(ParamPageListFilteredVO param);

    int reserveAsset(AssetReservationVO assetReservationVO, AdminVO adminInfo);

    List<AssetReservationVO> getAssetReservationList(ParamPageListFilteredVO param);

    List<AssetReservationItemVO> getAssetReservationItemList(long idx);

    int getAssetReservationCount(ParamPageListFilteredVO param);
}
