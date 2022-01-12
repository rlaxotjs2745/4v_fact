package kr.or.fact.api.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class VerifyDataWindVO {
    long idx_verdata_wind;// number(10,4) PRIMARY KEY,
    String verifyid;//  varchar(100),
    String deviceid;// varchar(100),
    String daqtime;//  date ,
    double standardspeed;// number(10,4),
    double verifyspeed;// number(10,4)
    String username;
    String key;
}
