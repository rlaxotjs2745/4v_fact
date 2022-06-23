package kr.or.fact.core.model;

import kr.or.fact.core.model.DTO.AssetVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface AssetMapper {
    int registerAsset(AssetVO assetVO);

    List<AssetVO> getAssetList(@Param("filter1") int filter1, @Param("filter2") int filter2, @Param("filter3") int filter3, @Param("page_num") int page_num);

    int getCount(@Param("filter1") int filter1, @Param("filter2") int filter2, @Param("filter3") int filter3);
}
