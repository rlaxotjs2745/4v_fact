package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class ParamEnvQueryVO {
    int guyok;
    Date reference_date;
    Date from_date;
    Date to_date;
}
