package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class HunVO {
    int xhunauto;//훈증기자동상태 (1:자동 0:수동)
    int xhunrun;//훈증기 가동상태(1:가동 0:정지)
}
