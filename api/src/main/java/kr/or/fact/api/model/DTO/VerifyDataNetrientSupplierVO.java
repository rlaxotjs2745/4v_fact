package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class VerifyDataNetrientSupplierVO {
    long idx_verdata_netrientsupplier;// number(10,4) PRIMARY KEY,
    String verifyid;//  varchar(100),
    String deviceid;// varchar(100),
    String daqtime;//  date ,
    double pressure1;// number(10,4),
    double pressure2;// number(10,4),
    double flowqty;// number(10,4),
    double valveopenrate1;// number(10,4),
    double valveopenrate2;// number(10,4),
    double valveopenrate3;// number(10,4),
    double valveopenrate4;// number(10,4),
    double valveopenrate5;// number(10,4)
    String username;
    String key;
}
