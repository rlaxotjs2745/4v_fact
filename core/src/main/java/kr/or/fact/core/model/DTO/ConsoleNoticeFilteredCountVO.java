package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class ConsoleNoticeFilteredCountVO {
    int tot_count;
    int common_count;
    int individual_count;
    int etc_count;
}
