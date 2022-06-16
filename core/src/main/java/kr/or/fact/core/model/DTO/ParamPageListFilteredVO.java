package kr.or.fact.core.model.DTO;

import lombok.Data;
import org.springframework.web.bind.annotation.RequestParam;
@Data
public class ParamPageListFilteredVO {
    int page_num; //페이지 넘버
    int filter1;
    int filter2;
    long idx;
    int amount; //페이지당 갯수
    int corp;
    String order_field;

}
