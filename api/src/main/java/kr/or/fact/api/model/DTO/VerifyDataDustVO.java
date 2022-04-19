package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class VerifyDataDustVO {
    long idx_verdata_dust;// number(10,4) PRIMARY KEY,
    String verifyid;//  varchar(100),
    String deviceid;// varchar(100),
    String testtime;//  date ,
    String method;// varchar(100),
    int ontime;// int,
    int offtime;// int,
    int repeatcount;// int,
    int duringtime;// int
    String username;
    String key;
}
