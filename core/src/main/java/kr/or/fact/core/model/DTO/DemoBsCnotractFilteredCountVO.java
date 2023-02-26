package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class DemoBsCnotractFilteredCountVO {
    int tot_count;
    int review_count;
    int req_count;
    int done_count;
    int pending_count;
    int reject_count;
}
