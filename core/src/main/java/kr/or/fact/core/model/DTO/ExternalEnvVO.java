package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class ExternalEnvVO {
    long idx_tb_env_data;
    String ymdtime;
    float xouttemp;//외부온도
    int xwinddirec;//풍향
    String xrain;//감우
}
