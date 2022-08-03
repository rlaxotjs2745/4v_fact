package kr.or.fact.core.model.DTO;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class BrdCardRequestVO {

    private Integer page;

    private String filter;

    private String query;
}
