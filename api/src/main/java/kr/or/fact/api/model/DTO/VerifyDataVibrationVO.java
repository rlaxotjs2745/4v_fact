package kr.or.fact.api.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class VerifyDataVibrationVO {
    long idx_verdata_vibration;// number(10,4) PRIMARY KEY,
    String verifyid;//  varchar(100),
    String deviceid;// varchar(100),
    String daqtime;//  date ,
    String direction;// char,
    double temp;// number(10,4),
    double hum;// number(10,4)
    String username;
    String key;
}
