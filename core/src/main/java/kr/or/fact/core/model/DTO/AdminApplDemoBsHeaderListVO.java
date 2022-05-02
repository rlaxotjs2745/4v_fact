package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class AdminApplDemoBsHeaderListVO {
    long idx_demo_business;//	number	32			◯		인덱스
    String demo_bs_code;//	varchar2	40					사업번호
    String demo_subject;//	varchar2	100					사업 제목
    int applicant_count;//	number	10		0			현재 응모자 수
    int recruit_count_limit;//	number	10		99999999			모집 수
    Date exam_start;//	date
    Date exam_end;//	date
    long idx_bs_announcement;//
    int appl_review_done;//검토완료 수
    int appl_recomm;//보완요청 수
}
