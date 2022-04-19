package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class ThreeWayVO {
    int x3way1auto;//3way1 자동상태(1:자동 0:수동)
    int x3way2auto;//3way2 자동상태(1:자동 0:수동)
    float xwatertemp2;// 3way온도2
}
