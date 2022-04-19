package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class VerifyDataACMotorVO {
    long idx_verdata_acmotor;// number(10,4) PRIMARY KEY,
    String verifyid;//  varchar(100),
    String deviceid;// varchar(100),
    String daqtime;//  date ,
    double ampere;// float(63),
    double standardtouque;// float(63),
    double torque;// float(63),
    double rpm;// float(63)
    String username;
    String key;
}
