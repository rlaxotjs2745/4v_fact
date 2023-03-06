package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class FarmSectorFilteredCountVO {
    int tot_count;//토탈
    int self_count;//자율
    int cons_count;//위탁
}
