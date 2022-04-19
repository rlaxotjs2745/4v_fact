package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class VerifyDataMoistureVO {
    long idx_verdata_moisture;// number(10,4) PRIMARY KEY,
    String verifyid;//  varchar(100),
    String deviceid;// varchar(100),
    String daqtime;//  date ,
    double temp;// number(10,4),
    double hum;// number(10,4)
    String username;
    String key;
}

