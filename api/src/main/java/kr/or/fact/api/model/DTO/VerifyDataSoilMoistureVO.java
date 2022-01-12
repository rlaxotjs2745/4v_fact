package kr.or.fact.api.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class VerifyDataSoilMoistureVO {
    long idx_verdata_soilmoisture;// number(10,4) PRIMARY KEY,
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
