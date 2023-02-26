package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class ConsoleNoticeFilteredCountVO {
    int tot_count;
    int wait_count;
    int on_count;
    int re_on_count;
    int off_count;
    int etc_count;
}
