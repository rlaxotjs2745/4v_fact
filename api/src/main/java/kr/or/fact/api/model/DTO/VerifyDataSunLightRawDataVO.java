package kr.or.fact.api.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class VerifyDataSunLightRawDataVO {
    long idx_verdata_sunlight_rawdata;// number(10,4) PRIMARY KEY,
    String verifyid;//  varchar(100),
    String deviceid;// varchar(100),
    String daqtime;//  date ,
    double standardvalue;// number(10,4),
    double value;// number(10,4),
    String unit;// varchar(100),
    String frontrear;// char,
    String verifystep;// char
    String username;
    String key;
}
