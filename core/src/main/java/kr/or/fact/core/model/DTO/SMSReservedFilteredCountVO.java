package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class SMSReservedFilteredCountVO {
    int tot_count;
    int hold_count;
    int rserv_count;
    int sent_count;
}
