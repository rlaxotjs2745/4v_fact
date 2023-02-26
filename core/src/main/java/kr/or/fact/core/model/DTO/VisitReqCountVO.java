package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class VisitReqCountVO {
    int tot_count;//전체
    int new_count;//신청 등록
    int check_count;//신청 확인
    int accept_count;//승인
    int visit_count;//방문
    int done_count;//방문완료
    int cancel_count;//방문취소
    int refuse_count;//승인거절
}
