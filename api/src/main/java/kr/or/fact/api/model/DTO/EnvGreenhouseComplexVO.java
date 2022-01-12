package kr.or.fact.api.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class EnvGreenhouseComplexVO {
    long idx_env_gh_complex;// number(10,4) PRIMARY KEY,
    String daqtime;// date,
    double temp;// number(10,4),
    double hum;// number(10,4),
    double light;// number(10,4),
    double co2;// number(10,4),
    double soiltension;// number(10,4),
    double soilph;// number(10,4),
    double soilmoisture;// number(10,4),
    double soilec;// number(10,4),
    double soiltemp;// number(10,4)
    String username;
    String key;
}
