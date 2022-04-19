package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class Fan2VO {
    int xfan2run;//팬2 가동상태(1:가동 0:정지)
    int xfan2auto;//팬2자동상태 (1:자동 0:수동)
}
