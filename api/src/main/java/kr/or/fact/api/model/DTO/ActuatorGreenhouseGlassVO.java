package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class ActuatorGreenhouseGlassVO {
    long idx_actuator_gh_glass;// number(10,4) PRIMARY KEY,
    String daqtime;// date,
    double roofwindow_l;// float(63),
    double roofwindow_r;// float(63),
    double outcurtain;//  float(63),
    double incurtain;//  float(63)
    String username;
    String key;
}
