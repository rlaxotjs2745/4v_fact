package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class ResultWithDataVO<E> {
    String result_code;
    String result_str;
    E element;
}

