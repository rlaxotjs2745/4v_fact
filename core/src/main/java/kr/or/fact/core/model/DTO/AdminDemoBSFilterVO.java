package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class AdminDemoBSFilterVO {
    int tot_count;//전체
    int appl_count;//모집중
    int revuiew_count;//심사중
    int agree_count;//협약중
    int demo_count;//사업중
    int result_count;//결산중
}
