package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class VerifyDataWaterProofRobotVO {
    long idx_verdata_waterproof_robot;// number(10,4) PRIMARY KEY,
    String verifyid;//  varchar(100),
    String deviceid;// varchar(100),
    String daqtime;//  date ,
    double waterpressure;// number(10,4),
    double platespeed;// number(10,4),
    double nozzleswingspeed;// number(10,4),
    double watersupplymotorspeed;// number(10,4),
    double waterflowquantity;// number(10,4)
    String username;
    String key;
}
