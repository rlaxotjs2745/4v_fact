package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class ListPagingParamVO {
    int page_num;
    int amount;
    String order_field;
    int filter1;
    int filter2;
    long idx;
}
