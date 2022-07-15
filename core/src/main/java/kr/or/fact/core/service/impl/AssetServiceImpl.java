package kr.or.fact.core.service.impl;

import kr.or.fact.core.model.AssetMapper;
import kr.or.fact.core.model.DTO.*;
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

    @Override
    public int reserveAsset(AssetReservationVO assetReservationVO, AdminVO adminInfo){
        try{
            assetMapper.insertAssetReservation(assetReservationVO);
            long curIdx = assetMapper.getIdxAssetReservation();
            List<String> assetCodes = assetReservationVO.getAssetList();
            for(int i = 0; i < assetCodes.size(); i++){
                assetMapper.insertReservationItem(
                        assetCodes.get(i),
                        curIdx,
                        adminInfo.getIdx_admin(),
                        1,
                        0
                );
            }
        } catch(Exception e){
            System.out.println(e);
            return 0;
        }
        return 1;
    }

    @Override
    public List<AssetReservationVO> getAssetReservationList(ParamPageListFilteredVO param){
        return assetMapper.getAssetReservationList(param.getFilter1(), param.getPage_num());
    }

    @Override
    public int getAssetReservationCount(ParamPageListFilteredVO param){
        return assetMapper.getAssetReservationCount(param.getFilter1());
    }

    @Override
    public List<AssetReservationItemVO> getAssetReservationItemList(long idx){
        return assetMapper.getAssetReservationItemList(idx);
    }

    @Override
    public AssetReservationVO getAssetReservation(long idx){
        return assetMapper.getAssetReservation(idx);
    }

    @Override
    public int updateReservationItem(AssetReservationItemVO assetReservationItemVO){
        int status = assetReservationItemVO.getReservation_item_status();
        long idx = assetReservationItemVO.getIdx_asset_reservation_item();
        return assetMapper.updateReservationItem(idx, status);
    }

    @Override
    public int updateReservation(long reservationIdx, int status, long idx){
        return assetMapper.updateReservation(reservationIdx, status, idx);
    }
}
