package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class VerifyDataECSensorVO {
    long idx_verdata_ecsensor;// number(10,4) PRIMARY KEY,
    String verifyid;//  varchar(100),
    String deviceid;// varchar(100),
    String daqtime;//  date ,
    double f_temp;// number(10,4),
    double f_hum;// number(10,4),
    double standardvalue;// number(10,4),
    double verifyvalue;// number(10,4)
    String username;
    String key;
}