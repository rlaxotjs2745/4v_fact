package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class ConsultingFilteredCountVO {

    int tot_count;
    int wait_count;
    int assigned_count;
    int reply_count;
    int done_count;
    int fatal_count;
}
