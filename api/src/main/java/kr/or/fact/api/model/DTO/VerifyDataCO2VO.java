package kr.or.fact.api.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class VerifyDataCO2VO {
    long idx_verdata_co2;// number(10,4) PRIMARY KEY,
    String verifyid;//  varchar(100),
    String deviceid;// varchar(100),
    String daqtime;//  date ,
    double f_temp;// number(10,4),
    double f_hum;// number(10,4),
    double c_temp;// number(10,4),
    double c_pressure;// number(10,4),
    double standardvalue;// number(10,4),
    double verifyvalue;// number(10,4)
    String username;
    String key;
}
