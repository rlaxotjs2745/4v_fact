package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class DemoBsQesFileJoinVO {

    long idx_demo_bs_qes_file_join;//	number	32			◯		인덱스
    long idx_demo_bs_qna;//	number	32				◯	문의
    long idx_file_info;//	number	32				◯	파일정보
    long idx_user;//	number	32				◯	등록자
    Date reg_date;//	date						최초 등록 일시

}
