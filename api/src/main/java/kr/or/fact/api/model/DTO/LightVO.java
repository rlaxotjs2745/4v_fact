package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class LightVO {
    int xlightrun;//보광등 가동상태(1:가동 0:정지)
    int xlightauto;//보광등자동상태 (1:자동 0:수동)
}
