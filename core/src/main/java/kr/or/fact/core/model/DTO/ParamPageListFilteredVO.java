package kr.or.fact.core.model.DTO;

import lombok.Data;
import org.springframework.web.bind.annotation.RequestParam;
@Data
public class ParamPageListFilteredVO {
    int page_num;
    int filter1;
    int filter2;
    long idx;
    int amount;
    String order_field;

}
