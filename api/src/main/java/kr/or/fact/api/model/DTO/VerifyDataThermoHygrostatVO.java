package kr.or.fact.api.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class VerifyDataThermoHygrostatVO {
    long idx_verdata_thermohygrostat;// number(10,4) PRIMARY KEY,
    String verifyid;//  varchar(100),
    String deviceid;// varchar(100),
    String daqtime;//  date ,
    double temp;// number(10,4),
    double hum;// number(10,4),
    double temp1;// number(10,4),
    double temp2;// number(10,4),
    double temp3;// number(10,4),
    double temp4;// number(10,4),
    double temp5;// number(10,4),
    double temp6;// number(10,4),
    double temp7;// number(10,4),
    double temp8;// number(10,4),
    double temp9;// number(10,4),
    double temp10;// number(10,4),
    double torque;// number(10,4),
    double rpm;// number(10,4),
    double ampere;// number(10,4)
    String username;
    String key;
}


