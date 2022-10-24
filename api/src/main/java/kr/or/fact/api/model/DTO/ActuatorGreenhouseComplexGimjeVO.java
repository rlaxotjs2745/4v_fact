package kr.or.fact.api.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class ActuatorGreenhouseComplexGimjeVO {
    long idx_actuator_gh_complex_g;// number(10,4) PRIMARY KEY,
    String daqtime;//  date,
    double roofwindow_l1;//  float(63),
    double roofwindow_l2;// float(63),
    double roofwindow_l3;// float(63),
    double roofwindow_r1;// float(63),
    double roofwindow_r2;// float(63),
    double roofwindow_r3;// float(63),
    double outcurtain;//  float(63),
    double incurtain;//  float(63)
    String username;
    String key;
}
