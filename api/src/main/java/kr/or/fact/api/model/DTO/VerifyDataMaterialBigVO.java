package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class VerifyDataMaterialBigVO {
    long idx_verdata_material_big;// number(10,4) PRIMARY KEY,
    String verifyid;//  varchar(100),
    String deviceid;// varchar(100),
    String daqtime;//  date ,
    double weight;// number(10,4),
    double strength;// number(10,4),
    double displacement;// number(10,4),
    double elongation;// number(10,4),
    double elongationrate;// number(10,4),
    double yieldpoint;// number(10,4),
    double breakingpoint;// number(10,4)
    String username;
    String key;
}
