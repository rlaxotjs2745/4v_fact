package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class WsoVO {
    int xspauto;// 스프링쿨러(관수) 자동상태 (1:자동 0:수동)
    int xsprun;//스프링쿨러(관수)가동상태(1:가동 0:정지)
}
