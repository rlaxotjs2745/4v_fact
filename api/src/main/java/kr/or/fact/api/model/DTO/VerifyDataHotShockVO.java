package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class VerifyDataHotShockVO {
    long idx_verdata_hotshock;// number(10,4) PRIMARY KEY,
    String verifyid;//  varchar(100),
    String deviceid;// varchar(100),
    String daqtime;//  date ,
    double temp_hot;// number(10,4),
    double temp_test;// number(10,4),
    double temp_cold;// number(10,4)
    String username;
    String key;
}
