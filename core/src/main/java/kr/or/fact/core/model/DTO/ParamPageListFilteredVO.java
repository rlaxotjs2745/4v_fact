package kr.or.fact.core.model.DTO;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Setter
@Getter
public class ParamPageListFilteredVO {
    long idx;
    int cur_page; //페이지 넘버
    String filter_s1;
    String filter_s2;
    int filter1;
    int filter2;
    int filter3;

    int list_amount; //페이지당 갯수
    int corp;
    String order_field;
    String query;
    Date start_dt;
    Date end_dt;

    int type;

}
