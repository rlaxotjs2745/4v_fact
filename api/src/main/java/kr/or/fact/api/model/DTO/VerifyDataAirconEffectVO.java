package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class VerifyDataAirconEffectVO {
    long idx_verdata_aircon_effect;// number(10,4) PRIMARY KEY,
    String verifyid;//  varchar(100),
    String deviceid;// varchar(100),
    String daqtime;//  date ,
    double temp_evapolator_in;// number(10,4),
    double temp_evapolator_out;// number(10,4),
    double tempdiff_evapolator;// number(10,4),
    double temp_evapolation_refrigerant;// number(10,4),
    double temp_compressor_in;// number(10,4),
    double superheat;// number(10,4),
    double temp_condenser_in;// number(10,4),
    double temp_condenser_out;// number(10,4),
    double tempdiff_condenser;// number(10,4),
    double temp_condensation_refrigerant;// number(10,4),
    double supercooling;// number(10,4),
    double temp_compressor_out;// number(10,4),
    double effect_compressor_isentropy;// number(10,4),
    double power_compressor;// number(10,4),
    double cop_frozen;// number(10,4),
    double capacity_frozen;// number(10,4),
    double cop_radiation;// number(10,4),
    double capacity_ratiation;// number(10,4)
    String username;
    String key;
}