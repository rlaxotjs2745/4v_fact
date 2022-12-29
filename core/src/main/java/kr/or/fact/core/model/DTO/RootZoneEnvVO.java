package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class RootZoneEnvVO {
    long idx_tb_env_data;
    String farm_cd;
    String ymdtime;
    float xco2;
    float xgndtemp;//지온
    float xgndhum;//지습
    float xph1;//산도
    float xph2;//산도2
    float xec1;//ec1
    float xec2;//ec2
}
