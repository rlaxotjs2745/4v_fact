package kr.or.fact.api.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class ActuatorGreenhouseSingleGimjeVO {
    long idx_actuator_gh_single_g;// number(10,4) PRIMARY KEY,
    String daqtime;//  date,
    double outsidewindow_l;// float(63),
    double outsidewindow_r;// float(63),
    double insidewindow_l;//  float(63),
    double insidewindow_r;//  float(63),
    double curtain_l;// float(63),
    double curtain_r;// float(63),
    double sidescreen_l;// float(63),
    double sidescreen_r;// float(63)
    String username;
    String key;
}
