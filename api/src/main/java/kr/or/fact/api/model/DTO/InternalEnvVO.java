package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class InternalEnvVO {


    float xintemp1; //실내온도1
    float xintemp2;//2
    float xintemp3;//2
    float xabhum;//절대습도
    float xinhum1;//내부습도
    float xinhum2;//2
    float xinhum3;//3
    int xco2;//co2양
    float xsunvol;//일사량
    float xdhum; //이슬점

}
