package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class Co2VO {
    int xco2run;//co2 가동상태 (1:가동 0:정지)
    int xco2auto;//co2자동상태(1:자동 0:수동)
}
