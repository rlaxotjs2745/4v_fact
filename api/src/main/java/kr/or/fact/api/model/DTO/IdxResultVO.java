package kr.or.fact.api.model.DTO;

import lombok.Data;

import java.util.ArrayList;

@Data
public class IdxResultVO {
    long totalPageNum;
    ArrayList<DataVO> DataArr;
}
