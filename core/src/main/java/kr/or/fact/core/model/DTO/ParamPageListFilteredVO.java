package kr.or.fact.core.model.DTO;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class ParamPageListFilteredVO {
    int page_num; //페이지 넘버
    String fil1;
    String fil2;
    int filter1;
    int filter2;
    int filter3;
    long idx;
    int amount; //페이지당 갯수
    int corp;
    String order_field;

}
