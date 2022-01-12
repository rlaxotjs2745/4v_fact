package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class NowWeatherVO {
    long idx_now_weather;// number(10,4) PRIMARY KEY,
    double temp;// number(10,4),
    double hum;// number(10,4),
    double insolation;// number(10,4),
    double winddirection;// number(10,4),
    double windspeed;// number(10,4),
    String raindetect;// char(1) 0 or 1
    String username;
    String key;
}
