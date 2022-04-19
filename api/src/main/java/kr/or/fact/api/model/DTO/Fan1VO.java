package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class Fan1VO {
    int xfan1run;//팬1 가동상태(1:가동 0:정지)
    int xfan1auto;//팬1자동상태 (1:자동 0:수동)
}
