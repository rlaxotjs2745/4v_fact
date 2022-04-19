package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class EnvWeatherVO {
    long idx_env_weather; // number(10,4) PRIMARY KEY,
    String daqtime;// date,
    double temp;// number(10,4),
    double hum;// number(10,4),
    double insolation;// number(10,4),
    double winddirection;// number(10,4),
    double windspeed;// number(10,4),
    double raindetect;// number(10,4)
    String username;
    String key;
}
