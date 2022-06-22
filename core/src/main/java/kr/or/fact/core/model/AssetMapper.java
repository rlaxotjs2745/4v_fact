package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.AssetVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface AssetMapper {
    int registerAsset(AssetVO assetVO);

    List<AssetVO> getAssetList(@Param("filter") int filter);
}
