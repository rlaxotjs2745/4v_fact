package kr.or.fact.core.model.DTO;

import lombok.Data;

import java.util.Date;

@Data
public class BsAnnounceHeaderVO {
    long row_num;//
    long idx_bs_announcement;//	number	32			◯		인덱스	auto increase
    String bs_announcement_code;//	varchar2	40					문서번호
    int announce_num;//	number	20					공고 일련번호	1부터 시작
    int announce_status;//	NUMBER	4		0			공지사항 게시 프로세스 상태	0:임시저장, 1:게시전 수동게시, 2:게시전 자동게시, 3:게시중, 4:게시 일지 중지, 5:게시 기간 종료
    String subject;//	varchar2	100					공고 제목
    int view_count;//	number	20					조회수
    int applicant_count;//	number	10		0			현재 응모자 수
    Date posting_start_date;//	date						게시 시작 일시분초
    Date posting_end_date;//	date						게시 종료 일시분초
    String author;//	VARCHAR2	20					작성자 이름	관리자와 등록자를 다르게 하기 때문
}
