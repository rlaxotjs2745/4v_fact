package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class AssetFilteredCountVO {
    int tot_count;
    int new_count;
    int available_count;
    int occupied_count;
    int fixing_count;
    int discard_count;
    int lost_count;
}
