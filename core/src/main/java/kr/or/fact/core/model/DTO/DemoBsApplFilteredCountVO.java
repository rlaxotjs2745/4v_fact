package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class DemoBsApplFilteredCountVO {
    int tot_count;
    int appl_count;
    int review_count;
    int doc_req_count;
    int check_done_count;
    int reject_count;
}
