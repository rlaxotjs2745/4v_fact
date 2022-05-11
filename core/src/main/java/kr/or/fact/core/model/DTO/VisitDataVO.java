package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class VisitDataVO {
    long idx_visit_data;//	number	32			◯		인덱스	auto increase
    Date cur_date;//	date						해당일
    int possible_count;//	number	10		0			오전, 오후 각각에 해당, 별도로 설정하기 위해 1단위는 오전 천단위는 오후
    int resulvation_count;//	number	10		0			오전, 오후 각각에 해당, 별도로 설정하기 위해 1단위는 오전 천단위는 오후
    int is_admin_cancel;//	number	4		0			관리자 강제 취소	0:해당 없음, 1:강제취소, 강제 취소 시 예약자에게 알리는 업무를 위함
    String impossible_reason;//	varchar2	400					불가 이유
    int visit_data_type;//	number	4		0			0:관리자 취소, 1:오전, 2:오후, 3:오전오후(1+2), 4:전일
    String memo;//	varchar2	1000					메모
    long group_idx;//	number	32		0		◯	일괄 등록 시 그룹으로 묶기	그룹 삭제를 위해
    long idx_admin;//	number	32				◯	작성자	idx_admin index pk
    Date reg_date;//	date						최초 등록 일시
}
