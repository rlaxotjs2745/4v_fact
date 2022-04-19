package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class HeaterVO {
    int xheaterrun;//냉난방기가동상태(1:가동 0:정지)
    int xheaterauto;//냉난방기 자동상태(1:자동 0:수동)
}
