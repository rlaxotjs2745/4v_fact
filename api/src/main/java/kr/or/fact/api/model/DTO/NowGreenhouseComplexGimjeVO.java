package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class NowGreenhouseComplexGimjeVO {
    long idx_now_gh_complex_g;// number(10,4) PRIMARY KEY,
    double temp;// number(10,4),
    double hum;// number(10,4),
    double light;// number(10,4),
    double co2;// number(10,4),
    double soiltension;// number(10,4),
    double soilph;// number(10,4),
    double soilmoisture;// number(10,4),
    double soilec;// number(10,4),
    double soiltemp;// number(10,4),
    double pos_topwindow_l1;// float(63),
    double pos_topwindow_l2;// float(63),
    double pos_topwindow_l3;// float(63),
    double pos_topwindow_r1;//  float(63),
    double pos_topwindow_r2;// float(63),
    double pos_topwindow_r3;// float(63),
    double pos_outcurtain;//  float(63),
    double pos_incurtain;//  float(63)
    String username;
    String key;
}
