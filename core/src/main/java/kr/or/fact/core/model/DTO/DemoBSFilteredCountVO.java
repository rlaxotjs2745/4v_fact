package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class DemoBSFilteredCountVO {
    int tot_count;//전체
    int write_count;//
    int appl_count;//모집중
    int review_count;//심사중
    int agree_count;//협약중
    int demo_count;//사업중
    int result_count;//결산중
}
