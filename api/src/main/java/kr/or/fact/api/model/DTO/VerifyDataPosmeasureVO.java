package kr.or.fact.api.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class VerifyDataPosmeasureVO {
    long idx_verdata_posmeasure;// number(10,4) PRIMARY KEY,
    String verifyid;//  varchar(100),
    String deviceid;// varchar(100),
    String devicekind;// varchar(100),
    String daqtime;//  date ,
    double tagid;// float(63),
    double x_pos;// float(63),
    double y_pos;// float(63),
    double direction;// float(63)
    String username;
    String key;
}
