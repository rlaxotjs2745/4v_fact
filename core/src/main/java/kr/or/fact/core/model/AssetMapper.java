package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.AssetReservationItemVO;
import kr.or.fact.core.model.DTO.AssetReservationVO;
import kr.or.fact.core.model.DTO.AssetVO;
import kr.or.fact.core.model.DTO.ParamPageListFilteredVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface AssetMapper {
    int registerAsset(AssetVO assetVO);

    List<AssetVO> getAssetList(@Param("filter1") int filter1, @Param("filter2") int filter2, @Param("filter3") int filter3, @Param("page_num") int page_num);

    int getCount(@Param("filter1") int filter1, @Param("filter2") int filter2, @Param("filter3") int filter3);

    long insertAssetReservation(AssetReservationVO assetReservationVO);

    int insertReservationItem(
            @Param("asset_code") String asset_code,
            @Param("idx_asset_reservation") long idx_asset_reservation,
            @Param("idx_asset_manage") long idx_asset_manage,
            @Param("amount") int amount,
            @Param("reservation_item_status") int reservation_item_status
            );

    List<AssetReservationVO> getAssetReservationList(@Param("filter1") int filter1, @Param("page_num") int page_num);

    int getAssetReservationCount(@Param("filter1") int filter1);

    List<AssetReservationItemVO> getAssetReservationItemList(@Param("idx") long idx);

    AssetReservationVO getAssetReservation(@Param("idx") long idx);

    long getIdxAssetReservation();

    int updateReservationItem(@Param("idx") long idx, @Param("status") int status);

    int updateReservation(@Param("reservationIdx") long reservationIdx, @Param("status") int status, @Param("idx") long idx);
}
