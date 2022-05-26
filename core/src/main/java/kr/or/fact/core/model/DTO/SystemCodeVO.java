package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class SystemCodeVO {
    long idx_system_code;//	number	32			◯		인덱스
    String code_name;//	varchar2	40					코드 이름
    String code_value;//	varchar2	40					코드 값
    String detail;//l	varchar2	200					코드 내용
    int order_num;//	number	4					중요도 순서
    Date reg_date;//	date						최초 등록 일시
}
