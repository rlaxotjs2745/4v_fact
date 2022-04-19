package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class ExternalEnvVO {

    float xouttemp;//외부온도
    int xwinddirec;//풍향
    String xrain;//감우
}
